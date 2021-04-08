import { fetchData } from './components/TheDataMiner.js'
import Lightbox from './components/TheLightbox.js';

(() => {
    let home_vue = new Vue({
        data: {
            topPortfolioImgs: [],
            topPortfolioVideo: {},
            showText: false,
        },
        created() {
            this.init();
        },
        methods: {
            init() {
                fetchData('/includes/index.php?page=home').then(r => {
                    this.processSuccess(r);
                }).catch((e) => {
                    location.href = '../error.html';
                });
            },
            processSuccess(r) {
                this.topPortfolioImgs = r.filter(v => v.type == 'img');
                this.topPortfolioVideo = r.find(v => v.type == 'video');
            },
            showBigImg(url){
                this.$refs.lightbox.show(url);
            }
        },
        components:{
            Lightbox
        }
    }).$mount('#home');

    let gallery_vue = new Vue({
        data: {
            portfolioImgs: [],
            currentPortfolio: {}
        },
        created() {
            this.init();
        },
        methods: {
            init() {
                fetchData('/includes/index.php?page=gallery').then(r => {
                    this.processSuccess(r);
                }).catch((e) => {
                    location.href = '../error.html';
                });
            },
            processSuccess(r) {
                this.portfolioImgs = r;
            },
            showBigImg(item){
                this.currentPortfolio = item;
                localStorage.setItem('current_portfolio', JSON.stringify(this.currentPortfolio));
                location.href = '/detail.html';
            }
        }
    }).$mount('#gallery');

    let detail_vue = new Vue({
        data: {
            currentPortfolio: {}
        },
        created() {
            this.init();
        },
        methods: {
            init() {
               this.currentPortfolio = JSON.parse(localStorage.getItem('current_portfolio'));
            }
        }
    }).$mount('#detail');

})();