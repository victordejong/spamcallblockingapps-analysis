package p000a.p001a.p002a.p003a.p004a.p010e;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import p000a.p001a.p002a.p003a.p004a.p010e.C0093e;
/* renamed from: a.a.a.a.a.e.g */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/g.class */
final class C0100g implements C0093e.AbstractC0095b {
    @Override // p000a.p001a.p002a.p003a.p004a.p010e.C0093e.AbstractC0095b
    /* renamed from: a */
    public final HttpURLConnection mo10203a(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p010e.C0093e.AbstractC0095b
    /* renamed from: a */
    public final HttpURLConnection mo10202a(URL url, Proxy proxy) {
        return (HttpURLConnection) url.openConnection(proxy);
    }
}
