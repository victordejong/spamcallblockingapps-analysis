package com.vladlee.easyblacklist;

import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
/* renamed from: com.vladlee.easyblacklist.bh */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bh.class */
final class View$OnClickListenerC3296bh implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SwitchCompat f19364a;

    /* renamed from: b */
    final /* synthetic */ CheckPermissionsActivity f19365b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3296bh(CheckPermissionsActivity checkPermissionsActivity, SwitchCompat switchCompat) {
        this.f19365b = checkPermissionsActivity;
        this.f19364a = switchCompat;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f19364a.toggle();
    }
}
