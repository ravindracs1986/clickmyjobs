
package com.clickmyjobs.portal.core;

import java.sql.Timestamp;


public abstract class AbstractEntity {

		//public abstract String getCrtUsrId();
		//public abstract void setCrtUsrId(String crtUsrId);
		public abstract Timestamp getCrtTs();
		public abstract void setCrtTs(Timestamp crtTs);
		
		// set the update id & time stamp details for every transaction @each entity
		//public abstract String getModUsrId();
		//public abstract void setModUsrId(String modUsrId);
		//public abstract Timestamp getModTs();
		//public abstract void setModTs(Timestamp modTs);
	
}