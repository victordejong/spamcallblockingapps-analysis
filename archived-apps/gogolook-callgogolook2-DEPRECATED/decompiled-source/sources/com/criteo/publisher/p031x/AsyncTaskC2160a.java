package com.criteo.publisher.p031x;

import android.content.Context;
import android.os.AsyncTask;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.C2043q;
import com.criteo.publisher.p020a0.AbstractC1911d;
import com.criteo.publisher.p020a0.C1925m;
import com.criteo.publisher.p030w.C2158a;
import com.criteo.publisher.p030w.C2159b;
import com.criteo.publisher.p032y.C2167a;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.x.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/x/a.class */
public class AsyncTaskC2160a extends AsyncTask<Object, Void, JSONObject> {

    /* renamed from: a */
    public final C2158a f2466a = C2159b.m35576b(AsyncTaskC2160a.class);
    @NonNull

    /* renamed from: b */
    public final Context f2467b;
    @NonNull

    /* renamed from: c */
    public final AbstractC1911d f2468c;
    @NonNull

    /* renamed from: d */
    public final C1925m f2469d;
    @NonNull

    /* renamed from: e */
    public final C2166d f2470e;
    @NonNull

    /* renamed from: f */
    public final C2043q f2471f;
    @NonNull

    /* renamed from: g */
    public final C2167a f2472g;

    public AsyncTaskC2160a(@NonNull Context context, @NonNull AbstractC1911d dVar, @NonNull C1925m mVar, @NonNull C2166d dVar2, @NonNull C2043q qVar, @NonNull C2167a aVar) {
        this.f2467b = context;
        this.f2468c = dVar;
        this.f2469d = mVar;
        this.f2470e = dVar2;
        this.f2471f = qVar;
        this.f2472g = aVar;
    }

    /* renamed from: a */
    private JSONObject m35574a(Object[] objArr) throws Exception {
        String str = (String) objArr[0];
        int e = this.f2469d.m36011e();
        JSONObject a = this.f2470e.m35562a(2379, this.f2467b.getPackageName(), this.f2469d.m36014b(), str, e, this.f2471f.mo35831a().get(), this.f2472g.m35547a());
        this.f2466a.m35580a("App event response: %s", a);
        return a;
    }

    /* renamed from: b */
    private void m35573b(@Nullable JSONObject jSONObject) {
        super.onPostExecute(jSONObject);
        if (jSONObject == null || !jSONObject.has("throttleSec")) {
            this.f2468c.mo36041a(0);
        } else {
            this.f2468c.mo36041a(jSONObject.optInt("throttleSec", 0));
        }
    }

    /* renamed from: a */
    public void onPostExecute(@Nullable JSONObject jSONObject) {
        try {
            m35573b(jSONObject);
        } catch (Throwable th) {
            this.f2466a.m35578b("Internal AET PostExec error.", th);
        }
    }

    @Override // android.os.AsyncTask
    public JSONObject doInBackground(Object... objArr) {
        JSONObject jSONObject;
        try {
            jSONObject = m35574a(objArr);
        } catch (Throwable th) {
            this.f2466a.m35578b("Internal AET exec error.", th);
            jSONObject = null;
        }
        return jSONObject;
    }
}
