package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.AbstractC0897m;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0887c;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SupportErrorDialogFragment.class */
public class SupportErrorDialogFragment extends DialogInterface$OnCancelListenerC0887c {

    /* renamed from: ae */
    private Dialog f6164ae = null;

    /* renamed from: af */
    private DialogInterface.OnCancelListener f6165af = null;

    public static SupportErrorDialogFragment newInstance(Dialog dialog) {
        return newInstance(dialog, null);
    }

    public static SupportErrorDialogFragment newInstance(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
        Dialog dialog2 = (Dialog) Preconditions.checkNotNull(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        supportErrorDialogFragment.f6164ae = dialog2;
        if (onCancelListener != null) {
            supportErrorDialogFragment.f6165af = onCancelListener;
        }
        return supportErrorDialogFragment;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f6165af;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0887c
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f6164ae == null) {
            setShowsDialog(false);
        }
        return this.f6164ae;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0887c
    public void show(AbstractC0897m mVar, String str) {
        super.show(mVar, str);
    }
}
