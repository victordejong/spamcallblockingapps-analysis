package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import p012b.p063m.p064a.AbstractC1059g;
import p012b.p063m.p064a.DialogInterface$OnCancelListenerC1053b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SupportErrorDialogFragment.class */
public class SupportErrorDialogFragment extends DialogInterface$OnCancelListenerC1053b {

    /* renamed from: k0 */
    public Dialog f23029k0;

    /* renamed from: l0 */
    public DialogInterface.OnCancelListener f23030l0;

    /* renamed from: a */
    public static SupportErrorDialogFragment m17790a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
        Preconditions.m17287a(dialog, "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        supportErrorDialogFragment.f23029k0 = dialog2;
        if (onCancelListener != null) {
            supportErrorDialogFragment.f23030l0 = onCancelListener;
        }
        return supportErrorDialogFragment;
    }

    @Override // p012b.p063m.p064a.DialogInterface$OnCancelListenerC1053b
    /* renamed from: a */
    public void mo17789a(AbstractC1059g gVar, String str) {
        super.mo17789a(gVar, str);
    }

    @Override // p012b.p063m.p064a.DialogInterface$OnCancelListenerC1053b
    /* renamed from: n */
    public Dialog mo17788n(Bundle bundle) {
        if (this.f23029k0 == null) {
            m34949l(false);
        }
        return this.f23029k0;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f23030l0;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }
}
