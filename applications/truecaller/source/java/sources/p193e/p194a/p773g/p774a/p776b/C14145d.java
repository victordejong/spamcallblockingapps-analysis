package p193e.p194a.p773g.p774a.p776b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mopub.common.Constants;
import com.truecaller.acs.C2778R;
import e.f.a.r.k.d;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.g.a.b.d */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/d.class */
public final class C14145d extends d<ConstraintLayout, Drawable> {

    /* renamed from: d */
    public final /* synthetic */ a f40844d;

    /* renamed from: e */
    public final /* synthetic */ a f40845e;

    /* renamed from: f */
    public final /* synthetic */ Context f40846f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14145d(C14118a c14118a, a aVar, a aVar2, Context context, View view) {
        super(view);
        this.f40844d = aVar;
        this.f40845e = aVar2;
        this.f40846f = context;
    }

    /* renamed from: a */
    public void m20713a(Drawable drawable) {
        ConstraintLayout constraintLayout = (ConstraintLayout) ((d) this).b;
        Context context = this.f40846f;
        int i = C2778R.color.fullscreen_acs_background_color;
        Object obj = C26467a.f74235a;
        constraintLayout.setBackgroundColor(C26467a.C26471d.m1787a(context, i));
    }

    /* renamed from: e */
    public void m20712e(Object obj, AbstractC22604d abstractC22604d) {
        Drawable drawable = (Drawable) obj;
        l.e(drawable, Constants.VAST_RESOURCE);
        ConstraintLayout constraintLayout = (ConstraintLayout) ((d) this).b;
        a aVar = this.f40844d;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
        C14144c c14144c = new C14144c(constraintLayout);
        if (abstractC22604d == null || abstractC22604d.mo8040a(drawable, c14144c)) {
            return;
        }
        l.d(constraintLayout, "targetView");
        constraintLayout.setBackground(drawable);
    }

    /* renamed from: i */
    public void m20711i(Drawable drawable) {
        a aVar = this.f40845e;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }
}
