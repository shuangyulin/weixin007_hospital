const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootq2g9s/",
            name: "springbootq2g9s",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootq2g9s/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "医院管理系统"
        } 
    }
}
export default base
