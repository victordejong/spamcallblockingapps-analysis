package p193e.p194a.p852i;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.gms.ads.nativead.NativeAd;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1476r.C22591h;
import s1.z.c.l;
/* renamed from: e.a.i.k */
/* loaded from: classes2-dex2jar.jar:e/a/i/k.class */
public final class ViewGroup$OnHierarchyChangeListenerC15209k implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: a */
    public final /* synthetic */ Context f43281a;

    /* renamed from: b */
    public final /* synthetic */ NativeAd.Image f43282b;

    public ViewGroup$OnHierarchyChangeListenerC15209k(Context context, NativeAd.Image image) {
        this.f43281a = context;
        this.f43282b = image;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        l.e(view, "parent");
        l.e(view2, "child");
        if (view2 instanceof ImageView) {
            ComponentCallbacks2C22222c.m8446e(this.f43281a).mo8410o(this.f43282b.getDrawable()).mo8103e().mo8106a(C22591h.m8074H()).m8427O((ImageView) view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        l.e(view, "parent");
        l.e(view2, "child");
    }
}
