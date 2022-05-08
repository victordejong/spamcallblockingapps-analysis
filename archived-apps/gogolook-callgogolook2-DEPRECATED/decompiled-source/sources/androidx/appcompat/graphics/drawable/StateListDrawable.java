package androidx.appcompat.graphics.drawable;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.DrawableContainer;
import androidx.appcompat.resources.C0088R;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.content.res.TypedArrayUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@SuppressLint({"RestrictedAPI"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/StateListDrawable.class */
public class StateListDrawable extends DrawableContainer {
    public static final boolean DEBUG = false;
    public static final String TAG = "StateListDrawable";
    public boolean mMutated;
    public StateListState mStateListState;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/StateListDrawable$StateListState.class */
    public static class StateListState extends DrawableContainer.DrawableContainerState {
        public int[][] mStateSets;

        /* JADX WARN: Type inference failed for: r1v3, types: [int[], int[][]] */
        public StateListState(StateListState stateListState, StateListDrawable stateListDrawable, Resources resources) {
            super(stateListState, stateListDrawable, resources);
            if (stateListState != null) {
                this.mStateSets = stateListState.mStateSets;
            } else {
                this.mStateSets = new int[getCapacity()];
            }
        }

        public int addStateSet(int[] iArr, Drawable drawable) {
            int addChild = addChild(drawable);
            this.mStateSets[addChild] = iArr;
            return addChild;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [int[], java.lang.Object, int[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.appcompat.graphics.drawable.DrawableContainer.DrawableContainerState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void growArray(int r7, int r8) {
            /*
                r6 = this;
                r0 = r6
                r1 = r7
                r2 = r8
                super.growArray(r1, r2)
                r0 = r8
                int[] r0 = new int[r0]
                r9 = r0
                r0 = r6
                int[][] r0 = r0.mStateSets
                r1 = 0
                r2 = r9
                r3 = 0
                r4 = r7
                java.lang.System.arraycopy(r0, r1, r2, r3, r4)
                r0 = r6
                r1 = r9
                r0.mStateSets = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.StateListDrawable.StateListState.growArray(int, int):void");
        }

        public int indexOfStateSet(int[] iArr) {
            int[][] iArr2 = this.mStateSets;
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.appcompat.graphics.drawable.DrawableContainer.DrawableContainerState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mutate() {
            /*
                r4 = this;
                r0 = r4
                int[][] r0 = r0.mStateSets
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
                int[][] r0 = r0.mStateSets
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
                r0.mStateSets = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.StateListDrawable.StateListState.mutate():void");
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
    }

    public StateListDrawable() {
        this(null, null);
    }

    public StateListDrawable(@Nullable StateListState stateListState) {
        if (stateListState != null) {
            setConstantState(stateListState);
        }
    }

    public StateListDrawable(StateListState stateListState, Resources resources) {
        setConstantState(new StateListState(stateListState, this, resources));
        onStateChange(getState());
    }

    private void inflateChildElements(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        StateListState stateListState = this.mStateListState;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 < depth && next2 == 3) {
                    return;
                }
                if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                    TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0088R.styleable.StateListDrawableItem);
                    Drawable drawable = null;
                    int resourceId = obtainAttributes.getResourceId(C0088R.styleable.StateListDrawableItem_android_drawable, -1);
                    if (resourceId > 0) {
                        drawable = ResourceManagerInternal.get().getDrawable(context, resourceId);
                    }
                    obtainAttributes.recycle();
                    int[] extractStateSet = extractStateSet(attributeSet);
                    Drawable drawable2 = drawable;
                    if (drawable == null) {
                        do {
                            next = xmlPullParser.next();
                        } while (next == 4);
                        if (next == 2) {
                            drawable2 = Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                        } else {
                            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + AnimatedStateListDrawableCompat.ITEM_MISSING_DRAWABLE_ERROR);
                        }
                    }
                    stateListState.addStateSet(extractStateSet, drawable2);
                }
            } else {
                return;
            }
        }
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        StateListState stateListState = this.mStateListState;
        if (Build.VERSION.SDK_INT >= 21) {
            stateListState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        }
        stateListState.mVariablePadding = typedArray.getBoolean(C0088R.styleable.StateListDrawable_android_variablePadding, stateListState.mVariablePadding);
        stateListState.mConstantSize = typedArray.getBoolean(C0088R.styleable.StateListDrawable_android_constantSize, stateListState.mConstantSize);
        stateListState.mEnterFadeDuration = typedArray.getInt(C0088R.styleable.StateListDrawable_android_enterFadeDuration, stateListState.mEnterFadeDuration);
        stateListState.mExitFadeDuration = typedArray.getInt(C0088R.styleable.StateListDrawable_android_exitFadeDuration, stateListState.mExitFadeDuration);
        stateListState.mDither = typedArray.getBoolean(C0088R.styleable.StateListDrawable_android_dither, stateListState.mDither);
    }

    public void addState(int[] iArr, Drawable drawable) {
        if (drawable != null) {
            this.mStateListState.addStateSet(iArr, drawable);
            onStateChange(getState());
        }
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer
    public StateListState cloneConstantState() {
        return new StateListState(this.mStateListState, this, null);
    }

    public int[] extractStateSet(AttributeSet attributeSet) {
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

    public int getStateCount() {
        return this.mStateListState.getChildCount();
    }

    public Drawable getStateDrawable(int i) {
        return this.mStateListState.getChild(i);
    }

    public int getStateDrawableIndex(int[] iArr) {
        return this.mStateListState.indexOfStateSet(iArr);
    }

    public StateListState getStateListState() {
        return this.mStateListState;
    }

    public int[] getStateSet(int i) {
        return this.mStateListState.mStateSets[i];
    }

    public void inflate(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0088R.styleable.StateListDrawable);
        setVisible(obtainAttributes.getBoolean(C0088R.styleable.StateListDrawable_android_visible, true), true);
        updateStateFromTypedArray(obtainAttributes);
        updateDensity(resources);
        obtainAttributes.recycle();
        inflateChildElements(context, resources, xmlPullParser, attributeSet, theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mStateListState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int indexOfStateSet = this.mStateListState.indexOfStateSet(iArr);
        int i = indexOfStateSet;
        if (indexOfStateSet < 0) {
            i = this.mStateListState.indexOfStateSet(StateSet.WILD_CARD);
        }
        return selectDrawable(i) || onStateChange;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer
    public void setConstantState(@NonNull DrawableContainer.DrawableContainerState drawableContainerState) {
        super.setConstantState(drawableContainerState);
        if (drawableContainerState instanceof StateListState) {
            this.mStateListState = (StateListState) drawableContainerState;
        }
    }
}
