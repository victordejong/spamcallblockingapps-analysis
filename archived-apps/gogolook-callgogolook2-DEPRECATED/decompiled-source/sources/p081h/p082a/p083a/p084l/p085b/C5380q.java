package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import androidx.annotation.Nullable;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p090l.C5497p;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.l.b.q */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/q.class */
public class C5380q extends AbstractC5360a {

    /* renamed from: m */
    public final String f13490m;

    /* renamed from: n */
    public final AbstractC5382a<Integer, Integer> f13491n;

    public C5380q(C5344f fVar, AbstractC5506a aVar, C5497p pVar) {
        super(fVar, aVar, pVar.m25359a().m25350a(), pVar.m25356d().m25349a(), pVar.m25353g(), pVar.m25352h(), pVar.m25355e(), pVar.m25357c());
        this.f13490m = pVar.m25354f();
        this.f13491n = pVar.m25358b().mo25446a();
        this.f13491n.mo25517a(this);
        aVar.m25336a(this.f13491n);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5360a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25337a(Canvas canvas, Matrix matrix, int i) {
        this.f13392h.setColor(this.f13491n.mo25516f().intValue());
        super.mo25337a(canvas, matrix, i);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.f13392h.setColorFilter(colorFilter);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13490m;
    }
}
