package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import p012b.p036g.p037a.p038i.C0812h;
import p012b.p036g.p039b.C0824b;
import p012b.p036g.p039b.C0825c;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintHelper.class */
public abstract class ConstraintHelper extends View {

    /* renamed from: a */
    public int[] f950a;

    /* renamed from: b */
    public int f951b;

    /* renamed from: c */
    public Context f952c;

    /* renamed from: d */
    public C0812h f953d;

    /* renamed from: e */
    public boolean f954e;

    /* renamed from: f */
    public String f955f;

    public ConstraintHelper(Context context) {
        super(context);
        this.f950a = new int[32];
        this.f954e = false;
        this.f952c = context;
        mo38702a((AttributeSet) null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f950a = new int[32];
        this.f954e = false;
        this.f952c = context;
        mo38702a(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f950a = new int[32];
        this.f954e = false;
        this.f952c = context;
        mo38702a(attributeSet);
    }

    private void setIds(String str) {
        if (str != null) {
            int i = 0;
            while (true) {
                int indexOf = str.indexOf(44, i);
                if (indexOf == -1) {
                    m38719a(str.substring(i));
                    return;
                } else {
                    m38719a(str.substring(i, indexOf));
                    i = indexOf + 1;
                }
            }
        }
    }

    /* renamed from: a */
    public void m38720a() {
        if (this.f953d != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.LayoutParams) {
                ((ConstraintLayout.LayoutParams) layoutParams).f1019k0 = this.f953d;
            }
        }
    }

    /* renamed from: a */
    public void mo38702a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0825c.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0825c.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f955f = string;
                    setIds(string);
                }
            }
        }
    }

    /* renamed from: a */
    public void mo38701a(ConstraintLayout constraintLayout) {
    }

    /* renamed from: a */
    public final void m38719a(String str) {
        int i;
        if (str != null && this.f952c != null) {
            String trim = str.trim();
            try {
                i = C0824b.class.getField(trim).getInt(null);
            } catch (Exception e) {
                i = 0;
            }
            int i2 = i;
            if (i == 0) {
                i2 = this.f952c.getResources().getIdentifier(trim, "id", this.f952c.getPackageName());
            }
            int i3 = i2;
            if (i2 == 0) {
                i3 = i2;
                if (isInEditMode()) {
                    i3 = i2;
                    if (getParent() instanceof ConstraintLayout) {
                        Object a = ((ConstraintLayout) getParent()).m38714a(0, trim);
                        i3 = i2;
                        if (a != null) {
                            i3 = i2;
                            if (a instanceof Integer) {
                                i3 = ((Integer) a).intValue();
                            }
                        }
                    }
                }
            }
            if (i3 != 0) {
                setTag(i3, null);
                return;
            }
            Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
        }
    }

    /* renamed from: b */
    public void m38718b(ConstraintLayout constraintLayout) {
    }

    /* renamed from: c */
    public void mo38700c(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f955f);
        }
        C0812h hVar = this.f953d;
        if (hVar != null) {
            hVar.m35867K();
            for (int i = 0; i < this.f951b; i++) {
                View b = constraintLayout.m38708b(this.f950a[i]);
                if (b != null) {
                    this.f953d.m35866b(constraintLayout.m38711a(b));
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f950a, this.f951b);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f954e) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f951b = 0;
        for (int i : iArr) {
            setTag(i, null);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        int i2 = this.f951b;
        int[] iArr = this.f950a;
        if (i2 + 1 > iArr.length) {
            this.f950a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f950a;
        int i3 = this.f951b;
        iArr2[i3] = i;
        this.f951b = i3 + 1;
    }
}
