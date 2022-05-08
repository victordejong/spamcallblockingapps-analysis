package p081h.p203i.p204a.p223d;

import android.view.View;
import com.google.android.flexbox.FlexItem;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.a.d.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/d/b.class */
public class C6704b {

    /* renamed from: e */
    public int f16586e;

    /* renamed from: f */
    public int f16587f;

    /* renamed from: g */
    public int f16588g;

    /* renamed from: h */
    public int f16589h;

    /* renamed from: i */
    public int f16590i;

    /* renamed from: j */
    public float f16591j;

    /* renamed from: k */
    public float f16592k;

    /* renamed from: l */
    public int f16593l;

    /* renamed from: m */
    public int f16594m;

    /* renamed from: o */
    public int f16596o;

    /* renamed from: p */
    public int f16597p;

    /* renamed from: a */
    public int f16582a = Integer.MAX_VALUE;

    /* renamed from: b */
    public int f16583b = Integer.MAX_VALUE;

    /* renamed from: c */
    public int f16584c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f16585d = Integer.MIN_VALUE;

    /* renamed from: n */
    public List<Integer> f16595n = new ArrayList();

    /* renamed from: a */
    public int m22041a() {
        return this.f16588g;
    }

    /* renamed from: a */
    public void m22040a(View view, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.f16582a = Math.min(this.f16582a, (view.getLeft() - flexItem.mo32141m()) - i);
        this.f16583b = Math.min(this.f16583b, (view.getTop() - flexItem.mo32147g()) - i2);
        this.f16584c = Math.max(this.f16584c, view.getRight() + flexItem.mo32140n() + i3);
        this.f16585d = Math.max(this.f16585d, view.getBottom() + flexItem.mo32142l() + i4);
    }

    /* renamed from: b */
    public int m22039b() {
        return this.f16589h;
    }

    /* renamed from: c */
    public int m22038c() {
        return this.f16589h - this.f16590i;
    }
}
