package com.google.android.material.chip;

import android.graphics.Typeface;
import androidx.core.content.p033a.C0641f;
/* renamed from: com.google.android.material.chip.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/a.class */
final class C2978a extends C0641f.AbstractC0642a {

    /* renamed from: a */
    final /* synthetic */ Chip f18106a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2978a(Chip chip) {
        this.f18106a = chip;
    }

    @Override // androidx.core.content.p033a.C0641f.AbstractC0642a
    /* renamed from: a */
    public final void mo1184a(int i) {
    }

    @Override // androidx.core.content.p033a.C0641f.AbstractC0642a
    /* renamed from: a */
    public final void mo1183a(Typeface typeface) {
        Chip chip = this.f18106a;
        chip.setText(chip.getText());
        this.f18106a.requestLayout();
        this.f18106a.invalidate();
    }
}
