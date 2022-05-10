package p012b.p076s.p078b.p079a.p102w0;

import android.os.Handler;
import android.os.Message;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1576j0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
/* renamed from: b.s.b.a.w0.i */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/i.class */
public class C1564i extends AbstractC1551e<C1571g> {

    /* renamed from: i */
    public final List<C1571g> f6404i;

    /* renamed from: j */
    public final Set<C1570f> f6405j;

    /* renamed from: k */
    public Handler f6406k;

    /* renamed from: l */
    public final List<C1571g> f6407l;

    /* renamed from: m */
    public final Map<AbstractC1631p, C1571g> f6408m;

    /* renamed from: n */
    public final Map<Object, C1571g> f6409n;

    /* renamed from: o */
    public final boolean f6410o;

    /* renamed from: p */
    public final boolean f6411p;

    /* renamed from: q */
    public final AbstractC1252n0.C1255c f6412q;

    /* renamed from: r */
    public final AbstractC1252n0.C1254b f6413r;

    /* renamed from: s */
    public boolean f6414s;

    /* renamed from: t */
    public Set<C1570f> f6415t;

    /* renamed from: u */
    public AbstractC1576j0 f6416u;

    /* renamed from: v */
    public int f6417v;

    /* renamed from: w */
    public int f6418w;

    /* renamed from: b.s.b.a.w0.i$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/i$b.class */
    public static final class C1566b extends AbstractC1532a {

        /* renamed from: e */
        public final int f6419e;

        /* renamed from: f */
        public final int f6420f;

        /* renamed from: g */
        public final int[] f6421g;

        /* renamed from: h */
        public final int[] f6422h;

        /* renamed from: i */
        public final AbstractC1252n0[] f6423i;

        /* renamed from: j */
        public final Object[] f6424j;

        /* renamed from: k */
        public final HashMap<Object, Integer> f6425k = new HashMap<>();

        public C1566b(Collection<C1571g> collection, int i, int i2, AbstractC1576j0 j0Var, boolean z) {
            super(z, j0Var);
            this.f6419e = i;
            this.f6420f = i2;
            int size = collection.size();
            this.f6421g = new int[size];
            this.f6422h = new int[size];
            this.f6423i = new AbstractC1252n0[size];
            this.f6424j = new Object[size];
            int i3 = 0;
            for (C1571g gVar : collection) {
                this.f6423i[i3] = gVar.f6434d;
                this.f6421g[i3] = gVar.f6437g;
                this.f6422h[i3] = gVar.f6436f;
                Object[] objArr = this.f6424j;
                objArr[i3] = gVar.f6432b;
                this.f6425k.put(objArr[i3], Integer.valueOf(i3));
                i3++;
            }
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public int mo32719a() {
            return this.f6420f;
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: b */
        public int mo32713b() {
            return this.f6419e;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1532a
        /* renamed from: b */
        public int mo32771b(int i) {
            return C1167d0.m34466a(this.f6421g, i + 1, false, false);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1532a
        /* renamed from: b */
        public int mo32770b(Object obj) {
            Integer num = this.f6425k.get(obj);
            return num == null ? -1 : num.intValue();
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1532a
        /* renamed from: c */
        public int mo32769c(int i) {
            return C1167d0.m34466a(this.f6422h, i + 1, false, false);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1532a
        /* renamed from: d */
        public Object mo32768d(int i) {
            return this.f6424j[i];
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1532a
        /* renamed from: e */
        public int mo32767e(int i) {
            return this.f6421g[i];
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1532a
        /* renamed from: f */
        public int mo32766f(int i) {
            return this.f6422h[i];
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1532a
        /* renamed from: g */
        public AbstractC1252n0 mo32765g(int i) {
            return this.f6423i[i];
        }
    }

    /* renamed from: b.s.b.a.w0.i$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/i$c.class */
    public static final class C1567c extends AbstractC1593n {

        /* renamed from: d */
        public static final Object f6426d = new Object();

        /* renamed from: c */
        public final Object f6427c;

        public C1567c(AbstractC1252n0 n0Var, Object obj) {
            super(n0Var);
            this.f6427c = obj;
        }

        /* renamed from: a */
        public static C1567c m32763a(AbstractC1252n0 n0Var, Object obj) {
            return new C1567c(n0Var, obj);
        }

        /* renamed from: b */
        public static C1567c m32761b(Object obj) {
            return new C1567c(new C1569e(obj), f6426d);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1593n, p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public int mo32715a(Object obj) {
            AbstractC1252n0 n0Var = this.f6497b;
            Object obj2 = obj;
            if (f6426d.equals(obj)) {
                obj2 = this.f6427c;
            }
            return n0Var.mo32715a(obj2);
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public AbstractC1252n0.C1254b mo32738a(int i, AbstractC1252n0.C1254b bVar, boolean z) {
            this.f6497b.mo32738a(i, bVar, z);
            if (C1167d0.m34478a(bVar.f5014b, this.f6427c)) {
                bVar.f5014b = f6426d;
            }
            return bVar;
        }

        /* renamed from: a */
        public C1567c m32764a(AbstractC1252n0 n0Var) {
            return new C1567c(n0Var, this.f6427c);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1593n, p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public Object mo32718a(int i) {
            Object a = this.f6497b.mo32718a(i);
            Object obj = a;
            if (C1167d0.m34478a(a, this.f6427c)) {
                obj = f6426d;
            }
            return obj;
        }

        /* renamed from: d */
        public AbstractC1252n0 m32760d() {
            return this.f6497b;
        }
    }

    /* renamed from: b.s.b.a.w0.i$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/i$d.class */
    public static final class C1568d extends AbstractC1538b {
        public C1568d() {
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
        /* renamed from: a */
        public AbstractC1631p mo32294a(AbstractC1634r.C1635a aVar, AbstractC1678b bVar, long j) {
            throw new UnsupportedOperationException();
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b, p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
        /* renamed from: a */
        public Object mo32507a() {
            return null;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
        /* renamed from: a */
        public void mo32295a(AbstractC1631p pVar) {
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
        /* renamed from: a */
        public void mo32293a(AbstractC1704x xVar) {
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
        /* renamed from: b */
        public void mo32502b() throws IOException {
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
        /* renamed from: c */
        public void mo32678c() {
        }
    }

    /* renamed from: b.s.b.a.w0.i$e */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/i$e.class */
    public static final class C1569e extends AbstractC1252n0 {

        /* renamed from: b */
        public final Object f6428b;

        public C1569e(Object obj) {
            this.f6428b = obj;
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public int mo32719a() {
            return 1;
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public int mo32715a(Object obj) {
            return obj == C1567c.f6426d ? 0 : -1;
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public AbstractC1252n0.C1254b mo32738a(int i, AbstractC1252n0.C1254b bVar, boolean z) {
            bVar.m34035a(0, C1567c.f6426d, 0, -9223372036854775807L, 0L);
            return bVar;
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public AbstractC1252n0.C1255c mo32716a(int i, AbstractC1252n0.C1255c cVar, boolean z, long j) {
            cVar.m34023a(this.f6428b, -9223372036854775807L, -9223372036854775807L, false, true, 0L, -9223372036854775807L, 0, 0, 0L);
            return cVar;
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public Object mo32718a(int i) {
            return C1567c.f6426d;
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: b */
        public int mo32713b() {
            return 1;
        }
    }

    /* renamed from: b.s.b.a.w0.i$f */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/i$f.class */
    public static final class C1570f {

        /* renamed from: a */
        public final Handler f6429a;

        /* renamed from: b */
        public final Runnable f6430b;

        public C1570f(Handler handler, Runnable runnable) {
            this.f6429a = handler;
            this.f6430b = runnable;
        }

        /* renamed from: a */
        public void m32758a() {
            this.f6429a.post(this.f6430b);
        }
    }

    /* renamed from: b.s.b.a.w0.i$g */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/i$g.class */
    public static final class C1571g implements Comparable<C1571g> {

        /* renamed from: a */
        public final AbstractC1634r f6431a;

        /* renamed from: d */
        public C1567c f6434d;

        /* renamed from: e */
        public int f6435e;

        /* renamed from: f */
        public int f6436f;

        /* renamed from: g */
        public int f6437g;

        /* renamed from: h */
        public boolean f6438h;

        /* renamed from: i */
        public boolean f6439i;

        /* renamed from: j */
        public boolean f6440j;

        /* renamed from: c */
        public final List<C1578k> f6433c = new ArrayList();

        /* renamed from: b */
        public final Object f6432b = new Object();

        public C1571g(AbstractC1634r rVar) {
            this.f6431a = rVar;
            this.f6434d = C1567c.m32761b(rVar.mo32507a());
        }

        /* renamed from: a */
        public int compareTo(C1571g gVar) {
            return this.f6437g - gVar.f6437g;
        }

        /* renamed from: a */
        public void m32757a(int i, int i2, int i3) {
            this.f6435e = i;
            this.f6436f = i2;
            this.f6437g = i3;
            this.f6438h = false;
            this.f6439i = false;
            this.f6440j = false;
            this.f6433c.clear();
        }
    }

    /* renamed from: b.s.b.a.w0.i$h */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/i$h.class */
    public static final class C1572h<T> {

        /* renamed from: a */
        public final int f6441a;

        /* renamed from: b */
        public final T f6442b;

        /* renamed from: c */
        public final C1570f f6443c;

        public C1572h(int i, T t, C1570f fVar) {
            this.f6441a = i;
            this.f6442b = t;
            this.f6443c = fVar;
        }
    }

    public C1564i(boolean z, AbstractC1576j0 j0Var, AbstractC1634r... rVarArr) {
        this(z, false, j0Var, rVarArr);
    }

    public C1564i(boolean z, boolean z2, AbstractC1576j0 j0Var, AbstractC1634r... rVarArr) {
        for (AbstractC1634r rVar : rVarArr) {
            C1160a.m34522a(rVar);
        }
        this.f6416u = j0Var.mo32754a() > 0 ? j0Var.mo32746d() : j0Var;
        this.f6408m = new IdentityHashMap();
        this.f6409n = new HashMap();
        this.f6404i = new ArrayList();
        this.f6407l = new ArrayList();
        this.f6415t = new HashSet();
        this.f6405j = new HashSet();
        this.f6410o = z;
        this.f6411p = z2;
        this.f6412q = new AbstractC1252n0.C1255c();
        this.f6413r = new AbstractC1252n0.C1254b();
        m32783a((Collection<AbstractC1634r>) Arrays.asList(rVarArr));
    }

    public C1564i(boolean z, AbstractC1634r... rVarArr) {
        this(z, new AbstractC1576j0.C1577a(0), rVarArr);
    }

    public C1564i(AbstractC1634r... rVarArr) {
        this(false, rVarArr);
    }

    /* renamed from: a */
    public static Object m32786a(C1571g gVar, Object obj) {
        Object c = AbstractC1532a.m32957c(obj);
        Object obj2 = c;
        if (c.equals(C1567c.f6426d)) {
            obj2 = gVar.f6434d.f6427c;
        }
        return obj2;
    }

    /* renamed from: b */
    public static Object m32778b(C1571g gVar, Object obj) {
        Object obj2 = obj;
        if (gVar.f6434d.f6427c.equals(obj)) {
            obj2 = C1567c.f6426d;
        }
        return AbstractC1532a.m32959a(gVar.f6432b, obj2);
    }

    /* renamed from: b */
    public static Object m32777b(Object obj) {
        return AbstractC1532a.m32956d(obj);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public int mo32785a(C1571g gVar, int i) {
        return i + gVar.f6436f;
    }

    /* renamed from: a */
    public final C1570f m32794a(Handler handler, Runnable runnable) {
        if (handler == null || runnable == null) {
            return null;
        }
        C1570f fVar = new C1570f(handler, runnable);
        this.f6405j.add(fVar);
        return fVar;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public final AbstractC1631p mo32294a(AbstractC1634r.C1635a aVar, AbstractC1678b bVar, long j) {
        C1571g gVar = this.f6409n.get(m32777b(aVar.f6755a));
        C1571g gVar2 = gVar;
        if (gVar == null) {
            gVar2 = new C1571g(new C1568d());
            gVar2.f6438h = true;
        }
        C1578k kVar = new C1578k(gVar2.f6431a, aVar, bVar, j);
        this.f6408m.put(kVar, gVar2);
        gVar2.f6433c.add(kVar);
        if (!gVar2.f6438h) {
            gVar2.f6438h = true;
            m32872a((C1564i) gVar2, gVar2.f6431a);
        } else if (gVar2.f6439i) {
            kVar.m32745a(aVar.m32500a(m32786a(gVar2, aVar.f6755a)));
        }
        return kVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC1634r.C1635a mo32784a(C1571g gVar, AbstractC1634r.C1635a aVar) {
        for (int i = 0; i < gVar.f6433c.size(); i++) {
            if (gVar.f6433c.get(i).f6448b.f6758d == aVar.f6758d) {
                return aVar.m32500a(m32778b(gVar, aVar.f6755a));
            }
        }
        return null;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b, p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public Object mo32507a() {
        return null;
    }

    /* renamed from: a */
    public final void m32801a(int i) {
        synchronized (this) {
            m32798a(i, i + 1, (Handler) null, (Runnable) null);
        }
    }

    /* renamed from: a */
    public final void m32800a(int i, int i2) {
        int min = Math.min(i, i2);
        int max = Math.max(i, i2);
        int i3 = this.f6407l.get(min).f6436f;
        int i4 = this.f6407l.get(min).f6437g;
        List<C1571g> list = this.f6407l;
        list.add(i2, list.remove(i));
        for (int i5 = min; i5 <= max; i5++) {
            C1571g gVar = this.f6407l.get(i5);
            gVar.f6436f = i3;
            gVar.f6437g = i4;
            i3 += gVar.f6434d.mo32713b();
            i4 += gVar.f6434d.mo32719a();
        }
    }

    /* renamed from: a */
    public final void m32799a(int i, int i2, int i3, int i4) {
        this.f6417v += i3;
        this.f6418w += i4;
        while (i < this.f6407l.size()) {
            this.f6407l.get(i).f6435e += i2;
            this.f6407l.get(i).f6436f += i3;
            this.f6407l.get(i).f6437g += i4;
            i++;
        }
    }

    /* renamed from: a */
    public final void m32798a(int i, int i2, Handler handler, Runnable runnable) {
        boolean z = false;
        if ((handler == null) == (runnable == null)) {
            z = true;
        }
        C1160a.m34520a(z);
        Handler handler2 = this.f6406k;
        C1167d0.m34471a(this.f6404i, i, i2);
        if (handler2 != null) {
            handler2.obtainMessage(1, new C1572h(i, Integer.valueOf(i2), m32794a(handler, runnable))).sendToTarget();
        } else if (runnable != null && handler != null) {
            handler.post(runnable);
        }
    }

    /* renamed from: a */
    public final void m32797a(int i, C1571g gVar) {
        if (i > 0) {
            C1571g gVar2 = this.f6407l.get(i - 1);
            gVar.m32757a(i, gVar2.f6436f + gVar2.f6434d.mo32713b(), gVar2.f6437g + gVar2.f6434d.mo32719a());
        } else {
            gVar.m32757a(i, 0, 0);
        }
        m32799a(i, 1, gVar.f6434d.mo32713b(), gVar.f6434d.mo32719a());
        this.f6407l.add(i, gVar);
        this.f6409n.put(gVar.f6432b, gVar);
        if (!this.f6411p) {
            gVar.f6438h = true;
            m32872a((C1564i) gVar, gVar.f6431a);
        }
    }

    /* renamed from: a */
    public final void m32796a(int i, Collection<C1571g> collection) {
        for (C1571g gVar : collection) {
            m32797a(i, gVar);
            i++;
        }
    }

    /* renamed from: a */
    public final void m32795a(int i, Collection<AbstractC1634r> collection, Handler handler, Runnable runnable) {
        boolean z = true;
        if ((handler == null) != (runnable == null)) {
            z = false;
        }
        C1160a.m34520a(z);
        Handler handler2 = this.f6406k;
        for (AbstractC1634r rVar : collection) {
            C1160a.m34522a(rVar);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (AbstractC1634r rVar2 : collection) {
            arrayList.add(new C1571g(rVar2));
        }
        this.f6404i.addAll(i, arrayList);
        if (handler2 != null && !collection.isEmpty()) {
            handler2.obtainMessage(0, new C1572h(i, arrayList, m32794a(handler, runnable))).sendToTarget();
        } else if (runnable != null && handler != null) {
            handler.post(runnable);
        }
    }

    /* renamed from: a */
    public final void m32792a(C1570f fVar) {
        if (!this.f6414s) {
            m32775e().obtainMessage(4).sendToTarget();
            this.f6414s = true;
        }
        if (fVar != null) {
            this.f6415t.add(fVar);
        }
    }

    /* renamed from: a */
    public final void m32791a(C1571g gVar) {
        if (gVar.f6440j && gVar.f6438h && gVar.f6433c.isEmpty()) {
            m32874a((C1564i) gVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c4, code lost:
        if (r16 != 0) goto L_0x00ce;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32789a(p012b.p076s.p078b.p079a.p102w0.C1564i.C1571g r8, p012b.p076s.p078b.p079a.AbstractC1252n0 r9) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1564i.m32789a(b.s.b.a.w0.i$g, b.s.b.a.n0):void");
    }

    /* renamed from: a */
    public final void mo32291b(C1571g gVar, AbstractC1634r rVar, AbstractC1252n0 n0Var, Object obj) {
        m32789a(gVar, n0Var);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public final void mo32295a(AbstractC1631p pVar) {
        C1571g remove = this.f6408m.remove(pVar);
        C1160a.m34522a(remove);
        C1571g gVar = remove;
        ((C1578k) pVar).m32741e();
        gVar.f6433c.remove(pVar);
        m32791a(gVar);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1551e, p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: a */
    public final void mo32293a(AbstractC1704x xVar) {
        synchronized (this) {
            super.mo32293a(xVar);
            this.f6406k = new Handler(new Handler.Callback(this) { // from class: b.s.b.a.w0.h

                /* renamed from: a */
                public final C1564i f6403a;

                {
                    this.f6403a = this;
                }

                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    return this.f6403a.m32793a(message);
                }
            });
            if (this.f6404i.isEmpty()) {
                m32772h();
            } else {
                this.f6416u = this.f6416u.mo32748b(0, this.f6404i.size());
                m32796a(0, this.f6404i);
                m32773g();
            }
        }
    }

    /* renamed from: a */
    public final void m32783a(Collection<AbstractC1634r> collection) {
        synchronized (this) {
            m32795a(this.f6404i.size(), collection, (Handler) null, (Runnable) null);
        }
    }

    /* renamed from: a */
    public final void m32782a(Set<C1570f> set) {
        synchronized (this) {
            for (C1570f fVar : set) {
                fVar.m32758a();
            }
            this.f6405j.removeAll(set);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1551e, p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: b */
    public void mo32502b() throws IOException {
    }

    /* renamed from: b */
    public final void m32781b(int i) {
        C1571g remove = this.f6407l.remove(i);
        this.f6409n.remove(remove.f6432b);
        C1567c cVar = remove.f6434d;
        m32799a(i, -1, -cVar.mo32713b(), -cVar.mo32719a());
        remove.f6440j = true;
        m32791a(remove);
    }

    /* renamed from: b */
    public final void m32780b(int i, int i2) {
        synchronized (this) {
            m32798a(i, i2, (Handler) null, (Runnable) null);
        }
    }

    /* renamed from: b */
    public final boolean m32793a(Message message) {
        int i = message.what;
        if (i == 0) {
            Object obj = message.obj;
            C1167d0.m34479a(obj);
            C1572h hVar = (C1572h) obj;
            this.f6416u = this.f6416u.mo32748b(hVar.f6441a, ((Collection) hVar.f6442b).size());
            m32796a(hVar.f6441a, (Collection) hVar.f6442b);
            m32792a(hVar.f6443c);
            return true;
        } else if (i == 1) {
            Object obj2 = message.obj;
            C1167d0.m34479a(obj2);
            C1572h hVar2 = (C1572h) obj2;
            int i2 = hVar2.f6441a;
            int intValue = ((Integer) hVar2.f6442b).intValue();
            if (i2 == 0 && intValue == this.f6416u.mo32754a()) {
                this.f6416u = this.f6416u.mo32746d();
            } else {
                this.f6416u = this.f6416u.mo32752a(i2, intValue);
            }
            while (true) {
                intValue--;
                if (intValue >= i2) {
                    m32781b(intValue);
                } else {
                    m32792a(hVar2.f6443c);
                    return true;
                }
            }
        } else if (i == 2) {
            Object obj3 = message.obj;
            C1167d0.m34479a(obj3);
            C1572h hVar3 = (C1572h) obj3;
            AbstractC1576j0 j0Var = this.f6416u;
            int i3 = hVar3.f6441a;
            AbstractC1576j0 a = j0Var.mo32752a(i3, i3 + 1);
            this.f6416u = a;
            this.f6416u = a.mo32748b(((Integer) hVar3.f6442b).intValue(), 1);
            m32800a(hVar3.f6441a, ((Integer) hVar3.f6442b).intValue());
            m32792a(hVar3.f6443c);
            return true;
        } else if (i == 3) {
            Object obj4 = message.obj;
            C1167d0.m34479a(obj4);
            C1572h hVar4 = (C1572h) obj4;
            this.f6416u = (AbstractC1576j0) hVar4.f6442b;
            m32792a(hVar4.f6443c);
            return true;
        } else if (i == 4) {
            m32772h();
            return true;
        } else if (i == 5) {
            Object obj5 = message.obj;
            C1167d0.m34479a(obj5);
            m32782a((Set) obj5);
            return true;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1551e, p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: c */
    public final void mo32678c() {
        synchronized (this) {
            super.mo32678c();
            this.f6407l.clear();
            this.f6409n.clear();
            this.f6416u = this.f6416u.mo32746d();
            this.f6417v = 0;
            this.f6418w = 0;
            if (this.f6406k != null) {
                this.f6406k.removeCallbacksAndMessages(null);
                this.f6406k = null;
            }
            this.f6414s = false;
            this.f6415t.clear();
            m32782a(this.f6405j);
        }
    }

    /* renamed from: d */
    public final void m32776d() {
        synchronized (this) {
            m32780b(0, m32774f());
        }
    }

    /* renamed from: e */
    public final Handler m32775e() {
        Handler handler = this.f6406k;
        C1160a.m34522a(handler);
        return handler;
    }

    /* renamed from: f */
    public final int m32774f() {
        int size;
        synchronized (this) {
            size = this.f6404i.size();
        }
        return size;
    }

    /* renamed from: g */
    public final void m32773g() {
        m32792a((C1570f) null);
    }

    /* renamed from: h */
    public final void m32772h() {
        this.f6414s = false;
        Set<C1570f> set = this.f6415t;
        this.f6415t = new HashSet();
        m32924a(new C1566b(this.f6407l, this.f6417v, this.f6418w, this.f6416u, this.f6410o), (Object) null);
        m32775e().obtainMessage(5, set).sendToTarget();
    }
}
