package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import f.f.b.k.e;
import f.f.b.k.h;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b.class */
public abstract class AbstractC0156b extends View {

    /* renamed from: f */
    protected int[] f781f;

    /* renamed from: g */
    protected int f782g;

    /* renamed from: h */
    protected Context f783h;

    /* renamed from: i */
    protected h f784i;

    /* renamed from: j */
    protected boolean f785j;

    /* renamed from: k */
    protected String f786k;

    /* renamed from: l */
    protected String f787l;

    /* renamed from: m */
    private HashMap<Integer, String> f788m;

    public AbstractC0156b(Context context) {
        super(context);
        this.f781f = new int[32];
        this.f785j = false;
        this.f788m = new HashMap<>();
        this.f783h = context;
        m6281h(null);
    }

    public AbstractC0156b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f781f = new int[32];
        this.f785j = false;
        this.f788m = new HashMap<>();
        this.f783h = context;
        m6281h(attributeSet);
    }

    /* renamed from: a */
    private void m6288a(String str) {
        if (str == null || str.length() == 0 || this.f783h == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
            ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        }
        int m6282g = m6282g(trim);
        if (m6282g != 0) {
            this.f788m.put(Integer.valueOf(m6282g), trim);
            m6287b(m6282g);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
    }

    /* renamed from: b */
    private void m6287b(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f782g;
        int[] iArr = this.f781f;
        if (i2 + 1 > iArr.length) {
            this.f781f = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f781f;
        int i3 = this.f782g;
        iArr2[i3] = i;
        this.f782g = i3 + 1;
    }

    /* renamed from: c */
    private void m6286c(String str) {
        if (str == null || str.length() == 0 || this.f783h == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = null;
        if (getParent() instanceof ConstraintLayout) {
            constraintLayout = (ConstraintLayout) getParent();
        }
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.C0151b) && trim.equals(((ConstraintLayout.C0151b) layoutParams).f726U)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    m6287b(childAt.getId());
                }
            }
        }
    }

    /* renamed from: f */
    private int m6283f(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f783h.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            if (childAt.getId() != -1) {
                String str2 = null;
                try {
                    str2 = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException e) {
                }
                if (str.equals(str2)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    /* renamed from: g */
    private int m6282g(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i = 0;
        if (isInEditMode()) {
            i = 0;
            if (constraintLayout != null) {
                Object m6307g = constraintLayout.m6307g(0, str);
                i = 0;
                if (m6307g instanceof Integer) {
                    i = ((Integer) m6307g).intValue();
                }
            }
        }
        int i2 = i;
        if (i == 0) {
            i2 = i;
            if (constraintLayout != null) {
                i2 = m6283f(constraintLayout, str);
            }
        }
        int i3 = i2;
        if (i2 == 0) {
            try {
                i3 = C0169h.class.getField(str).getInt(null);
            } catch (Exception e) {
                i3 = i2;
            }
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = this.f783h.getResources().getIdentifier(str, "id", this.f783h.getPackageName());
        }
        return i4;
    }

    /* renamed from: d */
    protected void m6285d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        m6284e((ConstraintLayout) parent);
    }

    /* renamed from: e */
    protected void m6284e(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.f782g; i++) {
            View m6305i = constraintLayout.m6305i(this.f781f[i]);
            if (m6305i != null) {
                m6305i.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    m6305i.setTranslationZ(m6305i.getTranslationZ() + elevation);
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f781f, this.f782g);
    }

    /* renamed from: h */
    protected void m6281h(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0170i.f952J0);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0170i.f1012V0) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f786k = string;
                    setIds(string);
                } else if (index == C0170i.f1017W0) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f787l = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: i */
    public void m6280i(e eVar, boolean z) {
    }

    /* renamed from: j */
    public void m6279j(ConstraintLayout constraintLayout) {
    }

    /* renamed from: k */
    public void m6278k(ConstraintLayout constraintLayout) {
    }

    /* renamed from: l */
    public void m6277l(ConstraintLayout constraintLayout) {
    }

    /* renamed from: m */
    public void m6276m(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f786k);
        }
        h hVar = this.f784i;
        if (hVar == null) {
            return;
        }
        hVar.b();
        for (int i = 0; i < this.f782g; i++) {
            int i2 = this.f781f[i];
            View m6305i = constraintLayout.m6305i(i2);
            View view = m6305i;
            if (m6305i == null) {
                String str = this.f788m.get(Integer.valueOf(i2));
                int m6283f = m6283f(constraintLayout, str);
                view = m6305i;
                if (m6283f != 0) {
                    this.f781f[i] = m6283f;
                    this.f788m.put(Integer.valueOf(m6283f), str);
                    view = constraintLayout.m6305i(m6283f);
                }
            }
            if (view != null) {
                this.f784i.a(constraintLayout.m6304j(view));
            }
        }
        this.f784i.c(constraintLayout.f688h);
    }

    /* renamed from: n */
    public void m6275n() {
        if (this.f784i == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.C0151b)) {
            return;
        }
        ((ConstraintLayout.C0151b) layoutParams).f757m0 = this.f784i;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f786k;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f787l;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f785j) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    protected void setIds(String str) {
        this.f786k = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f782g = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m6288a(str.substring(i));
                return;
            } else {
                m6288a(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.f787l = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f782g = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m6286c(str.substring(i));
                return;
            } else {
                m6286c(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f786k = null;
        this.f782g = 0;
        for (int i : iArr) {
            m6287b(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f786k == null) {
            m6287b(i);
        }
    }
}
