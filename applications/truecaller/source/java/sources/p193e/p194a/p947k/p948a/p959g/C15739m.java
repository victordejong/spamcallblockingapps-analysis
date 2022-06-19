package p193e.p194a.p947k.p948a.p959g;

import android.content.Context;
import android.content.res.Resources;
import android.view.GestureDetector;
import android.view.MotionEvent;
import s1.z.c.l;
/* renamed from: e.a.k.a.g.m */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/m.class */
public final class C15739m extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ C15715f f44370a;

    /* renamed from: b */
    public final /* synthetic */ Context f44371b;

    public C15739m(C15715f c15715f, Context context) {
        this.f44370a = c15715f;
        this.f44371b = context;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        AbstractC15755w m18448SA = this.f44370a.m18448SA();
        Context context = this.f44371b;
        l.e(context, "$this$pxToDp");
        Resources resources = context.getResources();
        l.d(resources, "resources");
        ((C15757y) m18448SA).m18377Ij().mo18028g(((f2 / resources.getDisplayMetrics().density) / 120.0f) + 1.0f);
        return true;
    }
}
