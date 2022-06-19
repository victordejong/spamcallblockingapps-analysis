package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.viewpager.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/a.class */
public abstract class AbstractC0463a {

    /* renamed from: a */
    private final DataSetObservable f2413a = new DataSetObservable();

    /* renamed from: b */
    private DataSetObserver f2414b;

    /* renamed from: a */
    public abstract void m4592a(ViewGroup viewGroup, int i, Object obj);

    @Deprecated
    /* renamed from: b */
    public void m4591b(View view) {
    }

    /* renamed from: c */
    public void m4590c(ViewGroup viewGroup) {
        m4591b(viewGroup);
    }

    /* renamed from: d */
    public abstract int m4589d();

    /* renamed from: e */
    public int m4588e(Object obj) {
        return -1;
    }

    /* renamed from: f */
    public CharSequence m4587f(int i) {
        return null;
    }

    /* renamed from: g */
    public float m4586g(int i) {
        return 1.0f;
    }

    /* renamed from: h */
    public abstract Object m4585h(ViewGroup viewGroup, int i);

    /* renamed from: i */
    public abstract boolean m4584i(View view, Object obj);

    /* renamed from: j */
    public void m4583j() {
        synchronized (this) {
            DataSetObserver dataSetObserver = this.f2414b;
            if (dataSetObserver != null) {
                dataSetObserver.onChanged();
            }
        }
        this.f2413a.notifyChanged();
    }

    /* renamed from: k */
    public void m4582k(DataSetObserver dataSetObserver) {
        this.f2413a.registerObserver(dataSetObserver);
    }

    /* renamed from: l */
    public void m4581l(Parcelable parcelable, ClassLoader classLoader) {
    }

    /* renamed from: m */
    public Parcelable m4580m() {
        return null;
    }

    @Deprecated
    /* renamed from: n */
    public void m4579n(View view, int i, Object obj) {
    }

    /* renamed from: o */
    public void m4578o(ViewGroup viewGroup, int i, Object obj) {
        m4579n(viewGroup, i, obj);
    }

    /* renamed from: p */
    public void m4577p(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f2414b = dataSetObserver;
        }
    }

    @Deprecated
    /* renamed from: q */
    public void m4576q(View view) {
    }

    /* renamed from: r */
    public void m4575r(ViewGroup viewGroup) {
        m4576q(viewGroup);
    }

    /* renamed from: s */
    public void m4574s(DataSetObserver dataSetObserver) {
        this.f2413a.unregisterObserver(dataSetObserver);
    }
}
