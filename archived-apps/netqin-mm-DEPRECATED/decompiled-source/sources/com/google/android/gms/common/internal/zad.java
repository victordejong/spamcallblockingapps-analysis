package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import p131c.p161d.p170b.p224d.p238d.p243d.C3294b;
import p131c.p161d.p170b.p224d.p238d.p243d.C3295c;
import p131c.p161d.p170b.p224d.p238d.p243d.C3296d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zad.class */
public abstract class zad implements DialogInterface.OnClickListener {
    /* renamed from: a */
    public static zad m17195a(Activity activity, Intent intent, int i) {
        return new C3294b(intent, activity, i);
    }

    /* renamed from: a */
    public static zad m17194a(Fragment fragment, Intent intent, int i) {
        return new C3296d(intent, fragment, i);
    }

    /* renamed from: a */
    public static zad m17193a(LifecycleFragment lifecycleFragment, Intent intent, int i) {
        return new C3295c(intent, lifecycleFragment, 2);
    }

    /* renamed from: a */
    public abstract void mo17196a();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            mo17196a();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
