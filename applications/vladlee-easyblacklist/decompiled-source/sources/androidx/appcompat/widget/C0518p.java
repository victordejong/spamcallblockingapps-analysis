package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.widget.C0778c;
/* renamed from: androidx.appcompat.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p.class */
final class C0518p {

    /* renamed from: a */
    private final CompoundButton f2427a;

    /* renamed from: b */
    private ColorStateList f2428b = null;

    /* renamed from: c */
    private PorterDuff.Mode f2429c = null;

    /* renamed from: d */
    private boolean f2430d = false;

    /* renamed from: e */
    private boolean f2431e = false;

    /* renamed from: f */
    private boolean f2432f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0518p(CompoundButton compoundButton) {
        this.f2427a = compoundButton;
    }

    /* renamed from: b */
    private void m8993b() {
        Drawable a = C0778c.m8143a(this.f2427a);
        if (a == null) {
            return;
        }
        if (this.f2430d || this.f2431e) {
            Drawable mutate = C0758a.m8241f(a).mutate();
            if (this.f2430d) {
                C0758a.m8251a(mutate, this.f2428b);
            }
            if (this.f2431e) {
                C0758a.m8248a(mutate, this.f2429c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f2427a.getDrawableState());
            }
            this.f2427a.setButtonDrawable(mutate);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m8997a(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable a = C0778c.m8143a(this.f2427a);
            i2 = i;
            if (a != null) {
                i2 = i + a.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8998a() {
        if (this.f2432f) {
            this.f2432f = false;
            return;
        }
        this.f2432f = true;
        m8993b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8996a(ColorStateList colorStateList) {
        this.f2428b = colorStateList;
        this.f2430d = true;
        m8993b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8995a(PorterDuff.Mode mode) {
        this.f2429c = mode;
        this.f2431e = true;
        m8993b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0078 A[Catch: all -> 0x00ee, TryCatch #1 {all -> 0x00ee, blocks: (B:3:0x0011, B:5:0x001b, B:7:0x0028, B:12:0x0045, B:14:0x004f, B:16:0x005c, B:18:0x006f, B:20:0x0078, B:22:0x008e, B:23:0x0097, B:25:0x009e, B:27:0x00aa, B:29:0x00b3, B:31:0x00ce, B:32:0x00d7, B:34:0x00de), top: B:44:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3 A[Catch: all -> 0x00ee, TryCatch #1 {all -> 0x00ee, blocks: (B:3:0x0011, B:5:0x001b, B:7:0x0028, B:12:0x0045, B:14:0x004f, B:16:0x005c, B:18:0x006f, B:20:0x0078, B:22:0x008e, B:23:0x0097, B:25:0x009e, B:27:0x00aa, B:29:0x00b3, B:31:0x00ce, B:32:0x00d7, B:34:0x00de), top: B:44:0x0011 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8994a(android.util.AttributeSet r7, int r8) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0518p.m8994a(android.util.AttributeSet, int):void");
    }
}
