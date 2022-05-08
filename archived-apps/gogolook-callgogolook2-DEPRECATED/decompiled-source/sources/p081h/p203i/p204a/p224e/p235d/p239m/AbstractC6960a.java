package p081h.p203i.p204a.p224e.p235d.p239m;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import p081h.p203i.p204a.p224e.p235d.p240n.C6967c;
import p081h.p203i.p204a.p224e.p259j.p265f.C7532d;
/* renamed from: h.i.a.e.d.m.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/m/a.class */
public abstract class AbstractC6960a {

    /* renamed from: a */
    public int f17042a;

    /* renamed from: a */
    public final void m21467a(Context context, Bitmap bitmap, boolean z) {
        C6967c.m21462a(bitmap);
        m21465a(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    /* renamed from: a */
    public final void m21466a(Context context, C7532d dVar, boolean z) {
        int i = this.f17042a;
        m21465a(i != 0 ? context.getResources().getDrawable(i) : null, z, false, false);
    }

    /* renamed from: a */
    public abstract void m21465a(Drawable drawable, boolean z, boolean z2, boolean z3);
}
