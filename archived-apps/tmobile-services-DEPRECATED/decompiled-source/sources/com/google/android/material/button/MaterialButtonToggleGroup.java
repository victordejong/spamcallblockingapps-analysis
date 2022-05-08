package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1027R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup.class */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: p */
    private static final String f10310p = MaterialButtonToggleGroup.class.getSimpleName();

    /* renamed from: q */
    private static final int f10311q = C1027R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* renamed from: f */
    private final List<CornerData> f10312f;

    /* renamed from: g */
    private final CheckedStateTracker f10313g;

    /* renamed from: h */
    private final PressedStateTracker f10314h;

    /* renamed from: i */
    private final LinkedHashSet<OnButtonCheckedListener> f10315i;

    /* renamed from: j */
    private final Comparator<MaterialButton> f10316j;

    /* renamed from: k */
    private Integer[] f10317k;

    /* renamed from: l */
    private boolean f10318l;

    /* renamed from: m */
    private boolean f10319m;

    /* renamed from: n */
    private boolean f10320n;
    @IdRes

    /* renamed from: o */
    private int f10321o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker.class */
    public class CheckedStateTracker implements MaterialButton.OnCheckedChangeListener {
        private CheckedStateTracker() {
        }

        @Override // com.google.android.material.button.MaterialButton.OnCheckedChangeListener
        /* renamed from: a */
        public void mo10296a(@NonNull MaterialButton materialButton, boolean z) {
            if (!MaterialButtonToggleGroup.this.f10318l) {
                if (MaterialButtonToggleGroup.this.f10319m) {
                    MaterialButtonToggleGroup.this.f10321o = z ? materialButton.getId() : -1;
                }
                if (MaterialButtonToggleGroup.this.m10300t(materialButton.getId(), z)) {
                    MaterialButtonToggleGroup.this.m10309k(materialButton.getId(), materialButton.isChecked());
                }
                MaterialButtonToggleGroup.this.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$CornerData.class */
    public static class CornerData {

        /* renamed from: e */
        private static final CornerSize f10325e = new AbsoluteCornerSize(0.0f);

        /* renamed from: a */
        CornerSize f10326a;

        /* renamed from: b */
        CornerSize f10327b;

        /* renamed from: c */
        CornerSize f10328c;

        /* renamed from: d */
        CornerSize f10329d;

        CornerData(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
            this.f10326a = cornerSize;
            this.f10327b = cornerSize3;
            this.f10328c = cornerSize4;
            this.f10329d = cornerSize2;
        }

        /* renamed from: a */
        public static CornerData m10295a(CornerData cornerData) {
            CornerSize cornerSize = f10325e;
            return new CornerData(cornerSize, cornerData.f10329d, cornerSize, cornerData.f10328c);
        }

        /* renamed from: b */
        public static CornerData m10294b(CornerData cornerData, View view) {
            return ViewUtils.m9428h(view) ? m10293c(cornerData) : m10292d(cornerData);
        }

        /* renamed from: c */
        public static CornerData m10293c(CornerData cornerData) {
            CornerSize cornerSize = cornerData.f10326a;
            CornerSize cornerSize2 = cornerData.f10329d;
            CornerSize cornerSize3 = f10325e;
            return new CornerData(cornerSize, cornerSize2, cornerSize3, cornerSize3);
        }

        /* renamed from: d */
        public static CornerData m10292d(CornerData cornerData) {
            CornerSize cornerSize = f10325e;
            return new CornerData(cornerSize, cornerSize, cornerData.f10327b, cornerData.f10328c);
        }

        /* renamed from: e */
        public static CornerData m10291e(CornerData cornerData, View view) {
            return ViewUtils.m9428h(view) ? m10292d(cornerData) : m10293c(cornerData);
        }

        /* renamed from: f */
        public static CornerData m10290f(CornerData cornerData) {
            CornerSize cornerSize = cornerData.f10326a;
            CornerSize cornerSize2 = f10325e;
            return new CornerData(cornerSize, cornerSize2, cornerData.f10327b, cornerSize2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener.class */
    public interface OnButtonCheckedListener {
        /* renamed from: a */
        void m10289a(MaterialButtonToggleGroup materialButtonToggleGroup, @IdRes int i, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker.class */
    public class PressedStateTracker implements MaterialButton.OnPressedChangeListener {
        private PressedStateTracker() {
        }

        @Override // com.google.android.material.button.MaterialButton.OnPressedChangeListener
        /* renamed from: a */
        public void mo10288a(@NonNull MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.materialButtonToggleGroupStyle);
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10311q), attributeSet, i);
        this.f10312f = new ArrayList();
        this.f10313g = new CheckedStateTracker();
        this.f10314h = new PressedStateTracker();
        this.f10315i = new LinkedHashSet<>();
        this.f10316j = new Comparator<MaterialButton>() { // from class: com.google.android.material.button.MaterialButtonToggleGroup.1
            /* renamed from: a */
            public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
                int compareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
                if (compareTo != 0) {
                    return compareTo;
                }
                int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                return compareTo2 != 0 ? compareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
            }
        };
        this.f10318l = false;
        TypedArray h = ThemeEnforcement.m9445h(getContext(), attributeSet, C1027R.styleable.MaterialButtonToggleGroup, i, f10311q, new int[0]);
        setSingleSelection(h.getBoolean(C1027R.styleable.MaterialButtonToggleGroup_singleSelection, false));
        this.f10321o = h.getResourceId(C1027R.styleable.MaterialButtonToggleGroup_checkedButton, -1);
        this.f10320n = h.getBoolean(C1027R.styleable.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        h.recycle();
        ViewCompat.m19163x0(this, 1);
    }

    /* renamed from: g */
    private void m10313g() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex != -1) {
            for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
                MaterialButton l = m10308l(i);
                int min = Math.min(l.getStrokeWidth(), m10308l(i - 1).getStrokeWidth());
                LinearLayout.LayoutParams h = m10312h(l);
                if (getOrientation() == 0) {
                    MarginLayoutParamsCompat.m19292d(h, 0);
                    MarginLayoutParamsCompat.m19291e(h, -min);
                } else {
                    h.bottomMargin = 0;
                    h.topMargin = -min;
                }
                l.setLayoutParams(h);
            }
            m10303q(firstVisibleChildIndex);
        }
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m10305o(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m10305o(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            i = i;
            if (getChildAt(i2) instanceof MaterialButton) {
                i = i;
                if (m10305o(i2)) {
                    i++;
                }
            }
        }
        return i;
    }

    @NonNull
    /* renamed from: h */
    private LinearLayout.LayoutParams m10312h(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    /* renamed from: i */
    private void m10311i(int i) {
        m10302r(i, true);
        m10300t(i, true);
        setCheckedId(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m10309k(@IdRes int i, boolean z) {
        Iterator<OnButtonCheckedListener> it = this.f10315i.iterator();
        while (it.hasNext()) {
            it.next().m10289a(this, i, z);
        }
    }

    /* renamed from: l */
    private MaterialButton m10308l(int i) {
        return (MaterialButton) getChildAt(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public int m10307m(@Nullable View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) == view) {
                return i;
            }
            i = i;
            if (getChildAt(i2) instanceof MaterialButton) {
                i = i;
                if (m10305o(i2)) {
                    i++;
                }
            }
        }
        return -1;
    }

    @Nullable
    /* renamed from: n */
    private CornerData m10306n(int i, int i2, int i3) {
        CornerData cornerData = this.f10312f.get(i);
        if (i2 == i3) {
            return cornerData;
        }
        boolean z = getOrientation() == 0;
        if (i == i2) {
            return z ? CornerData.m10291e(cornerData, this) : CornerData.m10290f(cornerData);
        } else if (i != i3) {
            return null;
        } else {
            return z ? CornerData.m10294b(cornerData, this) : CornerData.m10295a(cornerData);
        }
    }

    /* renamed from: o */
    private boolean m10305o(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    /* renamed from: q */
    private void m10303q(int i) {
        if (getChildCount() != 0 && i != -1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m10308l(i).getLayoutParams();
            if (getOrientation() == 1) {
                layoutParams.topMargin = 0;
                layoutParams.bottomMargin = 0;
                return;
            }
            MarginLayoutParamsCompat.m19292d(layoutParams, 0);
            MarginLayoutParamsCompat.m19291e(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    /* renamed from: r */
    private void m10302r(@IdRes int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof MaterialButton) {
            this.f10318l = true;
            ((MaterialButton) findViewById).setChecked(z);
            this.f10318l = false;
        }
    }

    /* renamed from: s */
    private static void m10301s(ShapeAppearanceModel.Builder builder, @Nullable CornerData cornerData) {
        if (cornerData == null) {
            builder.m9230o(0.0f);
            return;
        }
        builder.m9249E(cornerData.f10326a);
        builder.m9223v(cornerData.f10329d);
        builder.m9245I(cornerData.f10327b);
        builder.m9219z(cornerData.f10328c);
    }

    private void setCheckedId(int i) {
        this.f10321o = i;
        m10309k(i, true);
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.m19190k());
        }
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.m10361a(this.f10313g);
        materialButton.setOnPressedChangeListenerInternal(this.f10314h);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public boolean m10300t(int i, boolean z) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.f10320n && checkedButtonIds.isEmpty()) {
            m10302r(i, true);
            this.f10321o = i;
            return false;
        } else if (!z || !this.f10319m) {
            return true;
        } else {
            checkedButtonIds.remove(Integer.valueOf(i));
            for (Integer num : checkedButtonIds) {
                int intValue = num.intValue();
                m10302r(intValue, false);
                m10309k(intValue, false);
            }
            return true;
        }
    }

    /* renamed from: u */
    private void m10299u() {
        TreeMap treeMap = new TreeMap(this.f10316j);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m10308l(i), Integer.valueOf(i));
        }
        this.f10317k = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(f10310p, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        if (materialButton.isChecked()) {
            m10300t(materialButton.getId(), true);
            setCheckedId(materialButton.getId());
        }
        ShapeAppearanceModel shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f10312f.add(new CornerData(shapeAppearanceModel.m9260r(), shapeAppearanceModel.m9268j(), shapeAppearanceModel.m9258t(), shapeAppearanceModel.m9266l()));
        ViewCompat.m19183n0(materialButton, new AccessibilityDelegateCompat() { // from class: com.google.android.material.button.MaterialButtonToggleGroup.2
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view2, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.m19020f0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.m18973a(0, 1, MaterialButtonToggleGroup.this.m10307m(view2), 1, false, ((MaterialButton) view2).isChecked()));
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NonNull Canvas canvas) {
        m10299u();
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    @IdRes
    public int getCheckedButtonId() {
        return this.f10319m ? this.f10321o : -1;
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton l = m10308l(i);
            if (l.isChecked()) {
                arrayList.add(Integer.valueOf(l.getId()));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f10317k;
        if (numArr != null && i2 < numArr.length) {
            return numArr[i2].intValue();
        }
        Log.w(f10310p, "Child order wasn't updated");
        return i2;
    }

    /* renamed from: j */
    public void m10310j() {
        this.f10318l = true;
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton l = m10308l(i);
            l.setChecked(false);
            m10309k(l.getId(), false);
        }
        this.f10318l = false;
        setCheckedId(-1);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f10321o;
        if (i != -1) {
            m10311i(i);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo).m19022e0(AccessibilityNodeInfoCompat.CollectionInfoCompat.m18974b(1, getVisibleButtonCount(), false, m10304p() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m10298v();
        m10313g();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.m10357e(this.f10313g);
            materialButton.setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f10312f.remove(indexOfChild);
        }
        m10298v();
        m10313g();
    }

    /* renamed from: p */
    public boolean m10304p() {
        return this.f10319m;
    }

    public void setSelectionRequired(boolean z) {
        this.f10320n = z;
    }

    public void setSingleSelection(@BoolRes int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f10319m != z) {
            this.f10319m = z;
            m10310j();
        }
    }

    @VisibleForTesting
    /* renamed from: v */
    void m10298v() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i = 0; i < childCount; i++) {
            MaterialButton l = m10308l(i);
            if (l.getVisibility() != 8) {
                ShapeAppearanceModel.Builder v = l.getShapeAppearanceModel().m9256v();
                m10301s(v, m10306n(i, firstVisibleChildIndex, lastVisibleChildIndex));
                l.setShapeAppearanceModel(v.m9232m());
            }
        }
    }
}
