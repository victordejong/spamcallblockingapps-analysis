package p193e.p194a.p437c.p531c0;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import s1.z.c.l;
/* renamed from: e.a.c.c0.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/n.class */
public final class C10027n implements AbstractC10026m {

    /* renamed from: a */
    public final Context f29859a;

    public C10027n(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f29859a = context;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10026m
    /* renamed from: a */
    public void mo26891a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10026m
    /* renamed from: b */
    public BufferedReader mo26890b(String str) {
        BufferedReader bufferedReader;
        l.e(str, "fileName");
        try {
            InputStream open = this.f29859a.getAssets().open(str);
            bufferedReader = null;
            if (open != null) {
                bufferedReader = new BufferedReader(new InputStreamReader(open));
            }
        } catch (IOException e) {
            C10263b.f30414d.m26508b(e, null);
            bufferedReader = null;
        }
        return bufferedReader;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10026m
    /* renamed from: c */
    public InputStream mo26889c(String str) {
        l.e(str, "fileName");
        try {
            return this.f29859a.getAssets().open(str);
        } catch (IOException e) {
            return null;
        }
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10026m
    /* renamed from: d */
    public String mo26888d(InputStream inputStream) {
        InputStreamReader inputStreamReader;
        Throwable th;
        l.e(inputStream, "inputStream");
        StringBuilder sb = new StringBuilder(16384);
        try {
            try {
                inputStreamReader = new InputStreamReader(inputStream, "UTF8");
            } catch (IOException e) {
            }
            try {
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    sb.append(readLine);
                    sb.append('\n');
                }
                inputStreamReader.close();
            } catch (IOException e2) {
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
                String sb2 = sb.toString();
                l.d(sb2, "outPut.toString()");
                return sb2;
            } catch (Throwable th2) {
                th = th2;
                if (inputStreamReader != null) {
                    try {
                        inputStreamReader.close();
                    } catch (IOException e3) {
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            inputStreamReader = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
        String sb22 = sb.toString();
        l.d(sb22, "outPut.toString()");
        return sb22;
    }
}
