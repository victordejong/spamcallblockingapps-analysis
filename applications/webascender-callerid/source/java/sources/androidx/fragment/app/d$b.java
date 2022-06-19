package androidx.fragment.app;

import android.content.DialogInterface;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$b.class */
class d$b implements DialogInterface.OnCancelListener {

    /* renamed from: f */
    final /* synthetic */ d f1476f;

    d$b(d dVar) {
        this.f1476f = dVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (d.Z0(this.f1476f) != null) {
            d dVar = this.f1476f;
            dVar.onCancel(d.Z0(dVar));
        }
    }
}
