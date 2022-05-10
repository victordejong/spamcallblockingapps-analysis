package com.inmobi.rendering;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/CustomView.class */
public class CustomView extends View {

    /* renamed from: a */
    public float f32709a;

    /* renamed from: b */
    public float f32710b;

    /* renamed from: c */
    public float f32711c;

    /* renamed from: d */
    public float f32712d;

    /* renamed from: e */
    public float f32713e;

    /* renamed from: f */
    public int f32714f;

    /* renamed from: g */
    public int f32715g;

    /* renamed from: h */
    public Paint f32716h;

    /* renamed from: i */
    public Path f32717i;

    /* renamed from: j */
    public RectF f32718j;

    public CustomView(Context context) {
        super(context);
    }

    public CustomView(Context context, float f, int i) {
        this(context);
        this.f32714f = i;
        this.f32709a = f;
        this.f32715g = 15;
        this.f32716h = new Paint(1);
        this.f32718j = new RectF();
        this.f32717i = new Path();
    }

    /* renamed from: a */
    private void m5618a(Canvas canvas) {
        float f = this.f32709a;
        this.f32712d = ((30.0f * f) / 2.0f) - (f * 5.0f);
        this.f32710b = f * 5.0f;
        this.f32711c = f * 5.0f;
        this.f32716h.setStyle(Paint.Style.FILL);
        this.f32716h.setColor(-1);
        this.f32716h.setStrokeWidth(4.0f);
        this.f32716h.setAntiAlias(true);
        Path path = this.f32717i;
        float f2 = this.f32712d;
        path.moveTo(f2 - this.f32710b, f2 - this.f32711c);
        Path path2 = this.f32717i;
        float f3 = this.f32712d;
        path2.lineTo(f3, f3 - this.f32711c);
        Path path3 = this.f32717i;
        float f4 = this.f32712d;
        float f5 = this.f32709a;
        path3.lineTo((f5 * 6.0f) + f4, (f4 - this.f32711c) - (f5 * 4.0f));
        Path path4 = this.f32717i;
        float f6 = this.f32712d;
        float f7 = this.f32709a;
        path4.lineTo((6.0f * f7) + f6, f6 + this.f32711c + (f7 * 4.0f));
        Path path5 = this.f32717i;
        float f8 = this.f32712d;
        path5.lineTo(f8, this.f32711c + f8);
        Path path6 = this.f32717i;
        float f9 = this.f32712d;
        path6.lineTo(f9 - this.f32710b, f9 + this.f32711c);
        Path path7 = this.f32717i;
        float f10 = this.f32712d;
        path7.lineTo(f10 - this.f32710b, f10 - this.f32711c);
        canvas.drawPath(this.f32717i, this.f32716h);
    }

    /* renamed from: b */
    private void m5617b(Canvas canvas) {
        float f = this.f32709a;
        this.f32713e = 25.0f * f;
        this.f32712d = f * 30.0f;
        this.f32716h.setAntiAlias(true);
        this.f32716h.setColor(-1);
        this.f32716h.setStrokeWidth(7.0f);
        this.f32716h.setStyle(Paint.Style.STROKE);
        float f2 = this.f32712d;
        canvas.drawCircle(f2, f2, this.f32713e, this.f32716h);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f32716h.reset();
        switch (this.f32714f) {
            case 0:
                float f = this.f32709a;
                float f2 = (50.0f * f) / 2.0f;
                float f3 = (f * 30.0f) / 2.0f;
                float f4 = f3 / 3.0f;
                float f5 = f2 - f4;
                float f6 = f2 + f4;
                this.f32716h.setAntiAlias(true);
                this.f32716h.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.f32716h.setStrokeWidth(3.0f);
                this.f32716h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawCircle(f2, f2, f3, this.f32716h);
                this.f32716h.setColor(-1);
                this.f32716h.setStyle(Paint.Style.STROKE);
                canvas.drawLine(f5, f5, f6, f6, this.f32716h);
                canvas.drawLine(f5, f6, f6, f5, this.f32716h);
                canvas.drawCircle(f2, f2, f3, this.f32716h);
                return;
            case 1:
                float f7 = (this.f32709a * 50.0f) / 2.0f;
                this.f32716h.setAntiAlias(true);
                this.f32716h.setColor(0);
                this.f32716h.setStrokeWidth(3.0f);
                this.f32716h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawCircle(f7, f7, f7, this.f32716h);
                return;
            case 2:
                this.f32716h.setAntiAlias(true);
                this.f32716h.setColor(-1);
                this.f32716h.setStrokeWidth(5.0f);
                this.f32716h.setStyle(Paint.Style.STROKE);
                canvas.drawLine((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) - ((this.f32715g * this.f32709a) / 2.0f), ((this.f32715g * this.f32709a) / 2.0f) + (getWidth() / 2), ((this.f32715g * this.f32709a) / 2.0f) + (getHeight() / 2), this.f32716h);
                canvas.drawLine((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), ((this.f32715g * this.f32709a) / 2.0f) + (getHeight() / 2), ((this.f32715g * this.f32709a) / 2.0f) + (getWidth() / 2), (getHeight() / 2) - ((this.f32715g * this.f32709a) / 2.0f), this.f32716h);
                return;
            case 3:
                float f8 = this.f32709a;
                float f9 = (50.0f * f8) / 2.0f;
                float f10 = (f8 * 30.0f) / 2.0f;
                this.f32717i.reset();
                this.f32716h.setAntiAlias(true);
                this.f32716h.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.f32716h.setStrokeWidth(3.0f);
                this.f32716h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawCircle(f9, f9, f10, this.f32716h);
                this.f32716h.setColor(-1);
                this.f32716h.setStyle(Paint.Style.STROKE);
                canvas.drawCircle(f9, f9, f10, this.f32716h);
                this.f32718j.set((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) - ((this.f32715g * this.f32709a) / 2.0f), (getWidth() / 2) + ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) + ((this.f32715g * this.f32709a) / 2.0f));
                canvas.drawArc(this.f32718j, 0.0f, 270.0f, false, this.f32716h);
                this.f32717i.setFillType(Path.FillType.EVEN_ODD);
                this.f32717i.moveTo((getWidth() / 2) + ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) - (this.f32709a * 2.0f));
                Path path = this.f32717i;
                float width = getWidth() / 2;
                float f11 = this.f32715g;
                float f12 = this.f32709a;
                path.lineTo((width + ((f11 * f12) / 2.0f)) - (f12 * 2.0f), getHeight() / 2);
                Path path2 = this.f32717i;
                float width2 = getWidth() / 2;
                float f13 = this.f32715g;
                float f14 = this.f32709a;
                path2.lineTo(width2 + ((f13 * f14) / 2.0f) + (f14 * 2.0f), getHeight() / 2);
                this.f32717i.lineTo((getWidth() / 2) + ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) - (this.f32709a * 2.0f));
                this.f32717i.close();
                this.f32716h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawPath(this.f32717i, this.f32716h);
                return;
            case 4:
                this.f32717i.reset();
                this.f32717i.setFillType(Path.FillType.EVEN_ODD);
                this.f32717i.moveTo((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), getHeight() / 2);
                this.f32717i.lineTo((getWidth() / 2) + ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) - ((this.f32715g * this.f32709a) / 2.0f));
                this.f32717i.lineTo((getWidth() / 2) + ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) + ((this.f32715g * this.f32709a) / 2.0f));
                this.f32717i.lineTo((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), getHeight() / 2);
                this.f32717i.close();
                this.f32716h.setAntiAlias(true);
                this.f32716h.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.f32716h.setStrokeWidth(3.0f);
                this.f32716h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawPath(this.f32717i, this.f32716h);
                return;
            case 5:
                this.f32717i.reset();
                this.f32717i.setFillType(Path.FillType.EVEN_ODD);
                this.f32717i.moveTo((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) - ((this.f32715g * this.f32709a) / 2.0f));
                this.f32717i.lineTo((getWidth() / 2) + ((this.f32715g * this.f32709a) / 2.0f), getHeight() / 2);
                this.f32717i.lineTo((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) + ((this.f32715g * this.f32709a) / 2.0f));
                this.f32717i.lineTo((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) - ((this.f32715g * this.f32709a) / 2.0f));
                this.f32717i.close();
                this.f32716h.setAntiAlias(true);
                this.f32716h.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.f32716h.setStrokeWidth(3.0f);
                this.f32716h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawPath(this.f32717i, this.f32716h);
                return;
            case 6:
                this.f32717i.reset();
                this.f32717i.setFillType(Path.FillType.EVEN_ODD);
                this.f32717i.moveTo((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) - ((this.f32715g * this.f32709a) / 2.0f));
                this.f32717i.lineTo((getWidth() / 2) + ((this.f32715g * this.f32709a) / 2.0f), getHeight() / 2);
                this.f32717i.lineTo((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) + ((this.f32715g * this.f32709a) / 2.0f));
                this.f32717i.lineTo((getWidth() / 2) - ((this.f32715g * this.f32709a) / 2.0f), (getHeight() / 2) - ((this.f32715g * this.f32709a) / 2.0f));
                this.f32717i.close();
                this.f32716h.setAntiAlias(true);
                this.f32716h.setColor(-12303292);
                this.f32716h.setStrokeWidth(3.0f);
                this.f32716h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawPath(this.f32717i, this.f32716h);
                return;
            case 7:
                m5617b(canvas);
                float f15 = this.f32713e;
                this.f32710b = f15 / 3.0f;
                this.f32711c = f15 / 3.0f;
                this.f32716h.setStyle(Paint.Style.FILL);
                Path path3 = this.f32717i;
                float f16 = this.f32712d;
                path3.moveTo(this.f32710b + f16, f16);
                Path path4 = this.f32717i;
                float f17 = this.f32712d;
                path4.lineTo(f17 - this.f32710b, f17 - this.f32711c);
                Path path5 = this.f32717i;
                float f18 = this.f32712d;
                path5.lineTo(f18 - this.f32710b, f18 + this.f32711c);
                Path path6 = this.f32717i;
                float f19 = this.f32712d;
                path6.lineTo(this.f32710b + f19, f19);
                canvas.drawPath(this.f32717i, this.f32716h);
                return;
            case 8:
                m5617b(canvas);
                float f20 = this.f32713e;
                float f21 = f20 / 4.0f;
                this.f32710b = f21;
                float f22 = f20 / 3.0f;
                this.f32711c = f22;
                float f23 = this.f32712d;
                canvas.drawLine(f23 - f21, f23 - f22, f23 - f21, f23 + f22, this.f32716h);
                float f24 = this.f32712d;
                float f25 = this.f32710b;
                float f26 = this.f32711c;
                canvas.drawLine(f24 + f25, f24 - f26, f24 + f25, f24 + f26, this.f32716h);
                return;
            case 9:
                m5618a(canvas);
                float f27 = this.f32712d;
                float f28 = this.f32709a;
                float f29 = this.f32711c;
                RectF rectF = new RectF(f27 - (f28 * 10.0f), (f27 - f29) - (f28 * 2.0f), (14.0f * f28) + f27, f27 + f29 + (f28 * 2.0f));
                float f30 = this.f32712d;
                float f31 = this.f32709a;
                float f32 = this.f32711c;
                RectF rectF2 = new RectF(f30 - (10.0f * f31), (f30 - f32) - (f31 * 4.0f), (18.0f * f31) + f30, f30 + f32 + (f31 * 4.0f));
                this.f32716h.setColor(-1);
                this.f32716h.setStrokeWidth(4.0f);
                this.f32716h.setStyle(Paint.Style.STROKE);
                canvas.drawArc(rectF, -45.0f, 90.0f, false, this.f32716h);
                canvas.drawArc(rectF2, -45.0f, 90.0f, false, this.f32716h);
                canvas.drawPath(this.f32717i, this.f32716h);
                canvas.drawPath(this.f32717i, this.f32716h);
                return;
            case 10:
            default:
                return;
            case 11:
                m5618a(canvas);
                this.f32716h.setColor(-1);
                this.f32716h.setStrokeWidth(4.0f);
                this.f32716h.setStyle(Paint.Style.STROKE);
                Path path7 = this.f32717i;
                float f33 = this.f32712d;
                path7.moveTo((this.f32709a * 10.0f) + f33, f33 - this.f32711c);
                Path path8 = this.f32717i;
                float f34 = this.f32712d;
                path8.lineTo((this.f32709a * 18.0f) + f34, f34 + this.f32711c);
                Path path9 = this.f32717i;
                float f35 = this.f32712d;
                path9.moveTo((this.f32709a * 18.0f) + f35, f35 - this.f32711c);
                Path path10 = this.f32717i;
                float f36 = this.f32712d;
                path10.lineTo((this.f32709a * 10.0f) + f36, f36 + this.f32711c);
                canvas.drawPath(this.f32717i, this.f32716h);
                return;
            case 12:
                float f37 = this.f32709a;
                this.f32712d = (50.0f * f37) / 2.0f;
                this.f32710b = f37 * 3.0f;
                this.f32711c = f37 * 3.0f;
                this.f32716h.setStyle(Paint.Style.STROKE);
                this.f32716h.setStrokeWidth(4.0f);
                this.f32716h.setColor(-1);
                Path path11 = this.f32717i;
                float f38 = this.f32712d;
                path11.moveTo(f38 - this.f32710b, (f38 - this.f32711c) - (this.f32709a * 5.0f));
                Path path12 = this.f32717i;
                float f39 = this.f32712d;
                path12.lineTo(f39 - this.f32710b, f39 - this.f32711c);
                Path path13 = this.f32717i;
                float f40 = this.f32712d;
                path13.lineTo((f40 - this.f32710b) - (this.f32709a * 5.0f), f40 - this.f32711c);
                Path path14 = this.f32717i;
                float f41 = this.f32712d;
                path14.moveTo(this.f32710b + f41, (f41 - this.f32711c) - (this.f32709a * 5.0f));
                Path path15 = this.f32717i;
                float f42 = this.f32712d;
                path15.lineTo(this.f32710b + f42, f42 - this.f32711c);
                Path path16 = this.f32717i;
                float f43 = this.f32712d;
                path16.lineTo(this.f32710b + f43 + (this.f32709a * 5.0f), f43 - this.f32711c);
                Path path17 = this.f32717i;
                float f44 = this.f32712d;
                path17.moveTo(f44 - this.f32710b, f44 + this.f32711c + (this.f32709a * 5.0f));
                Path path18 = this.f32717i;
                float f45 = this.f32712d;
                path18.lineTo(f45 - this.f32710b, f45 + this.f32711c);
                Path path19 = this.f32717i;
                float f46 = this.f32712d;
                path19.lineTo((f46 - this.f32710b) - (this.f32709a * 5.0f), f46 + this.f32711c);
                Path path20 = this.f32717i;
                float f47 = this.f32712d;
                path20.moveTo(this.f32710b + f47, f47 + this.f32711c + (this.f32709a * 5.0f));
                Path path21 = this.f32717i;
                float f48 = this.f32712d;
                path21.lineTo(this.f32710b + f48, f48 + this.f32711c);
                Path path22 = this.f32717i;
                float f49 = this.f32712d;
                path22.lineTo(this.f32710b + f49 + (this.f32709a * 5.0f), f49 + this.f32711c);
                canvas.drawPath(this.f32717i, this.f32716h);
                return;
        }
    }

    public void setSwitchInt(int i) {
        this.f32714f = i;
    }
}
