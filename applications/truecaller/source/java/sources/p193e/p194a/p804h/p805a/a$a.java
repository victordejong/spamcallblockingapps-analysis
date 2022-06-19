package p193e.p194a.p804h.p805a;

import android.view.View;
/* renamed from: e.a.h.a.a$a */
/* loaded from: classes3-dex2jar.jar:e/a/h/a/a$a.class */
public final class a$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f41847a;

    /* renamed from: b */
    public final /* synthetic */ Object f41848b;

    public a$a(int i, Object obj) {
        this.f41847a = i;
        this.f41848b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f41847a;
        if (i == 0) {
            ((a) this.f41848b).OA().ah();
        } else if (i != 1) {
            throw null;
        } else {
            ((a) this.f41848b).OA().x();
        }
    }
}
