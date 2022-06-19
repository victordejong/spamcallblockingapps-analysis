package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.api.internal.AbstractC0839h;
/* renamed from: com.google.android.gms.common.internal.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/w.class */
public abstract class AbstractDialogInterface$OnClickListenerC0942w implements DialogInterface.OnClickListener {
    /* renamed from: a */
    public static AbstractDialogInterface$OnClickListenerC0942w m3227a(Activity activity, Intent intent, int i) {
        return new v(intent, activity, i);
    }

    /* renamed from: b */
    public static AbstractDialogInterface$OnClickListenerC0942w m3226b(AbstractC0839h abstractC0839h, Intent intent, int i) {
        return new x(intent, abstractC0839h, 2);
    }

    /* renamed from: c */
    protected abstract void m3225c();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            m3225c();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
