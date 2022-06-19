package p193e.p194a.p751f4.p753b.p755g;

import android.telephony.TelephonyManager;
import com.truecaller.common.network.KnownDomain;
import com.truecaller.common.network.util.AuthRequirement;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.log.UnmutedException;
import e.m.e.k;
import e.m.e.z;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p751f4.p753b.p755g.C13965a;
import p193e.p194a.p751f4.p753b.p757i.AbstractC13983a;
import s1.f0.b;
import s1.f0.r;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import x3.a0;
/* renamed from: e.a.f4.b.g.c */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/g/c.class */
public final class C13968c implements AbstractC13967b {

    /* renamed from: a */
    public final File f40389a;

    /* renamed from: b */
    public C13965a f40390b;

    /* renamed from: c */
    public final g f40391c = C25225a.m3978P1(C13969a.f40396b);

    /* renamed from: d */
    public final AbstractC8432l f40392d;

    /* renamed from: e */
    public final AbstractC13983a f40393e;

    /* renamed from: f */
    public final AbstractC8438a f40394f;

    /* renamed from: g */
    public final TelephonyManager f40395g;

    /* renamed from: e.a.f4.b.g.c$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/b/g/c$a.class */
    public static final class C13969a extends m implements a<C13965a> {

        /* renamed from: b */
        public static final C13969a f40396b = new C13969a();

        public C13969a() {
            super(0);
        }

        public Object invoke() {
            C13965a c13965a = new C13965a();
            c13965a.m20933c(new LinkedHashMap());
            KnownDomain[] values = KnownDomain.values();
            for (int i = 0; i < 2; i++) {
                KnownDomain knownDomain = values[i];
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                KnownEndpoints[] values2 = KnownEndpoints.values();
                for (int i2 = 0; i2 < 51; i2++) {
                    KnownEndpoints knownEndpoints = values2[i2];
                    linkedHashMap.put(knownEndpoints.getKey(), new C13965a.C13966a(knownEndpoints.getHost(knownDomain)));
                }
                Map<String, Map<String, C13965a.C13966a>> m20935a = c13965a.m20935a();
                if (m20935a != null) {
                    m20935a.put(knownDomain.getValue(), linkedHashMap);
                }
            }
            return c13965a;
        }
    }

    public C13968c(AbstractC8432l abstractC8432l, AbstractC13983a abstractC13983a, AbstractC8438a abstractC8438a, TelephonyManager telephonyManager, File file) {
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC13983a, "networkAdvancedSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(telephonyManager, "telephonyManager");
        l.e(file, "filesDir");
        this.f40392d = abstractC8432l;
        this.f40393e = abstractC13983a;
        this.f40394f = abstractC8438a;
        this.f40395g = telephonyManager;
        File file2 = new File(file, "edges.json");
        this.f40389a = file2;
        try {
            if (!file2.exists()) {
                return;
            }
            synchronized (this) {
                InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file2), b.a);
                C13965a c13965a = (C13965a) new k().d(inputStreamReader, C13965a.class);
                C25225a.m4016G(inputStreamReader, null);
                m20922i(c13965a);
            }
        } catch (Exception e) {
            if (!(e instanceof z)) {
                C10480a.m26061I1(e);
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Couldn't parse edges from disk: ");
            m8728C.append(e.getMessage());
            C10480a.m26061I1(new UnmutedException.C4145d(m8728C.toString()));
            mo20926e();
        }
    }

    @Override // p193e.p194a.p751f4.p753b.p755g.AbstractC13967b
    /* renamed from: a */
    public boolean mo20930a() {
        Long l = this.f40393e.getLong("edgeLocationsLastRequestTime", 0L);
        return (l == null || l.longValue() != 0) && this.f40390b != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        if (r12 != null) goto L17;
     */
    @Override // p193e.p194a.p751f4.p753b.p755g.AbstractC13967b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo20929b(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "domain"
            r2 = r9
            java.lang.String r3 = "edgeName"
            r4 = r10
            java.lang.String r5 = "edgeHost"
            p193e.p1432d.p1439c.p1440a.C22128a.m8703I0(r0, r1, r2, r3, r4, r5)
            r0 = r7
            monitor-enter(r0)
            r0 = r7
            e.a.f4.b.g.a r0 = r0.f40390b     // Catch: java.lang.Throwable -> Lb7
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L1c
            goto L25
        L1c:
            e.a.f4.b.g.a r0 = new e.a.f4.b.g.a     // Catch: java.lang.Throwable -> Lb7
            r1 = r0
            r1.<init>()     // Catch: java.lang.Throwable -> Lb7
            r11 = r0
        L25:
            r0 = r11
            java.util.Map r0 = r0.m20935a()     // Catch: java.lang.Throwable -> Lb7
            if (r0 != 0) goto L3e
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> Lb7
            r12 = r0
            r0 = r12
            r0.<init>()     // Catch: java.lang.Throwable -> Lb7
            r0 = r11
            r1 = r12
            r0.m20933c(r1)     // Catch: java.lang.Throwable -> Lb7
        L3e:
            r0 = r11
            java.util.Map r0 = r0.m20935a()     // Catch: java.lang.Throwable -> Lb7
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L5f
            r0 = r12
            r1 = r8
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Lb7
            java.util.Map r0 = (java.util.Map) r0     // Catch: java.lang.Throwable -> Lb7
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L5f
            goto L68
        L5f:
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> Lb7
            r1 = r0
            r1.<init>()     // Catch: java.lang.Throwable -> Lb7
            r12 = r0
        L68:
            e.a.f4.b.g.a$a r0 = new e.a.f4.b.g.a$a     // Catch: java.lang.Throwable -> Lb7 java.lang.Throwable -> Lb7
            r13 = r0
            r0 = r13
            r0.<init>()     // Catch: java.lang.Throwable -> Lb7
            r0 = r13
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> Lb7
            r2 = r1
            r3 = 0
            r4 = r10
            r2[r3] = r4     // Catch: java.lang.Throwable -> Lb7
            java.util.List r1 = s1.u.i.d0(r1)     // Catch: java.lang.Throwable -> Lb7
            r0.m20931b(r1)     // Catch: java.lang.Throwable -> Lb7
            r0 = r12
            r1 = r9
            r2 = r13
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lb7
            r0 = r11
            java.util.Map r0 = r0.m20935a()     // Catch: java.lang.Throwable -> Lb7
            r9 = r0
            r0 = r9
            if (r0 == 0) goto La4
            r0 = r9
            r1 = r8
            r2 = r12
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lb7
            java.util.Map r0 = (java.util.Map) r0     // Catch: java.lang.Throwable -> Lb7
            r8 = r0
        La4:
            r0 = r7
            r1 = r11
            r0.f40390b = r1     // Catch: java.lang.Throwable -> Lb7
            r0 = r7
            r1 = r11
            boolean r0 = r0.m20923h(r1)     // Catch: java.lang.Throwable -> Lb7
            r14 = r0
            r0 = r7
            monitor-exit(r0)
            r0 = r14
            return r0
        Lb7:
            r8 = move-exception
            r0 = r7
            monitor-exit(r0)
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p751f4.p753b.p755g.C13968c.mo20929b(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    @Override // p193e.p194a.p751f4.p753b.p755g.AbstractC13967b
    /* renamed from: c */
    public boolean mo20928c() {
        C13965a c13965a;
        String mo28570n = this.f40392d.mo28570n();
        if (mo28570n == null) {
            mo28570n = this.f40394f.getString("profileNumber");
        }
        if (mo28570n == null) {
            C10480a.m26061I1(new UnmutedException.C4145d("Trying to call edge location without phone number"));
            return false;
        }
        String mo28578f = this.f40392d.mo28578f();
        if (mo28578f == null) {
            mo28578f = this.f40394f.getString("profileCountryIso");
        }
        if (mo28578f == null) {
            C10480a.m26061I1(new UnmutedException.C4145d("Trying to call edge location without profile country code"));
            return false;
        }
        this.f40393e.putLong("edgeLocationsLastRequestTime", System.currentTimeMillis());
        String networkCountryIso = this.f40395g.getNetworkCountryIso();
        C8365b c8365b = new C8365b();
        C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.EDGE, AbstractC13970d.class);
        m8568t1.m28628b(AuthRequirement.OPTIONAL, null);
        m8568t1.m28625e(false);
        c8365b.m28636d(C8363a.m28642a(m8568t1));
        a0 execute = ((AbstractC13970d) c8365b.m28637c(AbstractC13970d.class)).m20921a(networkCountryIso, mo28578f, mo28570n).execute();
        l.d(execute, "response");
        if (!execute.b() || (c13965a = (C13965a) execute.b) == null) {
            return false;
        }
        l.d(c13965a, "response.body() ?: return false");
        synchronized (this) {
            if (!m20922i(c13965a)) {
                return true;
            }
            return m20923h(c13965a);
        }
    }

    @Override // p193e.p194a.p751f4.p753b.p755g.AbstractC13967b
    /* renamed from: d */
    public void mo20927d(String str, String str2) {
        Map<String, C13965a.C13966a> map;
        l.e(str, "domain");
        l.e(str2, "edgeName");
        synchronized (this) {
            C13965a c13965a = this.f40390b;
            if (c13965a != null) {
                Map<String, Map<String, C13965a.C13966a>> m20935a = c13965a.m20935a();
                if (((m20935a == null || (map = m20935a.get(str)) == null) ? null : map.remove(str2)) != null) {
                    m20923h(c13965a);
                }
            }
        }
    }

    @Override // p193e.p194a.p751f4.p753b.p755g.AbstractC13967b
    /* renamed from: e */
    public void mo20926e() {
        synchronized (this) {
            this.f40389a.delete();
            this.f40390b = null;
        }
        this.f40393e.remove("edgeLocationsExpiration");
        this.f40393e.remove("edgeLocationsLastRequestTime");
    }

    @Override // p193e.p194a.p751f4.p753b.p755g.AbstractC13967b
    /* renamed from: f */
    public String mo20925f(String str, String str2) {
        l.e(str, "domain");
        l.e(str2, "edgeName");
        String m20924g = m20924g(this.f40390b, str, str2);
        return m20924g != null ? m20924g : m20924g((C13965a) this.f40391c.getValue(), str, str2);
    }

    /* renamed from: g */
    public final String m20924g(C13965a c13965a, String str, String str2) {
        Map<String, C13965a.C13966a> map;
        C13965a.C13966a c13966a;
        List<String> m20932a;
        synchronized (this) {
            if (c13965a != null) {
                Map<String, Map<String, C13965a.C13966a>> m20935a = c13965a.m20935a();
                if (m20935a != null && (map = m20935a.get(str)) != null && (c13966a = map.get(str2)) != null) {
                    m20932a = c13966a.m20932a();
                }
            }
            m20932a = null;
        }
        String str3 = null;
        if (m20932a != null) {
            String str4 = (String) i.D(m20932a);
            str3 = null;
            if (str4 != null) {
                str3 = null;
                if (!r.p(str4)) {
                    str3 = str4;
                }
            }
        }
        return str3;
    }

    /* renamed from: h */
    public final boolean m20923h(C13965a c13965a) {
        long currentTimeMillis;
        try {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(this.f40389a), b.a);
            new k().q(c13965a, outputStreamWriter);
            C25225a.m4016G(outputStreamWriter, null);
            if (c13965a.m20934b() <= 0) {
                return true;
            }
            String str = "Edge location document (" + c13965a + ") expires @ " + new Date(currentTimeMillis);
            this.f40393e.putLong("edgeLocationsExpiration", System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(c13965a.m20934b()));
            return true;
        } catch (IOException e) {
            C10480a.m26061I1(e);
            return false;
        } catch (RuntimeException e2) {
            C10480a.m26061I1(e2);
            return false;
        }
    }

    /* renamed from: i */
    public final boolean m20922i(C13965a c13965a) {
        this.f40390b = c13965a;
        return (c13965a != null ? c13965a.m20935a() : null) != null;
    }
}
