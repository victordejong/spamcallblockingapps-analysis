package com.vladlee.easyblacklist;

import android.widget.CompoundButton;
/* renamed from: com.vladlee.easyblacklist.bg */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bg.class */
final class C3295bg implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ CheckPermissionsActivity f19363a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3295bg(CheckPermissionsActivity checkPermissionsActivity) {
        this.f19363a = checkPermissionsActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        CheckPermissionsActivity.m350a(this.f19363a, z);
    }
}
