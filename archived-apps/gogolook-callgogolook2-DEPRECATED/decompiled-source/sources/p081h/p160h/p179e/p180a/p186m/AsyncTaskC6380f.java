package p081h.p160h.p179e.p180a.p186m;

import android.content.Context;
import android.os.AsyncTask;
import javax.net.ssl.SSLHandshakeException;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p081h.p160h.p179e.p180a.p190p.p191f.C6433a;
import p081h.p160h.p179e.p180a.p190p.p191f.C6434b;
import p081h.p160h.p179e.p180a.p190p.p191f.C6435c;
/* renamed from: h.h.e.a.m.f */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/m/f.class */
public class AsyncTaskC6380f extends AsyncTask<Void, Integer, C6429b> {

    /* renamed from: a */
    public C6375a f15871a;

    /* renamed from: b */
    public boolean f15872b = false;

    /* renamed from: c */
    public int f15873c = 0;

    /* renamed from: d */
    public boolean f15874d = false;

    public AsyncTaskC6380f(Context context, C6375a aVar) {
        this.f15871a = null;
        this.f15871a = aVar;
    }

    /* renamed from: a */
    public static void m22898a(String str, String str2) {
        C6438i.m22576f(String.format("[File] download file %s from %s", str2, str));
    }

    /* renamed from: a */
    public final C6429b m22899a(Exception exc) {
        return exc instanceof SSLHandshakeException ? new C6429b(-205, exc.getMessage()) : exc instanceof C6435c ? new C6429b(-600, exc.getMessage()) : exc instanceof C6434b ? new C6429b(-701, exc.getMessage()) : exc instanceof C6433a ? new C6429b(-601, exc.getMessage()) : new C6429b(-1, exc.getMessage());
    }

    /* renamed from: a */
    public C6429b doInBackground(Void... voidArr) {
        C6429b bVar;
        try {
            m22897a(this.f15871a.f15863b, this.f15871a.f15864c, this.f15871a.f15866e);
            bVar = null;
        } catch (SSLHandshakeException e) {
            C6438i.m22583a(e);
            bVar = m22899a(e);
            try {
                m22897a(this.f15871a.f15863b, this.f15871a.f15864c, this.f15871a.f15866e);
            } catch (Exception e2) {
                e2.printStackTrace();
                bVar = m22899a(e2);
            }
        } catch (Exception e3) {
            C6438i.m22583a(e3);
            bVar = m22899a(e3);
        }
        return bVar;
    }

    /* renamed from: a */
    public void m22901a() {
        this.f15872b = true;
    }

    /* renamed from: a */
    public void onPostExecute(C6429b bVar) {
        C6375a aVar = this.f15871a;
        if (aVar != null) {
            if (this.f15874d) {
                m22898a(aVar.f15863b, "Success");
                this.f15871a.m22908c();
            } else if (this.f15872b) {
                m22898a(aVar.f15863b, "Cancel");
                this.f15871a.m22914a();
            } else {
                m22898a(aVar.f15863b, "Error");
                this.f15871a.m22911a(bVar);
            }
            this.f15871a.m22906e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0114 A[Catch: Exception -> 0x022b, IOException -> 0x0232, SSLHandshakeException -> 0x0239, TryCatch #2 {SSLHandshakeException -> 0x0239, IOException -> 0x0232, Exception -> 0x022b, blocks: (B:8:0x0018, B:10:0x0039, B:12:0x0053, B:14:0x005b, B:15:0x0077, B:17:0x008d, B:19:0x00a1, B:20:0x00ac, B:22:0x00b4, B:24:0x00f0, B:26:0x00ff, B:29:0x0109, B:31:0x0114, B:34:0x011f, B:36:0x012f, B:38:0x0140, B:39:0x014e, B:41:0x015b, B:43:0x015f, B:46:0x016b, B:50:0x0179, B:52:0x0183, B:54:0x0190, B:56:0x019a, B:58:0x01ac, B:60:0x01bf, B:61:0x01c9, B:63:0x01dc, B:65:0x01e6, B:67:0x01f7, B:69:0x01fd, B:70:0x020b, B:72:0x0211, B:73:0x021d, B:74:0x021e, B:74:0x021e, B:75:0x0221, B:76:0x022a), top: B:89:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x012f A[Catch: Exception -> 0x022b, IOException -> 0x0232, SSLHandshakeException -> 0x0239, TRY_LEAVE, TryCatch #2 {SSLHandshakeException -> 0x0239, IOException -> 0x0232, Exception -> 0x022b, blocks: (B:8:0x0018, B:10:0x0039, B:12:0x0053, B:14:0x005b, B:15:0x0077, B:17:0x008d, B:19:0x00a1, B:20:0x00ac, B:22:0x00b4, B:24:0x00f0, B:26:0x00ff, B:29:0x0109, B:31:0x0114, B:34:0x011f, B:36:0x012f, B:38:0x0140, B:39:0x014e, B:41:0x015b, B:43:0x015f, B:46:0x016b, B:50:0x0179, B:52:0x0183, B:54:0x0190, B:56:0x019a, B:58:0x01ac, B:60:0x01bf, B:61:0x01c9, B:63:0x01dc, B:65:0x01e6, B:67:0x01f7, B:69:0x01fd, B:70:0x020b, B:72:0x0211, B:73:0x021d, B:74:0x021e, B:74:0x021e, B:75:0x0221, B:76:0x022a), top: B:89:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x021e A[Catch: Exception -> 0x022b, Exception -> 0x022b, IOException -> 0x0232, IOException -> 0x0232, SSLHandshakeException -> 0x0239, SSLHandshakeException -> 0x0239, TRY_ENTER, TRY_LEAVE, TryCatch #2 {SSLHandshakeException -> 0x0239, IOException -> 0x0232, Exception -> 0x022b, blocks: (B:8:0x0018, B:10:0x0039, B:12:0x0053, B:14:0x005b, B:15:0x0077, B:17:0x008d, B:19:0x00a1, B:20:0x00ac, B:22:0x00b4, B:24:0x00f0, B:26:0x00ff, B:29:0x0109, B:31:0x0114, B:34:0x011f, B:36:0x012f, B:38:0x0140, B:39:0x014e, B:41:0x015b, B:43:0x015f, B:46:0x016b, B:50:0x0179, B:52:0x0183, B:54:0x0190, B:56:0x019a, B:58:0x01ac, B:60:0x01bf, B:61:0x01c9, B:63:0x01dc, B:65:0x01e6, B:67:0x01f7, B:69:0x01fd, B:70:0x020b, B:72:0x0211, B:73:0x021d, B:74:0x021e, B:74:0x021e, B:75:0x0221, B:76:0x022a), top: B:89:0x0018 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22897a(java.lang.String r7, java.lang.String r8, java.lang.String r9) throws java.lang.Exception, java.io.IOException, javax.net.ssl.SSLHandshakeException {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p180a.p186m.AsyncTaskC6380f.m22897a(java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* renamed from: a */
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate(numArr);
        C6375a aVar = this.f15871a;
        if (aVar != null) {
            aVar.m22913a(numArr[0].intValue());
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        C6375a aVar = this.f15871a;
        if (aVar != null) {
            aVar.m22905f();
            this.f15871a.m22907d();
        }
    }
}
