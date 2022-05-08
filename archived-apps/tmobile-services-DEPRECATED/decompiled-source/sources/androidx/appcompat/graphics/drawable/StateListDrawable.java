package androidx.appcompat.graphics.drawable;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.DrawableContainer;
@SuppressLint({"RestrictedAPI"})
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/StateListDrawable.class */
class StateListDrawable extends DrawableContainer {

    /* renamed from: r */
    private StateListState f437r;

    /* renamed from: s */
    private boolean f438s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/StateListDrawable$StateListState.class */
    public static class StateListState extends DrawableContainer.DrawableContainerState {

        /* renamed from: J */
        int[][] f439J;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Type inference failed for: r1v3, types: [int[], int[][]] */
        public StateListState(StateListState stateListState, StateListDrawable stateListDrawable, Resources resources) {
            super(stateListState, stateListDrawable, resources);
            if (stateListState != null) {
                this.f439J = stateListState.f439J;
            } else {
                this.f439J = new int[m22028f()];
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: A */
        public int m21996A(int[] iArr, Drawable drawable) {
            int a = m22033a(drawable);
            this.f439J[a] = iArr;
            return a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: B */
        public int m21995B(int[] iArr) {
            int[][] iArr2 = this.f439J;
            int h = m22026h();
            for (int i = 0; i < h; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new StateListDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new StateListDrawable(this, resources);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [int[], int[][], java.lang.Object] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.appcompat.graphics.drawable.DrawableContainer.DrawableContainerState
        /* renamed from: o */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo21994o(int r7, int r8) {
            /*
                r6 = this;
                r0 = r6
                r1 = r7
                r2 = r8
                super.mo21994o(r1, r2)
                r0 = r8
                int[] r0 = new int[r0]
                r9 = r0
                r0 = r6
                int[][] r0 = r0.f439J
                r1 = 0
                r2 = r9
                r3 = 0
                r4 = r7
                java.lang.System.arraycopy(r0, r1, r2, r3, r4)
                r0 = r6
                r1 = r9
                r0.f439J = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.StateListDrawable.StateListState.mo21994o(int, int):void");
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.appcompat.graphics.drawable.DrawableContainer.DrawableContainerState
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo21993s() {
            /*
                r4 = this;
                r0 = r4
                int[][] r0 = r0.f439J
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
                int[][] r0 = r0.f439J
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
                r0.f439J = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.StateListDrawable.StateListState.mo21993s():void");
        }
    }

    StateListDrawable() {
        this(null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateListDrawable(@Nullable StateListState stateListState) {
        if (stateListState != null) {
            mo21999h(stateListState);
        }
    }

    StateListDrawable(StateListState stateListState, Resources resources) {
        mo21999h(new StateListState(stateListState, this, resources));
        onStateChange(getState());
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @RequiresApi
    public void applyTheme(@NonNull Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainer
    /* renamed from: h */
    public void mo21999h(@NonNull DrawableContainer.DrawableContainerState drawableContainerState) {
        super.mo21999h(drawableContainerState);
        if (drawableContainerState instanceof StateListState) {
            this.f437r = (StateListState) drawableContainerState;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public StateListState mo22000b() {
        return new StateListState(this.f437r, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public int[] m21997k(AttributeSet attributeSet) {
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

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f438s) {
            super.mutate();
            this.f437r.mo21993s();
            this.f438s = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int B = this.f437r.m21995B(iArr);
        int i = B;
        if (B < 0) {
            i = this.f437r.m21995B(StateSet.WILD_CARD);
        }
        return m22037g(i) || onStateChange;
    }
}
