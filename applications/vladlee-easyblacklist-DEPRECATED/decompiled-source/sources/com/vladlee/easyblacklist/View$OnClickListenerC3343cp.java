package com.vladlee.easyblacklist;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.cp */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cp.class */
public final class View$OnClickListenerC3343cp implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ EasyBlacklistActivity f19453a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3343cp(EasyBlacklistActivity easyBlacklistActivity) {
        this.f19453a = easyBlacklistActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f19453a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.vladlee.callsblacklist")));
    }
}
