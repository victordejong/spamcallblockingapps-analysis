package p081h.p415j.p416a.p417a.p418a.p425i;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.WebView;
import java.util.List;
import p081h.p415j.p416a.p417a.p418a.p420d.C10625h;
import p081h.p415j.p416a.p417a.p418a.p421e.C10631c;
import p081h.p415j.p416a.p417a.p418a.p421e.C10632d;
/* renamed from: h.j.a.a.a.i.c */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/i/c.class */
public class C10652c extends AbstractC10649a {

    /* renamed from: e */
    public WebView f24238e;

    /* renamed from: f */
    public List<C10625h> f24239f;

    /* renamed from: g */
    public final String f24240g;

    /* renamed from: h.j.a.a.a.i.c$a */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/i/c$a.class */
    public class RunnableC10653a implements Runnable {

        /* renamed from: a */
        public WebView f24241a;

        public RunnableC10653a() {
            this.f24241a = C10652c.this.f24238e;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f24241a.destroy();
        }
    }

    public C10652c(List<C10625h> list, String str) {
        this.f24239f = list;
        this.f24240g = str;
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p425i.AbstractC10649a
    /* renamed from: a */
    public void mo11058a() {
        super.mo11058a();
        m11055i();
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p425i.AbstractC10649a
    /* renamed from: b */
    public void mo11056b() {
        super.mo11056b();
        new Handler().postDelayed(new RunnableC10653a(), 2000L);
        this.f24238e = null;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: i */
    public void m11055i() {
        this.f24238e = new WebView(C10631c.m11134b().m11136a());
        this.f24238e.getSettings().setJavaScriptEnabled(true);
        m11071a(this.f24238e);
        C10632d.m11133a().m11130a(this.f24238e, this.f24240g);
        for (C10625h hVar : this.f24239f) {
            C10632d.m11133a().m11123b(this.f24238e, hVar.m11175a().toExternalForm());
        }
    }
}
