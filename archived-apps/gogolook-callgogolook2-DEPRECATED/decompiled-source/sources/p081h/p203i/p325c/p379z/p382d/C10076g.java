package p081h.p203i.p325c.p379z.p382d;

import com.google.android.gms.internal.firebase-perf.zzaa;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
import p081h.p203i.p204a.p224e.p259j.p269j.C7928t5;
/* renamed from: h.i.c.z.d.g */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/d/g.class */
public final class C10076g implements Callback {

    /* renamed from: a */
    public final Callback f22784a;

    /* renamed from: b */
    public final C7759a1 f22785b;

    /* renamed from: c */
    public final long f22786c;

    /* renamed from: d */
    public final zzaa f22787d;

    public C10076g(Callback callback, C7928t5 t5Var, zzaa zzaaVar, long j) {
        this.f22784a = callback;
        this.f22785b = C7759a1.m19576a(t5Var);
        this.f22786c = j;
        this.f22787d = zzaaVar;
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException iOException) {
        Request request = call.request();
        if (request != null) {
            HttpUrl url = request.url();
            if (url != null) {
                this.f22785b.m19575a(url.url().toString());
            }
            if (request.method() != null) {
                this.f22785b.m19573b(request.method());
            }
        }
        this.f22785b.m19571c(this.f22786c);
        this.f22785b.m19567f(this.f22787d.m31840c());
        C10077h.m13454a(this.f22785b);
        this.f22784a.onFailure(call, iOException);
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) throws IOException {
        FirebasePerfOkHttpClient.m31024a(response, this.f22785b, this.f22786c, this.f22787d.m31840c());
        this.f22784a.onResponse(call, response);
    }
}
