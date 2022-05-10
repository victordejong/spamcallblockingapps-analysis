package p012b.p016b.p020m.p021a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import p012b.p016b.p020m.p021a.C0611b;
/* renamed from: b.b.m.a.d */
/* loaded from: classes-dex2jar.jar:b/b/m/a/d.class */
public class C0616d extends C0611b {

    /* renamed from: m */
    public C0617a f3069m;

    /* renamed from: n */
    public boolean f3070n;

    /* renamed from: b.b.m.a.d$a */
    /* loaded from: classes-dex2jar.jar:b/b/m/a/d$a.class */
    public static class C0617a extends C0611b.AbstractC0614c {

        /* renamed from: J */
        public int[][] f3071J;

        /* JADX WARN: Type inference failed for: r1v3, types: [int[], int[][]] */
        public C0617a(C0617a aVar, C0616d dVar, Resources resources) {
            super(aVar, dVar, resources);
            if (aVar != null) {
                this.f3071J = aVar.f3071J;
            } else {
                this.f3071J = new int[m36730d()];
            }
        }

        /* renamed from: a */
        public int m36714a(int[] iArr) {
            int[][] iArr2 = this.f3071J;
            int e = m36729e();
            for (int i = 0; i < e; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        /* renamed from: a */
        public int m36713a(int[] iArr, Drawable drawable) {
            int a = m36739a(drawable);
            this.f3071J[a] = iArr;
            return a;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [int[], int[][], java.lang.Object] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p012b.p016b.p020m.p021a.C0611b.AbstractC0614c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo36715a(int r7, int r8) {
            /*
                r6 = this;
                r0 = r6
                r1 = r7
                r2 = r8
                super.mo36715a(r1, r2)
                r0 = r8
                int[] r0 = new int[r0]
                r9 = r0
                r0 = r6
                int[][] r0 = r0.f3071J
                r1 = 0
                r2 = r9
                r3 = 0
                r4 = r7
                java.lang.System.arraycopy(r0, r1, r2, r3, r4)
                r0 = r6
                r1 = r9
                r0.f3071J = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p020m.p021a.C0616d.C0617a.mo36715a(int, int):void");
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p012b.p016b.p020m.p021a.C0611b.AbstractC0614c
        /* renamed from: n */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo36712n() {
            /*
                r4 = this;
                r0 = r4
                int[][] r0 = r0.f3071J
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
                int[][] r0 = r0.f3071J
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
                r0.f3071J = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p020m.p021a.C0616d.C0617a.mo36712n():void");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0616d(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0616d(this, resources);
        }
    }

    public C0616d(C0617a aVar) {
        if (aVar != null) {
            mo36716a(aVar);
        }
    }

    public C0616d(C0617a aVar, Resources resources) {
        mo36716a(new C0617a(aVar, this, resources));
        onStateChange(getState());
    }

    @Override // p012b.p016b.p020m.p021a.C0611b
    /* renamed from: a */
    public C0617a mo36718a() {
        return new C0617a(this.f3069m, this, null);
    }

    @Override // p012b.p016b.p020m.p021a.C0611b
    /* renamed from: a */
    public void mo36716a(C0611b.AbstractC0614c cVar) {
        super.mo36716a(cVar);
        if (cVar instanceof C0617a) {
            this.f3069m = (C0617a) cVar;
        }
    }

    /* renamed from: a */
    public int[] m36717a(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            i = i;
            if (attributeNameResource != 0) {
                i = i;
                if (attributeNameResource != 16842960) {
                    i = i;
                    if (attributeNameResource != 16843161) {
                        iArr[i] = attributeSet.getAttributeBooleanValue(i2, false) ? attributeNameResource : -attributeNameResource;
                        i++;
                    }
                }
            }
        }
        return StateSet.trimStateSet(iArr, i);
    }

    @Override // p012b.p016b.p020m.p021a.C0611b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // p012b.p016b.p020m.p021a.C0611b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f3070n) {
            super.mutate();
            this.f3069m.mo36712n();
            this.f3070n = true;
        }
        return this;
    }

    @Override // p012b.p016b.p020m.p021a.C0611b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int a = this.f3069m.m36714a(iArr);
        int i = a;
        if (a < 0) {
            i = this.f3069m.m36714a(StateSet.WILD_CARD);
        }
        return m36752a(i) || onStateChange;
    }
}
