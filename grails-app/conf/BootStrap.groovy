import net.bull.javamelody.JdbcWrapper

import com.yuexuan.pw.data.InitCustomer
import com.yuexuan.pw.data.InitJingshuiqi
import com.yuexuan.pw.data.InitLvxin
import com.yuexuan.pw.data.InitPeijian


class BootStrap {
	def dataSource
	def initAll(){
		def initDataCollections
		initDataCollections = [
			new InitLvxin(),
			new InitPeijian(),
			new InitJingshuiqi(),
			new InitCustomer()
			
		]

		try {
			initDataCollections.each {it.populateData()}
		} catch (Throwable t) {
			log.error(t, t)
		}
	}
	
	
	
    def init = { servletContext ->
		dataSource.targetDataSource = JdbcWrapper.SINGLETON.createDataSourceProxy(dataSource.targetDataSource)
		environments {
			development {
				initAll()
				
			}
		}
    }
	
    def destroy = {
    }
	
	
}
