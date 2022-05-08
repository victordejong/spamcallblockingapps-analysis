package p081h.p119d.p120a;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.p133t.AbstractC5940d;
import p081h.p119d.p120a.p142t.AbstractC6024c;
import p081h.p119d.p120a.p142t.AbstractC6030g;
import p081h.p119d.p120a.p142t.AbstractC6031h;
import p081h.p119d.p120a.p142t.AbstractC6037l;
import p081h.p119d.p120a.p142t.C6026d;
import p081h.p119d.p120a.p142t.C6038m;
import p081h.p119d.p120a.p148x.C6086a;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.o */
/* loaded from: classes-dex2jar.jar:h/d/a/o.class */
public class C5780o implements AbstractC6031h {

    /* renamed from: a */
    public final Context f14497a;

    /* renamed from: b */
    public final AbstractC6030g f14498b;

    /* renamed from: c */
    public final C6038m f14499c;

    /* renamed from: d */
    public final C5776l f14500d;

    /* renamed from: e */
    public final C5786e f14501e;

    /* renamed from: f */
    public AbstractC5782b f14502f;

    /* renamed from: h.d.a.o$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/o$a.class */
    public class RunnableC5781a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6030g f14503a;

        public RunnableC5781a(AbstractC6030g gVar) {
            this.f14503a = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f14503a.mo24008a(C5780o.this);
        }
    }

    /* renamed from: h.d.a.o$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/o$b.class */
    public interface AbstractC5782b {
        /* renamed from: a */
        <T> void m24436a(C5770h<T, ?, ?, ?> hVar);
    }

    /* renamed from: h.d.a.o$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/o$c.class */
    public final class C5783c<A, T> {

        /* renamed from: a */
        public final AbstractC5918l<A, T> f14505a;

        /* renamed from: b */
        public final Class<T> f14506b;

        /* renamed from: h.d.a.o$c$a */
        /* loaded from: classes-dex2jar.jar:h/d/a/o$c$a.class */
        public final class C5784a {

            /* renamed from: a */
            public final A f14508a;

            /* renamed from: b */
            public final Class<A> f14509b;

            /* renamed from: c */
            public final boolean f14510c = true;

            public C5784a(A a) {
                this.f14508a = a;
                this.f14509b = C5780o.m24444c(a);
            }

            /* renamed from: a */
            public <Z> C5773i<A, T, Z> m24432a(Class<Z> cls) {
                C5786e eVar = C5780o.this.f14501e;
                C5773i<A, T, Z> iVar = new C5773i<>(C5780o.this.f14497a, C5780o.this.f14500d, this.f14509b, C5783c.this.f14505a, C5783c.this.f14506b, cls, C5780o.this.f14499c, C5780o.this.f14498b, C5780o.this.f14501e);
                eVar.m24429a(iVar);
                C5773i<A, T, Z> iVar2 = iVar;
                if (this.f14510c) {
                    iVar2.mo24513a((C5773i<A, T, Z>) this.f14508a);
                }
                return iVar2;
            }
        }

        public C5783c(AbstractC5918l<A, T> lVar, Class<T> cls) {
            this.f14505a = lVar;
            this.f14506b = cls;
        }

        /* renamed from: a */
        public C5783c<A, T>.C5784a m24434a(A a) {
            return new C5784a(a);
        }
    }

    /* renamed from: h.d.a.o$d */
    /* loaded from: classes-dex2jar.jar:h/d/a/o$d.class */
    public final class C5785d<T> {

        /* renamed from: a */
        public final AbstractC5918l<T, InputStream> f14512a;

        public C5785d(AbstractC5918l<T, InputStream> lVar) {
            this.f14512a = lVar;
        }

        /* renamed from: a */
        public C5769g<T> m24431a(Class<T> cls) {
            C5786e eVar = C5780o.this.f14501e;
            C5769g<T> gVar = new C5769g<>(cls, this.f14512a, null, C5780o.this.f14497a, C5780o.this.f14500d, C5780o.this.f14499c, C5780o.this.f14498b, C5780o.this.f14501e);
            eVar.m24429a(gVar);
            return gVar;
        }

        /* renamed from: a */
        public C5769g<T> m24430a(T t) {
            C5769g<T> a = m24431a((Class) C5780o.m24444c(t));
            a.mo24513a((C5769g<T>) t);
            return a;
        }
    }

    /* renamed from: h.d.a.o$e */
    /* loaded from: classes-dex2jar.jar:h/d/a/o$e.class */
    public class C5786e {
        public C5786e() {
        }

        /* renamed from: a */
        public <A, X extends C5770h<A, ?, ?, ?>> X m24429a(X x) {
            if (C5780o.this.f14502f != null) {
                C5780o.this.f14502f.m24436a(x);
            }
            return x;
        }
    }

    /* renamed from: h.d.a.o$f */
    /* loaded from: classes-dex2jar.jar:h/d/a/o$f.class */
    public static class C5787f implements AbstractC6024c.AbstractC6025a {

        /* renamed from: a */
        public final C6038m f14515a;

        public C5787f(C6038m mVar) {
            this.f14515a = mVar;
        }

        @Override // p081h.p119d.p120a.p142t.AbstractC6024c.AbstractC6025a
        /* renamed from: a */
        public void mo24017a(boolean z) {
            if (z) {
                this.f14515a.m23987c();
            }
        }
    }

    public C5780o(Context context, AbstractC6030g gVar, AbstractC6037l lVar) {
        this(context, gVar, lVar, new C6038m(), new C6026d());
    }

    public C5780o(Context context, AbstractC6030g gVar, AbstractC6037l lVar, C6038m mVar, C6026d dVar) {
        this.f14497a = context.getApplicationContext();
        this.f14498b = gVar;
        this.f14499c = mVar;
        this.f14500d = C5776l.m24484a(context);
        this.f14501e = new C5786e();
        AbstractC6024c a = dVar.m24016a(context, new C5787f(mVar));
        if (C6096h.m23854c()) {
            new Handler(Looper.getMainLooper()).post(new RunnableC5781a(gVar));
        } else {
            gVar.mo24008a(this);
        }
        gVar.mo24008a(a);
    }

    /* renamed from: c */
    public static <T> Class<T> m24444c(T t) {
        return t != null ? (Class<T>) t.getClass() : null;
    }

    /* renamed from: a */
    public C5769g<Uri> m24457a(Uri uri) {
        C5769g<Uri> d = m24443d();
        d.mo24513a((C5769g<Uri>) uri);
        return d;
    }

    /* renamed from: a */
    public final <T> C5769g<T> m24453a(Class<T> cls) {
        AbstractC5918l b = C5776l.m24473b(cls, this.f14497a);
        AbstractC5918l a = C5776l.m24479a(cls, this.f14497a);
        if (cls != null && b == null && a == null) {
            throw new IllegalArgumentException("Unknown type " + cls + ". You must provide a Model of a type for which there is a registered ModelLoader, if you are using a custom model, you must first call Glide#register with a ModelLoaderFactory for your custom model class");
        }
        C5786e eVar = this.f14501e;
        C5769g<T> gVar = new C5769g<>(cls, b, a, this.f14497a, this.f14500d, this.f14499c, this.f14498b, eVar);
        eVar.m24429a(gVar);
        return gVar;
    }

    /* renamed from: a */
    public C5769g<Integer> m24452a(Integer num) {
        C5769g<Integer> b = m24449b();
        b.mo24513a((C5769g<Integer>) num);
        return b;
    }

    /* renamed from: a */
    public <T> C5769g<T> m24451a(T t) {
        C5769g<T> a = m24453a((Class) m24444c(t));
        a.mo24513a((C5769g<T>) t);
        return a;
    }

    /* renamed from: a */
    public C5769g<String> m24450a(String str) {
        C5769g<String> c = m24446c();
        c.mo24513a((C5769g<String>) str);
        return c;
    }

    /* renamed from: a */
    public <A, T> C5783c<A, T> m24455a(AbstractC5918l<A, T> lVar, Class<T> cls) {
        return new C5783c<>(lVar, cls);
    }

    /* renamed from: a */
    public <T> C5785d<T> m24454a(AbstractC5940d<T> dVar) {
        return new C5785d<>(dVar);
    }

    /* renamed from: a */
    public void m24458a(int i) {
        this.f14500d.m24485a(i);
    }

    /* renamed from: b */
    public C5769g<Integer> m24449b() {
        C5769g<Integer> a = m24453a(Integer.class);
        a.mo24504a(C6086a.m23892a(this.f14497a));
        return a;
    }

    /* renamed from: c */
    public C5769g<String> m24446c() {
        return m24453a(String.class);
    }

    /* renamed from: d */
    public C5769g<Uri> m24443d() {
        return m24453a(Uri.class);
    }

    /* renamed from: e */
    public void m24441e() {
        this.f14500d.m24475b();
    }

    /* renamed from: f */
    public void m24439f() {
        C6096h.m23856b();
        this.f14499c.m23989b();
    }

    /* renamed from: g */
    public void m24437g() {
        C6096h.m23856b();
        this.f14499c.m23986d();
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6031h
    public void onDestroy() {
        this.f14499c.m23991a();
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6031h
    public void onStart() {
        m24437g();
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6031h
    public void onStop() {
        m24439f();
    }
}
