package p193e.p194a.p852i;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.truecaller.ads.C2808R;
import p193e.p194a.p1406z3.C21852d;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.i.h */
/* loaded from: classes2-dex2jar.jar:e/a/i/h.class */
public final class C15198h extends m implements l<C21852d<Drawable>, s> {

    /* renamed from: b */
    public final /* synthetic */ ImageView f43259b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15198h(ImageView imageView) {
        super(1);
        this.f43259b = imageView;
    }

    /* renamed from: d */
    public Object m19054d(Object obj) {
        C21852d c21852d = (C21852d) obj;
        s1.z.c.l.e(c21852d, "$receiver");
        int dimensionPixelSize = this.f43259b.getResources().getDimensionPixelSize(C2808R.dimen.contact_photo_size);
        c21852d.m8970n0(dimensionPixelSize, dimensionPixelSize);
        c21852d.mo8102f();
        return s.a;
    }
}
