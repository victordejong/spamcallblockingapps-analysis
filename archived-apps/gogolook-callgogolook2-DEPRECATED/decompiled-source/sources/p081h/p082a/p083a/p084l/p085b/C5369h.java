package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p090l.C5461c;
import p081h.p082a.p083a.p088n.p090l.C5465e;
import p081h.p082a.p083a.p088n.p090l.EnumC5468f;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.l.b.h */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/h.class */
public class C5369h extends AbstractC5360a {

    /* renamed from: m */
    public final String f13436m;

    /* renamed from: n */
    public final LongSparseArray<LinearGradient> f13437n = new LongSparseArray<>();

    /* renamed from: o */
    public final LongSparseArray<RadialGradient> f13438o = new LongSparseArray<>();

    /* renamed from: p */
    public final RectF f13439p = new RectF();

    /* renamed from: q */
    public final EnumC5468f f13440q;

    /* renamed from: r */
    public final int f13441r;

    /* renamed from: s */
    public final AbstractC5382a<C5461c, C5461c> f13442s;

    /* renamed from: t */
    public final AbstractC5382a<PointF, PointF> f13443t;

    /* renamed from: u */
    public final AbstractC5382a<PointF, PointF> f13444u;

    public C5369h(C5344f fVar, AbstractC5506a aVar, C5465e eVar) {
        super(fVar, aVar, eVar.m25421a().m25350a(), eVar.m25416f().m25349a(), eVar.m25413i(), eVar.m25411k(), eVar.m25415g(), eVar.m25420b());
        this.f13436m = eVar.m25414h();
        this.f13440q = eVar.m25417e();
        this.f13441r = (int) (fVar.m25594f().m25641d() / 32);
        this.f13442s = eVar.m25418d().mo25446a();
        this.f13442s.mo25517a(this);
        aVar.m25336a(this.f13442s);
        this.f13443t = eVar.m25412j().mo25446a();
        this.f13443t.mo25517a(this);
        aVar.m25336a(this.f13443t);
        this.f13444u = eVar.m25419c().mo25446a();
        this.f13444u.mo25517a(this);
        aVar.m25336a(this.f13444u);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5360a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25337a(Canvas canvas, Matrix matrix, int i) {
        mo25293a(this.f13439p, matrix);
        if (this.f13440q == EnumC5468f.Linear) {
            this.f13392h.setShader(m25545c());
        } else {
            this.f13392h.setShader(m25544d());
        }
        super.mo25337a(canvas, matrix, i);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
    }

    /* renamed from: b */
    public final int m25546b() {
        int round = Math.round(this.f13443t.m25527d() * this.f13441r);
        int round2 = Math.round(this.f13444u.m25527d() * this.f13441r);
        int round3 = Math.round(this.f13442s.m25527d() * this.f13441r);
        int i = round != 0 ? 527 * round : 17;
        int i2 = i;
        if (round2 != 0) {
            i2 = i * 31 * round2;
        }
        int i3 = i2;
        if (round3 != 0) {
            i3 = i2 * 31 * round3;
        }
        return i3;
    }

    /* renamed from: c */
    public final LinearGradient m25545c() {
        long b = m25546b();
        LinearGradient linearGradient = this.f13437n.get(b);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF f = this.f13443t.mo25516f();
        PointF f2 = this.f13444u.mo25516f();
        C5461c f3 = this.f13442s.mo25516f();
        int[] a = f3.m25433a();
        float[] b2 = f3.m25431b();
        RectF rectF = this.f13439p;
        int width = (int) (rectF.left + (rectF.width() / 2.0f) + f.x);
        RectF rectF2 = this.f13439p;
        int height = (int) (rectF2.top + (rectF2.height() / 2.0f) + f.y);
        RectF rectF3 = this.f13439p;
        int width2 = (int) (rectF3.left + (rectF3.width() / 2.0f) + f2.x);
        RectF rectF4 = this.f13439p;
        LinearGradient linearGradient2 = new LinearGradient(width, height, width2, (int) (rectF4.top + (rectF4.height() / 2.0f) + f2.y), a, b2, Shader.TileMode.CLAMP);
        this.f13437n.put(b, linearGradient2);
        return linearGradient2;
    }

    /* renamed from: d */
    public final RadialGradient m25544d() {
        long b = m25546b();
        RadialGradient radialGradient = this.f13438o.get(b);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF f = this.f13443t.mo25516f();
        PointF f2 = this.f13444u.mo25516f();
        C5461c f3 = this.f13442s.mo25516f();
        int[] a = f3.m25433a();
        float[] b2 = f3.m25431b();
        RectF rectF = this.f13439p;
        int width = (int) (rectF.left + (rectF.width() / 2.0f) + f.x);
        RectF rectF2 = this.f13439p;
        int height = (int) (rectF2.top + (rectF2.height() / 2.0f) + f.y);
        RectF rectF3 = this.f13439p;
        int width2 = (int) (rectF3.left + (rectF3.width() / 2.0f) + f2.x);
        RectF rectF4 = this.f13439p;
        RadialGradient radialGradient2 = new RadialGradient(width, height, (float) Math.hypot(width2 - width, ((int) ((rectF4.top + (rectF4.height() / 2.0f)) + f2.y)) - height), a, b2, Shader.TileMode.CLAMP);
        this.f13438o.put(b, radialGradient2);
        return radialGradient2;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13436m;
    }
}
