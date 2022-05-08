package p081h.p119d.p120a.p145w.p147j;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
/* renamed from: h.d.a.w.j.e */
/* loaded from: classes-dex2jar.jar:h/d/a/w/j/e.class */
public abstract class AbstractC6075e<Z> extends AbstractC6083l<ImageView, Z> implements AbstractC6063c.AbstractC6064a {
    public AbstractC6075e(ImageView imageView) {
        super(imageView);
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo6306a(Drawable drawable) {
        ((ImageView) this.f15130b).setImageDrawable(drawable);
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo2453a(Exception exc, Drawable drawable) {
        ((ImageView) this.f15130b).setImageDrawable(drawable);
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo2507a(Z z, AbstractC6063c<? super Z> cVar) {
        if (cVar == null || !cVar.mo23924a(z, this)) {
            mo23918b((AbstractC6075e<Z>) z);
        }
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: b */
    public void mo23908b(Drawable drawable) {
        ((ImageView) this.f15130b).setImageDrawable(drawable);
    }

    /* renamed from: b */
    public abstract void mo23918b(Z z);

    @Override // p081h.p119d.p120a.p145w.p146i.AbstractC6063c.AbstractC6064a
    /* renamed from: c */
    public void mo23917c(Drawable drawable) {
        ((ImageView) this.f15130b).setImageDrawable(drawable);
    }

    @Override // p081h.p119d.p120a.p145w.p146i.AbstractC6063c.AbstractC6064a
    /* renamed from: e */
    public Drawable mo23916e() {
        return ((ImageView) this.f15130b).getDrawable();
    }
}
