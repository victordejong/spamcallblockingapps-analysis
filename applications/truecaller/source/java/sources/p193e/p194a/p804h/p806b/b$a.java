package p193e.p194a.p804h.p806b;

import android.content.DialogInterface;
import com.truecaller.calling.dialer.DialerMode;
import com.truecaller.search.global.CompositeAdapterDelegate;
import n3.r.a.l;
import p193e.p194a.p1342w4.p1344s.C21228b0;
/* renamed from: e.a.h.b.b$a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/b$a.class */
public final class b$a implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f41870a;

    /* renamed from: b */
    public final /* synthetic */ Object f41871b;

    public b$a(int i, Object obj) {
        this.f41870a = i;
        this.f41871b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f41870a;
        l lVar = null;
        if (i2 != 0) {
            if (i2 != 1) {
                throw null;
            }
            b bVar = (b) this.f41871b;
            int i3 = b.c;
            l activity = bVar.getActivity();
            if (activity == null) {
                return;
            }
            s1.z.c.l.d(activity, "activity ?: return");
            C21228b0.m10114PA(activity, bVar.OA(), null, true, CompositeAdapterDelegate.SearchResultOrder.ORDER_TCGM);
            return;
        }
        b bVar2 = (b) this.f41871b;
        int i4 = b.c;
        l activity2 = bVar2.getActivity();
        if (activity2 instanceof AbstractC14611i) {
            lVar = activity2;
        }
        AbstractC14611i abstractC14611i = lVar;
        if (abstractC14611i == null) {
            return;
        }
        abstractC14611i.mo19932x5(DialerMode.STANDALONE, bVar2.OA());
    }
}
