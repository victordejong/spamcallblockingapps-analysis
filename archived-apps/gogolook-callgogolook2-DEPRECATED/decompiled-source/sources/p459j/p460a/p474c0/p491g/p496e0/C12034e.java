package p459j.p460a.p474c0.p491g.p496e0;

import android.content.Context;
import android.hardware.Camera;
import android.view.View;
import java.io.IOException;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.e0.e */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/e.class */
public class C12034e {

    /* renamed from: a */
    public int f26962a = -1;

    /* renamed from: b */
    public int f26963b = -1;

    /* renamed from: c */
    public final AbstractC12035a f26964c;

    /* renamed from: j.a.c0.g.e0.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/e$a.class */
    public interface AbstractC12035a {
        /* renamed from: a */
        void mo7342a();

        /* renamed from: a */
        void mo7341a(Camera camera) throws IOException;

        /* renamed from: d */
        View mo7339d();

        boolean isValid();
    }

    public C12034e(AbstractC12035a aVar) {
        C12151d.m7000b(aVar);
        C12151d.m7000b(aVar.mo7339d());
        this.f26964c = aVar;
    }

    /* renamed from: a */
    public int m7463a(int i, int i2) {
        if (this.f26963b < 0) {
            return i2;
        }
        int i3 = m7465a().getResources().getConfiguration().orientation;
        int size = View.MeasureSpec.getSize(i);
        float f = this.f26962a / this.f26963b;
        return View.MeasureSpec.makeMeasureSpec((int) (i3 == 2 ? size * f : size / f), 1073741824);
    }

    /* renamed from: a */
    public Context m7465a() {
        return this.f26964c.mo7339d().getContext();
    }

    /* renamed from: a */
    public void m7464a(int i) {
        if (!C12010c.m7549B()) {
            return;
        }
        if (i == 0) {
            C12010c.m7550A().m7505r();
        } else {
            C12010c.m7550A().m7522f();
        }
    }

    /* renamed from: a */
    public void m7462a(Camera.Size size, int i) {
        if (i == 0 || i == 180) {
            this.f26962a = size.width;
            this.f26963b = size.height;
        } else {
            this.f26962a = size.height;
            this.f26963b = size.width;
        }
        this.f26964c.mo7339d().requestLayout();
    }

    /* renamed from: a */
    public void m7461a(Camera camera) throws IOException {
        this.f26964c.mo7341a(camera);
    }

    /* renamed from: a */
    public void m7460a(View.OnTouchListener onTouchListener) {
        this.f26964c.mo7339d().setOnTouchListener(onTouchListener);
    }

    /* renamed from: b */
    public int m7458b(int i, int i2) {
        int i3 = i;
        if (this.f26963b >= 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824);
        }
        return i3;
    }

    /* renamed from: b */
    public boolean m7459b() {
        return this.f26964c.isValid();
    }

    /* renamed from: c */
    public void m7457c() {
        if (C12010c.m7549B()) {
            C12010c.m7550A().m7505r();
        }
    }

    /* renamed from: d */
    public void m7456d() {
        C12010c.m7550A().m7505r();
    }

    /* renamed from: e */
    public void m7455e() {
        C12010c.m7550A().m7522f();
    }

    /* renamed from: f */
    public void m7454f() {
        if (C12010c.m7549B()) {
            C12010c.m7550A().m7505r();
        }
    }
}
