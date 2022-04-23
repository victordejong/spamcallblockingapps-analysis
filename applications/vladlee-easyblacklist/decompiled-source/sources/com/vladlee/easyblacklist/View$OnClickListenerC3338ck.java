package com.vladlee.easyblacklist;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.firebase.analytics.FirebaseAnalytics;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ck */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ck.class */
public final class View$OnClickListenerC3338ck implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ boolean f19445a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3338ck(boolean z) {
        this.f19445a = z;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context = view.getContext();
        C3391ed.m91a(context, "pref_show_rate_dialog_time", System.currentTimeMillis());
        FirebaseAnalytics.getInstance(context).m646a("dialog5_later", new Bundle());
        if (this.f19445a) {
            C3318by.m175f(view.getContext());
        } else {
            C3318by.m172g(view.getContext());
        }
    }
}
