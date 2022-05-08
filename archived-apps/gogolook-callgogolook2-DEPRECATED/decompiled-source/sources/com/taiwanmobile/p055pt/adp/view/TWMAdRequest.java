package com.taiwanmobile.p055pt.adp.view;

import android.content.Context;
import android.location.Location;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.TWMAdRequest */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdRequest.class */
public class TWMAdRequest {
    public static final String NOT_TESTING_DEVICE = "0";
    public static final String TESTING_DEVICE = "1";
    public static final String VERSION = "7.0.2";

    /* renamed from: a */
    public Location f9642a;

    /* renamed from: c */
    public int f9644c;

    /* renamed from: d */
    public Map<String, String> f9645d;

    /* renamed from: e */
    public Date f9646e;

    /* renamed from: b */
    public Gender f9643b = Gender.UNKNOWN;

    /* renamed from: f */
    public Set<String> f9647f = null;

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdRequest$1 */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdRequest$1.class */
    public static /* synthetic */ class C40671 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9648a = new int[Gender.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f9648a[Gender.MALE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9648a[Gender.FEMALE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9648a[Gender.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdRequest$ErrorCode */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode.class */
    public enum ErrorCode {
        INTERNAL_ERROR,
        INVALID_REQUEST,
        NETWORK_ERROR,
        NO_FILL
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdRequest$Gender */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdRequest$Gender.class */
    public enum Gender {
        MALE,
        FEMALE,
        UNKNOWN
    }

    public void addKeyword(String str) {
    }

    public void addKeywords(Set<String> set) {
    }

    public TWMAdRequest addMediationExtra(String str, Object obj) {
        return null;
    }

    public TWMAdRequest addTestDevice(String str) {
        if (this.f9647f == null) {
            this.f9647f = new HashSet();
        }
        this.f9647f.add(str);
        return this;
    }

    public int getAge() {
        return this.f9644c;
    }

    public Date getBirthday() {
        return this.f9646e;
    }

    public String getBirthdayStr() {
        return this.f9646e != null ? new SimpleDateFormat("yyyy-MM-dd", Locale.TAIWAN).format(this.f9646e) : "";
    }

    public String getDeviceTestMark(Context context) {
        return isTestDevice(context) ? "1" : "0";
    }

    public Gender getGender() {
        return this.f9643b;
    }

    public String getGenderMark() {
        int i = C40671.f9648a[this.f9643b.ordinal()];
        String str = "O";
        if (i == 1) {
            str = "M";
        } else if (i == 2) {
            str = "F";
        }
        return str;
    }

    public Set<String> getKeywords() {
        return null;
    }

    public Location getLocation() {
        return this.f9642a;
    }

    public <T> T getNetworkExtras(Class<T> cls) {
        return null;
    }

    public Map<String, String> getProperties() {
        return this.f9645d;
    }

    public String getPropertyByKey(String str) {
        Map<String, String> map = this.f9645d;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public Map<String, Object> getRequestMap(Context context) {
        return null;
    }

    public boolean isTestDevice(Context context) {
        if (this.f9647f == null) {
            return false;
        }
        return this.f9647f.contains(C10832d.m10460q(context));
    }

    public TWMAdRequest removeNetworkExtras(Class<?> cls) {
        return null;
    }

    public void setAge(int i) {
        this.f9644c = i;
    }

    public TWMAdRequest setBirthday(Calendar calendar) {
        if (calendar == null) {
            this.f9646e = null;
        } else {
            setBirthday(calendar.getTime());
        }
        return this;
    }

    public TWMAdRequest setBirthday(Date date) {
        if (date == null) {
            this.f9646e = null;
        } else {
            this.f9646e = new Date(date.getTime());
        }
        return this;
    }

    public TWMAdRequest setGender(Gender gender) {
        this.f9643b = gender;
        return this;
    }

    public TWMAdRequest setLocation(Location location) {
        this.f9642a = location;
        return this;
    }

    public TWMAdRequest setMediationExtras(Map<String, Object> map) {
        return null;
    }

    public TWMAdRequest setProperties(Map<String, String> map) {
        this.f9645d = map;
        return this;
    }

    public TWMAdRequest setProperty(String str, String str2) {
        if (this.f9645d == null) {
            this.f9645d = new HashMap();
        }
        this.f9645d.put(str, str2);
        return this;
    }

    public TWMAdRequest setTestDevices(Set<String> set) {
        this.f9647f = set;
        return this;
    }
}
