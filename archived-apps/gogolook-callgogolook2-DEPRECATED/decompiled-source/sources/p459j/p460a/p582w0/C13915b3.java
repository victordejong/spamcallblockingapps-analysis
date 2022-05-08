package p459j.p460a.p582w0;

import android.annotation.TargetApi;
import android.util.Base64;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.util.OJni;
import java.util.Map;
import p459j.p460a.p582w0.p587d5.C13974a;
import p459j.p460a.p582w0.p587d5.C13978e;
@Deprecated
@TargetApi(9)
/* renamed from: j.a.w0.b3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/b3.class */
public class C13915b3 {

    /* renamed from: a */
    public String f31283a;

    /* renamed from: j.a.w0.b3$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b3$b.class */
    public static class C13917b {

        /* renamed from: a */
        public static volatile C13915b3 f31284a = new C13915b3();
    }

    public C13915b3() {
        new SparseArray();
    }

    /* renamed from: a */
    public static int m3066a(@NonNull String str, int i) {
        return C13978e.f31386a.m9461a(str, Integer.valueOf(i));
    }

    /* renamed from: a */
    public static long m3065a(@NonNull String str, long j) {
        return C13978e.f31386a.m9460a(str, Long.valueOf(j));
    }

    /* renamed from: a */
    public static String m3063a(@NonNull String str, String str2) {
        return C13974a.f31382a.m9458a(str, str2);
    }

    /* renamed from: a */
    public static Map<String, ?> m3068a() {
        return C13978e.f31386a.m9470a();
    }

    /* renamed from: a */
    public static <T> void m3064a(@NonNull String str, @NonNull T t) {
        C13978e.f31386a.m9459a(str, (String) t);
    }

    /* renamed from: a */
    public static void m3061a(String... strArr) {
        C13978e.f31386a.m9456a(strArr);
    }

    /* renamed from: a */
    public static boolean m3067a(String str) {
        return C13978e.f31386a.m9463a(str);
    }

    /* renamed from: a */
    public static boolean m3062a(@NonNull String str, boolean z) {
        return C13978e.f31386a.m9462a(str, Boolean.valueOf(z));
    }

    /* renamed from: b */
    public static long m3058b(String str, int i) {
        return m3065a(str, Long.MAX_VALUE) + (i * AdUtils.ONE_DAY);
    }

    /* renamed from: b */
    public static String m3056b(@NonNull String str, String str2) {
        return C13978e.f31386a.m9458a(str, str2);
    }

    /* renamed from: b */
    public static void m3060b() {
        C13978e.f31386a.m9455b();
    }

    /* renamed from: b */
    public static void m3057b(@NonNull String str, long j) {
        m3064a(str, Long.valueOf(j));
    }

    /* renamed from: b */
    public static void m3055b(@NonNull String str, boolean z) {
        m3064a(str, Boolean.valueOf(z));
    }

    /* renamed from: b */
    public static boolean m3059b(@NonNull String str) {
        return C13978e.f31386a.m9454b(str);
    }

    /* renamed from: c */
    public static int m3053c(@NonNull String str) {
        return C13978e.f31386a.m9453c(str);
    }

    /* renamed from: c */
    public static String m3054c() {
        if (m3050d().f31283a == null) {
            String a = C13974a.f31382a.m9458a("cdn_signed_secret", "");
            if (!C14217x3.m2160b(a)) {
                byte[] a2 = C13992e4.m2923a(Base64.decode(a, 0), OJni.getEncryptKey(MyApplication.m29013o()).getBytes());
                m3050d().f31283a = new String(a2);
                LogManager.m28568c("CdnSigned : " + m3050d().f31283a);
            }
        }
        return m3050d().f31283a;
    }

    /* renamed from: c */
    public static boolean m3052c(String str, int i) {
        return C13978e.m2946a(str, i);
    }

    /* renamed from: c */
    public static boolean m3051c(String str, String str2) {
        return C13978e.m2945a(str, str2);
    }

    /* renamed from: d */
    public static long m3049d(@NonNull String str) {
        return C13978e.f31386a.m9452d(str);
    }

    /* renamed from: d */
    public static C13915b3 m3050d() {
        return C13917b.f31284a;
    }

    /* renamed from: d */
    public static void m3048d(@NonNull String str, int i) {
        m3064a(str, Integer.valueOf(i));
    }

    /* renamed from: d */
    public static void m3047d(@NonNull String str, @NonNull String str2) {
        C13974a.f31382a.m9459a(str, str2);
    }

    /* renamed from: e */
    public static String m3045e(@NonNull String str) {
        if (m3042f(str)) {
            return C13978e.f31386a.m9451e(str);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: e */
    public static void m3046e() {
        C13978e.m2948a();
    }

    /* renamed from: e */
    public static void m3044e(@NonNull String str, @NonNull String str2) {
        m3064a(str, str2);
    }

    /* renamed from: f */
    public static void m3043f() {
    }

    /* renamed from: f */
    public static boolean m3042f(String str) {
        return C13978e.m2947a(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @NonNull
    /* renamed from: g */
    public static String m3041g(@NonNull String str) {
        char c;
        switch (str.hashCode()) {
            case -1616854848:
                if (str.equals("isStrangerOutgoingPopup")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -126321993:
                if (str.equals("isStrangerIncomingEndPopup")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 492167821:
                if (str.equals("isContactIncomingEndPopup")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 869759024:
                if (str.equals("isContactIncomingPopup")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1374228477:
                if (str.equals("isStrangerOutgoingEndPopup")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1766187078:
                if (str.equals("isStrangerIncomingPopup")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1781684394:
                if (str.equals("isContactOutgoingPopup")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1992718291:
                if (str.equals("isContactOutgoingEndPopup")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
                return "is_stranger_call_popup";
            case 4:
            case 5:
            case 6:
            case 7:
                return "is_contact_call_popup";
            default:
                return str;
        }
    }
}
