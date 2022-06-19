package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.C0222a;
import androidx.core.widget.C0239c;
/* renamed from: androidx.appcompat.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h.class */
class C0109h {

    /* renamed from: a */
    private final CompoundButton f498a;

    /* renamed from: b */
    private ColorStateList f499b = null;

    /* renamed from: c */
    private PorterDuff.Mode f500c = null;

    /* renamed from: d */
    private boolean f501d = false;

    /* renamed from: e */
    private boolean f502e = false;

    /* renamed from: f */
    private boolean f503f;

    C0109h(CompoundButton compoundButton) {
        this.f498a = compoundButton;
    }

    /* renamed from: a */
    void m6572a() {
        Drawable m5897a = C0239c.m5897a(this.f498a);
        if (m5897a != null) {
            if (!this.f501d && !this.f502e) {
                return;
            }
            Drawable mutate = C0222a.m5954r(m5897a).mutate();
            if (this.f501d) {
                C0222a.m5957o(mutate, this.f499b);
            }
            if (this.f502e) {
                C0222a.m5956p(mutate, this.f500c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f498a.getDrawableState());
            }
            this.f498a.setButtonDrawable(mutate);
        }
    }

    /* renamed from: b */
    int m6571b(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable m5897a = C0239c.m5897a(this.f498a);
            i2 = i;
            if (m5897a != null) {
                i2 = i + m5897a.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* renamed from: c */
    ColorStateList m6570c() {
        return this.f499b;
    }

    /* renamed from: d */
    PorterDuff.Mode m6569d() {
        return this.f500c;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0063 A[Catch: all -> 0x00c5, TRY_ENTER, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:21:0x00a3, B:21:0x00a3, B:22:0x00a6, B:24:0x00af), top: B:32:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0097 A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:21:0x00a3, B:21:0x00a3, B:22:0x00a6, B:24:0x00af), top: B:32:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00af A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:21:0x00a3, B:21:0x00a3, B:22:0x00a6, B:24:0x00af), top: B:32:0x0030 }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m6568e(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0109h.m6568e(android.util.AttributeSet, int):void");
    }

    /* renamed from: f */
    void m6567f() {
        if (this.f503f) {
            this.f503f = false;
            return;
        }
        this.f503f = true;
        m6572a();
    }

    /* renamed from: g */
    void m6566g(ColorStateList colorStateList) {
        this.f499b = colorStateList;
        this.f501d = true;
        m6572a();
    }

    /* renamed from: h */
    void m6565h(PorterDuff.Mode mode) {
        this.f500c = mode;
        this.f502e = true;
        m6572a();
    }
}
