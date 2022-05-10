package p012b.p042i.p054p.p055d0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: b.i.p.d0.a */
/* loaded from: classes-dex2jar.jar:b/i/p/d0/a.class */
public final class C0968a extends ClickableSpan {

    /* renamed from: a */
    public final int f4217a;

    /* renamed from: b */
    public final C0970c f4218b;

    /* renamed from: c */
    public final int f4219c;

    public C0968a(int i, C0970c cVar, int i2) {
        this.f4217a = i;
        this.f4218b = cVar;
        this.f4219c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f4217a);
        this.f4218b.m35382a(this.f4219c, bundle);
    }
}
