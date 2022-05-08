package com.criteo.publisher;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.criteo.publisher.advancednative.C1941b;
import com.criteo.publisher.advancednative.C1945e;
import com.criteo.publisher.advancednative.C1947f;
import com.criteo.publisher.advancednative.C1951g;
import com.criteo.publisher.advancednative.C1952h;
import com.criteo.publisher.advancednative.C1953i;
import com.criteo.publisher.advancednative.C1957k;
import com.criteo.publisher.advancednative.C1959m;
import com.criteo.publisher.advancednative.C1961o;
import com.criteo.publisher.advancednative.ImageLoader;
import com.criteo.publisher.advancednative.RendererHelper;
import com.criteo.publisher.model.C2027f;
import com.criteo.publisher.model.C2039m;
import com.criteo.publisher.model.C2042p;
import com.criteo.publisher.model.C2043q;
import com.criteo.publisher.model.C2047s;
import com.criteo.publisher.model.C2050u;
import com.criteo.publisher.p019a.C1907a;
import com.criteo.publisher.p020a0.AbstractC1924l;
import com.criteo.publisher.p020a0.C1909b;
import com.criteo.publisher.p020a0.C1910c;
import com.criteo.publisher.p020a0.C1917h;
import com.criteo.publisher.p020a0.C1925m;
import com.criteo.publisher.p020a0.C1926n;
import com.criteo.publisher.p020a0.C1932t;
import com.criteo.publisher.p022o.C2084b;
import com.criteo.publisher.p023p.C2087b;
import com.criteo.publisher.p024q.AbstractC2090a;
import com.criteo.publisher.p024q.C2091b;
import com.criteo.publisher.p024q.C2092c;
import com.criteo.publisher.p024q.C2093d;
import com.criteo.publisher.p025r.C2094a;
import com.criteo.publisher.p026s.C2096b;
import com.criteo.publisher.p026s.ExecutorC2095a;
import com.criteo.publisher.p027t.AbstractC2135r;
import com.criteo.publisher.p027t.AbstractC2141u;
import com.criteo.publisher.p027t.C2115k;
import com.criteo.publisher.p027t.C2132p;
import com.criteo.publisher.p027t.C2134q;
import com.criteo.publisher.p027t.C2137s;
import com.criteo.publisher.p027t.C2142v;
import com.criteo.publisher.p027t.C2145w;
import com.criteo.publisher.p027t.C2146x;
import com.criteo.publisher.p028u.C2150a;
import com.criteo.publisher.p028u.C2153b;
import com.criteo.publisher.p028u.C2155d;
import com.criteo.publisher.p028u.C2156e;
import com.criteo.publisher.p029v.C2157a;
import com.criteo.publisher.p030w.C2159b;
import com.criteo.publisher.p031x.C2161b;
import com.criteo.publisher.p031x.C2166d;
import com.criteo.publisher.p032y.C2167a;
import com.google.gson.Gson;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
import p081h.p203i.p384e.C10099e;
import p081h.p444n.p445a.C10798u;
/* renamed from: com.criteo.publisher.i */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/i.class */
public class C1974i {

    /* renamed from: d */
    public static C1974i f2148d;

    /* renamed from: a */
    public final Map<Class, Object> f2149a = new HashMap();

    /* renamed from: b */
    public Application f2150b;

    /* renamed from: c */
    public String f2151c;

    /* renamed from: com.criteo.publisher.i$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$a.class */
    public class C1975a implements AbstractC2000m0<C2043q> {
        public C1975a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2043q mo35616a() {
            return new C2043q(C1974i.this.m35894o(), C1974i.this.m35920M());
        }
    }

    /* renamed from: com.criteo.publisher.i$a0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$a0.class */
    public class C1976a0 implements AbstractC2000m0<C2132p> {
        public C1976a0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2132p mo35616a() {
            return new C2132p(C1974i.this.m35894o(), C1974i.this.m35932A(), C1974i.this.m35899j());
        }
    }

    /* renamed from: com.criteo.publisher.i$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$b.class */
    public class C1977b implements AbstractC2000m0<C2027f> {
        public C1977b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2027f mo35616a() {
            return new C2027f(C1974i.this.m35905d(), C1974i.this.m35890s());
        }
    }

    /* renamed from: com.criteo.publisher.i$b0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$b0.class */
    public class C1978b0 implements AbstractC2000m0<C2134q> {
        public C1978b0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2134q mo35616a() {
            return new C2134q(C1974i.this.m35884y());
        }
    }

    /* renamed from: com.criteo.publisher.i$c */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$c.class */
    public class C1979c implements AbstractC2000m0<C1907a> {
        public C1979c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1907a mo35616a() {
            return new C1907a(C1974i.this.m35894o(), C1974i.this.m35890s(), C1974i.this.m35896m(), C1974i.this.m35925H(), C1974i.this.m35916Q(), C1974i.this.m35891r());
        }
    }

    /* renamed from: com.criteo.publisher.i$c0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$c0.class */
    public class C1980c0 implements AbstractC2000m0<C1926n> {
        public C1980c0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1926n mo35616a() {
            return new C1926n(C1974i.this.m35889t());
        }
    }

    /* renamed from: com.criteo.publisher.i$d */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$d.class */
    public class C1981d implements AbstractC2000m0<C2047s> {
        public C1981d() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2047s mo35616a() {
            return new C2047s(C1974i.this.m35894o(), C1974i.this.m35893p());
        }
    }

    /* renamed from: com.criteo.publisher.i$d0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$d0.class */
    public class C1982d0 implements AbstractC2000m0<Gson> {
        public C1982d0(C1974i iVar) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public Gson mo35616a() {
            C10099e eVar = new C10099e();
            eVar.m13386a(AbstractC1924l.m36017a());
            return eVar.m13388a();
        }
    }

    /* renamed from: com.criteo.publisher.i$e */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$e.class */
    public class C1983e implements AbstractC2000m0<C1917h> {
        public C1983e(C1974i iVar) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1917h mo35616a() {
            return new C1917h();
        }
    }

    /* renamed from: com.criteo.publisher.i$e0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$e0.class */
    public class C1984e0 implements AbstractC2000m0<C2159b> {
        public C1984e0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2159b mo35616a() {
            return new C2159b(C1974i.this.m35899j());
        }
    }

    /* renamed from: com.criteo.publisher.i$f */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$f.class */
    public class C1985f implements AbstractC2000m0<C2039m> {
        public C1985f() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2039m mo35616a() {
            return new C2039m(C1974i.this.m35924I(), C1974i.this.m35891r(), C1974i.this.m35890s(), C1974i.this.m35916Q(), C1974i.this.m35917P(), C1974i.this.m35899j());
        }
    }

    /* renamed from: com.criteo.publisher.i$f0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$f0.class */
    public class C1986f0 implements AbstractC2000m0<C1910c> {
        public C1986f0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1910c mo35616a() {
            return new C1910c(C1974i.this.m35894o());
        }
    }

    /* renamed from: com.criteo.publisher.i$g */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$g.class */
    public class C1987g implements AbstractC2000m0<C2093d> {
        public C1987g() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2093d mo35616a() {
            return new C2093d(C1974i.this.m35896m());
        }
    }

    /* renamed from: com.criteo.publisher.i$g0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$g0.class */
    public class C1988g0 implements AbstractC2000m0<C1925m> {
        public C1988g0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1925m mo35616a() {
            return new C1925m(C1974i.this.m35894o(), C1974i.this.m35906c());
        }
    }

    /* renamed from: com.criteo.publisher.i$h */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$h.class */
    public class C1989h implements AbstractC2000m0<C2050u> {
        public C1989h() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2050u mo35616a() {
            return new C2050u(C1974i.this.m35924I(), C1974i.this.m35899j());
        }
    }

    /* renamed from: com.criteo.publisher.i$h0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$h0.class */
    public class C1990h0 implements AbstractC2000m0<ExecutorC2095a> {
        public C1990h0(C1974i iVar) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public ExecutorC2095a mo35616a() {
            return new ExecutorC2095a();
        }
    }

    /* renamed from: com.criteo.publisher.i$i */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$i.class */
    public class C1991i implements AbstractC2000m0<C2161b> {
        public C1991i() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2161b mo35616a() {
            return new C2161b(C1974i.this.m35898k(), C1974i.this.m35922K(), C1974i.this.m35925H(), C1974i.this.m35919N());
        }
    }

    /* renamed from: com.criteo.publisher.i$i0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$i0.class */
    public class C1992i0 implements AbstractC2000m0<C2042p> {
        public C1992i0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2042p mo35616a() {
            return new C2042p(C1974i.this.m35894o(), C1974i.this.m35884y());
        }
    }

    /* renamed from: com.criteo.publisher.i$j */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$j.class */
    public class C1993j implements AbstractC2000m0<AbstractC2090a> {
        public C1993j() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public AbstractC2090a mo35616a() {
            C2091b bVar = new C2091b();
            bVar.m35708a(new C2092c());
            if (Build.VERSION.SDK_INT >= 17) {
                bVar.m35708a(new C2115k(C1974i.this.m35931B(), new C2146x(C1974i.this.m35930C()), C1974i.this.m35896m(), C1974i.this.m35917P(), C1974i.this.m35895n(), C1974i.this.m35919N()));
            }
            return bVar;
        }
    }

    /* renamed from: com.criteo.publisher.i$j0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$j0.class */
    public class C1994j0 implements AbstractC2000m0<AbstractC1966c> {
        public C1994j0(C1974i iVar) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public AbstractC1966c mo35616a() {
            return new C2018k();
        }
    }

    /* renamed from: com.criteo.publisher.i$k */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$k.class */
    public class C1995k implements AbstractC2000m0<C2166d> {
        public C1995k() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2166d mo35616a() {
            return new C2166d(C1974i.this.m35899j(), C1974i.this.m35884y());
        }
    }

    /* renamed from: com.criteo.publisher.i$k0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$k0.class */
    public class C1996k0 implements AbstractC2000m0<C2167a> {
        public C1996k0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2167a mo35616a() {
            return new C2167a(C1974i.this.m35894o());
        }
    }

    /* renamed from: com.criteo.publisher.i$l */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$l.class */
    public class C1997l implements AbstractC2000m0<C1957k> {
        public C1997l() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1957k mo35616a() {
            return new C1957k(C1974i.this.m35915R(), new C1953i(C1974i.this.m35925H(), C1974i.this.m35919N(), C1974i.this.m35920M()), C1974i.this.m35897l(), new C1947f(C1974i.this.m35923J(), C1974i.this.m35918O(), C1974i.this.m35920M()), C1974i.this.m35911a(), C1974i.this.m35921L());
        }
    }

    /* renamed from: com.criteo.publisher.i$l0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$l0.class */
    public class C1998l0 implements AbstractC2000m0<C1963b> {
        public C1998l0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1963b mo35616a() {
            return new C1963b(new C2094a(C1974i.this.m35890s()), C1974i.this.m35895n(), C1974i.this.m35896m(), C1974i.this.m35907b(), C1974i.this.m35900i(), C1974i.this.m35902g(), C1974i.this.m35929D());
        }
    }

    /* renamed from: com.criteo.publisher.i$m */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$m.class */
    public class C1999m implements AbstractC2000m0<C1961o> {
        public C1999m(C1974i iVar) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1961o mo35616a() {
            return new C1961o(new C1959m());
        }
    }

    /* renamed from: com.criteo.publisher.i$m0 */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$m0.class */
    public interface AbstractC2000m0<T> {
        @NonNull
        /* renamed from: a */
        T mo35616a();
    }

    /* renamed from: com.criteo.publisher.i$n */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$n.class */
    public class C2001n implements AbstractC2000m0<C1945e> {
        public C2001n(C1974i iVar) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1945e mo35616a() {
            return new C1945e();
        }
    }

    /* renamed from: com.criteo.publisher.i$o */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$o.class */
    public class C2002o implements AbstractC2000m0<C2087b> {
        public C2002o() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2087b mo35616a() {
            return new C2087b(C1974i.this.m35894o());
        }
    }

    /* renamed from: com.criteo.publisher.i$p */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$p.class */
    public class C2003p implements AbstractC2000m0<C1941b> {
        public C2003p() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1941b mo35616a() {
            return new C1941b(C1974i.this.m35899j(), C1974i.this.m35905d());
        }
    }

    /* renamed from: com.criteo.publisher.i$q */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$q.class */
    public class C2004q implements AbstractC2000m0<C10798u> {
        public C2004q() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C10798u mo35616a() {
            return new C10798u.C10800b(C1974i.this.m35894o()).m10599a();
        }
    }

    /* renamed from: com.criteo.publisher.i$r */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$r.class */
    public class C2005r implements AbstractC2000m0<ImageLoader> {
        public C2005r() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public ImageLoader mo35616a() {
            return new C1951g(C1974i.this.m35926G());
        }
    }

    /* renamed from: com.criteo.publisher.i$s */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$s.class */
    public class C2006s implements AbstractC2000m0<C1952h> {
        public C2006s() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1952h mo35616a() {
            return new C1952h(C1974i.this.m35892q());
        }
    }

    /* renamed from: com.criteo.publisher.i$t */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$t.class */
    public class C2007t implements AbstractC2000m0<RendererHelper> {
        public C2007t() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public RendererHelper mo35616a() {
            return new RendererHelper(C1974i.this.m35887v(), C1974i.this.m35920M());
        }
    }

    /* renamed from: com.criteo.publisher.i$u */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$u.class */
    public class C2008u implements AbstractC2000m0<C2019l> {
        public C2008u() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2019l mo35616a() {
            return new C2019l(C1974i.this.m35901h(), new C2082n(), C1974i.this.m35896m(), C1974i.this.m35885x());
        }
    }

    /* renamed from: com.criteo.publisher.i$v */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$v.class */
    public class C2009v implements AbstractC2000m0<C1909b> {
        public C2009v(C1974i iVar) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C1909b mo35616a() {
            return new C1909b();
        }
    }

    /* renamed from: com.criteo.publisher.i$w */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$w.class */
    public class C2010w implements AbstractC2000m0<C2153b> {
        public C2010w() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2153b mo35616a() {
            return new C2153b(C1974i.this.m35901h(), Arrays.asList(new C2155d(), new C2150a(C1974i.this.m35905d(), C1974i.this.m35890s()), new C2156e()));
        }
    }

    /* renamed from: com.criteo.publisher.i$x */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$x.class */
    public class C2011x implements AbstractC2000m0<C2157a> {
        public C2011x() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2157a mo35616a() {
            return new C2157a(C1974i.this.m35894o(), C1974i.this.m35918O());
        }
    }

    /* renamed from: com.criteo.publisher.i$y */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$y.class */
    public class C2012y implements AbstractC2000m0<C2084b> {
        public C2012y() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2084b mo35616a() {
            return new C2084b(C1974i.this.m35894o());
        }
    }

    /* renamed from: com.criteo.publisher.i$z */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/i$z.class */
    public class C2013z implements AbstractC2000m0<C2142v> {
        public C2013z() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.criteo.publisher.C1974i.AbstractC2000m0
        @NonNull
        /* renamed from: a */
        public C2142v mo35616a() {
            return new C2142v(C1974i.this.m35930C(), C1974i.this.m35925H(), C1974i.this.m35899j(), C1974i.this.m35895n(), C1974i.this.m35919N());
        }
    }

    /* renamed from: S */
    private void m35914S() {
        if (this.f2150b == null) {
            throw new C1973h("Application reference is required");
        }
    }

    /* renamed from: T */
    private void m35913T() {
        if (C1932t.m35993a((CharSequence) this.f2151c)) {
            throw new C1973h("Criteo Publisher Id is required");
        }
    }

    @NonNull
    /* renamed from: U */
    public static C1974i m35912U() {
        C1974i iVar;
        synchronized (C1974i.class) {
            try {
                if (f2148d == null) {
                    f2148d = new C1974i();
                }
                iVar = f2148d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }

    /* renamed from: a */
    private <T> T m35909a(Class<T> cls, AbstractC2000m0<T> m0Var) {
        T t = (T) this.f2149a.get(cls);
        if (t != null) {
            return t;
        }
        T a = m0Var.mo35616a();
        this.f2149a.put(cls, a);
        return a;
    }

    @NonNull
    /* renamed from: A */
    public C2134q m35932A() {
        return (C2134q) m35909a(C2134q.class, new C1978b0());
    }

    @NonNull
    @RequiresApi(api = 17)
    /* renamed from: B */
    public AbstractC2135r m35931B() {
        return (AbstractC2135r) m35909a(AbstractC2135r.class, new C2137s(m35894o(), m35932A(), m35899j()));
    }

    @NonNull
    /* renamed from: C */
    public AbstractC2141u m35930C() {
        return (AbstractC2141u) m35909a(AbstractC2141u.class, new C2145w(m35927F(), m35899j()));
    }

    @NonNull
    /* renamed from: D */
    public C2142v m35929D() {
        return (C2142v) m35909a(C2142v.class, new C2013z());
    }

    @NonNull
    /* renamed from: E */
    public C1957k m35928E() {
        return (C1957k) m35909a(C1957k.class, new C1997l());
    }

    @NonNull
    /* renamed from: F */
    public C2132p m35927F() {
        return (C2132p) m35909a(C2132p.class, new C1976a0());
    }

    @NonNull
    /* renamed from: G */
    public C10798u m35926G() {
        return (C10798u) m35909a(C10798u.class, new C2004q());
    }

    @NonNull
    /* renamed from: H */
    public C2166d m35925H() {
        return (C2166d) m35909a(C2166d.class, new C1995k());
    }

    @NonNull
    /* renamed from: I */
    public C2047s m35924I() {
        return (C2047s) m35909a(C2047s.class, new C1981d());
    }

    @NonNull
    /* renamed from: J */
    public C2087b m35923J() {
        return (C2087b) m35909a(C2087b.class, new C2002o());
    }

    @NonNull
    /* renamed from: K */
    public C2050u m35922K() {
        return (C2050u) m35909a(C2050u.class, new C1989h());
    }

    @NonNull
    /* renamed from: L */
    public RendererHelper m35921L() {
        return (RendererHelper) m35909a(RendererHelper.class, new C2007t());
    }

    @NonNull
    /* renamed from: M */
    public ExecutorC2095a m35920M() {
        return (ExecutorC2095a) m35909a(ExecutorC2095a.class, new C1990h0(this));
    }

    @NonNull
    /* renamed from: N */
    public Executor m35919N() {
        return (Executor) m35909a(ThreadPoolExecutor.class, new C2096b());
    }

    @NonNull
    /* renamed from: O */
    public C2084b m35918O() {
        return (C2084b) m35909a(C2084b.class, new C2012y());
    }

    @NonNull
    /* renamed from: P */
    public C2093d m35917P() {
        return (C2093d) m35909a(C2093d.class, new C1987g());
    }

    @NonNull
    /* renamed from: Q */
    public C2167a m35916Q() {
        return (C2167a) m35909a(C2167a.class, new C1996k0());
    }

    @NonNull
    /* renamed from: R */
    public C1961o m35915R() {
        return (C1961o) m35909a(C1961o.class, new C1999m(this));
    }

    @NonNull
    /* renamed from: a */
    public C1941b m35911a() {
        return (C1941b) m35909a(C1941b.class, new C2003p());
    }

    /* renamed from: a */
    public void m35910a(@NonNull Application application) {
        this.f2150b = application;
        m35914S();
    }

    /* renamed from: a */
    public void m35908a(@NonNull String str) {
        this.f2151c = str;
        m35913T();
    }

    @NonNull
    /* renamed from: b */
    public C2027f m35907b() {
        return (C2027f) m35909a(C2027f.class, new C1977b());
    }

    @NonNull
    /* renamed from: c */
    public C1909b m35906c() {
        return (C1909b) m35909a(C1909b.class, new C2009v(this));
    }

    @NonNull
    /* renamed from: d */
    public C1910c m35905d() {
        return (C1910c) m35909a(C1910c.class, new C1986f0());
    }

    @NonNull
    /* renamed from: e */
    public C1907a m35904e() {
        return (C1907a) m35909a(C1907a.class, new C1979c());
    }

    @NonNull
    /* renamed from: f */
    public Application m35903f() {
        m35914S();
        return this.f2150b;
    }

    @NonNull
    /* renamed from: g */
    public AbstractC2090a m35902g() {
        return (AbstractC2090a) m35909a(AbstractC2090a.class, new C1993j());
    }

    @NonNull
    /* renamed from: h */
    public C1963b m35901h() {
        return (C1963b) m35909a(C1963b.class, new C1998l0());
    }

    @NonNull
    /* renamed from: i */
    public C2161b m35900i() {
        return (C2161b) m35909a(C2161b.class, new C1991i());
    }

    @NonNull
    /* renamed from: j */
    public C1917h m35899j() {
        return (C1917h) m35909a(C1917h.class, new C1983e(this));
    }

    @NonNull
    /* renamed from: k */
    public C2039m m35898k() {
        return (C2039m) m35909a(C2039m.class, new C1985f());
    }

    @NonNull
    /* renamed from: l */
    public C1945e m35897l() {
        return (C1945e) m35909a(C1945e.class, new C2001n(this));
    }

    @NonNull
    /* renamed from: m */
    public AbstractC1966c m35896m() {
        return (AbstractC1966c) m35909a(AbstractC1966c.class, new C1994j0(this));
    }

    @NonNull
    /* renamed from: n */
    public C2042p m35895n() {
        return (C2042p) m35909a(C2042p.class, new C1992i0());
    }

    @NonNull
    /* renamed from: o */
    public Context m35894o() {
        return m35903f().getApplicationContext();
    }

    @NonNull
    /* renamed from: p */
    public String m35893p() {
        m35913T();
        return this.f2151c;
    }

    @NonNull
    /* renamed from: q */
    public ImageLoader m35892q() {
        return (ImageLoader) m35909a(ImageLoader.class, new C2005r());
    }

    @NonNull
    /* renamed from: r */
    public C2043q m35891r() {
        return (C2043q) m35909a(C2043q.class, new C1975a());
    }

    @NonNull
    /* renamed from: s */
    public C1925m m35890s() {
        return (C1925m) m35909a(C1925m.class, new C1988g0());
    }

    @NonNull
    /* renamed from: t */
    public Gson m35889t() {
        return (Gson) m35909a(Gson.class, new C1982d0(this));
    }

    @NonNull
    /* renamed from: u */
    public C2153b m35888u() {
        return (C2153b) m35909a(C2153b.class, new C2010w());
    }

    @NonNull
    /* renamed from: v */
    public C1952h m35887v() {
        return (C1952h) m35909a(C1952h.class, new C2006s());
    }

    @NonNull
    /* renamed from: w */
    public C2019l m35886w() {
        return (C2019l) m35909a(C2019l.class, new C2008u());
    }

    @NonNull
    /* renamed from: x */
    public C2157a m35885x() {
        return (C2157a) m35909a(C2157a.class, new C2011x());
    }

    @NonNull
    /* renamed from: y */
    public C1926n m35884y() {
        return (C1926n) m35909a(C1926n.class, new C1980c0());
    }

    @NonNull
    /* renamed from: z */
    public C2159b m35883z() {
        return (C2159b) m35909a(C2159b.class, new C1984e0());
    }
}
