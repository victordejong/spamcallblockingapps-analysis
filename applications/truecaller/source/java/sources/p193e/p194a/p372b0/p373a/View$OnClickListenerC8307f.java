package p193e.p194a.p372b0.p373a;

import android.view.View;
import s1.s;
import s1.z.b.l;
import s1.z.c.f;
/* renamed from: e.a.b0.a.f */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/f.class */
public final class View$OnClickListenerC8307f implements View.OnClickListener {

    /* renamed from: c */
    public static boolean f25592c = true;

    /* renamed from: d */
    public static final C8309b f25593d = new C8309b(null);

    /* renamed from: a */
    public final long f25594a;

    /* renamed from: b */
    public final l<View, s> f25595b;

    /* renamed from: e.a.b0.a.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/f$a.class */
    public static final class RunnableC8308a implements Runnable {

        /* renamed from: a */
        public static final RunnableC8308a f25596a = new RunnableC8308a();

        @Override // java.lang.Runnable
        public final void run() {
            C8309b c8309b = View$OnClickListenerC8307f.f25593d;
            View$OnClickListenerC8307f.f25592c = true;
        }
    }

    /* renamed from: e.a.b0.a.f$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/f$b.class */
    public static final class C8309b {
        public C8309b(f fVar) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View$OnClickListenerC8307f(long j, l<? super View, s> lVar) {
        s1.z.c.l.e(lVar, "doClick");
        this.f25594a = j;
        this.f25595b = lVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        s1.z.c.l.e(view, "v");
        if (f25592c) {
            f25592c = false;
            view.postDelayed(RunnableC8308a.f25596a, this.f25594a);
            this.f25595b.d(view);
        }
    }
}
