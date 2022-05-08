package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: f */
    private TypedValue f1043f;

    /* renamed from: g */
    private TypedValue f1044g;

    /* renamed from: h */
    private TypedValue f1045h;

    /* renamed from: i */
    private TypedValue f1046i;

    /* renamed from: j */
    private TypedValue f1047j;

    /* renamed from: k */
    private TypedValue f1048k;

    /* renamed from: l */
    private final Rect f1049l;

    /* renamed from: m */
    private OnAttachListener f1050m;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$OnAttachListener.class */
    public interface OnAttachListener {
        /* renamed from: a */
        void mo21513a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1049l = new Rect();
    }

    @RestrictTo
    /* renamed from: a */
    public void m21514a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1047j == null) {
            this.f1047j = new TypedValue();
        }
        return this.f1047j;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1048k == null) {
            this.f1048k = new TypedValue();
        }
        return this.f1048k;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1045h == null) {
            this.f1045h = new TypedValue();
        }
        return this.f1045h;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1046i == null) {
            this.f1046i = new TypedValue();
        }
        return this.f1046i;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1043f == null) {
            this.f1043f = new TypedValue();
        }
        return this.f1043f;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1044g == null) {
            this.f1044g = new TypedValue();
        }
        return this.f1044g;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        OnAttachListener onAttachListener = this.f1050m;
        if (onAttachListener != null) {
            onAttachListener.mo21513a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        OnAttachListener onAttachListener = this.f1050m;
        if (onAttachListener != null) {
            onAttachListener.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(OnAttachListener onAttachListener) {
        this.f1050m = onAttachListener;
    }

    @RestrictTo
    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.f1049l.set(i, i2, i3, i4);
        if (ViewCompat.m19218S(this)) {
            requestLayout();
        }
    }
}
