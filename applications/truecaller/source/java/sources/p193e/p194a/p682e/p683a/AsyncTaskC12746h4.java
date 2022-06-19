package p193e.p194a.p682e.p683a;

import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a;
/* renamed from: e.a.e.a.h4 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/h4.class */
public class AsyncTaskC12746h4 extends AbstractAsyncTaskC15557a {

    /* renamed from: d */
    public Bitmap f37116d;

    /* renamed from: e */
    public final /* synthetic */ View f37117e;

    /* renamed from: f */
    public final /* synthetic */ View$OnClickListenerC12752i4 f37118f;

    public AsyncTaskC12746h4(View$OnClickListenerC12752i4 view$OnClickListenerC12752i4, View view) {
        this.f37118f = view$OnClickListenerC12752i4;
        this.f37117e = view;
    }

    @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
    /* renamed from: a */
    public void mo18682a(Object obj) {
        View$OnClickListenerC12752i4 view$OnClickListenerC12752i4 = this.f37118f;
        view$OnClickListenerC12752i4.f37135d = (Uri) obj;
        view$OnClickListenerC12752i4.f37134c.setEnabled(true);
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Object... objArr) {
        return C8582g0.m28325P(this.f37118f.getContext(), this.f37116d);
    }

    @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a, android.os.AsyncTask
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        this.f37116d.recycle();
    }

    @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a, android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        this.f37116d = C8582g0.m28327N(this.f37117e);
    }
}
