package androidx.fragment.app;

import android.content.DialogInterface;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$c.class */
class d$c implements DialogInterface.OnDismissListener {

    /* renamed from: f */
    final /* synthetic */ d f1477f;

    d$c(d dVar) {
        this.f1477f = dVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (d.Z0(this.f1477f) != null) {
            d dVar = this.f1477f;
            dVar.onDismiss(d.Z0(dVar));
        }
    }
}
