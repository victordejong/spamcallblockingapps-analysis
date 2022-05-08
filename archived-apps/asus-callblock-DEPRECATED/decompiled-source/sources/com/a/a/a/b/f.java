package com.a.a.a.b;

import android.os.AsyncTask;
import com.a.a.a.a;
import com.a.a.a.b;
import com.a.a.a.b.e;
import com.a.a.a.b.h;
import com.a.a.a.b.j;
import com.a.a.a.c;
import com.asus.updatesdk.BuildConfig;
import com.google.a.d.a.f;
/* loaded from: classes-dex2jar.jar:com/a/a/a/b/f.class */
public abstract class f extends AsyncTask<Void, Void, j> {

    /* renamed from: a  reason: collision with root package name */
    protected c f355a = null;

    /* renamed from: b  reason: collision with root package name */
    private c f356b;
    private h c;

    public f(h hVar, c cVar) {
        this.c = hVar;
        this.f356b = cVar;
    }

    private j a() {
        j jVar;
        final c cVar;
        h hVar;
        try {
            cVar = this.f356b;
            hVar = this.c;
        } catch (Exception e) {
            if (e.getCause() instanceof c) {
                this.f355a = (c) e.getCause();
            } else {
                this.f355a = new c(e);
            }
            jVar = null;
        }
        if (hVar == null) {
            throw new IllegalArgumentException("Request can not be null");
        }
        final b bVar = cVar.f352a;
        g gVar = bVar.d == null ? new g() { // from class: com.a.a.a.b.1
            @Override // com.a.a.a.b.g
            public final f<j> a(h hVar2, e eVar) {
                return eVar.a(hVar2);
            }
        } : bVar.d;
        com.a.a.a.a.b bVar2 = cVar.f352a.c;
        if (!(bVar2 == null || bVar2.f348a == BuildConfig.FLAVOR)) {
            hVar.a("X-ZUMO-AUTH", bVar2.f348a);
        }
        hVar.a("X-ZUMO-VERSION", "2.0.2");
        hVar.a("User-Agent", c.a());
        String str = cVar.f352a.f349a;
        if (str != null && str.trim().length() > 0) {
            hVar.a("X-ZUMO-APPLICATION", cVar.f352a.f349a);
        }
        hVar.a("X-ZUMO-INSTALLATION-ID", a.a(cVar.f352a.f));
        if (!c.a(hVar, "Accept")) {
            hVar.a("Accept", "application/json");
        }
        if (!c.a(hVar, "Accept-Encoding")) {
            hVar.a("Accept-Encoding", "gzip");
        }
        jVar = gVar.a(hVar, new e() { // from class: com.a.a.a.b.c.1
            @Override // com.a.a.a.b.e
            public final f<j> a(h hVar2) {
                j b2;
                int statusCode;
                com.google.a.d.a.j a2 = com.google.a.d.a.j.a();
                try {
                    b2 = hVar2.b();
                    statusCode = b2.c().getStatusCode();
                } catch (com.a.a.a.c e2) {
                    a2.a((Throwable) e2);
                } catch (Exception e3) {
                    a2.a((Throwable) new com.a.a.a.c("Error while processing request.", e3, null));
                }
                if (statusCode < 200 || statusCode >= 300) {
                    String b3 = b2.b();
                    if (b3 == null || b3.trim().equals(BuildConfig.FLAVOR)) {
                        throw new com.a.a.a.c(String.format("{'code': %d}", Integer.valueOf(statusCode)), b2);
                    }
                    throw new com.a.a.a.c(b3, b2);
                }
                a2.a((com.google.a.d.a.j) b2);
                return a2;
            }
        }).get();
        return jVar;
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ j doInBackground(Void[] voidArr) {
        return a();
    }
}
