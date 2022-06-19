package com.google.android.gms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.common.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/c.class */
public class DialogFragmentC0889c extends DialogFragment {

    /* renamed from: f */
    private Dialog f3470f;

    /* renamed from: g */
    private DialogInterface.OnCancelListener f3471g;

    /* renamed from: a */
    public static DialogFragmentC0889c m3490a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        DialogFragmentC0889c dialogFragmentC0889c = new DialogFragmentC0889c();
        C0931r.m3307l(dialog, "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        dialogFragmentC0889c.f3470f = dialog2;
        if (onCancelListener != null) {
            dialogFragmentC0889c.f3471g = onCancelListener;
        }
        return dialogFragmentC0889c;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f3471g;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f3470f == null) {
            setShowsDialog(false);
        }
        return this.f3470f;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
