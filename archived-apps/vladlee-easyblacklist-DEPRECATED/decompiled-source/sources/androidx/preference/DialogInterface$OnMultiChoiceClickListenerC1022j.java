package androidx.preference;

import android.content.DialogInterface;
/* renamed from: androidx.preference.j */
/* loaded from: classes-dex2jar.jar:androidx/preference/j.class */
final class DialogInterface$OnMultiChoiceClickListenerC1022j implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: a */
    final /* synthetic */ C1021i f4342a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnMultiChoiceClickListenerC1022j(C1021i iVar) {
        this.f4342a = iVar;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
        boolean z2;
        boolean remove;
        C1021i iVar = this.f4342a;
        if (z) {
            z2 = iVar.f4337af;
            remove = this.f4342a.f4336ae.add(this.f4342a.f4339ah[i].toString());
        } else {
            z2 = iVar.f4337af;
            remove = this.f4342a.f4336ae.remove(this.f4342a.f4339ah[i].toString());
        }
        iVar.f4337af = remove | z2;
    }
}
