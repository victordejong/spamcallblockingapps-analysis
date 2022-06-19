package p193e.p194a.p804h.p806b;

import android.content.DialogInterface;
/* renamed from: e.a.h.b.a$a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/a$a.class */
public final class a$a implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f41849a;

    /* renamed from: b */
    public final /* synthetic */ Object f41850b;

    public a$a(int i, Object obj) {
        this.f41849a = i;
        this.f41850b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f41849a;
        if (i2 == 0) {
            a.a((a) this.f41850b).m19869ia();
        } else if (i2 != 1) {
            throw null;
        } else {
            a.a((a) this.f41850b).m19880M3();
        }
    }
}
