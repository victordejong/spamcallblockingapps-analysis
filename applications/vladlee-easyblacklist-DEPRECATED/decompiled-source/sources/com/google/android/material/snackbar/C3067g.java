package com.google.android.material.snackbar;

import com.google.android.material.snackbar.BaseTransientBottomBar;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/g.class */
public final class C3067g implements BaseTransientBottomBar.AbstractC3059c {

    /* renamed from: a */
    final /* synthetic */ BaseTransientBottomBar f18532a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3067g(BaseTransientBottomBar baseTransientBottomBar) {
        this.f18532a = baseTransientBottomBar;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar.AbstractC3059c
    /* renamed from: a */
    public final void mo924a() {
        this.f18532a.f18507b.m932a((BaseTransientBottomBar.AbstractC3059c) null);
        boolean e = this.f18532a.m941e();
        BaseTransientBottomBar baseTransientBottomBar = this.f18532a;
        if (e) {
            baseTransientBottomBar.m944b();
        } else {
            baseTransientBottomBar.m943c();
        }
    }
}
