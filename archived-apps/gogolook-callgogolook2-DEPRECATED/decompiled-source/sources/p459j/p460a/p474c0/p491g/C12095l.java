package p459j.p460a.p474c0.p491g;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p491g.AbstractC12099o;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: j.a.c0.g.l */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/l.class */
public class C12095l<T extends AbstractC12099o> extends PagerAdapter {

    /* renamed from: a */
    public final T[] f27175a;

    public C12095l(T[] tArr) {
        C12151d.m7000b(tArr);
        this.f27175a = tArr;
    }

    /* renamed from: a */
    public T m7177a(int i, boolean z) {
        T[] tArr = this.f27175a;
        int i2 = i;
        if (z) {
            i2 = m7176b(i);
        }
        return tArr[i2];
    }

    /* renamed from: a */
    public final String m7178a(int i) {
        return m7175c(i).getClass().getCanonicalName() + "_savedstate_" + i;
    }

    /* renamed from: a */
    public void m7179a() {
        for (int i = 0; i < this.f27175a.length; i++) {
            m7175c(i).mo7169f();
        }
    }

    /* renamed from: b */
    public int m7176b(int i) {
        return C12212s0.m6783d() ? (this.f27175a.length - 1) - i : i;
    }

    /* renamed from: c */
    public T m7175c(int i) {
        return m7177a(i, true);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View e = m7175c(i).mo7170e();
        if (e != null) {
            viewGroup.removeView(e);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f27175a.length;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        T c = m7175c(i);
        View a = c.mo7171a(viewGroup);
        if (a == null) {
            return null;
        }
        a.setTag(c);
        if (a.getParent() != null) {
            ((ViewGroup) a.getParent()).removeView(a);
        }
        viewGroup.addView(a);
        return c;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view.getTag() == obj;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(AbstractC11516a.m9413n().mo9412a().getClassLoader());
            for (int i = 0; i < this.f27175a.length; i++) {
                m7175c(i).restoreState(bundle.getParcelable(m7178a(i)));
            }
            return;
        }
        super.restoreState(parcelable, classLoader);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        Bundle bundle = new Bundle(AbstractC11516a.m9413n().mo9412a().getClassLoader());
        for (int i = 0; i < this.f27175a.length; i++) {
            bundle.putParcelable(m7178a(i), m7175c(i).saveState());
        }
        return bundle;
    }
}
