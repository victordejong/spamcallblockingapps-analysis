package p131c.p372f.p373a.p374a.p375a.p387p.p388c;

import android.os.AsyncTask;
import android.os.Build;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* renamed from: c.f.a.a.a.p.c.b */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/p/c/b.class */
public abstract class AbstractAsyncTaskC6464b extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    public AbstractC6465a f20159a;

    /* renamed from: b */
    public final AbstractC6466b f20160b;

    /* renamed from: c.f.a.a.a.p.c.b$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/p/c/b$a.class */
    public interface AbstractC6465a {
        /* renamed from: a */
        void mo20780a(AbstractAsyncTaskC6464b bVar);
    }

    /* renamed from: c.f.a.a.a.p.c.b$b */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/p/c/b$b.class */
    public interface AbstractC6466b {
        JSONObject getPreviousState();

        void setPreviousState(JSONObject jSONObject);
    }

    public AbstractAsyncTaskC6464b(AbstractC6466b bVar) {
        this.f20160b = bVar;
    }

    /* renamed from: a */
    public void m20783a(AbstractC6465a aVar) {
        this.f20159a = aVar;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AbstractC6465a aVar = this.f20159a;
        if (aVar != null) {
            aVar.mo20780a(this);
        }
    }

    /* renamed from: a */
    public void m20782a(ThreadPoolExecutor threadPoolExecutor) {
        if (Build.VERSION.SDK_INT > 11) {
            executeOnExecutor(threadPoolExecutor, new Object[0]);
        } else {
            execute(new Object[0]);
        }
    }
}
