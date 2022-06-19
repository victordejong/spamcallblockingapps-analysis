package p193e.p194a.p804h.p806b;

import android.content.DialogInterface;
/* renamed from: e.a.h.b.c$b */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/c$b.class */
public final class c$b implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f41875a;

    /* renamed from: b */
    public final /* synthetic */ Object f41876b;

    /* renamed from: c */
    public final /* synthetic */ Object f41877c;

    public c$b(int i, Object obj, Object obj2) {
        this.f41875a = i;
        this.f41876b = obj;
        this.f41877c = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f41875a;
        if (i2 == 0) {
            ((c) this.f41876b).s.K6((String) this.f41877c);
        } else if (i2 != 1) {
            throw null;
        } else {
            ((c) this.f41876b).s.O8((String) this.f41877c);
        }
    }
}
