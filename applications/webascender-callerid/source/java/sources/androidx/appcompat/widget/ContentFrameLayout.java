package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import f.h.l.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: f */
    private TypedValue f328f;

    /* renamed from: g */
    private TypedValue f329g;

    /* renamed from: h */
    private TypedValue f330h;

    /* renamed from: i */
    private TypedValue f331i;

    /* renamed from: j */
    private TypedValue f332j;

    /* renamed from: k */
    private TypedValue f333k;

    /* renamed from: l */
    private final Rect f334l;

    /* renamed from: m */
    private AbstractC0085a f335m;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0085a {
        /* renamed from: a */
        void m6730a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f334l = new Rect();
    }

    /* renamed from: a */
    public void m6732a(Rect rect) {
        fitSystemWindows(rect);
    }

    /* renamed from: b */
    public void m6731b(int i, int i2, int i3, int i4) {
        this.f334l.set(i, i2, i3, i4);
        if (t.Q(this)) {
            requestLayout();
        }
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f332j == null) {
            this.f332j = new TypedValue();
        }
        return this.f332j;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f333k == null) {
            this.f333k = new TypedValue();
        }
        return this.f333k;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f330h == null) {
            this.f330h = new TypedValue();
        }
        return this.f330h;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f331i == null) {
            this.f331i = new TypedValue();
        }
        return this.f331i;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f328f == null) {
            this.f328f = new TypedValue();
        }
        return this.f328f;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f329g == null) {
            this.f329g = new TypedValue();
        }
        return this.f329g;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0085a abstractC0085a = this.f335m;
        if (abstractC0085a != null) {
            abstractC0085a.m6730a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0085a abstractC0085a = this.f335m;
        if (abstractC0085a != null) {
            abstractC0085a.onDetachedFromWindow();
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

    public void setAttachListener(AbstractC0085a abstractC0085a) {
        this.f335m = abstractC0085a;
    }
}
