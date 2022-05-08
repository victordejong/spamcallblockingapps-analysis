package p081h.p119d.p120a.p145w.p147j;

import android.widget.ImageView;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
/* renamed from: h.d.a.w.j.d */
/* loaded from: classes-dex2jar.jar:h/d/a/w/j/d.class */
public class C6074d extends AbstractC6075e<AbstractC5979b> {

    /* renamed from: e */
    public int f15120e;

    /* renamed from: f */
    public AbstractC5979b f15121f;

    public C6074d(ImageView imageView) {
        this(imageView, -1);
    }

    public C6074d(ImageView imageView, int i) {
        super(imageView);
        this.f15120e = i;
    }

    /* renamed from: a */
    public void mo23918b(AbstractC5979b bVar) {
        ((ImageView) this.f15130b).setImageDrawable(bVar);
    }

    /* renamed from: a */
    public void m23919a(AbstractC5979b bVar, AbstractC6063c<? super AbstractC5979b> cVar) {
        AbstractC5979b bVar2 = bVar;
        if (!bVar.mo23912a()) {
            float width = ((ImageView) this.f15130b).getWidth() / ((ImageView) this.f15130b).getHeight();
            float intrinsicWidth = bVar.getIntrinsicWidth() / bVar.getIntrinsicHeight();
            bVar2 = bVar;
            if (Math.abs(width - 1.0f) <= 0.05f) {
                bVar2 = bVar;
                if (Math.abs(intrinsicWidth - 1.0f) <= 0.05f) {
                    bVar2 = new C6080j(bVar, ((ImageView) this.f15130b).getWidth());
                }
            }
        }
        super.mo2507a((C6074d) bVar2, (AbstractC6063c<? super C6074d>) cVar);
        this.f15121f = bVar2;
        bVar2.mo23911b(this.f15120e);
        bVar2.start();
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6075e, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo2507a(Object obj, AbstractC6063c cVar) {
        m23919a((AbstractC5979b) obj, (AbstractC6063c<? super AbstractC5979b>) cVar);
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p142t.AbstractC6031h
    public void onStart() {
        AbstractC5979b bVar = this.f15121f;
        if (bVar != null) {
            bVar.start();
        }
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p142t.AbstractC6031h
    public void onStop() {
        AbstractC5979b bVar = this.f15121f;
        if (bVar != null) {
            bVar.stop();
        }
    }
}
