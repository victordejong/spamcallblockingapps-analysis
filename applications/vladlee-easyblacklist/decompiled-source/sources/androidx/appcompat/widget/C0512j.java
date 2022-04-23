package androidx.appcompat.widget;

import android.database.DataSetObserver;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j.class */
public final class C0512j extends DataSetObserver {

    /* renamed from: a */
    final /* synthetic */ ActivityChooserView f2416a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0512j(ActivityChooserView activityChooserView) {
        this.f2416a = activityChooserView;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        super.onChanged();
        this.f2416a.f1857a.notifyDataSetChanged();
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        super.onInvalidated();
        this.f2416a.f1857a.notifyDataSetInvalidated();
    }
}
