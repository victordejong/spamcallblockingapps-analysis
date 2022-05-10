package com.netqin.p525cm.antiharass.p527ui.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import p131c.p431l.p477b.C6870a;
/* renamed from: com.netqin.cm.antiharass.ui.views.QuickSearchBar */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/views/QuickSearchBar.class */
public class QuickSearchBar extends ImageView {

    /* renamed from: a */
    public char f35597a;

    /* renamed from: b */
    public char[] f35598b;

    /* renamed from: c */
    public int f35599c;

    /* renamed from: d */
    public int f35600d;

    /* renamed from: e */
    public float f35601e;

    /* renamed from: f */
    public float f35602f;

    /* renamed from: g */
    public float[] f35603g;

    /* renamed from: h */
    public boolean f35604h;

    /* renamed from: i */
    public Paint f35605i;

    /* renamed from: j */
    public Drawable f35606j;

    /* renamed from: k */
    public AbstractC9143a f35607k;

    /* renamed from: com.netqin.cm.antiharass.ui.views.QuickSearchBar$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/views/QuickSearchBar$a.class */
    public interface AbstractC9143a {
        /* renamed from: a */
        void m3343a(char c, int i);
    }

    public QuickSearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QuickSearchBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f35597a = (char) 35;
        this.f35604h = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C6870a.QuickSearchBar, i, 0);
        String string = obtainStyledAttributes.getString(2);
        char[] charArray = string == null ? new char[0] : string.toCharArray();
        this.f35598b = charArray;
        this.f35603g = new float[charArray.length];
        this.f35599c = obtainStyledAttributes.getColor(1, -16776961);
        this.f35600d = obtainStyledAttributes.getDimensionPixelSize(0, 5);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.f35605i = paint;
        paint.setColor(this.f35599c);
        this.f35605i.setTextSize(this.f35600d);
        this.f35605i.setTypeface(Typeface.DEFAULT_BOLD);
        this.f35605i.setFlags(1);
        Paint.FontMetrics fontMetrics = this.f35605i.getFontMetrics();
        this.f35601e = fontMetrics.bottom - fontMetrics.top;
        int length = this.f35598b.length;
        for (int i2 = 0; i2 < length; i2++) {
            float measureText = this.f35605i.measureText(this.f35598b, i2, 1);
            if (measureText > this.f35602f) {
                this.f35602f = measureText;
            }
        }
        this.f35606j = context.getResources().getDrawable(2131165517);
    }

    /* renamed from: a */
    public final int m3345a(float f) {
        int i = 0;
        while (true) {
            float[] fArr = this.f35603g;
            if (i >= fArr.length) {
                i = -1;
                break;
            }
            if (f > (i == 0 ? fArr[0] - this.f35601e : fArr[i - 1]) && f <= this.f35603g[i]) {
                break;
            }
            i++;
        }
        return i;
    }

    /* renamed from: b */
    public final void m3344b(float f) {
        AbstractC9143a aVar;
        int a = m3345a(f);
        if (a >= 0) {
            char[] cArr = this.f35598b;
            if (a < cArr.length && (aVar = this.f35607k) != null) {
                char c = cArr[a];
                this.f35597a = c;
                aVar.m3343a(c, a);
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        float bottom = ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - 6) / this.f35598b.length;
        this.f35601e = bottom;
        this.f35605i.setTextSize(bottom - 2.0f);
        float paddingTop = (getPaddingTop() + this.f35601e) - this.f35605i.getFontMetrics().leading;
        for (int i = 0; i < this.f35598b.length && paddingTop <= getHeight() - getPaddingBottom(); i++) {
            float measureText = this.f35605i.measureText(this.f35598b, i, 1);
            float paddingLeft = getPaddingLeft() + (((this.f35602f - measureText) + 8.0f) / 2.0f);
            this.f35603g[i] = paddingTop;
            if (this.f35604h && this.f35598b[i] == this.f35597a) {
                Bitmap bitmap = ((BitmapDrawable) getContext().getResources().getDrawable(2131165518)).getBitmap();
                float width2 = ((measureText / 2.0f) + paddingLeft) - (bitmap.getWidth() / 2.0f);
                float height = (paddingTop - (this.f35601e / 2.0f)) - (bitmap.getHeight() / 2.0f);
                if (width > 45) {
                    canvas.drawBitmap(bitmap, width2 + 20.0f, height + 9.0f, (Paint) null);
                } else if (width <= 45 && width > 36) {
                    canvas.drawBitmap(bitmap, width2 + 29.0f, height + 9.0f, (Paint) null);
                } else if (width > 36 || width <= 25) {
                    canvas.drawBitmap(bitmap, width2 + 5.0f, height + 2.0f, (Paint) null);
                } else {
                    canvas.drawBitmap(bitmap, width2 + 11.0f, height + 5.0f, (Paint) null);
                }
                this.f35605i.setColor(-1);
                if (width > 45) {
                    canvas.drawText(this.f35598b, i, 1, paddingLeft + 22.0f, paddingTop, this.f35605i);
                } else if (width <= 45 && width > 36) {
                    canvas.drawText(this.f35598b, i, 1, paddingLeft + 30.0f, paddingTop, this.f35605i);
                } else if (width > 36 || width <= 25) {
                    canvas.drawText(this.f35598b, i, 1, paddingLeft + 6.0f, paddingTop, this.f35605i);
                } else {
                    canvas.drawText(this.f35598b, i, 1, paddingLeft + 12.0f, paddingTop, this.f35605i);
                }
                this.f35605i.setColor(this.f35599c);
            } else if (width > 45) {
                canvas.drawText(this.f35598b, i, 1, paddingLeft + 20.0f, paddingTop, this.f35605i);
            } else if (width <= 45 && width > 36) {
                canvas.drawText(this.f35598b, i, 1, paddingLeft + 30.0f, paddingTop, this.f35605i);
            } else if (width > 36 || width <= 25) {
                canvas.drawText(this.f35598b, i, 1, paddingLeft + 6.0f, paddingTop, this.f35605i);
            } else {
                canvas.drawText(this.f35598b, i, 1, paddingLeft + 12.0f, paddingTop, this.f35605i);
            }
            paddingTop += this.f35601e;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    this.f35604h = true;
                    m3344b(motionEvent.getY());
                } else if (action != 3) {
                    return true;
                }
            }
            this.f35604h = false;
            setImageDrawable(null);
        } else {
            this.f35604h = true;
            setImageDrawable(this.f35606j);
        }
        m3344b(motionEvent.getY());
        invalidate();
        return true;
    }

    public void setOnClickListener(AbstractC9143a aVar) {
        this.f35607k = aVar;
    }
}
