export default {
    name: 'TheLightbox',
    data() {
        return {
            visible: null,
            url: null
        }
    },
    methods: {
        show(url){
            this.visible = true;
            this.url = url;
        },
        onClose(){
            this.visible = false;
        }
    },
    template: `
                <div class="dialog-wrapper" :class="{visible: visible}">
                    <div class="dialog"><img :src="url" /></div>
                    <div class="close" @click="onClose">×</div>
                </div>
            `
}