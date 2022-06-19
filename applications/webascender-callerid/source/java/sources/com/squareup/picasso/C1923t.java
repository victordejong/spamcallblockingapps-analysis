package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.t */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/t.class */
public final class C1923t extends BitmapDrawable {

    /* renamed from: h */
    private static final Paint f5181h = new Paint();

    /* renamed from: a */
    private final boolean f5182a;

    /* renamed from: b */
    private final float f5183b;

    /* renamed from: c */
    private final Picasso.EnumC1889e f5184c;

    /* renamed from: d */
    Drawable f5185d;

    /* renamed from: e */
    long f5186e;

    /* renamed from: f */
    boolean f5187f;

    /* renamed from: g */
    int f5188g = 255;

    C1923t(Context context, Bitmap bitmap, Drawable drawable, Picasso.EnumC1889e enumC1889e, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.f5182a = z2;
        this.f5183b = context.getResources().getDisplayMetrics().density;
        this.f5184c = enumC1889e;
        if (enumC1889e != Picasso.EnumC1889e.MEMORY && !z) {
            this.f5185d = drawable;
            this.f5187f = true;
            this.f5186e = SystemClock.uptimeMillis();
        }
    }

    /* renamed from: a */
    private void m657a(Canvas canvas) {
        Paint paint = f5181h;
        paint.setColor(-1);
        canvas.drawPath(m656b(0, 0, (int) (this.f5183b * 16.0f)), paint);
        paint.setColor(this.f5184c.debugColor);
        canvas.drawPath(m656b(0, 0, (int) (this.f5183b * 15.0f)), paint);
    }

    /* renamed from: b */
    private static Path m656b(int i, int i2, int i3) {
        Path path = new Path();
        float f = i;
        float f2 = i2;
        path.moveTo(f, f2);
        path.lineTo(i + i3, f2);
        path.lineTo(f, i2 + i3);
        return path;
    }

    /* renamed from: c */
    public static void m655c(ImageView imageView, Context context, Bitmap bitmap, Picasso.EnumC1889e enumC1889e, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        imageView.setImageDrawable(new C1923t(context, bitmap, drawable, enumC1889e, z, z2));
    }

    /* renamed from: d */
    public static void m654d(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof Animatable) {
            ((Animatable) imageView.getDrawable()).start();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f5187f) {
            super.draw(canvas);
        } else {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f5186e)) / 200.0f;
            if (uptimeMillis >= 1.0f) {
                this.f5187f = false;
                this.f5185d = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f5185d;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (this.f5188g * uptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.f5188g);
            }
        }
        if (this.f5182a) {
            m657a(canvas);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f5185d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f5188g = i;
        Drawable drawable = this.f5185d;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f5185d;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
