package com.google.android.material.p064e;

import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.core.content.p033a.C0641f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.e.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/e/c.class */
public final class C2995c extends C0641f.AbstractC0642a {

    /* renamed from: a */
    final /* synthetic */ TextPaint f18208a;

    /* renamed from: b */
    final /* synthetic */ C0641f.AbstractC0642a f18209b;

    /* renamed from: c */
    final /* synthetic */ C2994b f18210c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2995c(C2994b bVar, TextPaint textPaint, C0641f.AbstractC0642a aVar) {
        this.f18210c = bVar;
        this.f18208a = textPaint;
        this.f18209b = aVar;
    }

    @Override // androidx.core.content.p033a.C0641f.AbstractC0642a
    /* renamed from: a */
    public final void mo1184a(int i) {
        this.f18210c.m1193a();
        this.f18210c.f18206n = true;
        this.f18209b.mo1184a(i);
    }

    @Override // androidx.core.content.p033a.C0641f.AbstractC0642a
    /* renamed from: a */
    public final void mo1183a(Typeface typeface) {
        C2994b bVar = this.f18210c;
        bVar.f18207o = Typeface.create(typeface, bVar.f18197e);
        this.f18210c.m1190a(this.f18208a, typeface);
        this.f18210c.f18206n = true;
        this.f18209b.mo1183a(typeface);
    }
}
