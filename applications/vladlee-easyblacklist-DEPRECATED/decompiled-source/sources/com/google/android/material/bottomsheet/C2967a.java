package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.core.p031b.C0623a;
import androidx.customview.p039a.C0799e;
/* renamed from: com.google.android.material.bottomsheet.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/a.class */
final class C2967a extends C0799e.AbstractC0800a {

    /* renamed from: a */
    final /* synthetic */ BottomSheetBehavior f18041a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2967a(BottomSheetBehavior bottomSheetBehavior) {
        this.f18041a = bottomSheetBehavior;
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: a */
    public final void mo1343a(int i) {
        if (i == 1) {
            this.f18041a.m1348b(1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00cd, code lost:
        if (java.lang.Math.abs(r0 - r7.f18041a.f18012a) < java.lang.Math.abs(r0 - r7.f18041a.f18014c)) goto L_0x0016;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ee, code lost:
        if (r0 < java.lang.Math.abs(r0 - r7.f18041a.f18014c)) goto L_0x001f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x010e, code lost:
        if (java.lang.Math.abs(r0 - r7.f18041a.f18013b) < java.lang.Math.abs(r0 - r7.f18041a.f18014c)) goto L_0x0033;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0030, code lost:
        if (r8.getTop() > r7.f18041a.f18013b) goto L_0x0033;
     */
    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo1342a(android.view.View r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.C2967a.mo1342a(android.view.View, float, float):void");
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: a */
    public final void mo1341a(View view, int i) {
        this.f18041a.m1360a();
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: b */
    public final int mo1340b() {
        boolean z = this.f18041a.f18015d;
        BottomSheetBehavior bottomSheetBehavior = this.f18041a;
        return z ? bottomSheetBehavior.f18018g : bottomSheetBehavior.f18014c;
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: c */
    public final boolean mo1339c(View view, int i) {
        View view2;
        if (this.f18041a.f18016e != 1 && !this.f18041a.f18022k) {
            return (this.f18041a.f18016e != 3 || this.f18041a.f18021j != i || (view2 = this.f18041a.f18020i.get()) == null || !view2.canScrollVertically(-1)) && this.f18041a.f18019h != null && this.f18041a.f18019h.get() == view;
        }
        return false;
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: d */
    public final int mo1338d(View view, int i) {
        return view.getLeft();
    }

    @Override // androidx.customview.p039a.C0799e.AbstractC0800a
    /* renamed from: e */
    public final int mo1337e(View view, int i) {
        int d;
        d = this.f18041a.m1344d();
        boolean z = this.f18041a.f18015d;
        BottomSheetBehavior bottomSheetBehavior = this.f18041a;
        return C0623a.m8692a(i, d, z ? bottomSheetBehavior.f18018g : bottomSheetBehavior.f18014c);
    }
}
