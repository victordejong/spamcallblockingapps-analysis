package com.vladlee.easyblacklist;

import android.content.Intent;
import android.view.View;
/* renamed from: com.vladlee.easyblacklist.h */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/h.class */
final class View$OnClickListenerC3465h implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ AddManuallyActivity f19647a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3465h(AddManuallyActivity addManuallyActivity) {
        this.f19647a = addManuallyActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i;
        AddManuallyActivity addManuallyActivity = this.f19647a;
        i = addManuallyActivity.f19232k;
        AddManuallyActivity.m381a(addManuallyActivity, i);
        this.f19647a.setResult(-1, new Intent());
        this.f19647a.m378h();
        this.f19647a.finish();
    }
}
