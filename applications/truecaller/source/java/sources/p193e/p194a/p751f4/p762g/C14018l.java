package p193e.p194a.p751f4.p762g;

import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.TrueApp;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.log.AssertionUtil;
import e.m.f.a.j;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p244k.p245a.AbstractC6543e1;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.f4.g.l */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/l.class */
public final class C14018l {

    /* renamed from: a */
    public static final Set<j.b> f40534a = Collections.unmodifiableSet(EnumSet.of(j.b.c, j.b.d, j.b.e));

    /* renamed from: a */
    public static void m20850a(ContactDto.Contact contact, long j, String str, AbstractC8371e abstractC8371e, j jVar) {
        contact.searchTime = j;
        contact.searchQuery = str;
        contact.source = 1;
        if (!"public".equalsIgnoreCase(contact.access)) {
            contact.phones = null;
        } else {
            List<ContactDto.Contact.PhoneNumber> list = contact.phones;
            if (list != null) {
                for (ContactDto.Contact.PhoneNumber phoneNumber : list) {
                    if ("senderId".equals(phoneNumber.type)) {
                        phoneNumber.e164Format = phoneNumber.f11492id;
                    }
                    if (TextUtils.isEmpty(phoneNumber.telType)) {
                        phoneNumber.telType = String.valueOf(ContactDto.Contact.PhoneNumber.EMPTY_TEL_TYPE);
                    }
                    if (TextUtils.isEmpty(contact.defaultNumber)) {
                        contact.defaultNumber = C19231g0.m13810G(phoneNumber.e164Format, phoneNumber.nationalFormat);
                    }
                    if (phoneNumber.rawNumberFormat == null && f40534a.contains(jVar.E(contact.searchQuery, phoneNumber.e164Format))) {
                        phoneNumber.rawNumberFormat = str;
                    }
                }
            }
        }
        ContactDto.Contact.BusinessProfile businessProfile = contact.businessProfileNetworkResponse;
        if (businessProfile != null) {
            ContactDto.Contact.Business business = new ContactDto.Contact.Business();
            business.branch = businessProfile.branch;
            business.department = businessProfile.department;
            business.companySize = businessProfile.companySize;
            if (businessProfile.openHours != null) {
                StringBuilder sb = new StringBuilder();
                for (ContactDto.Contact.BusinessProfile.OpenHours openHours : businessProfile.openHours) {
                    List<Integer> list2 = openHours.weekdays;
                    if (list2 != null && openHours.opens != null && openHours.closes != null) {
                        for (Integer num : list2) {
                            sb.append(num);
                        }
                        sb.append(StringConstant.SPACE);
                        sb.append(openHours.opens);
                        sb.append(StringConstant.SPACE);
                        sb.append(openHours.closes);
                        sb.append("|");
                    }
                }
                business.openingHours = sb.toString();
            } else {
                business.openingHours = null;
            }
            business.landline = businessProfile.landLine;
            business.score = businessProfile.score;
            business.swishNumber = businessProfile.swishNumber;
            List<ContactDto.Contact.BusinessProfile.MediaCallerIDs> list3 = businessProfile.mediaCallerIDs;
            if (list3 != null && !list3.isEmpty()) {
                List<ContactDto.Contact.BusinessProfile.MediaCallerIDs> list4 = businessProfile.mediaCallerIDs;
                l.e(list4, "mediaCallerIDsList");
                StringBuilder sb2 = new StringBuilder();
                for (ContactDto.Contact.BusinessProfile.MediaCallerIDs mediaCallerIDs : list4) {
                    try {
                        sb2.append(URLEncoder.encode(mediaCallerIDs.url, StringConstant.UTF8));
                        sb2.append(";");
                        sb2.append(mediaCallerIDs.mediaType);
                        sb2.append(";");
                        sb2.append(mediaCallerIDs.orientation);
                        sb2.append(";");
                        Long l = mediaCallerIDs.ttl;
                        l.d(l, "mediaCallerId.ttl");
                        sb2.append(l.longValue());
                        sb2.append("|");
                    } catch (UnsupportedEncodingException e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                    }
                }
                String sb3 = sb2.toString();
                l.d(sb3, "mediaCallerIDs.toString()");
                business.mediaCallerIDs = sb3;
            }
            List<ContactDto.Contact.BusinessProfile.AppStores> list5 = businessProfile.appStores;
            if (list5 != null && !list5.isEmpty()) {
                List<ContactDto.Contact.BusinessProfile.AppStores> list6 = businessProfile.appStores;
                l.e(list6, "appStoresList");
                StringBuilder sb4 = new StringBuilder();
                for (ContactDto.Contact.BusinessProfile.AppStores appStores : list6) {
                    try {
                        sb4.append(URLEncoder.encode(appStores.url, StringConstant.UTF8));
                        sb4.append(";");
                        sb4.append(appStores.linkType);
                        sb4.append("|");
                    } catch (UnsupportedEncodingException e2) {
                        AssertionUtil.reportThrowableButNeverCrash(e2);
                    }
                }
                String sb5 = sb4.toString();
                l.d(sb5, "appStoreString.toString()");
                business.appStores = sb5;
            }
            List<ContactDto.Contact.BusinessProfile.BrandedMedia> list7 = businessProfile.brandedMedia;
            if (list7 != null && !list7.isEmpty()) {
                List<ContactDto.Contact.BusinessProfile.BrandedMedia> list8 = businessProfile.brandedMedia;
                l.e(list8, "brandedMediaList");
                StringBuilder sb6 = new StringBuilder();
                for (ContactDto.Contact.BusinessProfile.BrandedMedia brandedMedia : list8) {
                    try {
                        sb6.append(URLEncoder.encode(brandedMedia.url, StringConstant.UTF8));
                        sb6.append(";");
                        sb6.append(brandedMedia.mediaType);
                        sb6.append("|");
                    } catch (UnsupportedEncodingException e3) {
                        AssertionUtil.reportThrowableButNeverCrash(e3);
                    }
                }
                String sb7 = sb6.toString();
                l.d(sb7, "brandedMediaString.toString()");
                business.brandedMedia = sb7;
            }
            contact.business = business;
            ContactDto.Contact.Style style = new ContactDto.Contact.Style();
            style.backgroundColor = businessProfile.backgroundColor;
            List<String> list9 = businessProfile.imageUrls;
            if (list9 == null || list9.isEmpty()) {
                style.imageUrls = null;
            } else {
                StringBuilder sb8 = new StringBuilder();
                for (String str2 : businessProfile.imageUrls) {
                    try {
                        sb8.append(URLEncoder.encode(str2, StringConstant.UTF8));
                        sb8.append("|");
                    } catch (UnsupportedEncodingException e4) {
                        AssertionUtil.reportThrowableButNeverCrash(e4);
                    }
                }
                style.imageUrls = sb8.toString();
            }
            contact.style = style;
            contact.badges.add("business");
        }
        ContactDto.Contact.SpamInfo spamInfo = contact.spamInfo;
        if (spamInfo != null) {
            ContactDto.Contact.SpamData spamData = new ContactDto.Contact.SpamData();
            ContactDto.Contact.SpamInfo.SpamStats spamStats = spamInfo.spamStats;
            if (spamStats != null) {
                spamData.numReports60days = spamStats.numReports60days;
                spamData.numCalls60days = spamStats.numCalls60days;
                spamData.numCalls60DaysPointerPosition = spamStats.numCalls60DaysPointerPosition;
                List<Integer> list10 = spamStats.numCallsHourly;
                if (list10 != null) {
                    String obj = list10.toString();
                    spamData.numCallsHourly = obj.substring(1, obj.length() - 1).replaceAll("\\s", "");
                } else {
                    spamData.numCallsHourly = null;
                }
            } else {
                spamData.numReports60days = null;
                spamData.numCalls60days = null;
                spamData.numCalls60DaysPointerPosition = null;
                spamData.numCallsHourly = null;
            }
            List<Integer> list11 = spamInfo.spamCategories;
            if (list11 != null) {
                String obj2 = list11.toString();
                contact.spamCategoryIds = obj2.substring(1, obj2.length() - 1).replaceAll("\\s", "");
            } else {
                contact.spamCategoryIds = null;
            }
            spamData.spamVersion = spamInfo.spamVersion;
            contact.spamData = spamData;
            contact.spamScore = spamInfo.spamScore;
            contact.spamType = spamInfo.spamType;
        }
        if (!(abstractC8371e instanceof AbstractC8371e.C8372a)) {
            contact.imId = null;
        }
    }

    /* renamed from: b */
    public static void m20849b(ContactDto.Contact contact) {
        String str = contact.imId;
        if (str == null || str.isEmpty()) {
            return;
        }
        List<ContactDto.Contact.PhoneNumber> list = contact.phones;
        String str2 = (list == null || list.isEmpty()) ? null : contact.phones.get(0).e164Format;
        AbstractC19854f<AbstractC6543e1> mo12155w5 = TrueApp.m36032b0().mo10154s().mo12155w5();
        if (h.m(str2)) {
            mo12155w5.mo11854a().mo30790b(contact.imId, str2, false);
        }
        if (!h.m(contact.f11490id)) {
            return;
        }
        mo12155w5.mo11854a().mo30786f(contact.imId, contact.f11490id, false);
    }
}
