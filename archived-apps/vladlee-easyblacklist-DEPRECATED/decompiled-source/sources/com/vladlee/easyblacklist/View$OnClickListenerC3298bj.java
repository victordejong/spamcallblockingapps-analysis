package com.vladlee.easyblacklist;

import android.view.View;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.bj */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bj.class */
public final class View$OnClickListenerC3298bj implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ArrayList f19367a;

    /* renamed from: b */
    final /* synthetic */ CheckPermissionsActivity f19368b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3298bj(CheckPermissionsActivity checkPermissionsActivity, ArrayList arrayList) {
        this.f19368b = checkPermissionsActivity;
        this.f19367a = arrayList;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        CheckPermissionsActivity.m351a(this.f19368b, this.f19367a);
    }
}
