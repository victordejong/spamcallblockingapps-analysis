package com.vladlee.easyblacklist;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.google.firebase.analytics.FirebaseAnalytics;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ci */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ci.class */
public final class View$OnClickListenerC3336ci implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ViewGroup f19443a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3336ci(ViewGroup viewGroup) {
        this.f19443a = viewGroup;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context = view.getContext();
        C3391ed.m86b(context, "pref_rate_dialog_like_yes", true);
        if (C3318by.m170h(context)) {
            C3318by.m175f(context);
            C3318by.m181d(context);
        } else {
            C3318by.m172g(context);
            C3318by.m178e(context);
        }
        FirebaseAnalytics.getInstance(context).m646a("dialog5_yes", new Bundle());
    }
}
