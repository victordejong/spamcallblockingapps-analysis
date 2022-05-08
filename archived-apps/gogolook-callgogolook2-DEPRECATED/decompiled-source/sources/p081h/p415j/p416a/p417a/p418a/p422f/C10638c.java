package p081h.p415j.p416a.p417a.p418a.p422f;

import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
import p081h.p415j.p416a.p417a.p418a.p420d.C10626i;
import p081h.p415j.p416a.p417a.p418a.p421e.C10627a;
import p081h.p415j.p416a.p417a.p418a.p422f.AbstractC10635a;
import p081h.p415j.p416a.p417a.p418a.p423g.C10641b;
import p081h.p415j.p416a.p417a.p418a.p423g.C10646f;
/* renamed from: h.j.a.a.a.f.c */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/f/c.class */
public class C10638c implements AbstractC10635a {

    /* renamed from: a */
    public final AbstractC10635a f24223a;

    public C10638c(AbstractC10635a aVar) {
        this.f24223a = aVar;
    }

    @NonNull
    /* renamed from: a */
    public ArrayList<View> m11111a() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        C10627a d = C10627a.m11148d();
        if (d != null) {
            Collection<C10626i> b = d.m11152b();
            IdentityHashMap identityHashMap = new IdentityHashMap((b.size() * 2) + 3);
            for (C10626i iVar : b) {
                View e = iVar.m11164e();
                if (e != null && C10646f.m11074c(e) && (rootView = e.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float a = C10646f.m11076a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && C10646f.m11076a(arrayList.get(size - 1)) > a) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p422f.AbstractC10635a
    /* renamed from: a */
    public JSONObject mo11110a(View view) {
        return C10641b.m11101a(0, 0, 0, 0);
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p422f.AbstractC10635a
    /* renamed from: a */
    public void mo11109a(View view, JSONObject jSONObject, AbstractC10635a.AbstractC10636a aVar, boolean z) {
        Iterator<View> it = m11111a().iterator();
        while (it.hasNext()) {
            aVar.mo11052a(it.next(), this.f24223a, jSONObject);
        }
    }
}
