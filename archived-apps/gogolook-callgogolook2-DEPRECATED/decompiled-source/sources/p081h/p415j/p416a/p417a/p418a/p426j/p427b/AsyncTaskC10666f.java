package p081h.p415j.p416a.p417a.p418a.p426j.p427b;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;
import p081h.p415j.p416a.p417a.p418a.p420d.C10626i;
import p081h.p415j.p416a.p417a.p418a.p421e.C10627a;
import p081h.p415j.p416a.p417a.p418a.p423g.C10641b;
import p081h.p415j.p416a.p417a.p418a.p426j.p427b.AbstractAsyncTaskC10660b;
/* renamed from: h.j.a.a.a.j.b.f */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/b/f.class */
public class AsyncTaskC10666f extends AbstractAsyncTaskC10659a {
    public AsyncTaskC10666f(AbstractAsyncTaskC10660b.AbstractC10662b bVar, HashSet<String> hashSet, JSONObject jSONObject, double d) {
        super(bVar, hashSet, jSONObject, d);
    }

    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (C10641b.m11092b(this.f24256d, this.f24259b.mo11008b())) {
            return null;
        }
        this.f24259b.mo11010a(this.f24256d);
        return this.f24256d.toString();
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p426j.p427b.AbstractAsyncTaskC10660b
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            m11023b(str);
        }
        super.onPostExecute(str);
    }

    /* renamed from: b */
    public final void m11023b(String str) {
        C10627a d = C10627a.m11148d();
        if (d != null) {
            for (C10626i iVar : d.m11154a()) {
                if (this.f24255c.contains(iVar.m11158i())) {
                    iVar.m11157j().m11067a(str, this.f24257e);
                }
            }
        }
    }
}
