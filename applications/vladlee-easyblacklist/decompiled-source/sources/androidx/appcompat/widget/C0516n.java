package androidx.appcompat.widget;

import android.database.DataSetObserver;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/n.class */
public final class C0516n extends DataSetObserver {

    /* renamed from: a */
    final /* synthetic */ ActivityChooserView f2420a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0516n(ActivityChooserView activityChooserView) {
        this.f2420a = activityChooserView;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        super.onChanged();
        this.f2420a.m9447e();
    }
}
