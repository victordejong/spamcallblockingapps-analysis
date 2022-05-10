package p131c.p396i.p397a.p399f.p401b;

import android.content.Context;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.Volley;
import com.library.p518ad.data.net.NoNetError;
import java.lang.reflect.Type;
import p131c.p161d.p354f.C6118f;
import p131c.p396i.p397a.p399f.p401b.C6528b;
import p131c.p396i.p397a.p399f.p401b.p402f.C6538a;
import p131c.p396i.p397a.p399f.p401b.p403g.C6539a;
import p131c.p396i.p397a.p417j.AbstractC6616c;
import p131c.p396i.p397a.p417j.C6614a;
/* renamed from: c.i.a.f.b.e */
/* loaded from: classes2-dex2jar.jar:c/i/a/f/b/e.class */
public class C6534e {

    /* renamed from: b */
    public static C6534e f20300b;

    /* renamed from: c */
    public static Context f20301c;

    /* renamed from: a */
    public RequestQueue f20302a = m20565a();

    /* renamed from: c.i.a.f.b.e$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/f/b/e$a.class */
    public class C6535a implements Response.Listener<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6530c f20303a;

        public C6535a(C6534e eVar, AbstractC6530c cVar) {
            this.f20303a = cVar;
        }

        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        /* renamed from: a */
        public void onResponse(C6539a aVar) {
            AbstractC6530c cVar = this.f20303a;
            if (cVar != null) {
                cVar.onResponse(aVar);
            }
        }
    }

    /* renamed from: c.i.a.f.b.e$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/f/b/e$b.class */
    public class C6536b implements Response.ErrorListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6530c f20304a;

        public C6536b(C6534e eVar, AbstractC6530c cVar) {
            this.f20304a = cVar;
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            AbstractC6530c cVar = this.f20304a;
            if (cVar != null) {
                cVar.onError(volleyError);
            }
        }
    }

    /* renamed from: c.i.a.f.b.e$c */
    /* loaded from: classes2-dex2jar.jar:c/i/a/f/b/e$c.class */
    public class C6537c implements C6528b.AbstractC6529a<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6530c f20305a;

        public C6537c(C6534e eVar, AbstractC6530c cVar) {
            this.f20305a = cVar;
        }

        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        /* renamed from: a */
        public void mo20558a(C6539a aVar) {
            AbstractC6530c cVar = this.f20305a;
            if (cVar != null) {
                cVar.mo20569a(aVar);
            }
        }
    }

    public C6534e(Context context) {
        f20301c = context;
    }

    /* renamed from: a */
    public static C6534e m20564a(Context context) {
        C6534e eVar;
        synchronized (C6534e.class) {
            try {
                if (f20300b == null) {
                    f20300b = new C6534e(context);
                }
                eVar = f20300b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public RequestQueue m20565a() {
        if (this.f20302a == null) {
            this.f20302a = Volley.newRequestQueue(f20301c.getApplicationContext());
        }
        return this.f20302a;
    }

    /* renamed from: a */
    public <T extends C6539a> void m20563a(C6538a aVar, Type type, AbstractC6530c<T> cVar, String str) {
        String url = aVar.getUrl();
        C6118f fVar = new C6118f();
        fVar.m21967a(1.0d);
        String a = fVar.m21968a().m21984a(aVar);
        String str2 = "requestString: " + a;
        C6528b bVar = new C6528b(url, a, type, new C6535a(this, cVar), new C6536b(this, cVar), new C6537c(this, cVar));
        bVar.m20571a(aVar.isZip());
        if (aVar.isZip()) {
            try {
                bVar.m20570a(AbstractC6616c.m20360a(a.getBytes()));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (C6614a.m20369a() || cVar == null) {
            bVar.setRetryPolicy(new DefaultRetryPolicy(20000, 1, 1.0f));
            if (str != null) {
                bVar.setTag(str);
            }
            m20562a(bVar);
            return;
        }
        cVar.onError(new NoNetError(bVar));
    }

    /* renamed from: a */
    public <T> void m20562a(Request<T> request) {
        if (request.getRetryPolicy() == null) {
            request.setRetryPolicy(new DefaultRetryPolicy(20000, 1, 1.0f));
        }
        m20565a().add(request);
    }

    /* renamed from: a */
    public void m20561a(String str, ImageLoader.ImageListener imageListener) {
        new ImageLoader(m20565a(), C6531d.m20568a()).get(str, imageListener);
    }
}
