package com.asus.toolpanel;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:com/asus/toolpanel/a.class */
public class a extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    private static Paint f3108a;
    private static int c;
    private static int d;
    private static final Rect f = new Rect();

    /* renamed from: b  reason: collision with root package name */
    private Resources f3109b;
    private Paint e;
    private int g;
    private float h;
    private float i;

    public a() {
    }

    public a(Resources resources, int i, int i2, int i3, int i4, int i5) {
        this.e = new Paint();
        this.e.setFilterBitmap(true);
        this.e.setDither(true);
        this.f3109b = resources;
        this.h = resources.getDimension(i2);
        this.i = resources.getDimension(i);
        this.g = i5;
        c = i3;
        d = i4;
        if (f3108a == null) {
            Paint paint = new Paint();
            f3108a = paint;
            paint.setTypeface(Typeface.create("sans-serif-medium", 0));
            f3108a.setTextAlign(Paint.Align.CENTER);
            f3108a.setAntiAlias(true);
        }
    }

    public static void a(int i) {
        c = i;
    }

    public void a(Bitmap bitmap, int i, int i2, Canvas canvas) {
        Rect copyBounds = copyBounds();
        int i3 = (int) (this.h * 0.5d);
        copyBounds.set(copyBounds.centerX() - i3, (int) ((copyBounds.centerY() - i3) + (copyBounds.height() * 0.0f)), copyBounds.centerX() + i3, (int) (i3 + copyBounds.centerY() + (copyBounds.height() * 0.0f)));
        this.e.setColorFilter(new PorterDuffColorFilter(d, PorterDuff.Mode.SRC_ATOP));
        f.set(0, 0, i, i2);
        canvas.drawBitmap(bitmap, f, copyBounds, this.e);
    }

    public void a(Canvas canvas) {
        f3108a.setColor(c);
        if (com.android.contacts.skin.a.c()) {
            f3108a.setAlpha(153);
        } else {
            f3108a.setAlpha(this.e.getAlpha());
        }
        Rect bounds = getBounds();
        canvas.drawCircle(bounds.centerX(), bounds.centerY(), this.i / 2.0f, f3108a);
        Bitmap decodeResource = BitmapFactory.decodeResource(this.f3109b, this.g);
        Path path = new Path();
        path.addCircle(bounds.centerX(), bounds.centerY(), this.i / 2.0f, Path.Direction.CCW);
        canvas.clipPath(path);
        a(decodeResource, decodeResource.getWidth(), decodeResource.getHeight(), canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (isVisible() && !bounds.isEmpty()) {
            a(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.e.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.e.setColorFilter(colorFilter);
    }
}
