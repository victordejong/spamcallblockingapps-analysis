package p459j.p460a.p582w0;

import java.util.concurrent.TimeUnit;
import okhttp3.CertificatePinner;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import p459j.p460a.p513i.C12409f;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.h3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/h3.class */
public final class C14022h3 {

    /* renamed from: a */
    public static final C14022h3 f31458a = new C14022h3();

    /* renamed from: a */
    public final OkHttpClient m2770a(long j, Interceptor... interceptorArr) {
        C15149k.m377b(interceptorArr, "interceptors");
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        for (Interceptor interceptor : interceptorArr) {
            builder.addInterceptor(interceptor);
        }
        builder.addInterceptor(new C12409f());
        builder.addInterceptor(f31458a.m2771a());
        CertificatePinner.Builder builder2 = new CertificatePinner.Builder();
        builder2.add("*.whoscall.com", "sha256/tVhGjgsR/hsZTXDUa1xTTMvhmloBxzvJJIOK3KpozHk=");
        builder2.add("*.whoscall.com", "sha256/8Rw90Ej3Ttt8RRkrg+WYDS9n7IS03bk5bjP/UXPtaY8=");
        builder2.add("*.whoscall.com", "sha256/Ko8tivDrEjiY90yGasP6ZpBU4jwXvHqVvQI0GS3GNdA=");
        builder.certificatePinner(builder2.build());
        builder.connectTimeout(j, TimeUnit.SECONDS);
        builder.readTimeout(j, TimeUnit.SECONDS);
        OkHttpClient build = builder.build();
        C15149k.m383a((Object) build, "OkHttpClient.Builder()\n …                }.build()");
        return build;
    }

    /* renamed from: a */
    public final HttpLoggingInterceptor m2771a() {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.NONE);
        return httpLoggingInterceptor;
    }
}
