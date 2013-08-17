dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = org.hibernate.dialect.MySQL5DBDialect
	properties {
		maxActive = 50
		maxIdle = 25
		minIdle = 5
		initialSize = 5
		minEvictableIdleTimeMillis = 60000
		timeBetweenEvictionRunsMillis = 60000
		maxWait = 10000
		validationQuery = "/* ping */"

	}
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = false
	cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
	development {
		dataSource {
			//dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
			//url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
			dbCreate = "create-drop"
			logSql = true
			url = "jdbc:mysql://localhost/pure_water?useUnicode=true&amp;characterEncoding=utf-8"
			username = "root"
			password = "123456"
		}

	
	}
	test {
		dataSource {
			dbCreate = "create-drop"
			logSql = true
			url = "jdbc:mysql://localhost/pure_water"
			username = "root"
			password = "1234567"
		}

		dataSource_existing {
			username = "com.ccclubs"
			password = "admin@sys"
			url = "jdbc:sqlserver://115.236.18.123:36799;databaseName=EVnetCarSharing"

			driverClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
			dialect = "org.hibernate.dialect.SQLServerDialect"
			readOnly = true
		}
	}
	localtest {
		dataSource {
			dbCreate = "create-drop"
			logSql = true
			url = "jdbc:mysql://localhost/ccclubs"
			username = "root"
			password = "ccclubs2013"
		}
	}

	datadump {
		dataSource {
			dbCreate = "create-drop"
			logSql = true
			url = "jdbc:mysql://localhost/ccclubs"
			username = "root"
			password = "ccclubs2013"
		}

		dataSource_existing {
			username = "com.ccclubs"
			password = "admin@sys"
			url = "jdbc:sqlserver://60.191.57.34:36799;databaseName=EVnetCarSharing"

			driverClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
			dialect = "org.hibernate.dialect.SQLServerDialect"

			readOnly = true
		}
	}

	production {
		dataSource {
			dbCreate = "create-drop"
			url = "jdbc:mysql://121.199.42.155/ccclubs"
			username = "ccclubsdb"
			password = "NmUPoH6VEnuq8Y"

			//            dbCreate = "update"
			//            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
			//            pooled = true
			//            properties {
			//               maxActive = -1
			//               minEvictableIdleTimeMillis=1800000
			//               timeBetweenEvictionRunsMillis=1800000
			//               numTestsPerEvictionRun=3
			//               testOnBorrow=true
			//               testWhileIdle=true
			//               testOnReturn=true
			//               validationQuery="SELECT 1"
		}
	}
	production_admin {
		dataSource {
			url = "jdbc:mysql://121.199.42.155/ccclubs"
			username = "ccclubsdb"
			password = "NmUPoH6VEnuq8Y"

			//            dbCreate = "update"
			//            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
			//            pooled = true
			//            properties {
			//               maxActive = -1
			//               minEvictableIdleTimeMillis=1800000
			//               timeBetweenEvictionRunsMillis=1800000
			//               numTestsPerEvictionRun=3
			//               testOnBorrow=true
			//               testWhileIdle=true
			//               testOnReturn=true
			//               validationQuery="SELECT 1"
		}
	}
}