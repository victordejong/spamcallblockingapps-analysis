package com.vladlee.easyblacklist;

import android.content.Intent;
import android.view.View;
/* renamed from: com.vladlee.easyblacklist.j */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/j.class */
final class View$OnClickListenerC3467j implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ AddTextFilterActivity f19649a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3467j(AddTextFilterActivity addTextFilterActivity) {
        this.f19649a = addTextFilterActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AddTextFilterActivity.m376a(this.f19649a);
        this.f19649a.setResult(-1, new Intent());
        this.f19649a.m374h();
        this.f19649a.finish();
    }
}
