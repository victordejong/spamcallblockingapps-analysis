package p193e.p194a.p937j4.p938a;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
/* renamed from: e.a.j4.a.a */
/* loaded from: classes11-dex2jar.jar:e/a/j4/a/a.class */
public abstract class AbstractAsyncTaskC15557a extends AsyncTask<Object, Void, Object> {

    /* renamed from: a */
    public final AbstractC15561d f44011a;

    /* renamed from: b */
    public boolean f44012b;

    /* renamed from: c */
    public final Object[] f44013c;

    public AbstractAsyncTaskC15557a() {
        this(null, false, true, null);
    }

    public AbstractAsyncTaskC15557a(AbstractC15561d abstractC15561d, boolean z, boolean z2, Object... objArr) {
        this.f44011a = abstractC15561d;
        this.f44012b = z;
        this.f44013c = objArr;
        if (z2) {
            Handler handler = AbstractC15558b.f44014a;
            Looper myLooper = Looper.myLooper();
            ((myLooper == null || myLooper == Looper.getMainLooper()) ? AbstractC15558b.f44014a : new Handler(myLooper)).post(new RunnableC15560c(false, this, new Object[0]));
        }
    }

    /* renamed from: a */
    public abstract void mo18682a(Object obj);

    @Override // android.os.AsyncTask
    public void onPostExecute(Object obj) {
        AbstractC15561d abstractC15561d;
        if (!this.f44012b && (abstractC15561d = this.f44011a) != null && !abstractC15561d.mo18684li()) {
            this.f44011a.mo18686b0();
        }
        mo18682a(obj);
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        AbstractC15561d abstractC15561d;
        if (this.f44012b || (abstractC15561d = this.f44011a) == null || abstractC15561d.mo18684li()) {
            return;
        }
        this.f44011a.mo18687E(false);
    }
}
