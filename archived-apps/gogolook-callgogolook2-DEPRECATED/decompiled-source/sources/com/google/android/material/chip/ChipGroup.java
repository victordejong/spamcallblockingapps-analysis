package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.FlowLayout;
import p081h.p203i.p204a.p294f.p308n.C9245k;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup.class */
public class ChipGroup extends FlowLayout {
    @Dimension

    /* renamed from: d */
    public int f7451d;
    @Dimension

    /* renamed from: e */
    public int f7452e;

    /* renamed from: f */
    public boolean f7453f;
    @Nullable

    /* renamed from: g */
    public AbstractC3625c f7454g;

    /* renamed from: h */
    public final C3624b f7455h;

    /* renamed from: i */
    public ViewGroup$OnHierarchyChangeListenerC3626d f7456i;
    @IdRes

    /* renamed from: j */
    public int f7457j;

    /* renamed from: k */
    public boolean f7458k;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup$b.class */
    public class C3624b implements CompoundButton.OnCheckedChangeListener {
        public C3624b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!ChipGroup.this.f7458k) {
                int id = compoundButton.getId();
                if (z) {
                    if (!(ChipGroup.this.f7457j == -1 || ChipGroup.this.f7457j == id || !ChipGroup.this.f7453f)) {
                        ChipGroup chipGroup = ChipGroup.this;
                        chipGroup.m31391a(chipGroup.f7457j, false);
                    }
                    ChipGroup.this.m31384c(id);
                } else if (ChipGroup.this.f7457j == id) {
                    ChipGroup.this.m31384c(-1);
                }
            }
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup$c.class */
    public interface AbstractC3625c {
        /* renamed from: a */
        void m31379a(ChipGroup chipGroup, @IdRes int i);
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/chip/ChipGroup$d.class */
    public class ViewGroup$OnHierarchyChangeListenerC3626d implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: a */
        public ViewGroup.OnHierarchyChangeListener f7460a;

        public ViewGroup$OnHierarchyChangeListenerC3626d() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(Build.VERSION.SDK_INT >= 17 ? View.generateViewId() : view2.hashCode());
                }
                ((Chip) view2).m31418a(ChipGroup.this.f7455h);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f7460a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).m31418a((CompoundButton.OnCheckedChangeListener) null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f7460a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.chipGroupStyle);
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7455h = new C3624b();
        this.f7456i = new ViewGroup$OnHierarchyChangeListenerC3626d();
        this.f7457j = -1;
        this.f7458k = false;
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.ChipGroup, i, R$style.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = c.getDimensionPixelOffset(R$styleable.ChipGroup_chipSpacing, 0);
        m31382d(c.getDimensionPixelOffset(R$styleable.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        m31380e(c.getDimensionPixelOffset(R$styleable.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        m31339a(c.getBoolean(R$styleable.ChipGroup_singleLine, false));
        m31385b(c.getBoolean(R$styleable.ChipGroup_singleSelection, false));
        int resourceId = c.getResourceId(R$styleable.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.f7457j = resourceId;
        }
        c.recycle();
        super.setOnHierarchyChangeListener(this.f7456i);
    }

    /* renamed from: a */
    public final void m31391a(@IdRes int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.f7458k = true;
            ((Chip) findViewById).setChecked(z);
            this.f7458k = false;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.f7457j;
                if (i2 != -1 && this.f7453f) {
                    m31391a(i2, false);
                }
                m31384c(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
    }

    /* renamed from: b */
    public void m31387b() {
        this.f7458k = true;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.f7458k = false;
        m31384c(-1);
    }

    /* renamed from: b */
    public void m31385b(boolean z) {
        if (this.f7453f != z) {
            this.f7453f = z;
            m31387b();
        }
    }

    /* renamed from: c */
    public final void m31384c(int i) {
        this.f7457j = i;
        AbstractC3625c cVar = this.f7454g;
        if (cVar != null && this.f7453f) {
            cVar.m31379a(this, i);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    /* renamed from: d */
    public void m31382d(@Dimension int i) {
        if (this.f7451d != i) {
            this.f7451d = i;
            m31342a(i);
            requestLayout();
        }
    }

    /* renamed from: e */
    public void m31380e(@Dimension int i) {
        if (this.f7452e != i) {
            this.f7452e = i;
            m31338b(i);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f7457j;
        if (i != -1) {
            m31391a(i, true);
            m31384c(this.f7457j);
        }
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f7456i.f7460a = onHierarchyChangeListener;
    }
}
