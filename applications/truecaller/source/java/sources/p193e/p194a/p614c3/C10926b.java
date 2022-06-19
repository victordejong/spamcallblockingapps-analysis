package p193e.p194a.p614c3;

import android.content.Context;
import android.content.pm.PackageManager;
import com.truecaller.buildinfo.BuildName;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p682e.C12864a2;
import s1.e0.h;
import s1.e0.x;
import s1.g;
import s1.z.c.m;
/* renamed from: e.a.c3.b */
/* loaded from: classes6-dex2jar.jar:e/a/c3/b.class */
public final class C10926b implements AbstractC10925a {

    /* renamed from: a */
    public final g f32433a = C25225a.m3978P1(new C10927a());

    /* renamed from: b */
    public final g f32434b = C25225a.m3978P1(new C10928b());

    /* renamed from: c */
    public final String f32435c;

    /* renamed from: d */
    public final boolean f32436d;

    /* renamed from: e */
    public final Context f32437e;

    /* renamed from: f */
    public final AbstractC19230g f32438f;

    /* renamed from: g */
    public final a<AbstractC10930d> f32439g;

    /* renamed from: h */
    public final String f32440h;

    /* renamed from: e.a.c3.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/c3/b$a.class */
    public static final class C10927a extends m implements s1.z.b.a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10927a() {
            super(0);
            C10926b.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(C10926b.this.mo25493d() != null);
        }
    }

    /* renamed from: e.a.c3.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/c3/b$b.class */
    public static final class C10928b extends m implements s1.z.b.a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10928b() {
            super(0);
            C10926b.this = r4;
        }

        public Object invoke() {
            String str;
            Object obj;
            BuildName m35807a = BuildName.Companion.m35807a(C10926b.this.f32440h);
            if (m35807a == null || !m35807a.getSingleApkPreload()) {
                h.a aVar = new h.a(x.f(C25225a.m3861p(BuildName.values()), C10929c.f32443b));
                while (true) {
                    if (!aVar.hasNext()) {
                        obj = null;
                        break;
                    }
                    Object next = aVar.next();
                    BuildName buildName = (BuildName) next;
                    PackageManager packageManager = C10926b.this.f32437e.getPackageManager();
                    if (C12864a2.m22540r(packageManager != null ? Boolean.valueOf(packageManager.hasSystemFeature(buildName.getPackageName())) : null) || (C10926b.this.f32438f.mo13772y(buildName.getPackageName()) && C10926b.this.f32438f.mo13793d(buildName.getPackageName()))) {
                        obj = next;
                        break;
                    }
                }
                BuildName buildName2 = (BuildName) obj;
                str = null;
                if (buildName2 != null) {
                    str = buildName2.name();
                }
            } else {
                str = m35807a.name();
            }
            return str;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x009e, code lost:
        if ((r6 == null || r6.length() == 0) != false) goto L18;
     */
    @javax.inject.Inject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C10926b(android.content.Context r6, p193e.p194a.p1129p5.AbstractC19230g r7, o3.a<p193e.p194a.p614c3.AbstractC10930d> r8, java.lang.String r9) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            java.lang.String r1 = "deviceInfoHelper"
            s1.z.c.l.e(r0, r1)
            r0 = r8
            java.lang.String r1 = "settings"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            java.lang.String r1 = "buildConfigName"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r0.<init>()
            r0 = r5
            r1 = r6
            r0.f32437e = r1
            r0 = r5
            r1 = r7
            r0.f32438f = r1
            r0 = r5
            r1 = r8
            r0.f32439g = r1
            r0 = r5
            r1 = r9
            r0.f32440h = r1
            r0 = r5
            e.a.c3.b$a r1 = new e.a.c3.b$a
            r2 = r1
            r3 = r5
            r2.<init>()
            s1.g r1 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3978P1(r1)
            r0.f32433a = r1
            r0 = r5
            e.a.c3.b$b r1 = new e.a.c3.b$b
            r2 = r1
            r3 = r5
            r2.<init>()
            s1.g r1 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3978P1(r1)
            r0.f32434b = r1
            r0 = r6
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Exception -> L69
            r1 = r6
            java.lang.String r1 = r1.getPackageName()     // Catch: java.lang.Exception -> L69
            java.lang.String r0 = r0.getInstallerPackageName(r1)     // Catch: java.lang.Exception -> L69
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L63
            goto L70
        L63:
            java.lang.String r0 = ""
            r6 = r0
            goto L70
        L69:
            r6 = move-exception
            r0 = r6
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
            r0 = 0
            r6 = r0
        L70:
            r0 = r5
            r1 = r6
            r0.f32435c = r1
            r0 = r6
            java.lang.String r1 = "com.android.vending"
            boolean r0 = s1.z.c.l.a(r0, r1)
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 != 0) goto La1
            r0 = r6
            if (r0 == 0) goto L99
            r0 = r6
            int r0 = r0.length()
            if (r0 != 0) goto L93
            goto L99
        L93:
            r0 = 0
            r12 = r0
            goto L9c
        L99:
            r0 = 1
            r12 = r0
        L9c:
            r0 = r12
            if (r0 == 0) goto La4
        La1:
            r0 = 1
            r11 = r0
        La4:
            r0 = r5
            r1 = r11
            r0.f32436d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p614c3.C10926b.<init>(android.content.Context, e.a.p5.g, o3.a, java.lang.String):void");
    }

    @Override // p193e.p194a.p614c3.AbstractC10925a
    /* renamed from: a */
    public boolean mo25496a() {
        return ((Boolean) this.f32433a.getValue()).booleanValue();
    }

    @Override // p193e.p194a.p614c3.AbstractC10925a
    /* renamed from: b */
    public boolean mo25495b() {
        return this.f32436d;
    }

    @Override // p193e.p194a.p614c3.AbstractC10925a
    /* renamed from: c */
    public String mo25494c() {
        return this.f32435c;
    }

    @Override // p193e.p194a.p614c3.AbstractC10925a
    /* renamed from: d */
    public String mo25493d() {
        return (String) this.f32434b.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
        if (s1.f0.r.p(r0) != false) goto L16;
     */
    @Override // p193e.p194a.p614c3.AbstractC10925a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getName() {
        /*
            r4 = this;
            r0 = r4
            o3.a<e.a.c3.d> r0 = r0.f32439g
            java.lang.Object r0 = r0.get()
            e.a.c3.d r0 = (p193e.p194a.p614c3.AbstractC10930d) r0
            java.lang.String r1 = "BUILD_KEY"
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L1b
            goto L89
        L1b:
            r0 = r4
            java.lang.String r0 = r0.mo25493d()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L35
            r0 = r5
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L30
            goto L35
        L30:
            r0 = 0
            r7 = r0
            goto L37
        L35:
            r0 = 1
            r7 = r0
        L37:
            r0 = r7
            if (r0 == 0) goto L75
            r0 = r4
            java.lang.String r0 = r0.f32440h
            r8 = r0
            r0 = r4
            java.lang.String r0 = r0.f32435c
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L53
            r0 = r6
            r7 = r0
            r0 = r5
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L55
        L53:
            r0 = 1
            r7 = r0
        L55:
            r0 = r8
            r5 = r0
            r0 = r7
            if (r0 == 0) goto L75
            r0 = r8
            r5 = r0
            r0 = r8
            com.truecaller.buildinfo.BuildName r1 = com.truecaller.buildinfo.BuildName.GOOGLE_PLAY
            java.lang.String r1 = r1.name()
            r2 = 1
            boolean r0 = s1.f0.r.n(r0, r1, r2)
            if (r0 == 0) goto L75
            com.truecaller.buildinfo.BuildName r0 = com.truecaller.buildinfo.BuildName.TC_SHARED
            java.lang.String r0 = r0.name()
            r5 = r0
        L75:
            r0 = r4
            o3.a<e.a.c3.d> r0 = r0.f32439g
            java.lang.Object r0 = r0.get()
            e.a.c3.d r0 = (p193e.p194a.p614c3.AbstractC10930d) r0
            java.lang.String r1 = "BUILD_KEY"
            r2 = r5
            r0.putString(r1, r2)
        L89:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p614c3.C10926b.getName():java.lang.String");
    }
}
