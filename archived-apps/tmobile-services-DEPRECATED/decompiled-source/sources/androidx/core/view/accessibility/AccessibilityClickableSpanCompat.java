package androidx.core.view.accessibility;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityClickableSpanCompat.class */
public final class AccessibilityClickableSpanCompat extends ClickableSpan {

    /* renamed from: f */
    private final int f3321f;

    /* renamed from: g */
    private final AccessibilityNodeInfoCompat f3322g;

    /* renamed from: h */
    private final int f3323h;

    @RestrictTo
    public AccessibilityClickableSpanCompat(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, int i2) {
        this.f3321f = i;
        this.f3322g = accessibilityNodeInfoCompat;
        this.f3323h = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f3321f);
        this.f3322g.m19040R(this.f3323h, bundle);
    }
}
