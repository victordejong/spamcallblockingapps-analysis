package p131c.p372f.p373a.p374a.p375a;

import android.os.AsyncTask;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import p131c.p372f.p373a.p374a.p375a.p385n.C6455c;
/* renamed from: c.f.a.a.a.g */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/g.class */
public class AsyncTaskC6414g extends AsyncTask<String, Void, String> {

    /* renamed from: a */
    public AbstractC6415a f20096a;

    /* renamed from: c.f.a.a.a.g$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/g$a.class */
    public interface AbstractC6415a {
        void failedToLoadAvid();

        void onLoadAvid(String str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* renamed from: a */
    public String doInBackground(String... strArr) {
        Throwable th;
        BufferedInputStream bufferedInputStream;
        IOException e;
        String str = strArr[0];
        try {
            if (TextUtils.isEmpty(str)) {
                C6455c.m20824a("AvidLoader: URL is empty");
                return null;
            }
            try {
                URLConnection openConnection = new URL(str).openConnection();
                openConnection.connect();
                bufferedInputStream = new BufferedInputStream(openConnection.getInputStream());
            } catch (MalformedURLException e2) {
                bufferedInputStream = null;
            } catch (IOException e3) {
                e = e3;
                bufferedInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                strArr = 0;
                if (strArr != 0) {
                    try {
                        strArr.close();
                    } catch (IOException e4) {
                        C6455c.m20823a("AvidLoader: can not close Stream", e4);
                        return null;
                    }
                }
                throw th;
            }
            try {
                StringWriter stringWriter = new StringWriter();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read != -1) {
                        stringWriter.write(new String(bArr, 0, read));
                    } else {
                        String obj = stringWriter.toString();
                        try {
                            bufferedInputStream.close();
                            return obj;
                        } catch (IOException e5) {
                            C6455c.m20823a("AvidLoader: can not close Stream", e5);
                            return null;
                        }
                    }
                }
            } catch (MalformedURLException e6) {
                StringBuilder sb = new StringBuilder("AvidLoader: something is wrong with the URL '");
                sb.append(str);
                sb.append("'");
                C6455c.m20824a(sb.toString());
                if (bufferedInputStream == null) {
                    return null;
                }
                try {
                    bufferedInputStream.close();
                    return null;
                } catch (IOException e7) {
                    C6455c.m20823a("AvidLoader: can not close Stream", e7);
                    return null;
                }
            } catch (IOException e8) {
                e = e8;
                StringBuilder sb2 = new StringBuilder("AvidLoader: IO error ");
                sb2.append(e.getLocalizedMessage());
                C6455c.m20824a(sb2.toString());
                if (bufferedInputStream == null) {
                    return null;
                }
                try {
                    bufferedInputStream.close();
                    return null;
                } catch (IOException e9) {
                    C6455c.m20823a("AvidLoader: can not close Stream", e9);
                    return null;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public void m20926a(AbstractC6415a aVar) {
        this.f20096a = aVar;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        if (this.f20096a == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.f20096a.onLoadAvid(str);
        } else {
            this.f20096a.failedToLoadAvid();
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        AbstractC6415a aVar = this.f20096a;
        if (aVar != null) {
            aVar.failedToLoadAvid();
        }
    }
}
