import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import yiyuanxinxi from '@/views/modules/yiyuanxinxi/list'
    import zaixianwenzhen from '@/views/modules/zaixianwenzhen/list'
    import storeup from '@/views/modules/storeup/list'
    import tijianbaogao from '@/views/modules/tijianbaogao/list'
    import keshixinxi from '@/views/modules/keshixinxi/list'
    import paibanxinxi from '@/views/modules/paibanxinxi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import binglixinxi from '@/views/modules/binglixinxi/list'
    import wenzhenhuifu from '@/views/modules/wenzhenhuifu/list'
    import yisheng from '@/views/modules/yisheng/list'
    import keshiyuyue from '@/views/modules/keshiyuyue/list'
    import config from '@/views/modules/config/list'
    import discusskeshixinxi from '@/views/modules/discusskeshixinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/yiyuanxinxi',
        name: '医院信息',
        component: yiyuanxinxi
      }
      ,{
	path: '/zaixianwenzhen',
        name: '在线问诊',
        component: zaixianwenzhen
      }
      ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
      ,{
	path: '/tijianbaogao',
        name: '体检报告',
        component: tijianbaogao
      }
      ,{
	path: '/keshixinxi',
        name: '科室信息',
        component: keshixinxi
      }
      ,{
	path: '/paibanxinxi',
        name: '排班信息',
        component: paibanxinxi
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/binglixinxi',
        name: '病历信息',
        component: binglixinxi
      }
      ,{
	path: '/wenzhenhuifu',
        name: '问诊回复',
        component: wenzhenhuifu
      }
      ,{
	path: '/yisheng',
        name: '医生',
        component: yisheng
      }
      ,{
	path: '/keshiyuyue',
        name: '科室预约',
        component: keshiyuyue
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/discusskeshixinxi',
        name: '科室信息评论',
        component: discusskeshixinxi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
