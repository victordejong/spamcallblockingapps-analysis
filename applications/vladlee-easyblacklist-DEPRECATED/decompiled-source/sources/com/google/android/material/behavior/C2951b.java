package com.google.android.material.behavior;

import android.view.View;
import android.view.ViewParent;
import androidx.customview.p039a.C0799e;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.behavior.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/b.class */
public final class C2951b extends C0799e.AbstractC0800a {

    /* renamed from: a */
    final /* synthetic */ SwipeDismissBehavior f17929a;

    /* renamed from: b */
    private int f17930b;

    /* renamed from: c */
    private int f17931c = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2951b(SwipeDismissBehavior swipeDismissBehavior) {
        this.f17929a = swipeDismissBehavior;
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: a */
    public final int mo1435a(View view) {
        return view.getWidth();
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: a */
    public final void mo1343a(int i) {
        if (this.f17929a.f17916b != null) {
            this.f17929a.f17916b.mo927a(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a0, code lost:
        if (java.lang.Math.abs(r8.getLeft() - r7.f17930b) >= java.lang.Math.round(r8.getWidth() * r7.f17929a.f17918d)) goto L_0x00a3;
     */
    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo1342a(android.view.View r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.C2951b.mo1342a(android.view.View, float, float):void");
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: a */
    public final void mo1341a(View view, int i) {
        float width = this.f17930b + (view.getWidth() * this.f17929a.f17919e);
        float width2 = this.f17930b + (view.getWidth() * this.f17929a.f17920f);
        float f = i;
        if (f <= width) {
            view.setAlpha(1.0f);
        } else {
            view.setAlpha(f >= width2 ? 0.0f : SwipeDismissBehavior.m1441a(1.0f - SwipeDismissBehavior.m1440a(width, width2, f)));
        }
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: b */
    public final void mo1434b(View view, int i) {
        this.f17931c = i;
        this.f17930b = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: c */
    public final boolean mo1339c(View view, int i) {
        return this.f17931c == -1 && this.f17929a.mo938a(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
        r7 = r4.f17930b - r5.getWidth();
        r8 = r4.f17930b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        r7 = r4.f17930b;
        r8 = r5.getWidth() + r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004c, code lost:
        if (r7 != false) goto L_0x0030;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        if (r7 != false) goto L_0x001d;
     */
    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo1338d(android.view.View r5, int r6) {
        /*
            r4 = this;
            r0 = r5
            int r0 = androidx.core.p037g.C0741t.m8325g(r0)
            r1 = 1
            if (r0 != r1) goto L_0x000d
            r0 = 1
            r7 = r0
            goto L_0x000f
        L_0x000d:
            r0 = 0
            r7 = r0
        L_0x000f:
            r0 = r4
            com.google.android.material.behavior.SwipeDismissBehavior r0 = r0.f17929a
            int r0 = r0.f17917c
            if (r0 != 0) goto L_0x0040
            r0 = r7
            if (r0 == 0) goto L_0x0030
        L_0x001d:
            r0 = r4
            int r0 = r0.f17930b
            r1 = r5
            int r1 = r1.getWidth()
            int r0 = r0 - r1
            r7 = r0
            r0 = r4
            int r0 = r0.f17930b
            r8 = r0
            goto L_0x0067
        L_0x0030:
            r0 = r4
            int r0 = r0.f17930b
            r7 = r0
            r0 = r5
            int r0 = r0.getWidth()
            r1 = r7
            int r0 = r0 + r1
            r8 = r0
            goto L_0x0067
        L_0x0040:
            r0 = r4
            com.google.android.material.behavior.SwipeDismissBehavior r0 = r0.f17929a
            int r0 = r0.f17917c
            r1 = 1
            if (r0 != r1) goto L_0x0052
            r0 = r7
            if (r0 == 0) goto L_0x001d
            goto L_0x0030
        L_0x0052:
            r0 = r4
            int r0 = r0.f17930b
            r1 = r5
            int r1 = r1.getWidth()
            int r0 = r0 - r1
            r7 = r0
            r0 = r4
            int r0 = r0.f17930b
            r1 = r5
            int r1 = r1.getWidth()
            int r0 = r0 + r1
            r8 = r0
        L_0x0067:
            r0 = r7
            r1 = r6
            r2 = r8
            int r0 = com.google.android.material.behavior.SwipeDismissBehavior.m1439a(r0, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.C2951b.mo1338d(android.view.View, int):int");
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: e */
    public final int mo1337e(View view, int i) {
        return view.getTop();
    }
}
