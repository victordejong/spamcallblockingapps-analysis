package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.android.gms.internal.firebase_perf.zzaa;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
import p081h.p203i.p204a.p224e.p259j.p269j.C7928t5;
import p081h.p203i.p325c.p379z.p382d.C10076g;
import p081h.p203i.p325c.p379z.p382d.C10077h;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfOkHttpClient.class */
public class FirebasePerfOkHttpClient {
    /* renamed from: a */
    public static void m31024a(Response response, C7759a1 a1Var, long j, long j2) throws IOException {
        Request request = response.request();
        if (request != null) {
            a1Var.m19575a(request.url().url().toString());
            a1Var.m19573b(request.method());
            if (request.body() != null) {
                long contentLength = request.body().contentLength();
                if (contentLength != -1) {
                    a1Var.m19578a(contentLength);
                }
            }
            ResponseBody body = response.body();
            if (body != null) {
                long contentLength2 = body.contentLength();
                if (contentLength2 != -1) {
                    a1Var.m19574b(contentLength2);
                }
                MediaType contentType = body.contentType();
                if (contentType != null) {
                    a1Var.m19570c(contentType.toString());
                }
            }
            a1Var.m19572c(response.code());
            a1Var.m19571c(j);
            a1Var.m19567f(j2);
            a1Var.m19561v();
        }
    }

    @Keep
    public static void enqueue(Call call, Callback callback) {
        zzaa zzaaVar = new zzaa();
        call.enqueue(new C10076g(callback, C7928t5.m18867c(), zzaaVar, zzaaVar.m31841b()));
    }

    @Keep
    public static Response execute(Call call) throws IOException {
        C7759a1 a = C7759a1.m19576a(C7928t5.m18867c());
        zzaa zzaaVar = new zzaa();
        long b = zzaaVar.m31841b();
        try {
            Response execute = call.execute();
            m31024a(execute, a, b, zzaaVar.m31840c());
            return execute;
        } catch (IOException e) {
            Request request = call.request();
            if (request != null) {
                HttpUrl url = request.url();
                if (url != null) {
                    a.m19575a(url.url().toString());
                }
                if (request.method() != null) {
                    a.m19573b(request.method());
                }
            }
            a.m19571c(b);
            a.m19567f(zzaaVar.m31840c());
            C10077h.m13454a(a);
            throw e;
        }
    }
}
