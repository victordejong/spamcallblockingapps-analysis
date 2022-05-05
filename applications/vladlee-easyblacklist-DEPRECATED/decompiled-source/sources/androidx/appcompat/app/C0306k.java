package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/k.class */
public final class C0306k implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ AlertController f1324a;

    /* renamed from: b */
    final /* synthetic */ AlertController.C0261a f1325b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0306k(AlertController.C0261a aVar, AlertController alertController) {
        this.f1325b = aVar;
        this.f1324a = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f1325b.f1104x.onClick(this.f1324a.f1038a, i);
        if (!this.f1325b.f1073H) {
            this.f1324a.f1038a.dismiss();
        }
    }
}
