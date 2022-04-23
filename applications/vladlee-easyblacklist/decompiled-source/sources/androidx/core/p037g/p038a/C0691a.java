package androidx.core.p037g.p038a;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: androidx.core.g.a.a */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/a.class */
public final class C0691a extends ClickableSpan {

    /* renamed from: a */
    private final int f3017a;

    /* renamed from: b */
    private final C0696d f3018b;

    /* renamed from: c */
    private final int f3019c;

    public C0691a(int i, C0696d dVar, int i2) {
        this.f3017a = i;
        this.f3018b = dVar;
        this.f3019c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f3017a);
        this.f3018b.m8534a(this.f3019c, bundle);
    }
}
