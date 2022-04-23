package com.google.android.material.snackbar;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/d.class */
public final class C3064d implements SwipeDismissBehavior.AbstractC2948a {

    /* renamed from: a */
    final /* synthetic */ BaseTransientBottomBar f18529a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3064d(BaseTransientBottomBar baseTransientBottomBar) {
        this.f18529a = baseTransientBottomBar;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior.AbstractC2948a
    /* renamed from: a */
    public final void mo927a(int i) {
        if (i == 0) {
            C3072l.m920a().m912e(this.f18529a.f18508c);
        } else if (i == 1 || i == 2) {
            C3072l.m920a().m913d(this.f18529a.f18508c);
        }
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior.AbstractC2948a
    /* renamed from: a */
    public final void mo926a(View view) {
        view.setVisibility(8);
        C3072l.m920a().m919a(this.f18529a.f18508c);
    }
}
