package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3052r;
import com.google.android.material.internal.FlowLayout;
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup.class */
public class ChipGroup extends FlowLayout {

    /* renamed from: a */
    private int f18096a;

    /* renamed from: b */
    private int f18097b;

    /* renamed from: c */
    private boolean f18098c;

    /* renamed from: d */
    private final C2976a f18099d;

    /* renamed from: e */
    private ViewGroup$OnHierarchyChangeListenerC2977b f18100e;

    /* renamed from: f */
    private int f18101f;

    /* renamed from: g */
    private boolean f18102g;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams() {
            super(-2, -2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$a.class */
    private final class C2976a implements CompoundButton.OnCheckedChangeListener {
        private C2976a() {
        }

        /* synthetic */ C2976a(ChipGroup chipGroup, byte b) {
            this();
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!ChipGroup.this.f18102g) {
                int id = compoundButton.getId();
                if (z) {
                    if (!(ChipGroup.this.f18101f == -1 || ChipGroup.this.f18101f == id || !ChipGroup.this.f18098c)) {
                        ChipGroup chipGroup = ChipGroup.this;
                        chipGroup.m1290a(chipGroup.f18101f, false);
                    }
                    ChipGroup.this.f18101f = id;
                } else if (ChipGroup.this.f18101f == id) {
                    ChipGroup.this.f18101f = -1;
                }
            }
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipGroup$b.class */
    private final class ViewGroup$OnHierarchyChangeListenerC2977b implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: b */
        private ViewGroup.OnHierarchyChangeListener f18105b;

        private ViewGroup$OnHierarchyChangeListenerC2977b() {
        }

        /* synthetic */ ViewGroup$OnHierarchyChangeListenerC2977b(ChipGroup chipGroup, byte b) {
            this();
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(Build.VERSION.SDK_INT >= 17 ? View.generateViewId() : view2.hashCode());
                }
                ((Chip) view2).m1314a(ChipGroup.this.f18099d);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f18105b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).m1314a((CompoundButton.OnCheckedChangeListener) null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f18105b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17437c);
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18099d = new C2976a(this, (byte) 0);
        this.f18100e = new ViewGroup$OnHierarchyChangeListenerC2977b(this, (byte) 0);
        this.f18101f = -1;
        this.f18102g = false;
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17565aE, i, C2913a.C2923j.f17532o, new int[0]);
        int dimensionPixelOffset = a.getDimensionPixelOffset(C2913a.C2924k.f17567aG, 0);
        int dimensionPixelOffset2 = a.getDimensionPixelOffset(C2913a.C2924k.f17568aH, dimensionPixelOffset);
        if (this.f18096a != dimensionPixelOffset2) {
            this.f18096a = dimensionPixelOffset2;
            m1074b(dimensionPixelOffset2);
            requestLayout();
        }
        int dimensionPixelOffset3 = a.getDimensionPixelOffset(C2913a.C2924k.f17569aI, dimensionPixelOffset);
        if (this.f18097b != dimensionPixelOffset3) {
            this.f18097b = dimensionPixelOffset3;
            m1077a(dimensionPixelOffset3);
            requestLayout();
        }
        m1075a(a.getBoolean(C2913a.C2924k.f17570aJ, false));
        boolean z = a.getBoolean(C2913a.C2924k.f17571aK, false);
        if (this.f18098c != z) {
            this.f18098c = z;
            this.f18102g = true;
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (childAt instanceof Chip) {
                    ((Chip) childAt).setChecked(false);
                }
            }
            this.f18102g = false;
            this.f18101f = -1;
        }
        int resourceId = a.getResourceId(C2913a.C2924k.f17566aF, -1);
        if (resourceId != -1) {
            this.f18101f = resourceId;
        }
        a.recycle();
        super.setOnHierarchyChangeListener(this.f18100e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1290a(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.f18102g = true;
            ((Chip) findViewById).setChecked(z);
            this.f18102g = false;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.f18101f;
                if (i2 != -1 && this.f18098c) {
                    m1290a(i2, false);
                }
                this.f18101f = chip.getId();
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f18101f;
        if (i != -1) {
            m1290a(i, true);
            this.f18101f = this.f18101f;
        }
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f18100e.f18105b = onHierarchyChangeListener;
    }
}
