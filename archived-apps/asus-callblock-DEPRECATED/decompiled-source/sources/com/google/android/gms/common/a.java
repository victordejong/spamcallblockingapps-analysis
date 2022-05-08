package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.b;
@TargetApi(11)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a.class */
public final class a extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f3926a = null;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnCancelListener f3927b = null;

    public static a a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        a aVar = new a();
        Dialog dialog2 = (Dialog) b.a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        aVar.f3926a = dialog2;
        if (onCancelListener != null) {
            aVar.f3927b = onCancelListener;
        }
        return aVar;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        if (this.f3927b != null) {
            this.f3927b.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (this.f3926a == null) {
            setShowsDialog(false);
        }
        return this.f3926a;
    }

    @Override // android.app.DialogFragment
    public final void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
