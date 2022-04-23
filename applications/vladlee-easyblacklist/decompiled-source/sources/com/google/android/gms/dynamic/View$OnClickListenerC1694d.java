package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
/* renamed from: com.google.android.gms.dynamic.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/d.class */
final class View$OnClickListenerC1694d implements View.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ Context f7039a;

    /* renamed from: b */
    private final /* synthetic */ Intent f7040b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC1694d(Context context, Intent intent) {
        this.f7039a = context;
        this.f7040b = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f7039a.startActivity(this.f7040b);
        } catch (ActivityNotFoundException e) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
        }
    }
}
