package com.google.android.material.chip;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.chip.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/b.class */
public final class C2979b extends ViewOutlineProvider {

    /* renamed from: a */
    final /* synthetic */ Chip f18107a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2979b(Chip chip) {
        this.f18107a = chip;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        if (this.f18107a.f18082c != null) {
            this.f18107a.f18082c.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
