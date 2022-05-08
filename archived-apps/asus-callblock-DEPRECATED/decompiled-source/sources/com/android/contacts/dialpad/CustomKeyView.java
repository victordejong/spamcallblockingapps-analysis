package com.android.contacts.dialpad;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.android.contacts.skin.a;
import com.asus.contacts.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CustomKeyView.class */
public class CustomKeyView extends View {
    private static final String M = CustomKeyView.class.getSimpleName();
    private int A;
    private Drawable B;
    private Paint C;
    private Paint D;
    private Paint E;
    private Paint F;
    private int G;
    private int H;
    private Rect I;
    private Rect J;
    private Rect K;
    private int L;

    /* renamed from: a  reason: collision with root package name */
    private final int f894a;

    /* renamed from: b  reason: collision with root package name */
    private final int f895b;
    private String c;
    private int d;
    private float e;
    private float f;
    private float g;
    private int h;
    private String i;
    private int j;
    private float k;
    private float l;
    private String m;
    private String n;
    private int o;
    private int p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private float v;
    private float w;
    private int x;
    private boolean y;
    private boolean z;

    public CustomKeyView(Context context) {
        super(context);
        this.f894a = 1;
        this.f895b = 2;
        this.y = false;
        this.z = false;
        this.G = 0;
        this.H = 0;
        a();
    }

    /* JADX WARN: Finally extract failed */
    public CustomKeyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f894a = 1;
        this.f895b = 2;
        this.y = false;
        this.z = false;
        this.G = 0;
        this.H = 0;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, c.a.g, 0, 0);
        try {
            this.A = -1;
            this.h = obtainStyledAttributes.getInteger(25, 1);
            this.B = obtainStyledAttributes.getDrawable(0);
            this.c = obtainStyledAttributes.getString(8);
            this.e = obtainStyledAttributes.getDimension(10, 0.0f);
            this.f = obtainStyledAttributes.getDimension(6, 0.0f);
            this.g = obtainStyledAttributes.getDimension(7, 0.0f);
            this.y = obtainStyledAttributes.getBoolean(15, false);
            this.z = obtainStyledAttributes.getBoolean(4, false);
            this.v = obtainStyledAttributes.getDimension(3, 0.0f);
            this.w = obtainStyledAttributes.getDimension(2, 1.0f);
            if (a.b()) {
                this.d = getResources().getColor(2131034138);
                this.x = getResources().getColor(2131034340);
                this.L = getResources().getColor(2131034137);
            } else if (a.c()) {
                this.d = a.a(2);
                this.x = a.a(a.a(2), 0.15f);
                this.L = a.a(2);
            } else {
                this.d = obtainStyledAttributes.getColor(9, -16777216);
                this.x = obtainStyledAttributes.getColor(1, -16777216);
                this.L = obtainStyledAttributes.getColor(5, -16777216);
            }
            switch (this.h) {
                case 1:
                    this.i = obtainStyledAttributes.getString(12);
                    if (a.b()) {
                        this.j = this.L;
                    } else if (a.c()) {
                        this.j = this.L;
                    } else {
                        this.j = obtainStyledAttributes.getColor(13, -16777216);
                    }
                    this.k = obtainStyledAttributes.getDimension(14, 0.0f);
                    this.l = obtainStyledAttributes.getDimension(11, 0.0f);
                    break;
                case 2:
                    this.m = obtainStyledAttributes.getString(18);
                    this.n = obtainStyledAttributes.getString(21);
                    if (a.b()) {
                        this.o = this.L;
                        this.p = this.L;
                    } else if (a.c()) {
                        this.o = this.L;
                        this.p = this.L;
                    } else {
                        this.o = obtainStyledAttributes.getColor(19, -16777216);
                        this.p = obtainStyledAttributes.getColor(22, -16777216);
                    }
                    this.q = obtainStyledAttributes.getDimension(20, 0.0f);
                    this.r = obtainStyledAttributes.getDimension(23, 0.0f);
                    this.s = obtainStyledAttributes.getDimension(17, 0.0f);
                    this.t = obtainStyledAttributes.getDimension(16, 0.0f);
                    this.u = obtainStyledAttributes.getDimension(24, 0.0f);
                    break;
            }
            obtainStyledAttributes.recycle();
            a();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void a() {
        this.I = new Rect();
        this.J = new Rect();
        this.C = new Paint(1);
        this.C.setTextSize(this.e);
        this.C.setColor(this.d);
        this.C.getTextBounds(this.c, 0, this.c.length(), this.I);
        this.D = new Paint(1);
        switch (this.h) {
            case 1:
                if (!TextUtils.isEmpty(this.i)) {
                    this.D.setTextSize(this.k);
                    this.D.setColor(this.j);
                    this.D.getTextBounds(this.i, 0, this.i.length(), this.J);
                    break;
                }
                break;
            case 2:
                if (!TextUtils.isEmpty(this.m)) {
                    this.D.setTextSize(this.q);
                    this.D.setColor(this.o);
                    this.D.getTextBounds(this.m, 0, this.m.length(), this.J);
                }
                if (this.B == null && !TextUtils.isEmpty(this.m) && !TextUtils.isEmpty(this.n)) {
                    this.K = new Rect();
                    this.E = new Paint(1);
                    this.E.setTextSize(this.r);
                    this.E.setColor(this.p);
                    this.E.getTextBounds(this.n, 0, this.n.length(), this.K);
                    break;
                }
                break;
        }
        if (this.z) {
            this.F = new Paint(1);
            this.F.setStyle(Paint.Style.STROKE);
            this.F.setColor(this.x);
            this.F.setStrokeWidth(this.w);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float width;
        float height;
        float intrinsicWidth;
        float intrinsicHeight;
        float width2;
        float height2;
        float width3 = this.I.width();
        float height3 = this.I.height();
        switch (this.h) {
            case 1:
                if (this.B != null) {
                    width2 = this.B.getIntrinsicWidth();
                    height2 = this.B.getIntrinsicHeight();
                } else {
                    width2 = this.J.width();
                    height2 = this.J.height();
                }
                float f = (((this.H - height3) - height2) - this.l) / 2.0f;
                float f2 = (this.G - width3) / 2.0f;
                float f3 = this.y ? ((this.H - height3) / 2.0f) + height3 + this.g : f + height3 + this.g;
                float f4 = (this.G - width2) / 2.0f;
                float f5 = this.y ? this.l + f3 + height2 : this.H - f;
                float f6 = f2;
                if (this.c.equals("1")) {
                    f6 = f2 - this.f;
                }
                canvas.drawText(this.c, f6, f3, this.C);
                if (this.B == null) {
                    if (!TextUtils.isEmpty(this.i)) {
                        canvas.drawText(this.i, f4, f5, this.D);
                        break;
                    }
                } else {
                    this.B.setBounds((int) f4, (int) (f5 - height2), (int) (this.G - f4), (int) f5);
                    this.B.setTint(this.L);
                    this.B.draw(canvas);
                    break;
                }
                break;
            case 2:
                if (this.B == null) {
                    width = this.J.width();
                    height = this.J.height();
                    if (this.K != null) {
                        intrinsicWidth = this.K.width();
                        intrinsicHeight = this.K.height();
                    } else {
                        intrinsicHeight = 0.0f;
                        intrinsicWidth = 0.0f;
                    }
                } else if (TextUtils.isEmpty(this.m)) {
                    width = this.B.getIntrinsicWidth();
                    height = this.B.getIntrinsicHeight();
                    intrinsicHeight = 0.0f;
                    intrinsicWidth = 0.0f;
                } else {
                    width = this.J.width();
                    height = this.J.height();
                    intrinsicWidth = this.B.getIntrinsicWidth();
                    intrinsicHeight = this.B.getIntrinsicHeight();
                }
                float f7 = this.f;
                float f8 = (this.H - height3) / 2.0f;
                canvas.drawText(this.c, f7, height3 + f8 + this.g, this.C);
                float f9 = f7 + this.t + width3;
                float f10 = f8 + height;
                if (this.B == null) {
                    if (!TextUtils.isEmpty(this.n)) {
                        canvas.drawText(this.m, f9, f10, this.D);
                        canvas.drawText(this.n, f9, intrinsicHeight + this.s + f10, this.E);
                        break;
                    } else {
                        canvas.drawText(this.m, f9, ((this.H - height) / 2.0f) + height, this.D);
                        break;
                    }
                } else {
                    this.B.setTint(this.L);
                    if (!TextUtils.isEmpty(this.m)) {
                        canvas.drawText(this.m, f9, f10, this.D);
                        float f11 = this.s + f10;
                        this.B.setBounds((int) f9, (int) f11, (int) (f9 + intrinsicWidth), (int) (intrinsicHeight + f11));
                        this.B.draw(canvas);
                        break;
                    } else {
                        float f12 = (this.H - height) / 2.0f;
                        this.B.setBounds((int) f9, (int) f12, (int) (f9 + width), (int) (f12 + height));
                        this.B.draw(canvas);
                        break;
                    }
                }
        }
        if (this.z) {
            float f13 = (this.G - this.v) / 2.0f;
            canvas.drawLine(f13, this.H - ((int) (this.w / 2.0f)), this.G - f13, this.H - ((int) (this.w / 2.0f)), this.F);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        this.G = size;
        this.H = size2;
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void setDividerColor(int i) {
        if (this.F != null) {
            this.x = getContext().getResources().getColor(i);
            this.F.setColor(this.x);
            invalidate(0, this.H, this.G, this.H - ((int) this.w));
        }
    }
}
