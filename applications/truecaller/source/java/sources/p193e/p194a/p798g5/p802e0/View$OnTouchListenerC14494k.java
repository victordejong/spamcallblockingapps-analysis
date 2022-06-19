package p193e.p194a.p798g5.p802e0;

import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.g5.e0.k */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/k.class */
public final class View$OnTouchListenerC14494k implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ C14495l f41733a;

    public View$OnTouchListenerC14494k(C14495l c14495l) {
        this.f41733a = c14495l;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        SearchView searchView = this.f41733a.f41734b.f41675i;
        l.d(searchView, "searchView");
        C19286f.m13679Y(searchView, false, 0L, 2);
        this.f41733a.f41734b.f41667a.setOnTouchListener(null);
        return false;
    }
}
