package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.LifecycleFragment;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/DialogRedirect.class */
public abstract class DialogRedirect implements DialogInterface.OnClickListener {
    public static DialogRedirect getInstance(Activity activity, Intent intent, int i) {
        return new C1660b(intent, activity, i);
    }

    public static DialogRedirect getInstance(Fragment fragment, Intent intent, int i) {
        return new C1659a(intent, fragment, i);
    }

    public static DialogRedirect getInstance(LifecycleFragment lifecycleFragment, Intent intent, int i) {
        return new C1661c(intent, lifecycleFragment, i);
    }

    /* renamed from: a */
    protected abstract void mo5682a();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            mo5682a();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
