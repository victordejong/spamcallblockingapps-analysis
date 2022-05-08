package p081h.p203i.p325c.p337n.p338d.p341h;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
import p081h.p203i.p325c.p337n.p338d.p343j.C9755w;
import p081h.p203i.p325c.p337n.p338d.p355q.AbstractC9829d;
import p081h.p203i.p325c.p337n.p338d.p355q.C9830e;
/* renamed from: h.i.c.n.d.h.p */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/p.class */
public class C9608p {

    /* renamed from: e */
    public static final String f21883e = String.format(Locale.US, "Crashlytics Android SDK/%s", "17.3.0");

    /* renamed from: f */
    public static final Map<String, Integer> f21884f = new HashMap();

    /* renamed from: a */
    public final Context f21885a;

    /* renamed from: b */
    public final C9621y f21886b;

    /* renamed from: c */
    public final C9533b f21887c;

    /* renamed from: d */
    public final AbstractC9829d f21888d;

    static {
        f21884f.put("armeabi", 5);
        f21884f.put("armeabi-v7a", 6);
        f21884f.put("arm64-v8a", 9);
        f21884f.put("x86", 0);
        f21884f.put("x86_64", 1);
    }

    public C9608p(Context context, C9621y yVar, C9533b bVar, AbstractC9829d dVar) {
        this.f21885a = context;
        this.f21886b = yVar;
        this.f21887c = bVar;
        this.f21888d = dVar;
    }

    /* renamed from: h */
    public static int m14717h() {
        Integer num;
        String str = Build.CPU_ABI;
        if (!TextUtils.isEmpty(str) && (num = f21884f.get(str.toLowerCase(Locale.US))) != null) {
            return num.intValue();
        }
        return 7;
    }

    /* renamed from: a */
    public final AbstractC9715v.AbstractC9716a m14737a() {
        AbstractC9715v.AbstractC9716a l = AbstractC9715v.m14602l();
        l.mo14593e("17.3.0");
        l.mo14595c(this.f21887c.f21705a);
        l.mo14594d(this.f21886b.mo14681a());
        l.mo14597a(this.f21887c.f21709e);
        l.mo14596b(this.f21887c.f21710f);
        l.mo14600a(4);
        return l;
    }

    /* renamed from: a */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c m14734a(C9830e eVar, int i, int i2) {
        return m14733a(eVar, i, i2, 0);
    }

    /* renamed from: a */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c m14733a(C9830e eVar, int i, int i2, int i3) {
        String str = eVar.f22300b;
        String str2 = eVar.f22299a;
        StackTraceElement[] stackTraceElementArr = eVar.f22301c;
        int i4 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        C9830e eVar2 = eVar.f22302d;
        if (i3 >= i2) {
            C9830e eVar3 = eVar2;
            i4 = 0;
            while (eVar3 != null) {
                eVar3 = eVar3.f22302d;
                i4++;
            }
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a f = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.m14464f();
        f.mo14458b(str);
        f.mo14459a(str2);
        f.mo14460a(C9755w.m14391a(m14725a(stackTraceElementArr, i)));
        f.mo14462a(i4);
        if (eVar2 != null && i4 == 0) {
            f.mo14461a(m14733a(eVar2, i, i2, i3 + 1));
        }
        return f.mo14463a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [h.i.c.n.d.j.v$d$d$a$b$e$b$a] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b m14730a(java.lang.StackTraceElement r6, p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a r7) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0.isNativeMethod()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001a
            r0 = r6
            int r0 = r0.getLineNumber()
            long r0 = (long) r0
            r1 = 0
            long r0 = java.lang.Math.max(r0, r1)
            r11 = r0
            goto L_0x001d
        L_0x001a:
            r0 = 0
            r11 = r0
        L_0x001d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            r1 = r6
            java.lang.String r1 = r1.getClassName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r6
            java.lang.String r1 = r1.getMethodName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r0 = r0.toString()
            r13 = r0
            r0 = r6
            java.lang.String r0 = r0.getFileName()
            r14 = r0
            r0 = r9
            r15 = r0
            r0 = r6
            boolean r0 = r0.isNativeMethod()
            if (r0 != 0) goto L_0x006c
            r0 = r9
            r15 = r0
            r0 = r6
            int r0 = r0.getLineNumber()
            if (r0 <= 0) goto L_0x006c
            r0 = r6
            int r0 = r0.getLineNumber()
            long r0 = (long) r0
            r15 = r0
        L_0x006c:
            r0 = r7
            r1 = r11
            h.i.c.n.d.j.v$d$d$a$b$e$b$a r0 = r0.mo14431b(r1)
            r0 = r7
            r1 = r13
            h.i.c.n.d.j.v$d$d$a$b$e$b$a r0 = r0.mo14430b(r1)
            r0 = r7
            r1 = r14
            h.i.c.n.d.j.v$d$d$a$b$e$b$a r0 = r0.mo14432a(r1)
            r0 = r7
            r1 = r15
            h.i.c.n.d.j.v$d$d$a$b$e$b$a r0 = r0.mo14433a(r1)
            r0 = r7
            h.i.c.n.d.j.v$d$d$a$b$e$b r0 = r0.mo14435a()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p337n.p338d.p341h.C9608p.m14730a(java.lang.StackTraceElement, h.i.c.n.d.j.v$d$d$a$b$e$b$a):h.i.c.n.d.j.v$d$d$a$b$e$b");
    }

    /* renamed from: a */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e m14728a(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return m14727a(thread, stackTraceElementArr, 0);
    }

    /* renamed from: a */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e m14727a(Thread thread, StackTraceElement[] stackTraceElementArr, int i) {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a d = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.m14446d();
        d.mo14442a(thread.getName());
        d.mo14444a(i);
        d.mo14443a(C9755w.m14391a(m14725a(stackTraceElementArr, i)));
        return d.mo14445a();
    }

    /* renamed from: a */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b m14732a(C9830e eVar, Thread thread, int i, int i2, boolean z) {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b e = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.m14487e();
        e.mo14470b(m14731a(eVar, thread, i, z));
        e.mo14473a(m14734a(eVar, i, i2));
        e.mo14472a(m14718g());
        e.mo14471a(m14722c());
        return e.mo14474a();
    }

    /* renamed from: a */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a m14735a(int i, C9830e eVar, Thread thread, int i2, int i3, boolean z) {
        Boolean bool;
        ActivityManager.RunningAppProcessInfo a = C9546h.m14929a(this.f21887c.f21708d, this.f21885a);
        if (a != null) {
            bool = Boolean.valueOf(a.importance != 100);
        } else {
            bool = null;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a f = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.m14497f();
        f.mo14492a(bool);
        f.mo14495a(i);
        f.mo14494a(m14732a(eVar, thread, i2, i3, z));
        return f.mo14496a();
    }

    /* renamed from: a */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c m14736a(int i) {
        C9540e a = C9540e.m14955a(this.f21885a);
        Float a2 = a.m14956a();
        Double valueOf = a2 != null ? Double.valueOf(a2.doubleValue()) : null;
        int b = a.m14953b();
        boolean f = C9546h.m14914f(this.f21885a);
        long b2 = C9546h.m14923b();
        long a3 = C9546h.m14939a(this.f21885a);
        long a4 = C9546h.m14930a(Environment.getDataDirectory().getPath());
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a g = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.m14417g();
        g.mo14413a(valueOf);
        g.mo14415a(b);
        g.mo14412a(f);
        g.mo14411b(i);
        g.mo14410b(b2 - a3);
        g.mo14414a(a4);
        return g.mo14416a();
    }

    /* renamed from: a */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d m14726a(Throwable th, Thread thread, String str, long j, int i, int i2, boolean z) {
        int i3 = this.f21885a.getResources().getConfiguration().orientation;
        C9830e eVar = new C9830e(th, this.f21888d);
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b g = AbstractC9715v.AbstractC9723d.AbstractC9730d.m14503g();
        g.mo14424a(str);
        g.mo14428a(j);
        g.mo14427a(m14735a(i3, eVar, thread, i, i2, z));
        g.mo14426a(m14736a(i3));
        return g.mo14429a();
    }

    /* renamed from: a */
    public AbstractC9715v m14729a(String str, long j) {
        AbstractC9715v.AbstractC9716a a = m14737a();
        a.mo14598a(m14723b(str, j));
        return a.mo14601a();
    }

    /* renamed from: a */
    public final C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e> m14731a(C9830e eVar, Thread thread, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m14727a(thread, eVar.f22301c, i));
        if (z) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(m14728a(key, this.f21888d.mo14121a(entry.getValue())));
                }
            }
        }
        return C9755w.m14391a(arrayList);
    }

    /* renamed from: a */
    public final C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> m14725a(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a f = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.m14436f();
            f.mo14434a(i);
            arrayList.add(m14730a(stackTraceElement, f));
        }
        return C9755w.m14391a(arrayList);
    }

    /* renamed from: b */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a m14724b() {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a f = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.m14481f();
        f.mo14479a(0L);
        f.mo14476b(0L);
        f.mo14478a(this.f21887c.f21708d);
        f.mo14475b(this.f21887c.f21706b);
        return f.mo14480a();
    }

    /* renamed from: b */
    public final AbstractC9715v.AbstractC9723d m14723b(String str, long j) {
        AbstractC9715v.AbstractC9723d.AbstractC9727b n = AbstractC9715v.AbstractC9723d.m14559n();
        n.mo14540a(j);
        n.mo14530b(str);
        n.mo14533a(f21883e);
        n.mo14539a(m14721d());
        n.mo14537a(m14719f());
        n.mo14538a(m14720e());
        n.mo14541a(3);
        return n.mo14542a();
    }

    /* renamed from: c */
    public final C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a> m14722c() {
        return C9755w.m14390a(m14724b());
    }

    /* renamed from: d */
    public final AbstractC9715v.AbstractC9723d.AbstractC9724a m14721d() {
        AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a h = AbstractC9715v.AbstractC9723d.AbstractC9724a.m14551h();
        h.mo14546d(this.f21886b.m14687b());
        h.mo14544f(this.f21887c.f21709e);
        h.mo14547c(this.f21887c.f21710f);
        h.mo14545e(this.f21886b.mo14681a());
        String a = this.f21887c.f21711g.mo14120a();
        if (a != null) {
            h.mo14549a("Unity");
            h.mo14548b(a);
        }
        return h.mo14550a();
    }

    /* renamed from: e */
    public final AbstractC9715v.AbstractC9723d.AbstractC9728c m14720e() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int h = m14717h();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long b = C9546h.m14923b();
        long blockCount = statFs.getBlockCount();
        long blockSize = statFs.getBlockSize();
        boolean j = C9546h.m14910j(this.f21885a);
        int c = C9546h.m14918c(this.f21885a);
        String str = Build.MANUFACTURER;
        String str2 = Build.PRODUCT;
        AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a j2 = AbstractC9715v.AbstractC9723d.AbstractC9728c.m14520j();
        j2.mo14518a(h);
        j2.mo14512b(Build.MODEL);
        j2.mo14514b(availableProcessors);
        j2.mo14513b(b);
        j2.mo14517a(blockCount * blockSize);
        j2.mo14515a(j);
        j2.mo14511c(c);
        j2.mo14516a(str);
        j2.mo14510c(str2);
        return j2.mo14519a();
    }

    /* renamed from: f */
    public final AbstractC9715v.AbstractC9723d.AbstractC9750e m14719f() {
        AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a e = AbstractC9715v.AbstractC9723d.AbstractC9750e.m14401e();
        e.mo14399a(3);
        e.mo14396b(Build.VERSION.RELEASE);
        e.mo14398a(Build.VERSION.CODENAME);
        e.mo14397a(C9546h.m14909k(this.f21885a));
        return e.mo14400a();
    }

    /* renamed from: g */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d m14718g() {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a d = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.m14454d();
        d.mo14450b("0");
        d.mo14451a("0");
        d.mo14452a(0L);
        return d.mo14453a();
    }
}
