package com.vladlee.easyblacklist;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.google.firebase.analytics.FirebaseAnalytics;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.cl */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cl.class */
public final class View$OnClickListenerC3339cl implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ boolean f19446a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3339cl(boolean z) {
        this.f19446a = z;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context = view.getContext();
        C3391ed.m86b(context, "pref_show_rate_dialog", false);
        C3391ed.m91a(context, "pref_show_rate_dialog_time", System.currentTimeMillis());
        int i = Build.VERSION.SDK_INT;
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName()));
            intent.addFlags(1208483840);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + context.getPackageName())));
            FirebaseAnalytics.getInstance(context).m646a("dialogRateApp_ActivityNotFound", new Bundle());
        }
        FirebaseAnalytics.getInstance(context).m646a("dialog5_rate", new Bundle());
        if (this.f19446a) {
            C3318by.m175f(view.getContext());
        } else {
            C3318by.m172g(view.getContext());
        }
    }
}
