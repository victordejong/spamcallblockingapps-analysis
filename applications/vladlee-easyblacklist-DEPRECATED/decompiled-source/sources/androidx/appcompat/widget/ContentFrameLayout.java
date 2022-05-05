package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.core.p037g.C0741t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    private TypedValue f1939a;

    /* renamed from: b */
    private TypedValue f1940b;

    /* renamed from: c */
    private TypedValue f1941c;

    /* renamed from: d */
    private TypedValue f1942d;

    /* renamed from: e */
    private TypedValue f1943e;

    /* renamed from: f */
    private TypedValue f1944f;

    /* renamed from: g */
    private final Rect f1945g;

    /* renamed from: h */
    private AbstractC0413a f1946h;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0413a {
        /* renamed from: a */
        void mo9404a();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1945g = new Rect();
    }

    /* renamed from: a */
    public final TypedValue m9413a() {
        if (this.f1939a == null) {
            this.f1939a = new TypedValue();
        }
        return this.f1939a;
    }

    /* renamed from: a */
    public final void m9412a(int i, int i2, int i3, int i4) {
        this.f1945g.set(i, i2, i3, i4);
        if (C0741t.m8373B(this)) {
            requestLayout();
        }
    }

    /* renamed from: a */
    public final void m9411a(Rect rect) {
        fitSystemWindows(rect);
    }

    /* renamed from: a */
    public final void m9410a(AbstractC0413a aVar) {
        this.f1946h = aVar;
    }

    /* renamed from: b */
    public final TypedValue m9409b() {
        if (this.f1940b == null) {
            this.f1940b = new TypedValue();
        }
        return this.f1940b;
    }

    /* renamed from: c */
    public final TypedValue m9408c() {
        if (this.f1941c == null) {
            this.f1941c = new TypedValue();
        }
        return this.f1941c;
    }

    /* renamed from: d */
    public final TypedValue m9407d() {
        if (this.f1942d == null) {
            this.f1942d = new TypedValue();
        }
        return this.f1942d;
    }

    /* renamed from: e */
    public final TypedValue m9406e() {
        if (this.f1943e == null) {
            this.f1943e = new TypedValue();
        }
        return this.f1943e;
    }

    /* renamed from: f */
    public final TypedValue m9405f() {
        if (this.f1944f == null) {
            this.f1944f = new TypedValue();
        }
        return this.f1944f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0413a aVar = this.f1946h;
        if (aVar != null) {
            aVar.mo9404a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }
}
