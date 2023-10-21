<template>
	<view class="content">
		<form class="app-update-pv">
			
			<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(41, 40, 40, 1)","textAlign":"left"}' class="title">医院名称</view>
				<input :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"rgba(0,0,0,.6)","borderRadius":"16rpx","color":"rgba(40, 38, 38, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' :disabled="ro.yiyuanmingcheng" v-model="ruleForm.yiyuanmingcheng" placeholder="医院名称"></input>
			</view>
			<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"rgba(252, 252, 252, 1)","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' class="cu-form-group select">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(21, 20, 20, 1)","textAlign":"left"}' class="title">医院类型</view>
				<picker @change="yiyuanleixingChange" :value="yiyuanleixingIndex" :range="yiyuanleixingOptions">
					<view :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"rgba(0,0,0,.6)","borderRadius":"16rpx","color":"rgba(20, 19, 19, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' class="uni-input">{{ruleForm.yiyuanleixing?ruleForm.yiyuanleixing:"请选择医院类型"}}</view>
				</picker>
			</view>
			<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' class="cu-form-group" @tap="yiyuantupianTap" :class='left == "left"?"":"active"'>
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(23, 22, 22, 1)","textAlign":"left"}' class="title">医院图片</view>
				<view class="right-input" :style='{textAlign:"left"}' style="padding:0">
					<image :style='{"width":"88rpx","boxShadow":"0 0 16rpx rgba(0,0,0,.3)","borderRadius":"100%","textAlign":"left","height":"88rpx"}' class="avator" v-if="ruleForm.yiyuantupian" :src="ruleForm.yiyuantupian" mode="aspectFill"></image>
					<image :style='{"width":"88rpx","boxShadow":"0 0 16rpx rgba(0,0,0,.3)","borderRadius":"100%","textAlign":"left","height":"88rpx"}' class="avator" v-else src="../../static/gen/upload.png" mode="aspectFill"></image>
				</view>
			</view>
			<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(41, 40, 40, 1)","textAlign":"left"}' class="title">联系人</view>
				<input :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"rgba(0,0,0,.6)","borderRadius":"16rpx","color":"rgba(40, 38, 38, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' :disabled="ro.lianxiren" v-model="ruleForm.lianxiren" placeholder="联系人"></input>
			</view>
			<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(41, 40, 40, 1)","textAlign":"left"}' class="title">联系电话</view>
				<input :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"rgba(0,0,0,.6)","borderRadius":"16rpx","color":"rgba(40, 38, 38, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' :disabled="ro.lianxidianhua" v-model="ruleForm.lianxidianhua" placeholder="联系电话"></input>
			</view>
			<view :style='{"boxShadow":"","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"#ccc","margin":"","borderWidth":"0","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(41, 40, 40, 1)","textAlign":"left"}' class="title">详细地址</view>
				<input :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0.56)","borderColor":"rgba(0,0,0,.6)","borderRadius":"16rpx","color":"rgba(40, 38, 38, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"28rpx","borderStyle":"solid","height":"88rpx"}' :disabled="ro.xiangxidizhi" v-model="ruleForm.xiangxidizhi" placeholder="详细地址"></input>
			</view>
			
			<!-- 否 -->
 

			
			
			<view class="btn">
				<button :style='{"boxShadow":"0 0 16rpx rgba(0,0,0,0) inset","backgroundColor":"#409EFF","borderColor":"#409EFF","borderRadius":"40rpx","color":"#fff","borderWidth":"1","width":"80%","fontSize":"28rpx","borderStyle":"solid","height":"80rpx"}' @tap="onSubmitTap" class="bg-red">提交</button>
			</view>
		</form>

			
	</view>
</template>

<script>
	import wPicker from "@/components/w-picker/w-picker.vue";

	export default {
		data() {
			return {
				ruleForm: {
				yiyuanmingcheng: '',
				yiyuanleixing: '',
				yiyuantupian: '',
				lianxiren: '',
				lianxidianhua: '',
				xiangxidizhi: '',
				},
				yiyuanleixingOptions: [],
				yiyuanleixingIndex: 0,
				// 登陆用户信息
				user: {},
                                ro:{
                                   yiyuanmingcheng : false,
                                   yiyuanleixing : false,
                                   yiyuantupian : false,
                                   lianxiren : false,
                                   lianxidianhua : false,
                                   xiangxidizhi : false,
                                },
			}
		},
		components: {
			wPicker
		},
		computed: {
			
			
			
			
			
			
		},
		async onLoad(options) {
			let table = uni.getStorageSync("nowTable");
			// 获取用户信息
			let res = await this.$api.session(table);
			this.user = res.data;
			
			// ss读取

			// 自定义下拉框值
			this.yiyuanleixingOptions = "私立,国有".split(',')

			// 如果有登陆，获取登陆后保存的userid
			this.ruleForm.userid = uni.getStorageSync("userid")
			if (options.refid) {
				// 如果上一级页面传递了refid，获取改refid数据信息
				this.ruleForm.refid = options.refid;
				this.ruleForm.nickname = uni.getStorageSync("nickname");
			}
			// 如果是更新操作
			if (options.id) {
				this.ruleForm.id = options.id;
				// 获取信息
				res = await this.$api.info(`yiyuanxinxi`, this.ruleForm.id);
				this.ruleForm = res.data;
			}
			// 跨表
			if(options.cross){
				var obj = uni.getStorageSync('crossObj');
				for (var o in obj){
					if(o=='yiyuanmingcheng'){
					this.ruleForm.yiyuanmingcheng = obj[o];
					this.ro.yiyuanmingcheng = true;
					continue;
					}
					if(o=='yiyuanleixing'){
					this.ruleForm.yiyuanleixing = obj[o];
					this.ro.yiyuanleixing = true;
					continue;
					}
					if(o=='yiyuantupian'){
					this.ruleForm.yiyuantupian = obj[o];
					this.ro.yiyuantupian = true;
					continue;
					}
					if(o=='lianxiren'){
					this.ruleForm.lianxiren = obj[o];
					this.ro.lianxiren = true;
					continue;
					}
					if(o=='lianxidianhua'){
					this.ruleForm.lianxidianhua = obj[o];
					this.ro.lianxidianhua = true;
					continue;
					}
					if(o=='xiangxidizhi'){
					this.ruleForm.xiangxidizhi = obj[o];
					this.ro.xiangxidizhi = true;
					continue;
					}
				}
			}
			this.styleChange()
		},
		methods: {
			styleChange() {
				this.$nextTick(()=>{
					// document.querySelectorAll('.app-update-pv .cu-form-group .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.addUpdateForm.input.content.backgroundColor
					// })
				})
			},

			// 多级联动参数



			// 下拉变化
			yiyuanleixingChange(e) {
				this.yiyuanleixingIndex = e.target.value
				this.ruleForm.yiyuanleixing = this.yiyuanleixingOptions[this.yiyuanleixingIndex]
			},

			yiyuantupianTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.yiyuantupian = _this.$base.url + 'upload/' + res.file;
					_this.$forceUpdate();
					_this.$nextTick(()=>{
						_this.styleChange()
					})
				});
			},

			getUUID () {
				return new Date().getTime();
			},
			async onSubmitTap() {
				if((!this.ruleForm.yiyuanmingcheng)){
					this.$utils.msg(`医院名称不能为空`);
					return
				}
				if(this.ruleForm.lianxidianhua&&(!this.$validate.isMobile(this.ruleForm.lianxidianhua))){
					this.$utils.msg(`联系电话应输入手机格式`);
					return
				}
				if(this.ruleForm.id){
					await this.$api.update(`yiyuanxinxi`, this.ruleForm);
				}else{
					await this.$api.add(`yiyuanxinxi`, this.ruleForm);
				}
				this.$utils.msgBack('提交成功');
			},
			optionsChange(e) {
				this.index = e.target.value
			},
			bindDateChange(e) {
				this.date = e.target.value
			},
			getDate(type) {
				const date = new Date();
				let year = date.getFullYear();
				let month = date.getMonth() + 1;
				let day = date.getDate();
				if (type === 'start') {
					year = year - 60;
				} else if (type === 'end') {
					year = year + 2;
				}
				month = month > 9 ? month : '0' + month;;
				day = day > 9 ? day : '0' + day;
				return `${year}-${month}-${day}`;
			},
			toggleTab(str) {
				this.$refs[str].show();
			}
		}
	}
</script>

<style lang="scss" scoped>
	.container {
		padding: 20upx;
	}
	
	.content:after {
		position: fixed;
		top: 0;
		right: 0;
		left: 0;
		bottom: 0;
		content: '';
		background-attachment: fixed;
		background-size: cover;
		background-position: center;
	}

	textarea {
		border: 1upx solid #EEEEEE;
		border-radius: 20upx;
		padding: 20upx;
	}

	.title {
		width: 180upx;
	}

	.avator {
		width: 150upx;
		height: 60upx;
	}

	.right-input {
		flex: 1;
		text-align: left;
		padding: 0 24upx;
	}
	
	.cu-form-group.active {
		justify-content: space-between;
	}
	
	.btn {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  flex-wrap: wrap;
	  padding: 20upx 0;
	}
	
	.cu-form-group {
		padding: 0 24upx;
		background-color: transparent;
		min-height: inherit;
	}
	
	.cu-form-group+.cu-form-group {
		border: 0;
	}
	
	.cu-form-group uni-input {
		padding: 0 30upx;
	}
	
	.uni-input {
		padding: 0 30upx;
	}
	
	.cu-form-group uni-textarea {
		padding: 30upx;
		margin: 0;
	}
	
	.cu-form-group uni-picker::after {
		line-height: 88rpx;
	}
	
	.select .uni-input {
		line-height: 88rpx;
	}
	
	.input .right-input {
		line-height: 88rpx;
	}
</style>
