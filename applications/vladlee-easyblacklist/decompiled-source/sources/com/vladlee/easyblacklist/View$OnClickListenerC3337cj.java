package com.vladlee.easyblacklist;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.firebase.analytics.FirebaseAnalytics;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.cj */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cj.class */
public final class View$OnClickListenerC3337cj implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ boolean f19444a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3337cj(boolean z) {
        this.f19444a = z;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context = view.getContext();
        C3391ed.m86b(context, "pref_show_rate_dialog", false);
        C3391ed.m91a(context, "pref_show_rate_dialog_time", System.currentTimeMillis());
        FirebaseAnalytics.getInstance(context).m646a("dialog5_no", new Bundle());
        if (this.f19444a) {
            C3318by.m175f(view.getContext());
        } else {
            C3318by.m172g(view.getContext());
        }
    }
}
