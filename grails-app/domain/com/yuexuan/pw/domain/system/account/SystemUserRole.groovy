package com.yuexuan.pw.domain.system.account

import org.apache.commons.lang.builder.HashCodeBuilder

class SystemUserRole implements Serializable {

	SystemUser systemUser
	Role role

	boolean equals(other) {
		if (!(other instanceof SystemUserRole)) {
			return false
		}

		other.systemUser?.id == systemUser?.id &&
			other.role?.id == role?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (systemUser) builder.append(systemUser.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static SystemUserRole get(long systemUserId, long roleId) {
		find 'from SystemUserRole where systemUser.id=:systemUserId and role.id=:roleId',
			[systemUserId: systemUserId, roleId: roleId]
	}

	static SystemUserRole create(SystemUser systemUser, Role role, boolean flush = false) {
		new SystemUserRole(systemUser: systemUser, role: role).save(flush: flush, insert: true)
	}

	static boolean remove(SystemUser systemUser, Role role, boolean flush = false) {
		SystemUserRole instance = SystemUserRole.findBySystemUserAndRole(systemUser, role)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(SystemUser systemUser) {
		executeUpdate 'DELETE FROM SystemUserRole WHERE systemUser=:systemUser', [systemUser: systemUser]
	}

	static void removeAll(Role role) {
		executeUpdate 'DELETE FROM SystemUserRole WHERE role=:role', [role: role]
	}

	static mapping = {
		id composite: ['role', 'systemUser']
		version false
	}
}
