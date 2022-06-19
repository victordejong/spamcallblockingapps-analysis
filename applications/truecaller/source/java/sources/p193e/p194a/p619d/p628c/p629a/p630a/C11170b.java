package p193e.p194a.p619d.p628c.p629a.p630a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import com.truecaller.voip.C4781R;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p619d.p628c.p629a.p630a.AbstractC11175c;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.c.a.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/a/b.class */
public final class C11170b extends Drawable {

    /* renamed from: a */
    public final g f33042a = C25225a.m3978P1(new C11174d());

    /* renamed from: b */
    public final g f33043b = C25225a.m3978P1(new C11173c());

    /* renamed from: c */
    public final Path f33044c = new Path();

    /* renamed from: d */
    public final g f33045d = C25225a.m3978P1(new C11172b());

    /* renamed from: e */
    public AbstractC11175c f33046e = new AbstractC11175c.C11176a(C4781R.color.voip_header_color);

    /* renamed from: f */
    public final g f33047f = C25225a.m3978P1(new C11171a(1, this));

    /* renamed from: g */
    public final g f33048g = C25225a.m3978P1(new C11171a(0, this));

    /* renamed from: h */
    public final Context f33049h;

    /* renamed from: e.a.d.c.a.a.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d/c/a/a/b$a.class */
    public static final class C11171a extends m implements a<int[]> {

        /* renamed from: b */
        public final /* synthetic */ int f33050b;

        /* renamed from: c */
        public final /* synthetic */ Object f33051c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11171a(int i, Object obj) {
            super(0);
            this.f33050b = i;
            this.f33051c = obj;
        }

        public final Object invoke() {
            int i = this.f33050b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                return new int[]{C11170b.m25074a((C11170b) this.f33051c).mo13758l(C3700R.attr.tcx_goldGradientStep1), C11170b.m25074a((C11170b) this.f33051c).mo13758l(C3700R.attr.tcx_goldGradientStep2), C11170b.m25074a((C11170b) this.f33051c).mo13758l(C3700R.attr.tcx_goldGradientStep4), C11170b.m25074a((C11170b) this.f33051c).mo13758l(C3700R.attr.tcx_goldGradientStep5)};
            }
            return new int[]{C11170b.m25074a((C11170b) this.f33051c).mo13769a(C4781R.color.credVoipHeaderGradient1), C11170b.m25074a((C11170b) this.f33051c).mo13769a(C4781R.color.credVoipHeaderGradient2), C11170b.m25074a((C11170b) this.f33051c).mo13769a(C4781R.color.credVoipHeaderGradient3), C11170b.m25074a((C11170b) this.f33051c).mo13769a(C4781R.color.credVoipHeaderGradient4)};
        }
    }

    /* renamed from: e.a.d.c.a.a.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/a/b$b.class */
    public static final class C11172b extends m implements a<Float> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11172b() {
            super(0);
            C11170b.this = r4;
        }

        public Object invoke() {
            return Float.valueOf(C11170b.this.f33049h.getResources().getDimension(C4781R.dimen.voip_background_header_arch_height));
        }
    }

    /* renamed from: e.a.d.c.a.a.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/a/b$c.class */
    public static final class C11173c extends m implements a<Paint> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11173c() {
            super(0);
            C11170b.this = r4;
        }

        public Object invoke() {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.FILL);
            Context context = C11170b.this.f33049h;
            int i = C4781R.color.voip_action_minimise_background_color;
            Object obj = C26467a.f74235a;
            paint.setColor(C26467a.C26471d.m1787a(context, i));
            paint.setDither(true);
            return paint;
        }
    }

    /* renamed from: e.a.d.c.a.a.b$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/a/b$d.class */
    public static final class C11174d extends m implements a<C19235i0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11174d() {
            super(0);
            C11170b.this = r4;
        }

        public Object invoke() {
            return new C19235i0(C11170b.this.f33049h);
        }
    }

    public C11170b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f33049h = context;
    }

    /* renamed from: a */
    public static final C19235i0 m25074a(C11170b c11170b) {
        return (C19235i0) c11170b.f33042a.getValue();
    }

    /* renamed from: b */
    public final boolean m25073b() {
        float f = 0;
        boolean z = false;
        if (m25070e() > f) {
            z = false;
            if (m25072c() > f) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public final float m25072c() {
        return getBounds().height();
    }

    /* renamed from: d */
    public final Paint m25071d() {
        return (Paint) this.f33043b.getValue();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        canvas.drawPath(this.f33044c, m25071d());
    }

    /* renamed from: e */
    public final float m25070e() {
        return getBounds().width();
    }

    /* renamed from: f */
    public final void m25069f() {
        m25071d().setShader(null);
        m25071d().setAlpha(255);
        if (m25073b() && ((Number) this.f33045d.getValue()).floatValue() <= m25072c()) {
            float m25072c = m25072c() - ((Number) this.f33045d.getValue()).floatValue();
            float m25072c2 = m25072c();
            Path path = this.f33044c;
            path.reset();
            path.moveTo(0.0f, 0.0f);
            path.lineTo(m25070e(), 0.0f);
            path.lineTo(m25070e(), m25072c);
            path.quadTo(m25070e() / 2.0f, m25072c() + (m25072c2 - m25072c), 0.0f, m25072c);
            path.close();
        }
        AbstractC11175c abstractC11175c = this.f33046e;
        if (abstractC11175c instanceof AbstractC11175c.C11176a) {
            int i = ((AbstractC11175c.C11176a) abstractC11175c).f33055a;
            Context context = this.f33049h;
            Object obj = C26467a.f74235a;
            m25071d().setColor(C26467a.C26471d.m1787a(context, i));
        } else if (abstractC11175c instanceof AbstractC11175c.C11177b) {
            if (!m25073b()) {
                return;
            }
            m25071d().setShader(new LinearGradient(0.0f, 0.0f, m25070e(), m25072c(), (int[]) this.f33048g.getValue(), new float[]{0.0f, 0.35f, 0.63f, 1.0f}, Shader.TileMode.CLAMP));
            m25071d().setAlpha(255);
        } else if (!(abstractC11175c instanceof AbstractC11175c.C11178c) || !m25073b()) {
        } else {
            m25071d().setShader(new LinearGradient(0.0f, 0.0f, m25070e(), m25072c(), (int[]) this.f33047f.getValue(), new float[]{0.0f, 0.35f, 0.63f, 1.0f}, Shader.TileMode.CLAMP));
            m25071d().setAlpha(230);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m25069f();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m25071d().setColorFilter(colorFilter);
    }
}
