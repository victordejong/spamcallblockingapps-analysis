package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.viewpager.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/a.class */
public abstract class AbstractC1289a {

    /* renamed from: a */
    private final DataSetObservable f5470a = new DataSetObservable();

    /* renamed from: b */
    private DataSetObserver f5471b;

    /* renamed from: a */
    public Object mo41a(ViewGroup viewGroup, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    /* renamed from: a */
    public void mo6383a() {
    }

    /* renamed from: a */
    public void mo42a(int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    /* renamed from: a */
    public final void m6382a(DataSetObserver dataSetObserver) {
        this.f5470a.registerObserver(dataSetObserver);
    }

    /* renamed from: a */
    public void mo6381a(Parcelable parcelable, ClassLoader classLoader) {
    }

    /* renamed from: a */
    public void mo6379a(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public void mo6378a(Object obj) {
    }

    /* renamed from: a */
    public abstract boolean mo6380a(View view, Object obj);

    /* renamed from: b */
    public Parcelable mo40b() {
        return null;
    }

    /* renamed from: b */
    public final void m6377b(DataSetObserver dataSetObserver) {
        this.f5470a.unregisterObserver(dataSetObserver);
    }

    /* renamed from: c */
    public abstract int mo39c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m6376c(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f5471b = dataSetObserver;
        }
    }

    /* renamed from: d */
    public int mo38d() {
        return -1;
    }

    /* renamed from: e */
    public final void m6375e() {
        synchronized (this) {
            if (this.f5471b != null) {
                this.f5471b.onChanged();
            }
        }
        this.f5470a.notifyChanged();
    }
}
