package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.math.MathUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealHelper.class */
public class CircularRevealHelper {

    /* renamed from: j */
    public static final int f10468j;

    /* renamed from: a */
    private final Delegate f10469a;
    @NonNull

    /* renamed from: b */
    private final View f10470b;
    @NonNull

    /* renamed from: c */
    private final Path f10471c = new Path();
    @NonNull

    /* renamed from: d */
    private final Paint f10472d = new Paint(7);
    @NonNull

    /* renamed from: e */
    private final Paint f10473e;
    @Nullable

    /* renamed from: f */
    private CircularRevealWidget.RevealInfo f10474f;
    @Nullable

    /* renamed from: g */
    private Drawable f10475g;

    /* renamed from: h */
    private boolean f10476h;

    /* renamed from: i */
    private boolean f10477i;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealHelper$Delegate.class */
    public interface Delegate {
        /* renamed from: p */
        void mo10018p(Canvas canvas);

        /* renamed from: q */
        boolean mo10017q();
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealHelper$Strategy.class */
    public @interface Strategy {
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f10468j = 2;
        } else if (i >= 18) {
            f10468j = 1;
        } else {
            f10468j = 0;
        }
    }

    public CircularRevealHelper(Delegate delegate) {
        this.f10469a = delegate;
        View view = (View) delegate;
        this.f10470b = view;
        view.setWillNotDraw(false);
        Paint paint = new Paint(1);
        this.f10473e = paint;
        paint.setColor(0);
    }

    /* renamed from: d */
    private void m10041d(@NonNull Canvas canvas) {
        if (m10030o()) {
            Rect bounds = this.f10475g.getBounds();
            float width = this.f10474f.f10484a - (bounds.width() / 2.0f);
            float height = this.f10474f.f10485b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f10475g.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    /* renamed from: g */
    private float m10038g(@NonNull CircularRevealWidget.RevealInfo revealInfo) {
        return MathUtils.m9420b(revealInfo.f10484a, revealInfo.f10485b, 0.0f, 0.0f, this.f10470b.getWidth(), this.f10470b.getHeight());
    }

    /* renamed from: i */
    private void m10036i() {
        if (f10468j == 1) {
            this.f10471c.rewind();
            CircularRevealWidget.RevealInfo revealInfo = this.f10474f;
            if (revealInfo != null) {
                this.f10471c.addCircle(revealInfo.f10484a, revealInfo.f10485b, revealInfo.f10486c, Path.Direction.CW);
            }
        }
        this.f10470b.invalidate();
    }

    /* renamed from: n */
    private boolean m10031n() {
        CircularRevealWidget.RevealInfo revealInfo = this.f10474f;
        boolean z = revealInfo == null || revealInfo.m10023a();
        if (f10468j != 0) {
            return !z;
        }
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (this.f10477i) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: o */
    private boolean m10030o() {
        return (this.f10476h || this.f10475g == null || this.f10474f == null) ? false : true;
    }

    /* renamed from: p */
    private boolean m10029p() {
        return !this.f10476h && Color.alpha(this.f10473e.getColor()) != 0;
    }

    /* renamed from: a */
    public void m10044a() {
        if (f10468j == 0) {
            this.f10476h = true;
            this.f10477i = false;
            this.f10470b.buildDrawingCache();
            Bitmap drawingCache = this.f10470b.getDrawingCache();
            Bitmap bitmap = drawingCache;
            if (drawingCache == null) {
                bitmap = drawingCache;
                if (this.f10470b.getWidth() != 0) {
                    bitmap = drawingCache;
                    if (this.f10470b.getHeight() != 0) {
                        bitmap = Bitmap.createBitmap(this.f10470b.getWidth(), this.f10470b.getHeight(), Bitmap.Config.ARGB_8888);
                        this.f10470b.draw(new Canvas(bitmap));
                    }
                }
            }
            if (bitmap != null) {
                Paint paint = this.f10472d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            }
            this.f10476h = false;
            this.f10477i = true;
        }
    }

    /* renamed from: b */
    public void m10043b() {
        if (f10468j == 0) {
            this.f10477i = false;
            this.f10470b.destroyDrawingCache();
            this.f10472d.setShader(null);
            this.f10470b.invalidate();
        }
    }

    /* renamed from: c */
    public void m10042c(@NonNull Canvas canvas) {
        if (m10031n()) {
            int i = f10468j;
            if (i == 0) {
                CircularRevealWidget.RevealInfo revealInfo = this.f10474f;
                canvas.drawCircle(revealInfo.f10484a, revealInfo.f10485b, revealInfo.f10486c, this.f10472d);
                if (m10029p()) {
                    CircularRevealWidget.RevealInfo revealInfo2 = this.f10474f;
                    canvas.drawCircle(revealInfo2.f10484a, revealInfo2.f10485b, revealInfo2.f10486c, this.f10473e);
                }
            } else if (i == 1) {
                int save = canvas.save();
                canvas.clipPath(this.f10471c);
                this.f10469a.mo10018p(canvas);
                if (m10029p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f10470b.getWidth(), this.f10470b.getHeight(), this.f10473e);
                }
                canvas.restoreToCount(save);
            } else if (i == 2) {
                this.f10469a.mo10018p(canvas);
                if (m10029p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f10470b.getWidth(), this.f10470b.getHeight(), this.f10473e);
                }
            } else {
                throw new IllegalStateException("Unsupported strategy " + f10468j);
            }
        } else {
            this.f10469a.mo10018p(canvas);
            if (m10029p()) {
                canvas.drawRect(0.0f, 0.0f, this.f10470b.getWidth(), this.f10470b.getHeight(), this.f10473e);
            }
        }
        m10041d(canvas);
    }

    @Nullable
    /* renamed from: e */
    public Drawable m10040e() {
        return this.f10475g;
    }

    @ColorInt
    /* renamed from: f */
    public int m10039f() {
        return this.f10473e.getColor();
    }

    @Nullable
    /* renamed from: h */
    public CircularRevealWidget.RevealInfo m10037h() {
        CircularRevealWidget.RevealInfo revealInfo = this.f10474f;
        if (revealInfo == null) {
            return null;
        }
        CircularRevealWidget.RevealInfo revealInfo2 = new CircularRevealWidget.RevealInfo(revealInfo);
        if (revealInfo2.m10023a()) {
            revealInfo2.f10486c = m10038g(revealInfo2);
        }
        return revealInfo2;
    }

    /* renamed from: j */
    public boolean m10035j() {
        return this.f10469a.mo10017q() && !m10031n();
    }

    /* renamed from: k */
    public void m10034k(@Nullable Drawable drawable) {
        this.f10475g = drawable;
        this.f10470b.invalidate();
    }

    /* renamed from: l */
    public void m10033l(@ColorInt int i) {
        this.f10473e.setColor(i);
        this.f10470b.invalidate();
    }

    /* renamed from: m */
    public void m10032m(@Nullable CircularRevealWidget.RevealInfo revealInfo) {
        if (revealInfo == null) {
            this.f10474f = null;
        } else {
            CircularRevealWidget.RevealInfo revealInfo2 = this.f10474f;
            if (revealInfo2 == null) {
                this.f10474f = new CircularRevealWidget.RevealInfo(revealInfo);
            } else {
                revealInfo2.m10021c(revealInfo);
            }
            if (MathUtils.m9419c(revealInfo.f10486c, m10038g(revealInfo), 1.0E-4f)) {
                this.f10474f.f10486c = Float.MAX_VALUE;
            }
        }
        m10036i();
    }
}
