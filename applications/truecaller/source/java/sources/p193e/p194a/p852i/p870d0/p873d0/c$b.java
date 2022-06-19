package p193e.p194a.p852i.p870d0.p873d0;

import android.view.View;
/* renamed from: e.a.i.d0.d0.c$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/d0/c$b.class */
public final class c$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ c f43076a;

    public c$b(c cVar) {
        this.f43076a = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        c cVar = this.f43076a;
        cVar.b.onAdClicked();
        cVar.b.onAdOpened();
        cVar.b.onAdLeftApplication();
    }
}
