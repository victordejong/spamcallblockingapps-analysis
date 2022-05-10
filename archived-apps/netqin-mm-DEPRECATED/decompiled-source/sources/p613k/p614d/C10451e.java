package p613k.p614d;

import android.view.animation.Interpolator;
import java.util.List;
import p613k.p614d.AbstractC10453g;
import p613k.p614d.AbstractC10456i;
/* renamed from: k.d.e */
/* loaded from: classes2-dex2jar.jar:k/d/e.class */
public class C10451e extends C10455h implements AbstractC10456i.AbstractC10457a {

    /* renamed from: f */
    public float f38684f;

    /* renamed from: g */
    public float f38685g;

    /* renamed from: h */
    public float f38686h;

    /* renamed from: i */
    public boolean f38687i = true;

    public C10451e(AbstractC10453g.C10454a... aVarArr) {
        super(aVarArr);
    }

    @Override // p613k.p614d.AbstractC10456i.AbstractC10457a
    /* renamed from: a */
    public float mo105a(float f) {
        int i = this.f38693a;
        if (i == 2) {
            if (this.f38687i) {
                this.f38687i = false;
                this.f38684f = ((AbstractC10453g.C10454a) this.f38696d.get(0)).m111k();
                float k = ((AbstractC10453g.C10454a) this.f38696d.get(1)).m111k();
                this.f38685g = k;
                this.f38686h = k - this.f38684f;
            }
            Interpolator interpolator = this.f38695c;
            float f2 = f;
            if (interpolator != null) {
                f2 = interpolator.getInterpolation(f);
            }
            AbstractC10464n nVar = this.f38697e;
            return nVar == null ? this.f38684f + (f2 * this.f38686h) : ((Number) nVar.evaluate(f2, Float.valueOf(this.f38684f), Float.valueOf(this.f38685g))).floatValue();
        } else if (f <= 0.0f) {
            AbstractC10453g.C10454a aVar = (AbstractC10453g.C10454a) this.f38696d.get(0);
            AbstractC10453g.C10454a aVar2 = (AbstractC10453g.C10454a) this.f38696d.get(1);
            float k2 = aVar.m111k();
            float k3 = aVar2.m111k();
            float c = aVar.m118c();
            float c2 = aVar2.m118c();
            Interpolator e = aVar2.m116e();
            float f3 = f;
            if (e != null) {
                f3 = e.getInterpolation(f);
            }
            float f4 = (f3 - c) / (c2 - c);
            AbstractC10464n nVar2 = this.f38697e;
            return nVar2 == null ? k2 + (f4 * (k3 - k2)) : ((Number) nVar2.evaluate(f4, Float.valueOf(k2), Float.valueOf(k3))).floatValue();
        } else if (f >= 1.0f) {
            AbstractC10453g.C10454a aVar3 = (AbstractC10453g.C10454a) this.f38696d.get(i - 2);
            AbstractC10453g.C10454a aVar4 = (AbstractC10453g.C10454a) this.f38696d.get(this.f38693a - 1);
            float k4 = aVar3.m111k();
            float k5 = aVar4.m111k();
            float c3 = aVar3.m118c();
            float c4 = aVar4.m118c();
            Interpolator e2 = aVar4.m116e();
            float f5 = f;
            if (e2 != null) {
                f5 = e2.getInterpolation(f);
            }
            float f6 = (f5 - c3) / (c4 - c3);
            AbstractC10464n nVar3 = this.f38697e;
            return nVar3 == null ? k4 + (f6 * (k5 - k4)) : ((Number) nVar3.evaluate(f6, Float.valueOf(k4), Float.valueOf(k5))).floatValue();
        } else {
            AbstractC10453g.C10454a aVar5 = (AbstractC10453g.C10454a) this.f38696d.get(0);
            int i2 = 1;
            while (true) {
                int i3 = this.f38693a;
                if (i2 >= i3) {
                    return ((Number) this.f38696d.get(i3 - 1).mo112g()).floatValue();
                }
                AbstractC10453g.C10454a aVar6 = (AbstractC10453g.C10454a) this.f38696d.get(i2);
                if (f < aVar6.m118c()) {
                    Interpolator e3 = aVar6.m116e();
                    float f7 = f;
                    if (e3 != null) {
                        f7 = e3.getInterpolation(f);
                    }
                    float c5 = (f7 - aVar5.m118c()) / (aVar6.m118c() - aVar5.m118c());
                    float k6 = aVar5.m111k();
                    float k7 = aVar6.m111k();
                    AbstractC10464n nVar4 = this.f38697e;
                    return nVar4 == null ? k6 + (c5 * (k7 - k6)) : ((Number) nVar4.evaluate(c5, Float.valueOf(k6), Float.valueOf(k7))).floatValue();
                }
                i2++;
                aVar5 = aVar6;
            }
        }
    }

    @Override // p613k.p614d.AbstractC10456i
    /* renamed from: b */
    public Object mo107b(float f) {
        return Float.valueOf(mo105a(f));
    }

    @Override // p613k.p614d.AbstractC10456i
    public C10451e clone() {
        List<AbstractC10453g> list = this.f38696d;
        int size = list.size();
        AbstractC10453g.C10454a[] aVarArr = new AbstractC10453g.C10454a[size];
        for (int i = 0; i < size; i++) {
            aVarArr[i] = (AbstractC10453g.C10454a) list.get(i).clone();
        }
        return new C10451e(aVarArr);
    }

    @Override // p613k.p614d.AbstractC10456i
    /* renamed from: v */
    public void mo106v() {
        this.f38687i = true;
    }
}
