package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.C0247a;
/* renamed from: androidx.appcompat.widget.by */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/by.class */
final class C0496by {

    /* renamed from: a */
    private final Context f2377a;

    /* renamed from: b */
    private final View f2378b;

    /* renamed from: c */
    private final TextView f2379c;

    /* renamed from: d */
    private final WindowManager.LayoutParams f2380d = new WindowManager.LayoutParams();

    /* renamed from: e */
    private final Rect f2381e = new Rect();

    /* renamed from: f */
    private final int[] f2382f = new int[2];

    /* renamed from: g */
    private final int[] f2383g = new int[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0496by(Context context) {
        this.f2377a = context;
        this.f2378b = LayoutInflater.from(this.f2377a).inflate(C0247a.C0254g.f719u, (ViewGroup) null);
        this.f2379c = (TextView) this.f2378b.findViewById(C0247a.C0253f.f697y);
        this.f2380d.setTitle(getClass().getSimpleName());
        this.f2380d.packageName = this.f2377a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f2380d;
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C0247a.C0256i.f735a;
        this.f2380d.flags = 24;
    }

    /* renamed from: b */
    private boolean m9034b() {
        return this.f2378b.getParent() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9036a() {
        if (m9034b()) {
            ((WindowManager) this.f2377a.getSystemService("window")).removeView(this.f2378b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c5, code lost:
        if (((android.view.WindowManager.LayoutParams) r0).type != 2) goto L_0x00c8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9035a(android.view.View r7, int r8, int r9, boolean r10, java.lang.CharSequence r11) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0496by.m9035a(android.view.View, int, int, boolean, java.lang.CharSequence):void");
    }
}
