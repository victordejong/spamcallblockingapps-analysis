package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.widget.c;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c$c.class */
class c$c implements Runnable {

    /* renamed from: f */
    private c.e f458f;

    /* renamed from: g */
    final /* synthetic */ c f459g;

    public c$c(c cVar, c.e eVar) {
        this.f459g = cVar;
        this.f458f = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (c.v(this.f459g) != null) {
            c.w(this.f459g).d();
        }
        View view = (View) c.x(this.f459g);
        if (view != null && view.getWindowToken() != null && this.f458f.m6762m()) {
            this.f459g.B = this.f458f;
        }
        this.f459g.D = null;
    }
}
