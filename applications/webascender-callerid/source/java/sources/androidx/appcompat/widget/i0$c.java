package androidx.appcompat.widget;

import android.database.DataSetObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0$c.class */
class i0$c extends DataSetObserver {

    /* renamed from: a */
    final /* synthetic */ i0 f511a;

    i0$c(i0 i0Var) {
        this.f511a = i0Var;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        if (this.f511a.a()) {
            this.f511a.b();
        }
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        this.f511a.dismiss();
    }
}
