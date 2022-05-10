package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzcil;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.uj */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/uj.class */
public final class C4106uj<T> implements zzahq<Object> {

    /* renamed from: a */
    public final WeakReference<T> f15648a;

    /* renamed from: b */
    public final String f15649b;

    /* renamed from: c */
    public final zzahq<T> f15650c;

    /* renamed from: d */
    public final /* synthetic */ zzcil f15651d;

    public C4106uj(zzcil zzcilVar, WeakReference<T> weakReference, String str, zzahq<T> zzahqVar) {
        this.f15651d = zzcilVar;
        this.f15648a = weakReference;
        this.f15649b = str;
        this.f15650c = zzahqVar;
    }

    public /* synthetic */ C4106uj(zzcil zzcilVar, WeakReference weakReference, String str, zzahq zzahqVar, C3881oj ojVar) {
        this(zzcilVar, weakReference, str, zzahqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        T t = this.f15648a.get();
        if (t == null) {
            this.f15651d.m14170b(this.f15649b, this);
        } else {
            this.f15650c.mo14168a(t, map);
        }
    }
}
