package com.google.android.material.snackbar;

import com.google.android.material.snackbar.BaseTransientBottomBar;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/e.class */
public final class C3065e implements BaseTransientBottomBar.AbstractC3058b {

    /* renamed from: a */
    final /* synthetic */ BaseTransientBottomBar f18530a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3065e(BaseTransientBottomBar baseTransientBottomBar) {
        this.f18530a = baseTransientBottomBar;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar.AbstractC3058b
    /* renamed from: a */
    public final void mo925a() {
        if (C3072l.m920a().m911f(this.f18530a.f18508c)) {
            BaseTransientBottomBar.f18504a.post(new RunnableC3066f(this));
        }
    }
}
