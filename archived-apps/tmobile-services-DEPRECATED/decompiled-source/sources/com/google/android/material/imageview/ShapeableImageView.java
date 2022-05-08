package com.google.android.material.imageview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.C1027R;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/imageview/ShapeableImageView.class */
public class ShapeableImageView extends AppCompatImageView implements Shapeable {

    /* renamed from: q */
    private static final int f10777q = C1027R.style.Widget_MaterialComponents_ShapeableImageView;

    /* renamed from: f */
    private final ShapeAppearancePathProvider f10778f;

    /* renamed from: g */
    private final RectF f10779g;

    /* renamed from: h */
    private final RectF f10780h;

    /* renamed from: i */
    private final Paint f10781i;

    /* renamed from: j */
    private final Paint f10782j;

    /* renamed from: k */
    private final Path f10783k;

    /* renamed from: l */
    private ColorStateList f10784l;

    /* renamed from: m */
    private ShapeAppearanceModel f10785m;
    @Dimension

    /* renamed from: n */
    private float f10786n;

    /* renamed from: o */
    private Path f10787o;

    /* renamed from: p */
    private final MaterialShapeDrawable f10788p;

    @TargetApi(21)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/imageview/ShapeableImageView$OutlineProvider.class */
    class OutlineProvider extends ViewOutlineProvider {

        /* renamed from: a */
        private final Rect f10789a = new Rect();

        OutlineProvider() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.f10785m != null) {
                ShapeableImageView.this.f10779g.round(this.f10789a);
                ShapeableImageView.this.f10788p.setBounds(this.f10789a);
                ShapeableImageView.this.f10788p.getOutline(outline);
            }
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10777q), attributeSet, i);
        this.f10778f = new ShapeAppearancePathProvider();
        this.f10783k = new Path();
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f10782j = paint;
        paint.setAntiAlias(true);
        this.f10782j.setColor(-1);
        this.f10782j.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f10779g = new RectF();
        this.f10780h = new RectF();
        this.f10787o = new Path();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C1027R.styleable.ShapeableImageView, i, f10777q);
        this.f10784l = MaterialResources.m9394a(context2, obtainStyledAttributes, C1027R.styleable.ShapeableImageView_strokeColor);
        this.f10786n = obtainStyledAttributes.getDimensionPixelSize(C1027R.styleable.ShapeableImageView_strokeWidth, 0);
        Paint paint2 = new Paint();
        this.f10781i = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f10781i.setAntiAlias(true);
        this.f10785m = ShapeAppearanceModel.m9273e(context2, attributeSet, i, f10777q).m9232m();
        this.f10788p = new MaterialShapeDrawable(this.f10785m);
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new OutlineProvider());
        }
    }

    /* renamed from: f */
    private void m9626f(Canvas canvas) {
        if (this.f10784l != null) {
            this.f10781i.setStrokeWidth(this.f10786n);
            int colorForState = this.f10784l.getColorForState(getDrawableState(), this.f10784l.getDefaultColor());
            if (this.f10786n > 0.0f && colorForState != 0) {
                this.f10781i.setColor(colorForState);
                canvas.drawPath(this.f10783k, this.f10781i);
            }
        }
    }

    /* renamed from: g */
    private void m9625g(int i, int i2) {
        this.f10779g.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        this.f10778f.m9215d(this.f10785m, 1.0f, this.f10779g, this.f10783k);
        this.f10787o.rewind();
        this.f10787o.addPath(this.f10783k);
        this.f10780h.set(0.0f, 0.0f, i, i2);
        this.f10787o.addRect(this.f10780h, Path.Direction.CCW);
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f10785m;
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f10784l;
    }

    @Dimension
    public float getStrokeWidth() {
        return this.f10786n;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLayerType(2, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        setLayerType(0, null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f10787o, this.f10782j);
        m9626f(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m9625g(i, i2);
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f10785m = shapeAppearanceModel;
        this.f10788p.setShapeAppearanceModel(shapeAppearanceModel);
        m9625g(getWidth(), getHeight());
        invalidate();
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f10784l = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(@ColorRes int i) {
        setStrokeColor(AppCompatResources.m22070c(getContext(), i));
    }

    public void setStrokeWidth(@Dimension float f) {
        if (this.f10786n != f) {
            this.f10786n = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }
}
