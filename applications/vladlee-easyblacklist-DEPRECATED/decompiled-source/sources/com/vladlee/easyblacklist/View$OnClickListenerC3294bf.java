package com.vladlee.easyblacklist;

import android.view.View;
/* renamed from: com.vladlee.easyblacklist.bf */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bf.class */
final class View$OnClickListenerC3294bf implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ CheckPermissionsActivity f19362a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3294bf(CheckPermissionsActivity checkPermissionsActivity) {
        this.f19362a = checkPermissionsActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f19362a.finish();
    }
}
