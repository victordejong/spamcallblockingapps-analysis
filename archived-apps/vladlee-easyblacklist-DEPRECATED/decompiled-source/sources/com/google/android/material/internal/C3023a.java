package com.google.android.material.internal;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.p038a.C0696d;
/* renamed from: com.google.android.material.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/a.class */
final class C3023a extends C0689a {

    /* renamed from: a */
    final /* synthetic */ CheckableImageButton f18390a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3023a(CheckableImageButton checkableImageButton) {
        this.f18390a = checkableImageButton;
    }

    @Override // androidx.core.p037g.C0689a
    /* renamed from: a */
    public final void mo802a(View view, C0696d dVar) {
        super.mo802a(view, dVar);
        dVar.m8521a(true);
        dVar.m8512b(this.f18390a.isChecked());
    }

    @Override // androidx.core.p037g.C0689a
    /* renamed from: d */
    public final void mo1060d(View view, AccessibilityEvent accessibilityEvent) {
        super.mo1060d(view, accessibilityEvent);
        accessibilityEvent.setChecked(this.f18390a.isChecked());
    }
}
