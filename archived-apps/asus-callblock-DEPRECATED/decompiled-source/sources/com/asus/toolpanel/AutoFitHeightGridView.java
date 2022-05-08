package com.asus.toolpanel;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.GridView;
/* loaded from: classes-dex2jar.jar:com/asus/toolpanel/AutoFitHeightGridView.class */
public class AutoFitHeightGridView extends GridView {

    /* renamed from: a  reason: collision with root package name */
    private int f3106a;

    /* renamed from: b  reason: collision with root package name */
    private int f3107b;
    private int c = 1;

    public AutoFitHeightGridView(Context context) {
        super(context);
    }

    public AutoFitHeightGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public AutoFitHeightGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
    }

    private void a() {
        this.c = getContext().getResources().getInteger(2131361828);
    }

    private void a(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        if (attributeCount > 0) {
            int i = 0;
            while (true) {
                if (i < attributeCount) {
                    String attributeName = attributeSet.getAttributeName(i);
                    if (attributeName != null && attributeName.equals("numColumns")) {
                        this.f3106a = attributeSet.getAttributeResourceValue(i, 1);
                        a();
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
        }
        Log.d("AutoGridView", "numColumns set to: " + this.c);
    }

    private void b() {
        if (getAdapter() != null) {
            int i = 0;
            while (i < getChildCount()) {
                int i2 = 0;
                for (int i3 = i; i3 < this.c + i; i3++) {
                    View childAt = getChildAt(i3);
                    i2 = i2;
                    if (childAt != null) {
                        i2 = i2;
                        if (childAt.getHeight() > i2) {
                            i2 = childAt.getHeight();
                        }
                    }
                }
                if (i2 > 0) {
                    for (int i4 = i; i4 < this.c + i; i4++) {
                        View childAt2 = getChildAt(i4);
                        if (!(childAt2 == null || childAt2.getHeight() == i2)) {
                            childAt2.setMinimumHeight(i2);
                        }
                    }
                }
                i += this.c;
            }
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        a();
        setNumColumns(this.c);
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        b();
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (this.f3107b != firstVisiblePosition) {
            this.f3107b = firstVisiblePosition;
            b();
        }
        super.onScrollChanged(i, i2, i3, i4);
    }

    @Override // android.widget.GridView
    public void setNumColumns(int i) {
        this.c = i;
        super.setNumColumns(i);
        Log.d("AutoGridView", "setSelection --> " + this.f3107b);
        setSelection(this.f3107b);
    }
}
