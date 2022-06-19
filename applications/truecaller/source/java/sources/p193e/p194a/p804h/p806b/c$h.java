package p193e.p194a.p804h.p806b;

import android.content.DialogInterface;
/* renamed from: e.a.h.b.c$h */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/c$h.class */
public final class c$h implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ c f41892a;

    /* renamed from: b */
    public final /* synthetic */ String f41893b;

    public c$h(c cVar, String str) {
        this.f41892a = cVar;
        this.f41893b = str;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f41892a.s.Ic(this.f41893b);
    }
}
