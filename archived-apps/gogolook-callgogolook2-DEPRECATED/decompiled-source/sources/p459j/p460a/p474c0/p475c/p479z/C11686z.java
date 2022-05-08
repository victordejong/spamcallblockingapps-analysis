package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$fraction;
import java.io.IOException;
import java.util.List;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12155e;
/* renamed from: j.a.c0.c.z.z */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/z.class */
public class C11686z extends C11640b {

    /* renamed from: f */
    public static Bitmap f26223f;

    public C11686z(Context context, C11643c cVar) {
        super(context, cVar);
    }

    /* renamed from: a */
    public final AbstractC11669o m8604a(String str, int i, int i2, int i3, boolean z, boolean z2) {
        Bitmap bitmap;
        Rect rect;
        Resources resources = this.f26181a.getResources();
        float f = i / 2;
        float f2 = i2 / 2;
        int min = Math.min(i, i2);
        int i4 = z ? i3 : -1;
        int i5 = z ? i3 : -1;
        if (z) {
            i3 = -1;
        }
        Bitmap a = m8686e().m8630a(i, i2, i4);
        Paint paint = new Paint(1);
        Canvas canvas = new Canvas(a);
        if (f26223f == null) {
            f26223f = ((BitmapDrawable) this.f26181a.getResources().getDrawable(R$drawable.ic_sim_card_send)).getBitmap();
        }
        paint.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP));
        paint.setAlpha(255);
        canvas.drawBitmap(f26223f, f - (bitmap.getWidth() / 2), f2 - (f26223f.getHeight() / 2), paint);
        paint.setColorFilter(null);
        paint.setAlpha(255);
        if (!TextUtils.isEmpty(str)) {
            paint.setTypeface(Typeface.create("sans-serif", 0));
            paint.setColor(i5);
            paint.setTextSize(resources.getFraction(R$fraction.sim_identifier_to_tile_ratio, 1, 1) * min);
            String upperCase = str.substring(0, 1).toUpperCase();
            paint.getTextBounds(upperCase, 0, 1, new Rect());
            canvas.drawText(upperCase, f - rect.centerX(), f2 - rect.centerY(), paint);
        }
        return new C11659h(getKey(), a, 1);
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11640b, p459j.p460a.p474c0.p475c.p479z.C11639a0, p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: b */
    public AbstractC11669o mo8603b(List<AbstractC11672r<AbstractC11669o>> list) throws IOException {
        C12151d.m7002b();
        if (!"s".equals(C12155e.m6978a(((C11643c) this.f26182b).f26138i))) {
            return super.mo8603b(list);
        }
        D d = this.f26182b;
        int i = ((C11643c) d).f26184a;
        int i2 = ((C11643c) d).f26185b;
        return m8604a(C12155e.m6966c(((C11643c) d).f26138i), i, i2, C12155e.m6964e(((C11643c) this.f26182b).f26138i), C12155e.m6962g(((C11643c) this.f26182b).f26138i), C12155e.m6963f(((C11643c) this.f26182b).f26138i));
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11640b, p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: f */
    public int mo8602f() {
        return 2;
    }
}
