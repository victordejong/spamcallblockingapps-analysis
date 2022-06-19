package androidx.work;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.impl.utils.p017o.AbstractC0537a;
import com.google.common.util.concurrent.c;
import java.util.UUID;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker.class */
public abstract class ListenableWorker {

    /* renamed from: f */
    private Context f2416f;

    /* renamed from: g */
    private WorkerParameters f2417g;

    /* renamed from: h */
    private volatile boolean f2418h;

    /* renamed from: i */
    private boolean f2419i;

    /* renamed from: j */
    private boolean f2420j;

    /* renamed from: androidx.work.ListenableWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a.class */
    public static abstract class AbstractC0464a {
        AbstractC0464a() {
        }

        /* renamed from: a */
        public static AbstractC0464a m4559a() {
            return new a();
        }

        /* renamed from: b */
        public static AbstractC0464a m4558b() {
            return new b();
        }

        /* renamed from: c */
        public static AbstractC0464a m4557c() {
            return new c();
        }

        /* renamed from: d */
        public static AbstractC0464a m4556d(C0474e c0474e) {
            return new c(c0474e);
        }
    }

    @Keep
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context != null) {
            if (workerParameters == null) {
                throw new IllegalArgumentException("WorkerParameters is null");
            }
            this.f2416f = context;
            this.f2417g = workerParameters;
            return;
        }
        throw new IllegalArgumentException("Application Context is null");
    }

    /* renamed from: a */
    public final Context m4572a() {
        return this.f2416f;
    }

    /* renamed from: c */
    public Executor m4571c() {
        return this.f2417g.m4555a();
    }

    /* renamed from: d */
    public final UUID m4570d() {
        return this.f2417g.m4554b();
    }

    /* renamed from: e */
    public final C0474e m4569e() {
        return this.f2417g.m4553c();
    }

    /* renamed from: g */
    public AbstractC0537a m4568g() {
        return this.f2417g.m4552d();
    }

    /* renamed from: h */
    public AbstractC0554y m4567h() {
        return this.f2417g.m4551e();
    }

    /* renamed from: i */
    public boolean m4566i() {
        return this.f2420j;
    }

    /* renamed from: j */
    public final boolean m4565j() {
        return this.f2418h;
    }

    /* renamed from: k */
    public final boolean m4564k() {
        return this.f2419i;
    }

    /* renamed from: l */
    public void m4563l() {
    }

    /* renamed from: m */
    public final void m4562m() {
        this.f2419i = true;
    }

    /* renamed from: n */
    public abstract c<AbstractC0464a> m4561n();

    /* renamed from: o */
    public final void m4560o() {
        this.f2418h = true;
        m4563l();
    }
}
