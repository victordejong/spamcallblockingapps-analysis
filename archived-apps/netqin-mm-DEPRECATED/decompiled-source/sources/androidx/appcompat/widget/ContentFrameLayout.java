package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    public TypedValue f603a;

    /* renamed from: b */
    public TypedValue f604b;

    /* renamed from: c */
    public TypedValue f605c;

    /* renamed from: d */
    public TypedValue f606d;

    /* renamed from: e */
    public TypedValue f607e;

    /* renamed from: f */
    public TypedValue f608f;

    /* renamed from: g */
    public final Rect f609g;

    /* renamed from: h */
    public AbstractC0143a f610h;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0143a {
        /* renamed from: a */
        void mo38987a();

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
        this.f609g = new Rect();
    }

    /* renamed from: a */
    public void m38989a(int i, int i2, int i3, int i4) {
        this.f609g.set(i, i2, i3, i4);
        if (C1002u.m35196z(this)) {
            requestLayout();
        }
    }

    /* renamed from: a */
    public void m38988a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f607e == null) {
            this.f607e = new TypedValue();
        }
        return this.f607e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f608f == null) {
            this.f608f = new TypedValue();
        }
        return this.f608f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f605c == null) {
            this.f605c = new TypedValue();
        }
        return this.f605c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f606d == null) {
            this.f606d = new TypedValue();
        }
        return this.f606d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f603a == null) {
            this.f603a = new TypedValue();
        }
        return this.f603a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f604b == null) {
            this.f604b = new TypedValue();
        }
        return this.f604b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0143a aVar = this.f610h;
        if (aVar != null) {
            aVar.mo38987a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0143a aVar = this.f610h;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
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
    public void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(AbstractC0143a aVar) {
        this.f610h = aVar;
    }
}
