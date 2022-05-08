package p459j.p460a.p582w0.p590x4;

import android.os.Build;
import android.util.LruCache;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import gogolook.callgogolook2.gson.CallAction;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p590x4.C14296p;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p459j.p460a.p582w0.p594z4.C14336c;
import p459j.p460a.p601x0.p602a.C14440c;
import p459j.p460a.p601x0.p602a.C14446h;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u001eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J(\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0007J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u001bH\u0007J@\u0010\u001c\u001a\u00020\u0010*\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b0\u00072\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J<\u0010\u001d\u001a\u0004\u0018\u00010\t*\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b0\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R%\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b0\u0007¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u001f"}, m815d2 = {"Lgogolook/callgogolook2/util/analytics/AbnormalCallLogAnalytics;", "", "()V", "EVENT_ABNORMAL_CALL_LOG_TYPE", "", CallAction.DONE_TAG, "callCache", "Landroid/util/LruCache;", "", "Lgogolook/callgogolook2/util/analytics/AbnormalCallLogAnalytics$Call;", "getCallCache", "()Landroid/util/LruCache;", "parseE164", "number", "region", "putCallCache", "", "time", "", "duration", "", "type", "trackAbnormalType", "helper", "Lgogolook/callgogolook2/utils/loadinghelper/CallLoadingHelper;", "trackCallLogRegion", "trackSmsLogRegion", "Lgogolook/callgogolook2/utils/loadinghelper/SmsLoadingHelper;", "addCall", "findCall", "Call", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.x4.c */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/c.class */
public final class C14245c {

    /* renamed from: b */
    public static final C14245c f31844b = new C14245c();

    /* renamed from: a */
    public static final LruCache<String, Set<C14246a>> f31843a = new LruCache<>(16);

    /* renamed from: j.a.w0.x4.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/c$a.class */
    public static final class C14246a {

        /* renamed from: a */
        public final String f31845a;

        /* renamed from: b */
        public final int f31846b;

        /* renamed from: c */
        public final long f31847c;

        /* renamed from: d */
        public final int f31848d;

        public C14246a(String str, int i, long j, int i2) {
            C15149k.m377b(str, "number");
            this.f31845a = str;
            this.f31846b = i;
            this.f31847c = j;
            this.f31848d = i2;
        }

        /* renamed from: a */
        public final int m2070a() {
            return this.f31848d;
        }

        /* renamed from: b */
        public final long m2069b() {
            return this.f31847c;
        }

        /* renamed from: c */
        public final int m2068c() {
            return this.f31846b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C14246a)) {
                return false;
            }
            C14246a aVar = (C14246a) obj;
            if (!C15149k.m384a((Object) this.f31845a, (Object) aVar.f31845a)) {
                return false;
            }
            if (!(this.f31846b == aVar.f31846b)) {
                return false;
            }
            if (!(this.f31847c == aVar.f31847c)) {
                return false;
            }
            return this.f31848d == aVar.f31848d;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            String str = this.f31845a;
            int hashCode4 = str != null ? str.hashCode() : 0;
            hashCode = Integer.valueOf(this.f31846b).hashCode();
            hashCode2 = Long.valueOf(this.f31847c).hashCode();
            hashCode3 = Integer.valueOf(this.f31848d).hashCode();
            return (((((hashCode4 * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3;
        }

        public String toString() {
            return "Call(number=" + this.f31845a + ", type=" + this.f31846b + ", time=" + this.f31847c + ", duration=" + this.f31848d + ")";
        }
    }

    /* renamed from: a */
    public static final void m2075a(C14440c cVar) {
        C15149k.m377b(cVar, "helper");
        if (cVar.m1300z() == 240 || cVar.mo1305t() != C14336c.m1531a(cVar.mo1305t()) || (cVar.m1300z() == 19 && cVar.mo1315g() != 0)) {
            C14246a a = f31844b.m2077a(f31843a, cVar.mo1292p(), cVar.mo1293f(), cVar.mo1315g());
            C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
            C13565v g = C13565v.m3921g();
            C15149k.m383a((Object) g, "DevelopMode.getInstance()");
            aVar.m1808a("develop_mode", Integer.valueOf(g.m23335b() ? 1 : 0));
            aVar.m1807a("manufacturer", Build.MANUFACTURER);
            aVar.m1807a("model", Build.MODEL);
            aVar.m1807a("duration", cVar.m1306s());
            aVar.m1807a("number", cVar.mo1292p());
            aVar.m1808a("type", Integer.valueOf(cVar.mo1305t()));
            aVar.m1808a("converted_type", Integer.valueOf(C14336c.m1531a(cVar.mo1305t())));
            aVar.m1808a("possible_type", Integer.valueOf(a != null ? a.m2068c() : -1));
            C14296p.m1830a("whoscall_abnormal_call_log_type", aVar.m1811a());
        }
    }

    /* renamed from: a */
    public static final void m2074a(C14446h hVar) {
        C15149k.m377b(hVar, "helper");
        String v = hVar.mo1283v();
        if (v == null) {
            v = "";
        }
        String p = hVar.mo1292p();
        if (p == null) {
            p = "";
        }
        if ((!C14966w.m724a((CharSequence) p)) && (!C15149k.m384a((Object) v, (Object) C14017g4.m2810n()))) {
            String l = C14108o4.m2474l(p);
            String a = f31844b.m2072a(p, v);
            if (!C15149k.m384a((Object) l, (Object) a)) {
                C14236d dVar = new C14236d("whoscall_sms_log_region");
                C14231a aVar = new C14231a();
                aVar.m2100a("local_region", C14017g4.m2810n());
                aVar.m2100a("log_region", v);
                aVar.m2100a("number", p);
                aVar.m2100a("actual_e164", l);
                aVar.m2100a("expected_e164", a);
                String L = hVar.m1288L();
                if (L == null) {
                    L = "";
                }
                aVar.m2100a("service_center", L);
                dVar.mo2087a(aVar);
            }
        }
    }

    /* renamed from: a */
    public static final void m2073a(String str, long j, int i, int i2) {
        C15149k.m377b(str, "number");
        f31844b.m2076a(f31843a, str, j, i, i2);
    }

    /* renamed from: b */
    public static final void m2071b(C14440c cVar) {
        C15149k.m377b(cVar, "helper");
        String v = cVar.mo1283v();
        if (v == null) {
            v = "";
        }
        String p = cVar.mo1292p();
        if (p == null) {
            p = "";
        }
        if ((!C14966w.m724a((CharSequence) p)) && (!C15149k.m384a((Object) v, (Object) C14017g4.m2810n()))) {
            String l = C14108o4.m2474l(p);
            String a = f31844b.m2072a(p, v);
            if (!C15149k.m384a((Object) l, (Object) a)) {
                C14236d dVar = new C14236d("whoscall_call_log_region");
                C14231a aVar = new C14231a();
                aVar.m2100a("local_region", C14017g4.m2810n());
                aVar.m2100a("log_region", v);
                aVar.m2100a("number", p);
                aVar.m2100a("actual_e164", l);
                aVar.m2100a("expected_e164", a);
                dVar.mo2087a(aVar);
            }
        }
    }

    /* renamed from: a */
    public final LruCache<String, Set<C14246a>> m2078a() {
        return f31843a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p459j.p460a.p582w0.p590x4.C14245c.C14246a m2077a(android.util.LruCache<java.lang.String, java.util.Set<p459j.p460a.p582w0.p590x4.C14245c.C14246a>> r6, java.lang.String r7, long r8, int r10) {
        /*
            r5 = this;
            r0 = 0
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r7
            if (r0 != 0) goto L_0x000c
            r0 = 0
            return r0
        L_0x000c:
            r0 = r6
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            java.util.Set r0 = (java.util.Set) r0
            r7 = r0
            r0 = r11
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L_0x00b7
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r11 = r0
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x0034
            r0 = r12
            r6 = r0
            goto L_0x00b2
        L_0x0034:
            r0 = r11
            java.lang.Object r0 = r0.next()
            r6 = r0
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x0049
            goto L_0x00b2
        L_0x0049:
            r0 = r6
            j.a.w0.x4.c$a r0 = (p459j.p460a.p582w0.p590x4.C14245c.C14246a) r0
            r7 = r0
            r0 = r7
            long r0 = r0.m2069b()
            r1 = r8
            long r0 = r0 - r1
            long r0 = java.lang.Math.abs(r0)
            r1 = r7
            int r1 = r1.m2070a()
            r2 = r10
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            long r1 = (long) r1
            long r0 = r0 + r1
            r13 = r0
            r0 = r6
            r7 = r0
        L_0x0067:
            r0 = r11
            java.lang.Object r0 = r0.next()
            r12 = r0
            r0 = r12
            j.a.w0.x4.c$a r0 = (p459j.p460a.p582w0.p590x4.C14245c.C14246a) r0
            r6 = r0
            r0 = r6
            long r0 = r0.m2069b()
            r1 = r8
            long r0 = r0 - r1
            long r0 = java.lang.Math.abs(r0)
            r1 = r6
            int r1 = r1.m2070a()
            r2 = r10
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            long r1 = (long) r1
            long r0 = r0 + r1
            r15 = r0
            r0 = r7
            r6 = r0
            r0 = r13
            r17 = r0
            r0 = r13
            r1 = r15
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00a2
            r0 = r12
            r6 = r0
            r0 = r15
            r17 = r0
        L_0x00a2:
            r0 = r6
            r7 = r0
            r0 = r17
            r13 = r0
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x0067
        L_0x00b2:
            r0 = r6
            j.a.w0.x4.c$a r0 = (p459j.p460a.p582w0.p590x4.C14245c.C14246a) r0
            r6 = r0
        L_0x00b7:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p590x4.C14245c.m2077a(android.util.LruCache, java.lang.String, long, int):j.a.w0.x4.c$a");
    }

    /* renamed from: a */
    public final String m2072a(String str, String str2) {
        String str3;
        try {
            PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
            Phonenumber.PhoneNumber parse = instance.parse(str, str2);
            str3 = str;
            if (parse != null) {
                if (!instance.isValidNumber(parse)) {
                    parse = null;
                }
                str3 = str;
                if (parse != null) {
                    String format = instance.format(parse, PhoneNumberUtil.PhoneNumberFormat.E164);
                    str3 = str;
                    if (format != null) {
                        str3 = format;
                    }
                }
            }
        } catch (Throwable th) {
            C14080m2.m2612a(th);
            str3 = str;
        }
        return str3;
    }

    /* renamed from: a */
    public final void m2076a(LruCache<String, Set<C14246a>> lruCache, String str, long j, int i, int i2) {
        LinkedHashSet linkedHashSet;
        C14246a aVar = new C14246a(str, i2, j, i);
        Set<C14246a> set = lruCache.get(str);
        if (set != null) {
            linkedHashSet = set;
        } else {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            lruCache.put(str, linkedHashSet2);
            linkedHashSet = linkedHashSet2;
        }
        linkedHashSet.add(aVar);
    }
}
