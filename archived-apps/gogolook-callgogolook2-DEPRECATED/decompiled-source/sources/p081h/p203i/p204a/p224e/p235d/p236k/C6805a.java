package p081h.p203i.p204a.p224e.p235d.p236k;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6809d;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a.class */
public final class C6805a<O extends AbstractC6809d> {

    /* renamed from: a */
    public final AbstractC6806a<?, O> f16702a;

    /* renamed from: b */
    public final C6817g<?> f16703b;

    /* renamed from: c */
    public final String f16704c;

    /* renamed from: h.i.a.e.d.k.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$a.class */
    public static abstract class AbstractC6806a<T extends AbstractC6816f, O> extends C6815e<T, O> {
        /* renamed from: a */
        public abstract T mo16058a(Context context, Looper looper, C6983e eVar, O o, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar);
    }

    /* renamed from: h.i.a.e.d.k.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$b.class */
    public interface AbstractC6807b {
    }

    /* renamed from: h.i.a.e.d.k.a$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$c.class */
    public static class C6808c<C extends AbstractC6807b> {
    }

    /* renamed from: h.i.a.e.d.k.a$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$d.class */
    public interface AbstractC6809d {

        /* renamed from: h.i.a.e.d.k.a$d$a */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$d$a.class */
        public interface AbstractC6810a extends AbstractC6812c, AbstractC6813d {
            /* renamed from: l */
            Account m21862l();
        }

        /* renamed from: h.i.a.e.d.k.a$d$b */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$d$b.class */
        public interface AbstractC6811b extends AbstractC6812c {
            /* renamed from: a */
            GoogleSignInAccount m21861a();
        }

        /* renamed from: h.i.a.e.d.k.a$d$c */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$d$c.class */
        public interface AbstractC6812c extends AbstractC6809d {
        }

        /* renamed from: h.i.a.e.d.k.a$d$d */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$d$d.class */
        public interface AbstractC6813d extends AbstractC6809d {
        }

        /* renamed from: h.i.a.e.d.k.a$d$e */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$d$e.class */
        public interface AbstractC6814e extends AbstractC6812c, AbstractC6813d {
        }
    }

    /* renamed from: h.i.a.e.d.k.a$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$e.class */
    public static class C6815e<T extends AbstractC6807b, O> {
        /* renamed from: a */
        public int m21860a() {
            return Integer.MAX_VALUE;
        }

        /* renamed from: a */
        public List<Scope> mo21859a(O o) {
            return Collections.emptyList();
        }
    }

    /* renamed from: h.i.a.e.d.k.a$f */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$f.class */
    public interface AbstractC6816f extends AbstractC6807b {
        /* renamed from: a */
        void m21858a(AbstractC6969d.AbstractC6972c cVar);

        /* renamed from: a */
        void m21857a(AbstractC6969d.AbstractC6974e eVar);

        /* renamed from: a */
        void m21856a(AbstractC7003m mVar, Set<Scope> set);

        /* renamed from: a */
        void m21855a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        /* renamed from: a */
        boolean mo21456a();

        /* renamed from: b */
        boolean m21854b();

        /* renamed from: c */
        String m21853c();

        /* renamed from: d */
        boolean m21852d();

        void disconnect();

        /* renamed from: e */
        boolean mo16072e();

        @Nullable
        /* renamed from: f */
        IBinder m21851f();

        /* renamed from: h */
        int mo16071h();

        /* renamed from: i */
        Feature[] m21850i();

        boolean isConnected();

        /* renamed from: j */
        Intent mo21422j();
    }

    /* renamed from: h.i.a.e.d.k.a$g */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$g.class */
    public static final class C6817g<C extends AbstractC6816f> extends C6808c<C> {
    }

    /* renamed from: h.i.a.e.d.k.a$h */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/a$h.class */
    public interface AbstractC6818h<T extends IInterface> extends AbstractC6807b {
        /* renamed from: a */
        T m21848a(IBinder iBinder);

        /* renamed from: a */
        void m21849a(int i, T t);

        /* renamed from: k */
        String m21847k();

        /* renamed from: l */
        String m21846l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends AbstractC6816f> C6805a(String str, AbstractC6806a<C, O> aVar, C6817g<C> gVar) {
        C7021t.m21289a(aVar, "Cannot construct an Api with a null ClientBuilder");
        C7021t.m21289a(gVar, "Cannot construct an Api with a null ClientKey");
        this.f16704c = str;
        this.f16702a = aVar;
        this.f16703b = gVar;
    }

    /* renamed from: a */
    public final C6808c<?> m21866a() {
        C6817g<?> gVar = this.f16703b;
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    /* renamed from: b */
    public final String m21865b() {
        return this.f16704c;
    }

    /* renamed from: c */
    public final C6815e<?, O> m21864c() {
        return this.f16702a;
    }

    /* renamed from: d */
    public final AbstractC6806a<?, O> m21863d() {
        C7021t.m21281b(this.f16702a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f16702a;
    }
}
