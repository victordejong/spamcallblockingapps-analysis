package com.google.common.cache;

import com.google.common.base.Equivalence;
import com.google.common.base.Suppliers;
import com.google.common.cache.LocalCache;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.AbstractC4943u;
import p131c.p161d.p266c.p267a.C4908a;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p268b.AbstractC4947b;
import p131c.p161d.p266c.p268b.AbstractC4948c;
import p131c.p161d.p266c.p268b.AbstractC4951f;
import p131c.p161d.p266c.p268b.AbstractC4954i;
import p131c.p161d.p266c.p268b.AbstractC4955j;
import p131c.p161d.p266c.p268b.C4946a;
import p131c.p161d.p266c.p268b.C4949d;
/* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheBuilder.class */
public final class CacheBuilder<K, V> {

    /* renamed from: q */
    public static final AbstractC4941s<? extends AbstractC4947b> f30283q = Suppliers.m8561a(new C7331a());

    /* renamed from: r */
    public static final C4949d f30284r = new C4949d(0, 0, 0, 0, 0, 0);

    /* renamed from: s */
    public static final AbstractC4943u f30285s = new C7333c();

    /* renamed from: t */
    public static final Logger f30286t = Logger.getLogger(CacheBuilder.class.getName());

    /* renamed from: f */
    public AbstractC4955j<? super K, ? super V> f30292f;

    /* renamed from: g */
    public LocalCache.Strength f30293g;

    /* renamed from: h */
    public LocalCache.Strength f30294h;

    /* renamed from: l */
    public Equivalence<Object> f30298l;

    /* renamed from: m */
    public Equivalence<Object> f30299m;

    /* renamed from: n */
    public AbstractC4954i<? super K, ? super V> f30300n;

    /* renamed from: o */
    public AbstractC4943u f30301o;

    /* renamed from: a */
    public boolean f30287a = true;

    /* renamed from: b */
    public int f30288b = -1;

    /* renamed from: c */
    public int f30289c = -1;

    /* renamed from: d */
    public long f30290d = -1;

    /* renamed from: e */
    public long f30291e = -1;

    /* renamed from: i */
    public long f30295i = -1;

    /* renamed from: j */
    public long f30296j = -1;

    /* renamed from: k */
    public long f30297k = -1;

    /* renamed from: p */
    public AbstractC4941s<? extends AbstractC4947b> f30302p = f30283q;

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheBuilder$NullListener.class */
    public enum NullListener implements AbstractC4954i<Object, Object> {
        INSTANCE;

        @Override // p131c.p161d.p266c.p268b.AbstractC4954i
        public void onRemoval(RemovalNotification<Object, Object> removalNotification) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheBuilder$OneWeigher.class */
    public enum OneWeigher implements AbstractC4955j<Object, Object> {
        INSTANCE;

        @Override // p131c.p161d.p266c.p268b.AbstractC4955j
        public int weigh(Object obj, Object obj2) {
            return 1;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilder$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheBuilder$a.class */
    public static final class C7331a implements AbstractC4947b {
        @Override // p131c.p161d.p266c.p268b.AbstractC4947b
        /* renamed from: a */
        public void mo8529a() {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4947b
        /* renamed from: a */
        public void mo8528a(int i) {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4947b
        /* renamed from: a */
        public void mo8527a(long j) {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4947b
        /* renamed from: b */
        public C4949d mo8526b() {
            return CacheBuilder.f30284r;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4947b
        /* renamed from: b */
        public void mo8525b(int i) {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4947b
        /* renamed from: b */
        public void mo8524b(long j) {
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilder$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheBuilder$b.class */
    public static final class C7332b implements AbstractC4941s<AbstractC4947b> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public AbstractC4947b get() {
            return new C4946a();
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilder$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheBuilder$c.class */
    public static final class C7333c extends AbstractC4943u {
        @Override // p131c.p161d.p266c.p267a.AbstractC4943u
        /* renamed from: a */
        public long mo8523a() {
            return 0L;
        }
    }

    static {
        new C7332b();
    }

    /* renamed from: q */
    public static CacheBuilder<Object, Object> m8530q() {
        return new CacheBuilder<>();
    }

    /* renamed from: a */
    public AbstractC4943u m8550a(boolean z) {
        AbstractC4943u uVar = this.f30301o;
        if (uVar != null) {
            return uVar;
        }
        return z ? AbstractC4943u.m24747b() : f30285s;
    }

    /* renamed from: a */
    public <K1 extends K, V1 extends V> AbstractC4948c<K1, V1> m8560a() {
        m8544c();
        m8549b();
        return new LocalCache.LocalManualCache(this);
    }

    /* renamed from: a */
    public <K1 extends K, V1 extends V> AbstractC4951f<K1, V1> m8552a(CacheLoader<? super K1, V1> cacheLoader) {
        m8544c();
        return new LocalCache.LocalLoadingCache(this, cacheLoader);
    }

    /* renamed from: a */
    public CacheBuilder<K, V> m8559a(int i) {
        boolean z = true;
        C4933n.m24774b(this.f30289c == -1, "concurrency level was already set to %s", this.f30289c);
        if (i <= 0) {
            z = false;
        }
        C4933n.m24791a(z);
        this.f30289c = i;
        return this;
    }

    /* renamed from: a */
    public CacheBuilder<K, V> m8558a(long j) {
        boolean z = true;
        C4933n.m24773b(this.f30290d == -1, "maximum size was already set to %s", this.f30290d);
        C4933n.m24773b(this.f30291e == -1, "maximum weight was already set to %s", this.f30291e);
        C4933n.m24775b(this.f30292f == null, "maximum size can not be combined with weigher");
        if (j < 0) {
            z = false;
        }
        C4933n.m24790a(z, "maximum size must not be negative");
        this.f30290d = j;
        return this;
    }

    /* renamed from: a */
    public CacheBuilder<K, V> m8557a(long j, TimeUnit timeUnit) {
        boolean z = true;
        C4933n.m24773b(this.f30296j == -1, "expireAfterAccess was already set to %s ns", this.f30296j);
        if (j < 0) {
            z = false;
        }
        C4933n.m24783a(z, "duration cannot be negative: %s %s", j, timeUnit);
        this.f30296j = timeUnit.toNanos(j);
        return this;
    }

    /* renamed from: a */
    public CacheBuilder<K, V> m8556a(AbstractC4943u uVar) {
        C4933n.m24776b(this.f30301o == null);
        C4933n.m24795a(uVar);
        this.f30301o = uVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> m8555a(AbstractC4954i<? super K1, ? super V1> iVar) {
        C4933n.m24776b(this.f30300n == null);
        C4933n.m24795a(iVar);
        this.f30300n = iVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> m8554a(AbstractC4955j<? super K1, ? super V1> jVar) {
        boolean z = true;
        C4933n.m24776b(this.f30292f == null);
        if (this.f30287a) {
            if (this.f30290d != -1) {
                z = false;
            }
            C4933n.m24773b(z, "weigher can not be combined with maximum size", this.f30290d);
        }
        C4933n.m24795a(jVar);
        this.f30292f = jVar;
        return this;
    }

    /* renamed from: a */
    public CacheBuilder<K, V> m8553a(Equivalence<Object> equivalence) {
        C4933n.m24772b(this.f30298l == null, "key equivalence was already set to %s", this.f30298l);
        C4933n.m24795a(equivalence);
        this.f30298l = equivalence;
        return this;
    }

    /* renamed from: a */
    public CacheBuilder<K, V> m8551a(LocalCache.Strength strength) {
        C4933n.m24772b(this.f30293g == null, "Key strength was already set to %s", this.f30293g);
        C4933n.m24795a(strength);
        this.f30293g = strength;
        return this;
    }

    /* renamed from: b */
    public CacheBuilder<K, V> m8548b(long j) {
        boolean z = true;
        C4933n.m24773b(this.f30291e == -1, "maximum weight was already set to %s", this.f30291e);
        C4933n.m24773b(this.f30290d == -1, "maximum size was already set to %s", this.f30290d);
        this.f30291e = j;
        if (j < 0) {
            z = false;
        }
        C4933n.m24790a(z, "maximum weight must not be negative");
        return this;
    }

    /* renamed from: b */
    public CacheBuilder<K, V> m8547b(long j, TimeUnit timeUnit) {
        boolean z = true;
        C4933n.m24773b(this.f30295i == -1, "expireAfterWrite was already set to %s ns", this.f30295i);
        if (j < 0) {
            z = false;
        }
        C4933n.m24783a(z, "duration cannot be negative: %s %s", j, timeUnit);
        this.f30295i = timeUnit.toNanos(j);
        return this;
    }

    /* renamed from: b */
    public CacheBuilder<K, V> m8546b(Equivalence<Object> equivalence) {
        C4933n.m24772b(this.f30299m == null, "value equivalence was already set to %s", this.f30299m);
        C4933n.m24795a(equivalence);
        this.f30299m = equivalence;
        return this;
    }

    /* renamed from: b */
    public CacheBuilder<K, V> m8545b(LocalCache.Strength strength) {
        C4933n.m24772b(this.f30294h == null, "Value strength was already set to %s", this.f30294h);
        C4933n.m24795a(strength);
        this.f30294h = strength;
        return this;
    }

    /* renamed from: b */
    public final void m8549b() {
        C4933n.m24775b(this.f30297k == -1, "refreshAfterWrite requires a LoadingCache");
    }

    /* renamed from: c */
    public final void m8544c() {
        boolean z = true;
        boolean z2 = true;
        if (this.f30292f == null) {
            if (this.f30291e != -1) {
                z2 = false;
            }
            C4933n.m24775b(z2, "maximumWeight requires weigher");
        } else if (this.f30287a) {
            if (this.f30291e == -1) {
                z = false;
            }
            C4933n.m24775b(z, "weigher requires maximumWeight");
        } else if (this.f30291e == -1) {
            f30286t.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
        }
    }

    /* renamed from: d */
    public int m8543d() {
        int i = this.f30289c;
        int i2 = i;
        if (i == -1) {
            i2 = 4;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m8542e() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f30296j
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = 0
            r8 = r0
        L_0x0011:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.CacheBuilder.m8542e():long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m8541f() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f30295i
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = 0
            r8 = r0
        L_0x0011:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.CacheBuilder.m8541f():long");
    }

    /* renamed from: g */
    public int m8540g() {
        int i = this.f30288b;
        int i2 = i;
        if (i == -1) {
            i2 = 16;
        }
        return i2;
    }

    /* renamed from: h */
    public Equivalence<Object> m8539h() {
        return (Equivalence) C4924j.m24819a(this.f30298l, m8538i().defaultEquivalence());
    }

    /* renamed from: i */
    public LocalCache.Strength m8538i() {
        return (LocalCache.Strength) C4924j.m24819a(this.f30293g, LocalCache.Strength.STRONG);
    }

    /* renamed from: j */
    public long m8537j() {
        if (this.f30295i == 0 || this.f30296j == 0) {
            return 0L;
        }
        return this.f30292f == null ? this.f30290d : this.f30291e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m8536k() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f30297k
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = 0
            r8 = r0
        L_0x0011:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.CacheBuilder.m8536k():long");
    }

    /* renamed from: l */
    public <K1 extends K, V1 extends V> AbstractC4954i<K1, V1> m8535l() {
        return (AbstractC4954i) C4924j.m24819a(this.f30300n, NullListener.INSTANCE);
    }

    /* renamed from: m */
    public AbstractC4941s<? extends AbstractC4947b> m8534m() {
        return this.f30302p;
    }

    /* renamed from: n */
    public Equivalence<Object> m8533n() {
        return (Equivalence) C4924j.m24819a(this.f30299m, m8532o().defaultEquivalence());
    }

    /* renamed from: o */
    public LocalCache.Strength m8532o() {
        return (LocalCache.Strength) C4924j.m24819a(this.f30294h, LocalCache.Strength.STRONG);
    }

    /* renamed from: p */
    public <K1 extends K, V1 extends V> AbstractC4955j<K1, V1> m8531p() {
        return (AbstractC4955j) C4924j.m24819a(this.f30292f, OneWeigher.INSTANCE);
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        int i = this.f30288b;
        if (i != -1) {
            a.m24815a("initialCapacity", i);
        }
        int i2 = this.f30289c;
        if (i2 != -1) {
            a.m24815a("concurrencyLevel", i2);
        }
        long j = this.f30290d;
        if (j != -1) {
            a.m24814a("maximumSize", j);
        }
        long j2 = this.f30291e;
        if (j2 != -1) {
            a.m24814a("maximumWeight", j2);
        }
        if (this.f30295i != -1) {
            a.m24813a("expireAfterWrite", this.f30295i + "ns");
        }
        if (this.f30296j != -1) {
            a.m24813a("expireAfterAccess", this.f30296j + "ns");
        }
        LocalCache.Strength strength = this.f30293g;
        if (strength != null) {
            a.m24813a("keyStrength", C4908a.m24843a(strength.toString()));
        }
        LocalCache.Strength strength2 = this.f30294h;
        if (strength2 != null) {
            a.m24813a("valueStrength", C4908a.m24843a(strength2.toString()));
        }
        if (this.f30298l != null) {
            a.m24810b("keyEquivalence");
        }
        if (this.f30299m != null) {
            a.m24810b("valueEquivalence");
        }
        if (this.f30300n != null) {
            a.m24810b("removalListener");
        }
        return a.toString();
    }
}
