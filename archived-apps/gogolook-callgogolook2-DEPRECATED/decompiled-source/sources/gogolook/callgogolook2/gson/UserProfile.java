package gogolook.callgogolook2.gson;

import android.text.TextUtils;
import com.google.gson.Gson;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p384e.AbstractC10102h;
import p081h.p203i.p384e.AbstractC10103i;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10108n;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p459j.p460a.p536l0.C13008c;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/UserProfile.class */
public class UserProfile {
    public static final String CARDCACHEKEY = "UserProfileStatusV3";
    public static final String CARDCATE_KEY_CID = "cid";
    public static final String CARDCATE_NAME_PERSONAL = "personal";
    public static final String CARD_CATE_SEPARATOR = ", ";
    public static final int CURRENT_CARD_VERSION = 3;
    public static final String KEY_CONTACT_INFO_TYPE = "type";
    public static final String KEY_CONTACT_INFO_VALUE = "info";
    public static final String SAP = "///";
    public static final int TIER_BASIC = 0;
    public static final int TIER_DEFAULT = -1;
    public static final int TIER_PLUS = 1;
    public static final int TIER_PRO = 2;
    public static final String TYPE_CONTACT_INFO_EMAIL = "email";
    public static final String TYPE_CONTACT_INFO_LINE = "line";
    public static final String TYPE_CONTACT_INFO_WEBSITE = "website";
    public static final Gson gsonParser;
    public static UserProfile sCurrentProfile;
    public static UserProfile sEditingProfile;
    public AccountInfo account_info;
    public CardStatus card_status;
    public JSONObject card_type;
    public JSONArray contact_info;
    public JSONObject cover;
    public String description;
    public JSONObject hourj;
    public String images_prefix;
    public String images_prefix_o;
    public String intro;
    public String[] keywords;
    public String name;
    public long[] openHour;
    public HashMap<String, Long> openHourMap;
    @AbstractC10120c("hourd")
    public String openHourNote;
    public String[] openHourRaw;
    public JSONArray photos;
    public JSONObject profile;
    public String[] service_area;
    public static final SimpleDateFormat DATE_DISPLAY_FORMAT = new SimpleDateFormat("yyyy/MM/dd HH:mm");
    public static long sLastModifiedTime = 0;
    public int carrier = Integer.MIN_VALUE;
    public String addr_city = "";
    public String addr_district = "";
    public String addr_full = "";
    public int remaining_etimes = 3;
    public ArrayList<C14099o3.C14106f> citys = new ArrayList<>();
    public boolean physical_store = false;
    public boolean off_site_service = false;
    public int red = 0;

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/UserProfile$AccountInfo.class */
    public class AccountInfo {
        public int tier = -1;
        public long stime = -1;
        public long etime = -1;

        public AccountInfo() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/UserProfile$CardStatus.class */
    public static class CardStatus {
        public static final int STATUS_PAY_NOT_PAID = -1;
        public static final int STATUS_PAY_OK = 1;
        public int display = 0;
        public int payment = 1;
        public int search = 0;
        public int process = -1;
        public int version = -1;
    }

    static {
        C10099e eVar = new C10099e();
        eVar.m13384a(JSONObject.class, new AbstractC10103i<JSONObject>() { // from class: gogolook.callgogolook2.gson.UserProfile.2
            @Override // p081h.p203i.p384e.AbstractC10103i
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public JSONObject mo13381a(AbstractC10104j jVar, Type type, AbstractC10102h hVar) throws C10108n {
                try {
                    return new JSONObject(jVar.toString());
                } catch (JSONException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        });
        eVar.m13384a(JSONArray.class, new AbstractC10103i<JSONArray>() { // from class: gogolook.callgogolook2.gson.UserProfile.1
            @Override // p081h.p203i.p384e.AbstractC10103i
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public JSONArray mo13381a(AbstractC10104j jVar, Type type, AbstractC10102h hVar) throws C10108n {
                try {
                    return new JSONArray(jVar.toString());
                } catch (JSONException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        });
        gsonParser = eVar.m13388a();
    }

    public UserProfile() {
        m28129m();
    }

    /* renamed from: a */
    public static long m28144a(JSONArray jSONArray) throws JSONException {
        long j = 0;
        for (int i = 0; i < jSONArray.length(); i++) {
            j = (long) (j + Math.pow(2.0d, (int) (jSONArray.getDouble(i) * 2.0d)));
        }
        return j;
    }

    /* renamed from: a */
    public static void m28146a(UserProfile userProfile) {
        sCurrentProfile = userProfile;
    }

    /* renamed from: a */
    public static boolean m28145a(String str) {
        boolean z = !TextUtils.equals(str, m28127o());
        if (z) {
            C13915b3.m3047d(CARDCACHEKEY, str);
            m28146a(m28141b(str));
            sLastModifiedTime = System.currentTimeMillis();
        }
        return z;
    }

    /* renamed from: b */
    public static UserProfile m28141b(String str) {
        try {
            return m28139c(new JSONObject(str).getJSONObject("result").toString());
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public static UserProfile m28139c(String str) throws JSONException {
        if (C14217x3.m2160b(str)) {
            return null;
        }
        UserProfile userProfile = (UserProfile) gsonParser.m30982a(str, (Class<Object>) UserProfile.class);
        userProfile.m28143a(userProfile.card_type);
        userProfile.m28133i();
        C13008c.m4808a(userProfile.images_prefix, userProfile.images_prefix_o, userProfile.profile, userProfile.cover, userProfile.photos);
        if (userProfile.m28140c() <= 2) {
            userProfile.card_type = new JSONObject();
        }
        return userProfile;
    }

    /* renamed from: n */
    public static UserProfile m28128n() {
        if (sCurrentProfile == null) {
            sCurrentProfile = m28141b(m28127o());
        }
        if (sCurrentProfile == null) {
            sCurrentProfile = new UserProfile();
        }
        return sCurrentProfile;
    }

    /* renamed from: o */
    public static String m28127o() {
        return C13915b3.m3063a(CARDCACHEKEY, "");
    }

    /* renamed from: p */
    public static long m28126p() {
        return sLastModifiedTime;
    }

    /* renamed from: q */
    public static boolean m28125q() {
        return C13915b3.m3062a("card_beta_expired", false);
    }

    /* renamed from: a */
    public final void m28147a() {
        this.openHour = new long[7];
        int i = 0;
        while (true) {
            long[] jArr = this.openHour;
            if (i < jArr.length) {
                jArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m28143a(JSONObject jSONObject) throws JSONException {
        if (jSONObject != null) {
            this.card_type = jSONObject;
        }
    }

    /* renamed from: b */
    public final void m28142b() {
        this.openHourRaw = new String[7];
        int i = 0;
        while (true) {
            String[] strArr = this.openHourRaw;
            if (i < strArr.length) {
                strArr[i] = "[]";
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public int m28140c() {
        return this.card_status.version;
    }

    public UserProfile clone() {
        UserProfile userProfile = new UserProfile();
        userProfile.name = this.name;
        userProfile.description = this.description;
        userProfile.card_status = new CardStatus();
        CardStatus cardStatus = userProfile.card_status;
        CardStatus cardStatus2 = this.card_status;
        cardStatus.search = cardStatus2.search;
        cardStatus.display = cardStatus2.display;
        cardStatus.payment = cardStatus2.payment;
        cardStatus.process = cardStatus2.process;
        cardStatus.version = cardStatus2.version;
        JSONObject jSONObject = this.card_type;
        if (jSONObject != null) {
            try {
                userProfile.card_type = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        JSONArray jSONArray = this.contact_info;
        if (jSONArray != null) {
            try {
                userProfile.contact_info = new JSONArray(jSONArray.toString());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        userProfile.carrier = this.carrier;
        userProfile.intro = this.intro;
        String[] strArr = this.keywords;
        String[] strArr2 = null;
        userProfile.keywords = strArr == null ? null : (String[]) strArr.clone();
        userProfile.addr_city = this.addr_city;
        userProfile.addr_district = this.addr_district;
        userProfile.addr_full = this.addr_full;
        userProfile.off_site_service = this.off_site_service;
        userProfile.red = this.red;
        userProfile.physical_store = this.physical_store;
        String[] strArr3 = this.service_area;
        userProfile.service_area = strArr3 == null ? null : (String[]) strArr3.clone();
        HashMap<String, Long> hashMap = this.openHourMap;
        userProfile.openHourMap = hashMap == null ? null : new HashMap<>(hashMap);
        long[] jArr = this.openHour;
        userProfile.openHour = jArr == null ? null : (long[]) jArr.clone();
        String[] strArr4 = this.openHourRaw;
        if (strArr4 != null) {
            strArr2 = (String[]) strArr4.clone();
        }
        userProfile.openHourRaw = strArr2;
        userProfile.openHourNote = this.openHourNote;
        userProfile.account_info = new AccountInfo();
        AccountInfo accountInfo = userProfile.account_info;
        AccountInfo accountInfo2 = this.account_info;
        accountInfo.tier = accountInfo2.tier;
        accountInfo.etime = accountInfo2.etime;
        accountInfo.stime = accountInfo2.stime;
        return userProfile;
    }

    /* renamed from: d */
    public int m28138d() {
        CardStatus cardStatus = this.card_status;
        return cardStatus == null ? !m28131k() : cardStatus.display;
    }

    /* renamed from: e */
    public String m28137e() {
        return TextUtils.isEmpty(this.name) ? "" : this.name;
    }

    /* renamed from: f */
    public int m28136f() {
        CardStatus cardStatus = this.card_status;
        if (cardStatus == null) {
            return -1;
        }
        return cardStatus.process;
    }

    /* renamed from: g */
    public int m28135g() {
        if (this.card_status == null) {
            this.card_status = new CardStatus();
        }
        return this.card_status.search;
    }

    /* renamed from: h */
    public boolean m28134h() {
        return m28136f() != -1;
    }

    /* renamed from: i */
    public void m28133i() {
        this.openHourMap = new HashMap<>();
        m28147a();
        m28142b();
        this.openHourRaw = new String[7];
        try {
            if (this.hourj != null) {
                for (int i = 0; i < this.openHourRaw.length; i++) {
                    String valueOf = String.valueOf(i);
                    if (this.hourj.has(valueOf)) {
                        this.openHourRaw[i] = this.hourj.getJSONArray(valueOf).toString();
                        long a = m28144a(this.hourj.getJSONArray(valueOf));
                        this.openHour[i] = a;
                        this.openHourMap.put(valueOf, Long.valueOf(a));
                    } else {
                        this.openHourRaw[i] = "[]";
                        this.openHour[i] = 0;
                        this.openHourMap.put(valueOf, 0L);
                    }
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    public boolean m28132j() {
        CardStatus cardStatus = this.card_status;
        return cardStatus != null && cardStatus.payment == -1;
    }

    /* renamed from: k */
    public boolean m28131k() {
        return C14137r4.m2379a(this.card_type);
    }

    /* renamed from: l */
    public boolean m28130l() {
        CardStatus cardStatus = this.card_status;
        return cardStatus != null && cardStatus.process == 2;
    }

    /* renamed from: m */
    public final void m28129m() {
        this.name = null;
        this.description = null;
        this.card_status = new CardStatus();
        this.card_type = new JSONObject();
        this.contact_info = null;
        this.carrier = Integer.MIN_VALUE;
        this.intro = null;
        this.keywords = null;
        this.addr_city = "";
        this.addr_district = "";
        this.addr_full = "";
        this.service_area = new String[0];
        this.keywords = new String[0];
        this.openHourMap = null;
        this.openHour = null;
        this.openHourRaw = null;
        this.openHourNote = null;
        this.off_site_service = false;
        this.physical_store = false;
        this.red = 0;
        this.account_info = new AccountInfo();
    }
}
