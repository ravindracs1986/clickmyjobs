package com.clickmyjobs.portal.service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.clickmyjobs.portal.core.GenericRepository;
import com.clickmyjobs.portal.persist.entity.UserProfile;
import com.clickmyjobs.portal.persist.repo.UserProfileRepo;


@Service("userProfileService")
@Scope("prototype")
@Qualifier("userProfileService")
@Transactional
public class UserProfileService extends com.clickmyjobs.portal.core.AbstractService<UserProfile,Integer>{
	
	private static final Logger log = LoggerFactory.getLogger(UserProfileService.class);
	
	@Autowired
	UserProfileRepo userProfileRepo;
	@Override
	public GenericRepository<UserProfile> primaryDao() {
		return userProfileRepo;
	}
	
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public UserProfile getUserProfile(String email){
		log.info("findbyEmail method in UserProfileService class ");
		UserProfile usr= userProfileRepo.findbyEmail(email);
		return usr;
	}	
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public int updateAuthentication(String status,String email){
		log.info("updateAuthentication in UserProfileService class ");
		
		int usr= userProfileRepo.updateAuthentication(status,email);
		return usr;
	}
	
	
	/*@Transactional(readOnly=false,rollbackFor=Exception.class)
	public IscCrtValidationDtl updateOrInserIscCrt(IscCrtValidationDtlDto iscCrtValidationDtlDto){
		
		IscCrtValidationDtl iscCrtValidationDtl = null;
		iscCrtValidationDtl = dozerMapper.map(iscCrtValidationDtlDto, IscCrtValidationDtl.class);
		iscCrtValidationDtl.setCrtTs(DateUtil.convertDate2SqlTimeStamp(new Date()));
		iscCrtValidationDtl.setCrtUsrId("SYSTEM");
		log.info("getIscCrt method in IscCrtValidationService class wrkrPssprtNo:"+iscCrtValidationDtlDto.getWrkrPssprtNo()+",nationality:"+iscCrtValidationDtlDto.getNationality());
		IscCrtValidationDtl iscCrtDtl=iscCrtValidationDao.findIscCrtByPassNoAndNationality(iscCrtValidationDtlDto.getWrkrPssprtNo(), iscCrtValidationDtlDto.getNationality());
		if(null !=iscCrtDtl && iscCrtDtl.getNationality()!=null && iscCrtDtl.getWrkrPssprtNo()!=null && iscCrtDtl.getIsc_crt_validaty_date()!=null){
			log.info("CRT_Validation_DTL is getting update for Id:"+iscCrtDtl.getIsc_cer_id()+",and ISC_REF_ID is:"+iscCrtDtl.getIsc_ref_id());
			iscCrtDtl.setIsc_crt_validaty_old_date(iscCrtDtl.getIsc_crt_validaty_date());
			iscCrtDtl.setIsc_crt_validaty_date(iscCrtValidationDtl.getIsc_crt_validaty_date());
			iscCrtDtl.setModTs(DateUtil.convertDate2SqlTimeStamp(new Date()));
			iscCrtDtl.setModUsrId("ISC-GW");
			iscCrtDtl.setPyld_dtl_id(iscCrtValidationDtl.getPyld_dtl_id());
			iscCrtDtl.setPyld_ref_id(iscCrtValidationDtl.getPyld_ref_id());
			iscCrtDtl.setIsc_ref_id(iscCrtValidationDtl.getIsc_ref_id());
			super.update(iscCrtDtl);
			 
		}else{
			IscCrtValidationDtl iscCrtValidationDtlTemp= super.create(iscCrtValidationDtl);
			return iscCrtValidationDtlTemp;
			
		}
		
		return iscCrtDtl;
	}	*/
	
	/*@Transactional(readOnly=false,rollbackFor=Exception.class)
	public IscCrtValidationDtl updateCrtForFwcms(IscCrtValidationDtl iscCertValidationDtl){
		
		super.update(iscCertValidationDtl);
		return iscCertValidationDtl;
	}*/	

}
