package androidx.appcompat.p022b.p023a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import androidx.appcompat.p022b.p023a.C0330b;
/* renamed from: androidx.appcompat.b.a.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/f.class */
class C0336f extends C0330b {

    /* renamed from: a */
    private C0337a f1424a;

    /* renamed from: b */
    private boolean f1425b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.b.a.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/f$a.class */
    public static class C0337a extends C0330b.AbstractC0332b {

        /* renamed from: L */
        int[][] f1426L;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Type inference failed for: r1v4, types: [int[], int[][]] */
        public C0337a(C0337a aVar, C0336f fVar, Resources resources) {
            super(aVar, fVar, resources);
            if (aVar != null) {
                this.f1426L = aVar.f1426L;
            } else {
                this.f1426L = new int[this.f1391i.length];
            }
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.appcompat.p022b.p023a.C0330b.AbstractC0332b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo9708a() {
            /*
                r4 = this;
                r0 = r4
                int[][] r0 = r0.f1426L
                r5 = r0
                r0 = r5
                int r0 = r0.length
                int[] r0 = new int[r0]
                r6 = r0
                r0 = r5
                int r0 = r0.length
                r1 = 1
                int r0 = r0 - r1
                r7 = r0
            L_0x0010:
                r0 = r7
                if (r0 < 0) goto L_0x0038
                r0 = r4
                int[][] r0 = r0.f1426L
                r5 = r0
                r0 = r5
                r1 = r7
                r0 = r0[r1]
                if (r0 == 0) goto L_0x002c
                r0 = r5
                r1 = r7
                r0 = r0[r1]
                java.lang.Object r0 = r0.clone()
                int[] r0 = (int[]) r0
                r5 = r0
                goto L_0x002e
            L_0x002c:
                r0 = 0
                r5 = r0
            L_0x002e:
                r0 = r6
                r1 = r7
                r2 = r5
                r0[r1] = r2
                int r7 = r7 + (-1)
                goto L_0x0010
            L_0x0038:
                r0 = r4
                r1 = r6
                r0.f1426L = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p022b.p023a.C0336f.C0337a.mo9708a():void");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final int m9707b(int[] iArr) {
            int[][] iArr2 = this.f1426L;
            int i = this.f1392j;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [int[], int[][], java.lang.Object] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.appcompat.p022b.p023a.C0330b.AbstractC0332b
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo9706d(int r7, int r8) {
            /*
                r6 = this;
                r0 = r6
                r1 = r7
                r2 = r8
                super.mo9706d(r1, r2)
                r0 = r8
                int[] r0 = new int[r0]
                r9 = r0
                r0 = r6
                int[][] r0 = r0.f1426L
                r1 = 0
                r2 = r9
                r3 = 0
                r4 = r7
                java.lang.System.arraycopy(r0, r1, r2, r3, r4)
                r0 = r6
                r1 = r9
                r0.f1426L = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p022b.p023a.C0336f.C0337a.mo9706d(int, int):void");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0336f(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0336f(this, resources);
        }
    }

    C0336f() {
        this(null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0336f(byte b) {
    }

    C0336f(C0337a aVar, Resources resources) {
        mo9710a(new C0337a(aVar, this, resources));
        onStateChange(getState());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C0337a mo9709b() {
        return new C0337a(this.f1424a, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.p022b.p023a.C0330b
    /* renamed from: a */
    public void mo9710a(C0330b.AbstractC0332b bVar) {
        super.mo9710a(bVar);
        if (bVar instanceof C0337a) {
            this.f1424a = (C0337a) bVar;
        }
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1425b && super.mutate() == this) {
            this.f1424a.mo9708a();
            this.f1425b = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int b = this.f1424a.m9707b(iArr);
        int i = b;
        if (b < 0) {
            i = this.f1424a.m9707b(StateSet.WILD_CARD);
        }
        return m9738a(i) || onStateChange;
    }
}
