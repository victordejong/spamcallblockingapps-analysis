package androidx.preference;

import android.content.DialogInterface;
/* renamed from: androidx.preference.g */
/* loaded from: classes-dex2jar.jar:androidx/preference/g.class */
final class DialogInterface$OnClickListenerC1019g implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C1018f f4335a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1019g(C1018f fVar) {
        this.f4335a = fVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C1018f fVar = this.f4335a;
        fVar.f4332ae = i;
        fVar.onClick(dialogInterface, -1);
        dialogInterface.dismiss();
    }
}
