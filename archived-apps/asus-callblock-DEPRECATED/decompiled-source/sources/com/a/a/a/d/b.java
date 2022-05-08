package com.a.a.a.d;

import android.os.AsyncTask;
import android.os.Build;
import android.util.Pair;
import com.a.a.a.b.c;
import com.a.a.a.b.i;
import com.a.a.a.d;
import com.a.a.a.d.a.q;
import com.a.a.a.d.a.s;
import com.asus.updatesdk.BuildConfig;
import com.google.a.d.a.e;
import com.google.a.d.a.f;
import com.google.a.d.a.j;
import com.google.gson.l;
import com.google.gson.o;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.EnumSet;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.client.methods.HttpGet;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/b.class */
public final class b extends e {
    public b(String str, com.a.a.a.b bVar) {
        super(str, bVar);
        this.h.add(d.UntypedTable);
    }

    static /* synthetic */ String a(Header[] headerArr, String str) {
        String str2;
        if (headerArr != null) {
            for (Header header : headerArr) {
                if (header.getName().equals(str)) {
                    str2 = header.getValue();
                    break;
                }
            }
        }
        str2 = null;
        return str2;
    }

    public final f<l> a(com.a.a.a.d.a.l lVar) {
        final j jVar;
        String str;
        List<Pair<String, String>> g;
        j a2 = j.a();
        try {
            q qVar = new q();
            if (!(lVar == null || lVar.b() == null)) {
                lVar.b().a(qVar);
            }
            String sb = qVar.f386a.toString();
            String str2 = this.e.f350b.toString() + "tables/" + URLEncoder.encode(this.f, "UTF-8");
            if (sb.length() > 0) {
                str = str2 + "?$filter=" + sb + s.a(lVar, this);
            } else {
                str = str2;
                if (s.a(lVar, this).length() > 0) {
                    str = str2 + "?" + s.a(lVar, this).substring(1);
                }
            }
            EnumSet<d> clone = this.h.clone();
            if (!(lVar == null || (g = lVar.g()) == null || g.size() <= 0)) {
                clone.add(d.AdditionalQueryParameters);
            }
            jVar = j.a();
            final j a3 = j.a();
            i iVar = new i(new HttpGet(str), this.e.g);
            String a4 = d.a(clone);
            if (a4 != null) {
                iVar.a("X-ZUMO-FEATURES", a4);
            }
            com.a.a.a.b.f fVar = new com.a.a.a.b.f(iVar, new c(this.e)) { // from class: com.a.a.a.d.b.2
                @Override // android.os.AsyncTask
                protected final /* synthetic */ void onPostExecute(com.a.a.a.b.j jVar2) {
                    com.a.a.a.b.j jVar3 = jVar2;
                    if (this.f355a != null || jVar3 == null) {
                        a3.a((Throwable) this.f355a);
                        return;
                    }
                    try {
                        String b2 = jVar3.b();
                        new com.google.gson.q();
                        a3.a((j) Pair.create(com.google.gson.q.a(new StringReader(b2)), jVar3));
                    } catch (Exception e) {
                        a3.a((Throwable) new com.a.a.a.c("Error while retrieving data from response.", e, jVar3));
                    }
                }
            };
            if (Build.VERSION.SDK_INT >= 11) {
                fVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else {
                fVar.execute(new Void[0]);
            }
            e.a(a3, new com.google.a.d.a.d<Pair<l, com.a.a.a.b.j>>() { // from class: com.a.a.a.d.b.1
                @Override // com.google.a.d.a.d
                public final /* synthetic */ void a(Pair<l, com.a.a.a.b.j> pair) {
                    Pair<l, com.a.a.a.b.j> pair2 = pair;
                    String a5 = b.a(((com.a.a.a.b.j) pair2.second).a(), "Link");
                    if (a5 != null) {
                        o oVar = new o();
                        oVar.a("nextLink", a5.replace("; rel=next", BuildConfig.FLAVOR));
                        oVar.a("results", (l) pair2.first);
                        jVar.a((j) oVar);
                        return;
                    }
                    jVar.a((j) pair2.first);
                }

                @Override // com.google.a.d.a.d
                public final void a(Throwable th) {
                    jVar.a(th);
                }
            });
        } catch (UnsupportedEncodingException e) {
            a2.a((Throwable) e);
            jVar = a2;
        }
        return jVar;
    }

    @Override // com.a.a.a.d.e, com.a.a.a.d.f
    public final /* bridge */ /* synthetic */ EnumSet a() {
        return super.a();
    }

    @Override // com.a.a.a.d.e, com.a.a.a.d.f
    public final /* bridge */ /* synthetic */ List a(EnumSet enumSet, List list) {
        return super.a(enumSet, list);
    }

    @Override // com.a.a.a.d.e
    public final /* bridge */ /* synthetic */ void a(EnumSet enumSet) {
        super.a(enumSet);
    }
}
