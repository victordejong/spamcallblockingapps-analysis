package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
/* renamed from: com.google.android.gms.dynamic.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/k.class */
final class View$OnClickListenerC0989k implements View.OnClickListener {

    /* renamed from: f */
    private final /* synthetic */ Context f3624f;

    /* renamed from: g */
    private final /* synthetic */ Intent f3625g;

    public View$OnClickListenerC0989k(Context context, Intent intent) {
        this.f3624f = context;
        this.f3625g = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f3624f.startActivity(this.f3625g);
        } catch (ActivityNotFoundException e) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
        }
    }
}
