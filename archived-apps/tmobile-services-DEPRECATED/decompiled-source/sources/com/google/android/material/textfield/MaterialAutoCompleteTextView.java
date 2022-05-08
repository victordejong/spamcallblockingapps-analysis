package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.material.C1027R;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/MaterialAutoCompleteTextView.class */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {
    @NonNull

    /* renamed from: i */
    private final ListPopupWindow f11496i;
    @Nullable

    /* renamed from: j */
    private final AccessibilityManager f11497j;
    @NonNull

    /* renamed from: k */
    private final Rect f11498k;

    public MaterialAutoCompleteTextView(@NonNull Context context) {
        this(context, null);
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.autoCompleteTextViewStyle);
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, 0), attributeSet, i);
        this.f11498k = new Rect();
        Context context2 = getContext();
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.MaterialAutoCompleteTextView, i, C1027R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (h.hasValue(C1027R.styleable.MaterialAutoCompleteTextView_android_inputType) && h.getInt(C1027R.styleable.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f11497j = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f11496i = listPopupWindow;
        listPopupWindow.m21448J(true);
        this.f11496i.m21454D(this);
        this.f11496i.m21449I(2);
        this.f11496i.mo21431p(getAdapter());
        this.f11496i.m21446L(new AdapterView.OnItemClickListener() { // from class: com.google.android.material.textfield.MaterialAutoCompleteTextView.1
            /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
                if (r10 < 0) goto L_0x003f;
             */
            @Override // android.widget.AdapterView.OnItemClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onItemClick(android.widget.AdapterView<?> r8, android.view.View r9, int r10, long r11) {
                /*
                    r7 = this;
                    r0 = r10
                    if (r0 >= 0) goto L_0x0012
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m8803a(r0)
                    java.lang.Object r0 = r0.m21426v()
                    r8 = r0
                    goto L_0x0020
                L_0x0012:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    android.widget.ListAdapter r0 = r0.getAdapter()
                    r1 = r10
                    java.lang.Object r0 = r0.getItem(r1)
                    r8 = r0
                L_0x0020:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    r1 = r8
                    com.google.android.material.textfield.MaterialAutoCompleteTextView.m8802b(r0, r1)
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    android.widget.AdapterView$OnItemClickListener r0 = r0.getOnItemClickListener()
                    r8 = r0
                    r0 = r8
                    if (r0 == 0) goto L_0x0077
                    r0 = r9
                    if (r0 == 0) goto L_0x003f
                    r0 = r10
                    r13 = r0
                    r0 = r10
                    if (r0 >= 0) goto L_0x0062
                L_0x003f:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m8803a(r0)
                    android.view.View r0 = r0.m21423y()
                    r9 = r0
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m8803a(r0)
                    int r0 = r0.m21424x()
                    r13 = r0
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m8803a(r0)
                    long r0 = r0.m21425w()
                    r11 = r0
                L_0x0062:
                    r0 = r8
                    r1 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r1 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r1 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m8803a(r1)
                    android.widget.ListView r1 = r1.mo21434k()
                    r2 = r9
                    r3 = r13
                    r4 = r11
                    r0.onItemClick(r1, r2, r3, r4)
                L_0x0077:
                    r0 = r7
                    com.google.android.material.textfield.MaterialAutoCompleteTextView r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.this
                    androidx.appcompat.widget.ListPopupWindow r0 = com.google.android.material.textfield.MaterialAutoCompleteTextView.m8803a(r0)
                    r0.dismiss()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.MaterialAutoCompleteTextView.C12001.onItemClick(android.widget.AdapterView, android.view.View, int, long):void");
            }
        });
        h.recycle();
    }

    @Nullable
    /* renamed from: c */
    private TextInputLayout m8801c() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    /* renamed from: d */
    private int m8800d() {
        ListAdapter adapter = getAdapter();
        TextInputLayout c = m8801c();
        int i = 0;
        if (adapter == null || c == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int min = Math.min(adapter.getCount(), Math.max(0, this.f11496i.m21424x()) + 15);
        View view = null;
        int i2 = 0;
        for (int max = Math.max(0, min - 15); max < min; max++) {
            int itemViewType = adapter.getItemViewType(max);
            i = i;
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = adapter.getView(max, view, c);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        Drawable i3 = this.f11496i.m21435i();
        int i4 = i2;
        if (i3 != null) {
            i3.getPadding(this.f11498k);
            Rect rect = this.f11498k;
            i4 = i2 + rect.left + rect.right;
        }
        return i4 + c.getEndIconView().getMeasuredWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public <T extends ListAdapter & Filterable> void m8799e(Object obj) {
        if (Build.VERSION.SDK_INT >= 17) {
            setText(convertSelectionToString(obj), false);
            return;
        }
        ListAdapter adapter = getAdapter();
        setAdapter(null);
        setText(convertSelectionToString(obj));
        setAdapter(adapter);
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout c = m8801c();
        return (c == null || !c.m8779N()) ? super.getHint() : c.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout c = m8801c();
        if (c != null && c.m8779N() && super.getHint() == null && ManufacturerUtils.m9545c()) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m8800d()), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t) {
        super.setAdapter(t);
        this.f11496i.mo21431p(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager;
        if (getInputType() != 0 || (accessibilityManager = this.f11497j) == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f11496i.mo21439b();
        }
    }
}
