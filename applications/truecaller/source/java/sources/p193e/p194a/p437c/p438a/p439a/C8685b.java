package p193e.p194a.p437c.p438a.p439a;

import com.truecaller.insights.p168ui.models.AdapterItem;
import p1727n3.p1744b0.p1745a.C25586h;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/b.class */
public final class C8685b extends C25586h.AbstractC25591e<AdapterItem> {
    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areContentsTheSame(AdapterItem adapterItem, AdapterItem adapterItem2) {
        AdapterItem adapterItem3 = adapterItem;
        AdapterItem adapterItem4 = adapterItem2;
        l.e(adapterItem3, "oldItem");
        l.e(adapterItem4, "newItem");
        return l.a(adapterItem3, adapterItem4);
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areItemsTheSame(AdapterItem adapterItem, AdapterItem adapterItem2) {
        AdapterItem adapterItem3 = adapterItem;
        AdapterItem adapterItem4 = adapterItem2;
        l.e(adapterItem3, "oldItem");
        l.e(adapterItem4, "newItem");
        return adapterItem3.mo35161b() == adapterItem4.mo35161b();
    }
}
