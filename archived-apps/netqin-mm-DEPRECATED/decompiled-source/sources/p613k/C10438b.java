package p613k;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import p613k.p614d.AbstractC10446a;
import p613k.p614d.AbstractC10448b;
import p613k.p614d.C10458j;
/* renamed from: k.b */
/* loaded from: classes2-dex2jar.jar:k/b.class */
public class C10438b {

    /* renamed from: k */
    public static final Interpolator f38648k = new LinearInterpolator();

    /* renamed from: a */
    public final Rect f38649a;

    /* renamed from: b */
    public int f38650b;

    /* renamed from: c */
    public float f38651c;

    /* renamed from: d */
    public float f38652d;

    /* renamed from: e */
    public C10458j f38653e;

    /* renamed from: g */
    public float f38655g;

    /* renamed from: h */
    public float f38656h;

    /* renamed from: i */
    public boolean f38657i;

    /* renamed from: f */
    public float f38654f = 0.0f;

    /* renamed from: j */
    public final AbstractC10448b f38658j = new C10440b(this);

    /* renamed from: k.b$a */
    /* loaded from: classes2-dex2jar.jar:k/b$a.class */
    public class C10439a extends AbstractC10448b {

        /* renamed from: a */
        public final /* synthetic */ int f38659a;

        public C10439a(int i) {
            this.f38659a = i;
        }

        @Override // p613k.p614d.AbstractC10448b, p613k.p614d.AbstractC10446a.AbstractC10447a
        /* renamed from: c */
        public void mo126c(AbstractC10446a aVar) {
            aVar.m130b(this);
        }

        @Override // p613k.p614d.AbstractC10446a.AbstractC10447a
        /* renamed from: d */
        public void mo129d(AbstractC10446a aVar) {
            C10458j a = C10458j.m103a(C10438b.this, "outerOpacity", 0.0f);
            a.m101b(true);
            a.mo64d(this.f38659a);
            a.m77a(C10438b.f38648k);
            a.m131a((AbstractC10446a.AbstractC10447a) C10438b.this.f38658j);
            C10438b.this.f38653e = a;
            a.mo56m();
        }
    }

    /* renamed from: k.b$b */
    /* loaded from: classes2-dex2jar.jar:k/b$b.class */
    public class C10440b extends AbstractC10448b {
        public C10440b(C10438b bVar) {
        }

        @Override // p613k.p614d.AbstractC10446a.AbstractC10447a
        /* renamed from: d */
        public void mo129d(AbstractC10446a aVar) {
        }
    }

    /* renamed from: k.b$c */
    /* loaded from: classes2-dex2jar.jar:k/b$c.class */
    public static class C10441c {
        /* renamed from: a */
        public static float m153a(float f, float f2, float f3) {
            if (f >= f2) {
                f2 = f;
                if (f > f3) {
                    f2 = f3;
                }
            }
            return f2;
        }

        /* renamed from: b */
        public static float m152b(float f, float f2, float f3) {
            return f + ((f2 - f) * f3);
        }
    }

    public C10438b(C10442c cVar, Rect rect) {
        this.f38649a = rect;
    }

    /* renamed from: a */
    public void m168a() {
        m161b();
    }

    /* renamed from: a */
    public void m167a(int i, float f) {
        if (i != -1) {
            this.f38657i = true;
            this.f38651c = i;
        } else {
            float width = this.f38649a.width() / 2.0f;
            float height = this.f38649a.height() / 2.0f;
            this.f38651c = (float) Math.sqrt((width * width) + (height * height));
        }
        this.f38655g = 0.0f;
        this.f38656h = 0.0f;
        this.f38652d = f;
    }

    /* renamed from: a */
    public final void m166a(int i, int i2, int i3) {
        C10458j jVar;
        if (i2 > 0) {
            jVar = C10458j.m103a(this, "outerOpacity", i3 / 255.0f);
            jVar.m101b(true);
            jVar.mo64d(i2);
            jVar.m77a(f38648k);
            int i4 = i - i2;
            if (i4 > 0) {
                jVar.m131a((AbstractC10446a.AbstractC10447a) new C10439a(i4));
            } else {
                jVar.m131a((AbstractC10446a.AbstractC10447a) this.f38658j);
            }
        } else {
            jVar = C10458j.m103a(this, "outerOpacity", 0.0f);
            jVar.m101b(true);
            jVar.mo64d(i);
            jVar.m131a((AbstractC10446a.AbstractC10447a) this.f38658j);
        }
        this.f38653e = jVar;
        jVar.mo56m();
    }

    /* renamed from: a */
    public void m162a(boolean z) {
        m168a();
        C10458j a = C10458j.m103a(this, "outerOpacity", 0.0f, 1.0f);
        a.m101b(true);
        a.mo64d(z ? 100L : 667L);
        a.m77a(f38648k);
        this.f38653e = a;
        a.mo56m();
    }

    /* renamed from: a */
    public boolean m165a(Canvas canvas, Paint paint) {
        this.f38650b = paint.getColor();
        return m160b(canvas, paint);
    }

    /* renamed from: b */
    public final void m161b() {
        C10458j jVar = this.f38653e;
        if (jVar != null) {
            jVar.m68c();
            this.f38653e = null;
        }
    }

    /* renamed from: b */
    public final boolean m160b(Canvas canvas, Paint paint) {
        boolean z;
        int alpha = paint.getAlpha();
        int i = (int) ((alpha * this.f38654f) + 0.5f);
        float f = this.f38651c;
        if (i <= 0 || f <= 0.0f) {
            z = false;
        } else {
            paint.setAlpha(i);
            canvas.drawCircle(this.f38655g, this.f38656h, f, paint);
            paint.setAlpha(alpha);
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public final void m159c() {
        C10458j jVar = this.f38653e;
        if (jVar != null) {
            jVar.m63e();
            this.f38653e = null;
        }
    }

    /* renamed from: d */
    public void m158d() {
        m168a();
        float f = this.f38651c;
        float f2 = this.f38652d;
        float a = C10441c.m153a((f - (40.0f * f2)) / (f2 * 200.0f), 0.0f, 1.0f);
        float b = C10441c.m152b(1.5f, 4.5f, a);
        int max = Math.max(0, (int) ((((1.0f - this.f38654f) * 1000.0f) / (3.0f + b)) + 0.5f));
        m166a(333, max, (int) ((Color.alpha(this.f38650b) * (this.f38654f + (((max * b) * a) / 1000.0f))) + 0.5f));
    }

    /* renamed from: e */
    public void m157e() {
        m159c();
    }

    /* renamed from: f */
    public void m156f() {
        if (!this.f38657i) {
            float width = this.f38649a.width() / 2.0f;
            float height = this.f38649a.height() / 2.0f;
            this.f38651c = (float) Math.sqrt((width * width) + (height * height));
        }
    }

    /* renamed from: g */
    public boolean m155g() {
        return this.f38654f > 0.0f && this.f38651c > 0.0f;
    }
}
