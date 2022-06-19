package p193e.p194a.p372b0.p394b.p404m;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.b0.b.m.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/m/d.class */
public final class C8410d {

    /* renamed from: a */
    public static final String f26088a = C22128a.m8639b2(C8410d.class, new StringBuilder(), "#ACTION_PROFILE_REFRESHED");

    /* renamed from: b */
    public static final Map<String, String> f26089b;

    /* renamed from: c */
    public static final Map<String, String> f26090c;

    static {
        HashMap hashMap = new HashMap();
        f26089b = hashMap;
        HashMap hashMap2 = new HashMap();
        f26090c = hashMap2;
        hashMap.put("profileFirstName", "first_name");
        hashMap.put("profileLastName", "last_name");
        hashMap.put("profileNumber", "phone_number");
        hashMap.put("profileNationalNumber", "national_number");
        hashMap.put("profileStatus", "status_message");
        hashMap.put("profileCity", "city");
        hashMap.put("profileStreet", "street");
        hashMap.put("profileZip", "zipcode");
        hashMap.put("profileEmail", AnalyticsConstants.EMAIL);
        hashMap.put("profileWeb", "url");
        hashMap.put("profileFacebook", "facebook_id");
        hashMap.put("profileGoogleIdToken", "google_id_token");
        hashMap.put("profileTwitter", "twitter_id");
        hashMap.put("profileGender", "gender");
        hashMap.put("profileAvatar", "avatar_url");
        hashMap.put("profileCompanyName", "w_company");
        hashMap.put("profileCompanyJob", "w_title");
        hashMap.put("profileAcceptAuto", "auto_accept");
        hashMap.put("profileTag", RemoteMessageConst.Notification.TAG);
        hashMap.put("profileBirthday", "birthday");
        hashMap2.put("profileBusiness", "w_is_business_number");
    }

    public C8410d() {
        throw new AssertionError();
    }
}
