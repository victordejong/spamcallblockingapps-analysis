package com.inmobi.sdk;

import android.content.Context;
import android.location.Location;
import com.inmobi.ads.C8141b;
import com.inmobi.ads.p500a.C8055f;
import com.inmobi.ads.p503d.C8224a;
import com.inmobi.ads.p503d.C8233b;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.C8408e;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8401e;
import com.inmobi.commons.core.utilities.p516b.C8404g;
import com.inmobi.commons.core.utilities.uid.C8416c;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.commons.p508a.C8327b;
import com.inmobi.p497a.C8003o;
import com.inmobi.p507b.C8321a;
import com.inmobi.rendering.p517a.C8444c;
import java.io.File;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/inmobi/sdk/InMobiSdk.class */
public final class InMobiSdk {
    public static final ExecutorService COMPONENT_SERVICE = Executors.newSingleThreadExecutor();
    public static final String IM_GDPR_CONSENT_AVAILABLE = "gdpr_consent_available";
    public static final String TAG = "InMobiSdk";

    /* renamed from: com.inmobi.sdk.InMobiSdk$7 */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/sdk/InMobiSdk$7.class */
    public static final /* synthetic */ class C84997 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f32990a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[LogLevel.values().length];
            f32990a = iArr;
            try {
                iArr[LogLevel.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32990a[LogLevel.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32990a[LogLevel.DEBUG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/sdk/InMobiSdk$AgeGroup.class */
    public enum AgeGroup {
        BELOW_18("below18"),
        BETWEEN_18_AND_24("between18and24"),
        BETWEEN_25_AND_29("between25and29"),
        BETWEEN_30_AND_34("between30and34"),
        BETWEEN_35_AND_44("between35and44"),
        BETWEEN_45_AND_54("between45and54"),
        BETWEEN_55_AND_65("between55and65"),
        ABOVE_65("above65");
        

        /* renamed from: a */
        public String f32991a;

        AgeGroup(String str) {
            this.f32991a = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.f32991a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/sdk/InMobiSdk$Education.class */
    public enum Education {
        HIGH_SCHOOL_OR_LESS("highschoolorless"),
        COLLEGE_OR_GRADUATE("collegeorgraduate"),
        POST_GRADUATE_OR_ABOVE("postgraduateorabove");
        

        /* renamed from: a */
        public String f32992a;

        Education(String str) {
            this.f32992a = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.f32992a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/sdk/InMobiSdk$Gender.class */
    public enum Gender {
        FEMALE("f"),
        MALE("m");
        

        /* renamed from: a */
        public String f32993a;

        Gender(String str) {
            this.f32993a = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.f32993a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/inmobi/sdk/InMobiSdk$LogLevel.class */
    public enum LogLevel {
        NONE,
        ERROR,
        DEBUG
    }

    public static void deInitComponents() {
        try {
            COMPONENT_SERVICE.execute(new Runnable() { // from class: com.inmobi.sdk.InMobiSdk.5
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        C8348b.m5847a().m5838c();
                        final C8366b a = C8366b.m5794a();
                        C8366b.f32527b.set(true);
                        a.f32532a.execute(new Runnable() { // from class: com.inmobi.commons.core.e.b.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (a.f32536j != null) {
                                    a.f32536j.m5863a();
                                    a.f32536j = null;
                                }
                            }
                        });
                        final C8321a a2 = C8321a.m5908a();
                        C8321a.f32360b.set(true);
                        a2.f32364a.execute(new Runnable() { // from class: com.inmobi.b.a.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (a2.f32368i != null) {
                                    a2.f32368i.m5863a();
                                    a2.f32368i = null;
                                }
                            }
                        });
                        C8003o.m6743a().m6741c();
                        C8233b.m6131d().m6142b();
                        C8224a.m6146a("native").m6142b();
                        C8055f a3 = C8055f.m6593a();
                        a3.f31532d.set(true);
                        a3.m6572c();
                    } catch (Exception e) {
                        String unused = InMobiSdk.TAG;
                        new StringBuilder("Encountered unexpected error in stopping SDK components; ").append(e.getMessage());
                        Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiSdk.TAG, "SDK encountered unexpected error while stopping internal components");
                    }
                }
            });
        } catch (Exception e) {
            new StringBuilder("Encountered unexpected error in stopping SDK components; ").append(e.getMessage());
            Logger.m5724a(Logger.InternalLogLevel.ERROR, TAG, "SDK encountered unexpected error while stopping internal components");
        }
    }

    public static String getVersion() {
        return "7.3.0";
    }

    public static boolean hasSdkVersionChanged(Context context) {
        return C8327b.m5880a(context) == null || !C8327b.m5880a(context).equals("7.3.0");
    }

    public static void init(Context context, String str) {
        init(context, str, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:43|44|(3:50|51|52)|53|54|55|56|57|(3:63|64|65)|66|67|68|(3:176|70|71)(41:82|83|(6:85|86|87|88|89|90)|91|92|93|94|95|96|97|98|99|(10:101|102|103|104|105|(6:110|111|112|106|107|108)|181|113|114|(3:116|117|118))|119|120|121|122|123|124|125|126|127|128|129|130|131|132|133|134|135|136|137|(4:139|140|141|(6:143|144|145|146|147|148))|174|149|150|168|178|169|172|173)|166|167|168|178|169|172|173) */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0317, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0318, code lost:
        r0 = new java.lang.StringBuilder("Error in submitting telemetry event : (");
        r0.append(r7.getMessage());
        r0.append(")");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void init(android.content.Context r7, java.lang.String r8, org.json.JSONObject r9) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.sdk.InMobiSdk.init(android.content.Context, java.lang.String, org.json.JSONObject):void");
    }

    public static void initComponents() {
        try {
            COMPONENT_SERVICE.execute(new Runnable() { // from class: com.inmobi.sdk.InMobiSdk.4
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        C8416c a = C8416c.m5632a();
                        try {
                            C8416c.m5629c();
                            a.m5630b();
                        } catch (Exception e) {
                            new StringBuilder("SDK encountered an unexpected error while initializing the UID helper component; ").append(e.getMessage());
                        }
                        C8416c.m5632a().m5630b();
                        C8348b.m5847a().m5840b();
                        C8444c.m5530a().m5522b();
                        final C8328a a2 = C8328a.m5878a();
                        C8328a.f32382b.set(false);
                        C8348b.m5847a().m5844a(a2.f32387c, a2);
                        a2.f32388d = a2.f32387c.f32396a;
                        a2.f32386a.execute(new Runnable() { // from class: com.inmobi.commons.core.a.a.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                C8328a.m5873b(a2);
                            }
                        });
                        C8366b.m5794a().m5786b();
                        final C8321a a3 = C8321a.m5908a();
                        C8321a.f32360b.set(false);
                        C8401e.m5677c();
                        C8348b.m5847a().m5844a(a3.f32365c, a3);
                        a3.f32367e = a3.f32365c.f31983b;
                        a3.f32364a.execute(new Runnable() { // from class: com.inmobi.b.a.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                C8321a.m5907a(a3);
                            }
                        });
                        C8141b.m6347a();
                        C8003o.m6743a().m6742b();
                        C8233b.m6131d().m6149a();
                        C8224a.m6146a("native").m6149a();
                        C8055f.m6593a().m6579b();
                    } catch (Exception e2) {
                        String unused = InMobiSdk.TAG;
                        new StringBuilder("Encountered unexpected error in starting SDK components: ").append(e2.getMessage());
                        Logger.m5724a(Logger.InternalLogLevel.DEBUG, InMobiSdk.TAG, "SDK encountered unexpected error while starting internal components");
                    }
                }
            });
        } catch (Exception e) {
            new StringBuilder("Encountered unexpected error in starting SDK components: ").append(e.getMessage());
            Logger.m5724a(Logger.InternalLogLevel.DEBUG, TAG, "SDK encountered unexpected error while starting internal components");
        }
    }

    public static void printGrantedPermissions() {
        COMPONENT_SERVICE.execute(new Runnable() { // from class: com.inmobi.sdk.InMobiSdk.3
            @Override // java.lang.Runnable
            public final void run() {
                StringBuilder sb = new StringBuilder("Permissions granted to SDK are :\nandroid.permission.INTERNET\nandroid.permission.ACCESS_NETWORK_STATE");
                for (int i = 0; i < 6; i++) {
                    String str = new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_WIFI_STATE", "android.permission.CHANGE_WIFI_STATE", "android.permission.VIBRATE", "com.google.android.gms.permission.ACTIVITY_RECOGNITION"}[i];
                    if (C8408e.m5641a(C8326a.m5891b(), "ads", str)) {
                        sb.append("\n");
                        sb.append(str);
                    }
                }
                Logger.m5724a(Logger.InternalLogLevel.DEBUG, InMobiSdk.TAG, sb.toString());
            }
        });
    }

    public static void resetMediaCache(final Context context) {
        final File a = C8326a.m5898a(context);
        COMPONENT_SERVICE.execute(new Runnable() { // from class: com.inmobi.sdk.InMobiSdk.6
            @Override // java.lang.Runnable
            public final void run() {
                C8326a.m5894a(a);
                C8326a.m5890b(context);
            }
        });
        if (!a.mkdir()) {
            a.isDirectory();
        }
    }

    public static void sendDbDeletionTelemetryEvent(String str) {
        if (C8326a.m5899a()) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("filename", str);
                hashMap.put("description", "DB Deleted : " + str);
                C8366b.m5794a();
                C8366b.m5789a("ads", "PersistentDataCleanFail", hashMap);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                sb.append(e.getMessage());
                sb.append(")");
            }
        }
    }

    public static void setAge(int i) {
        C8404g.m5671a(i);
    }

    public static void setAgeGroup(AgeGroup ageGroup) {
        C8404g.m5669a(ageGroup.toString().toLowerCase(Locale.ENGLISH));
    }

    public static void setApplicationMuted(boolean z) {
        C8326a.m5892a(z);
    }

    public static void setAreaCode(String str) {
        C8404g.m5666b(str);
    }

    public static void setEducation(Education education) {
        C8404g.m5658h(education.toString().toLowerCase(Locale.ENGLISH));
    }

    public static void setGender(Gender gender) {
        C8404g.m5659g(gender.toString().toLowerCase(Locale.ENGLISH));
    }

    public static void setInterests(String str) {
        C8404g.m5656j(str);
    }

    public static void setLanguage(String str) {
        C8404g.m5657i(str);
    }

    public static void setLocation(Location location) {
        C8404g.m5670a(location);
    }

    public static void setLocationWithCityStateCountry(String str, String str2, String str3) {
        C8404g.m5662d(str);
        C8404g.m5661e(str2);
        C8404g.m5660f(str3);
    }

    public static void setLogLevel(LogLevel logLevel) {
        int i = C84997.f32990a[logLevel.ordinal()];
        if (i == 1) {
            Logger.m5725a(Logger.InternalLogLevel.NONE);
        } else if (i == 2) {
            Logger.m5725a(Logger.InternalLogLevel.ERROR);
        } else if (i == 3) {
            Logger.m5725a(Logger.InternalLogLevel.DEBUG);
        }
    }

    public static void setPostalCode(String str) {
        C8404g.m5664c(str);
    }

    public static void setYearOfBirth(int i) {
        C8404g.m5667b(i);
    }

    public static void updateGDPRConsent(JSONObject jSONObject) {
        C8401e.m5680a(jSONObject);
    }
}
