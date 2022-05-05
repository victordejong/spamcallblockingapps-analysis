package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l.class */
public final class C0307l implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ AlertController.RecycleListView f1326a;

    /* renamed from: b */
    final /* synthetic */ AlertController f1327b;

    /* renamed from: c */
    final /* synthetic */ AlertController.C0261a f1328c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0307l(AlertController.C0261a aVar, AlertController.RecycleListView recycleListView, AlertController alertController) {
        this.f1328c = aVar;
        this.f1326a = recycleListView;
        this.f1327b = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.f1328c.f1071F != null) {
            this.f1328c.f1071F[i] = this.f1326a.isItemChecked(i);
        }
        this.f1328c.f1075J.onClick(this.f1327b.f1038a, i, this.f1326a.isItemChecked(i));
    }
}
