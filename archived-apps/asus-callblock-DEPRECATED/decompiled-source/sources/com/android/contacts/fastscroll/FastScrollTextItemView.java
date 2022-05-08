package com.android.contacts.fastscroll;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/fastscroll/FastScrollTextItemView.class */
public class FastScrollTextItemView extends ViewGroup implements View.OnClickListener {

    /* renamed from: b  reason: collision with root package name */
    public static int f1303b;

    /* renamed from: a  reason: collision with root package name */
    protected final Context f1304a;
    private Drawable f;
    private PopupWindow k;
    private boolean l;
    private final String c = "FastScrollTextItemView";
    private Drawable d = null;
    private Drawable e = null;
    private TextView g = null;
    private int h = 0;
    private ListView i = null;
    private int j = 0;
    private boolean m = false;

    public FastScrollTextItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = null;
        this.l = false;
        this.f1304a = context;
        f1303b = this.f1304a.getResources().getDimensionPixelOffset(2131099707);
        this.f = this.f1304a.getResources().getDrawable(2131165457);
        if (this.f != null) {
            this.f.setCallback(this);
        }
        setOnClickListener(this);
        this.l = PhoneCapabilityTester.isUsingTwoPanes(context);
    }

    public final void a() {
        requestLayout();
        invalidate();
    }

    public final void a(CharSequence charSequence) {
        if (this.g == null) {
            this.g = new TextView(this.f1304a);
            this.g.setSingleLine(true);
            this.g.setTextColor(-1);
            this.g.setTypeface(this.g.getTypeface(), 0);
            this.g.setTextSize(0, this.f1304a.getResources().getDimensionPixelOffset(2131099709));
            this.g.setGravity(17);
            this.g.setVisibility(0);
            addView(this.g);
        }
        this.g.setText(charSequence);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.f != null) {
            this.f.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f != null) {
            this.f.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.f != null) {
            this.f.jumpToCurrentState();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Log.i("FastScrollTextItemView", "clicked mListOffsetPosition:" + this.j);
        if (this.k != null) {
            this.k.dismiss();
        }
        if (this.i != null) {
            this.i.setSelectionFromTop(this.j, this.f1304a.getResources().getDimensionPixelSize(2131099774));
            if (this.l && !this.m) {
                this.i.getOnItemClickListener().onItemClick(null, null, this.j, 0L);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i4 - i2;
        int i6 = i3 - i;
        if (this.f != null) {
            this.f.setBounds(0, 0, i6, i5);
        }
        this.g.layout(0, 0, i6, i5);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.g.measure(View.MeasureSpec.makeMeasureSpec(f1303b, 1073741824), View.MeasureSpec.makeMeasureSpec(f1303b, 1073741824));
        setMeasuredDimension(f1303b, f1303b);
    }

    public void setListViewAndPosition(ListView listView, int i) {
        this.i = listView;
        this.j = i;
    }

    public void setPopupHandle(PopupWindow popupWindow) {
        this.k = popupWindow;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.f || super.verifyDrawable(drawable);
    }
}
