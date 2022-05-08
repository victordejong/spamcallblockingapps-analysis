package p081h.p203i.p204a.p224e.p235d;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/b.class */
public class DialogFragmentC6788b extends DialogFragment {

    /* renamed from: a */
    public Dialog f16680a = null;

    /* renamed from: b */
    public DialogInterface.OnCancelListener f16681b = null;

    /* renamed from: a */
    public static DialogFragmentC6788b m21911a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        DialogFragmentC6788b bVar = new DialogFragmentC6788b();
        C7021t.m21289a(dialog, "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        bVar.f16680a = dialog2;
        if (onCancelListener != null) {
            bVar.f16681b = onCancelListener;
        }
        return bVar;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f16681b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f16680a == null) {
            setShowsDialog(false);
        }
        return this.f16680a;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
