package p081h.p203i.p204a.p224e.p235d.p236k;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.GoogleApiActivity;
import java.util.Collections;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6809d;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6850c;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6897m;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6905o;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.BinderC6911p1;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6841a;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6864e2;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6876h1;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6933v;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.a.e.d.k.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/e.class */
public class C6822e<O extends C6805a.AbstractC6809d> {

    /* renamed from: a */
    public final Context f16706a;

    /* renamed from: b */
    public final C6805a<O> f16707b;

    /* renamed from: c */
    public final O f16708c;

    /* renamed from: d */
    public final C6864e2<O> f16709d;

    /* renamed from: e */
    public final Looper f16710e;

    /* renamed from: f */
    public final int f16711f;

    /* renamed from: g */
    public final AbstractC6825f f16712g;

    /* renamed from: h */
    public final AbstractC6897m f16713h;

    /* renamed from: i */
    public final C6858e f16714i;

    /* renamed from: h.i.a.e.d.k.e$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/e$a.class */
    public static class C6823a {

        /* renamed from: c */
        public static final C6823a f16715c = new C6824a().m21829a();

        /* renamed from: a */
        public final AbstractC6897m f16716a;

        /* renamed from: b */
        public final Looper f16717b;

        /* renamed from: h.i.a.e.d.k.e$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/e$a$a.class */
        public static class C6824a {

            /* renamed from: a */
            public AbstractC6897m f16718a;

            /* renamed from: b */
            public Looper f16719b;

            /* renamed from: a */
            public C6824a m21828a(Looper looper) {
                C7021t.m21289a(looper, "Looper must not be null.");
                this.f16719b = looper;
                return this;
            }

            /* renamed from: a */
            public C6824a m21827a(AbstractC6897m mVar) {
                C7021t.m21289a(mVar, "StatusExceptionMapper must not be null.");
                this.f16718a = mVar;
                return this;
            }

            /* renamed from: a */
            public C6823a m21829a() {
                if (this.f16718a == null) {
                    this.f16718a = new C6841a();
                }
                if (this.f16719b == null) {
                    this.f16719b = Looper.getMainLooper();
                }
                return new C6823a(this.f16718a, this.f16719b);
            }
        }

        public C6823a(AbstractC6897m mVar, Account account, Looper looper) {
            this.f16716a = mVar;
            this.f16717b = looper;
        }
    }

    @MainThread
    public C6822e(@NonNull Activity activity, C6805a<O> aVar, @Nullable O o, C6823a aVar2) {
        C7021t.m21289a(activity, "Null activity is not permitted.");
        C7021t.m21289a(aVar, "Api must not be null.");
        C7021t.m21289a(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f16706a = activity.getApplicationContext();
        this.f16707b = aVar;
        this.f16708c = o;
        this.f16710e = aVar2.f16717b;
        this.f16709d = C6864e2.m21691a(this.f16707b, this.f16708c);
        this.f16712g = new C6876h1(this);
        this.f16714i = C6858e.m21763a(this.f16706a);
        this.f16711f = this.f16714i.m21754b();
        this.f16713h = aVar2.f16716a;
        if (!(activity instanceof GoogleApiActivity)) {
            C6933v.m21528a(activity, this.f16714i, (C6864e2<?>) this.f16709d);
        }
        this.f16714i.m21761a((C6822e<?>) this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6822e(@androidx.annotation.NonNull android.app.Activity r7, p081h.p203i.p204a.p224e.p235d.p236k.C6805a<O> r8, @androidx.annotation.Nullable O r9, p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6897m r10) {
        /*
            r6 = this;
            h.i.a.e.d.k.e$a$a r0 = new h.i.a.e.d.k.e$a$a
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            h.i.a.e.d.k.e$a$a r0 = r0.m21827a(r1)
            r0 = r11
            r1 = r7
            android.os.Looper r1 = r1.getMainLooper()
            h.i.a.e.d.k.e$a$a r0 = r0.m21828a(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            h.i.a.e.d.k.e$a r4 = r4.m21829a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p236k.C6822e.<init>(android.app.Activity, h.i.a.e.d.k.a, h.i.a.e.d.k.a$d, h.i.a.e.d.k.q.m):void");
    }

    public C6822e(@NonNull Context context, C6805a<O> aVar, Looper looper) {
        C7021t.m21289a(context, "Null context is not permitted.");
        C7021t.m21289a(aVar, "Api must not be null.");
        C7021t.m21289a(looper, "Looper must not be null.");
        this.f16706a = context.getApplicationContext();
        this.f16707b = aVar;
        this.f16708c = null;
        this.f16710e = looper;
        this.f16709d = C6864e2.m21692a(aVar);
        this.f16712g = new C6876h1(this);
        this.f16714i = C6858e.m21763a(this.f16706a);
        this.f16711f = this.f16714i.m21754b();
        this.f16713h = new C6841a();
    }

    public C6822e(@NonNull Context context, C6805a<O> aVar, @Nullable O o, C6823a aVar2) {
        C7021t.m21289a(context, "Null context is not permitted.");
        C7021t.m21289a(aVar, "Api must not be null.");
        C7021t.m21289a(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f16706a = context.getApplicationContext();
        this.f16707b = aVar;
        this.f16708c = o;
        this.f16710e = aVar2.f16717b;
        this.f16709d = C6864e2.m21691a(this.f16707b, this.f16708c);
        this.f16712g = new C6876h1(this);
        this.f16714i = C6858e.m21763a(this.f16706a);
        this.f16711f = this.f16714i.m21754b();
        this.f16713h = aVar2.f16716a;
        this.f16714i.m21761a((C6822e<?>) this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6822e(@androidx.annotation.NonNull android.content.Context r7, p081h.p203i.p204a.p224e.p235d.p236k.C6805a<O> r8, @androidx.annotation.Nullable O r9, p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6897m r10) {
        /*
            r6 = this;
            h.i.a.e.d.k.e$a$a r0 = new h.i.a.e.d.k.e$a$a
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            h.i.a.e.d.k.e$a$a r0 = r0.m21827a(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            h.i.a.e.d.k.e$a r4 = r4.m21829a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p236k.C6822e.<init>(android.content.Context, h.i.a.e.d.k.a, h.i.a.e.d.k.a$d, h.i.a.e.d.k.q.m):void");
    }

    @WorkerThread
    /* renamed from: a */
    public C6805a.AbstractC6816f mo21569a(Looper looper, C6858e.C6859a<O> aVar) {
        return this.f16707b.m21863d().mo16058a(this.f16706a, looper, m21837b().m21385a(), this.f16708c, aVar, aVar);
    }

    /* renamed from: a */
    public AbstractC6825f m21842a() {
        return this.f16712g;
    }

    /* renamed from: a */
    public final <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T m21841a(int i, @NonNull T t) {
        t.m31974g();
        this.f16714i.m21760a(this, i, t);
        return t;
    }

    /* renamed from: a */
    public <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T m21839a(@NonNull T t) {
        m21841a(2, (int) t);
        return t;
    }

    /* renamed from: a */
    public BinderC6911p1 mo21570a(Context context, Handler handler) {
        return new BinderC6911p1(context, handler, m21837b().m21385a());
    }

    /* renamed from: a */
    public final <TResult, A extends C6805a.AbstractC6807b> AbstractC9143h<TResult> m21840a(int i, @NonNull AbstractC6905o<A, TResult> oVar) {
        C9145i iVar = new C9145i();
        this.f16714i.m21759a(this, i, oVar, iVar, this.f16713h);
        return iVar.m16008a();
    }

    /* renamed from: a */
    public <TResult, A extends C6805a.AbstractC6807b> AbstractC9143h<TResult> m21838a(AbstractC6905o<A, TResult> oVar) {
        return m21840a(1, oVar);
    }

    /* renamed from: b */
    public <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T m21836b(@NonNull T t) {
        m21841a(0, (int) t);
        return t;
    }

    /* renamed from: b */
    public C6983e.C6984a m21837b() {
        Account account;
        GoogleSignInAccount a;
        GoogleSignInAccount a2;
        C6983e.C6984a aVar = new C6983e.C6984a();
        O o = this.f16708c;
        if (!(o instanceof C6805a.AbstractC6809d.AbstractC6811b) || (a2 = ((C6805a.AbstractC6809d.AbstractC6811b) o).m21861a()) == null) {
            O o2 = this.f16708c;
            account = o2 instanceof C6805a.AbstractC6809d.AbstractC6810a ? ((C6805a.AbstractC6809d.AbstractC6810a) o2).m21862l() : null;
        } else {
            account = a2.m32041c();
        }
        aVar.m21384a(account);
        O o3 = this.f16708c;
        aVar.m21382a((!(o3 instanceof C6805a.AbstractC6809d.AbstractC6811b) || (a = ((C6805a.AbstractC6809d.AbstractC6811b) o3).m21861a()) == null) ? Collections.emptySet() : a.m32040j0());
        aVar.m21383a(this.f16706a.getClass().getName());
        aVar.m21381b(this.f16706a.getPackageName());
        return aVar;
    }

    /* renamed from: c */
    public final C6805a<O> m21835c() {
        return this.f16707b;
    }

    /* renamed from: c */
    public <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T m21834c(@NonNull T t) {
        m21841a(1, (int) t);
        return t;
    }

    /* renamed from: d */
    public Context m21833d() {
        return this.f16706a;
    }

    /* renamed from: e */
    public final int m21832e() {
        return this.f16711f;
    }

    /* renamed from: f */
    public Looper m21831f() {
        return this.f16710e;
    }

    /* renamed from: g */
    public final C6864e2<O> m21830g() {
        return this.f16709d;
    }
}
