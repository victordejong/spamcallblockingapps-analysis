package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.AbstractC0816d;
import com.google.android.gms.common.api.AbstractC0818e;
import com.google.android.gms.common.api.C0820f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.q;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.p024l.C0945a;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.google.android.gms.auth.api.signin.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/g.class */
public final class RunnableC0775g implements Runnable {

    /* renamed from: h */
    private static final C0945a f3266h = new C0945a("RevokeAccessOperation", new String[0]);

    /* renamed from: f */
    private final String f3267f;

    /* renamed from: g */
    private final q f3268g = new q((AbstractC0816d) null);

    private RunnableC0775g(String str) {
        C0931r.m3312g(str);
        this.f3267f = str;
    }

    /* renamed from: a */
    public static AbstractC0818e<Status> m3760a(String str) {
        if (str == null) {
            return C0820f.m3644a(new Status(4), null);
        }
        RunnableC0775g runnableC0775g = new RunnableC0775g(str);
        new Thread(runnableC0775g).start();
        return runnableC0775g.f3268g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.l;
        Status status2 = status;
        Status status3 = status;
        try {
            String valueOf = String.valueOf(this.f3267f);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(valueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(valueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.j;
            } else {
                f3266h.m3220c("Unable to revoke access!", new Object[0]);
            }
            Status status4 = status;
            C0945a c0945a = f3266h;
            Status status5 = status;
            Status status6 = status;
            StringBuilder sb = new StringBuilder(26);
            Status status7 = status;
            sb.append("Response Code: ");
            Status status8 = status;
            sb.append(responseCode);
            status2 = status;
            status3 = status;
            c0945a.m3222a(sb.toString(), new Object[0]);
        } catch (IOException e) {
            C0945a c0945a2 = f3266h;
            String valueOf2 = String.valueOf(e.toString());
            c0945a2.m3220c(valueOf2.length() != 0 ? "IOException when revoking access: ".concat(valueOf2) : new String("IOException when revoking access: "), new Object[0]);
            status = status3;
        } catch (Exception e2) {
            C0945a c0945a3 = f3266h;
            String valueOf3 = String.valueOf(e2.toString());
            c0945a3.m3220c(valueOf3.length() != 0 ? "Exception when revoking access: ".concat(valueOf3) : new String("Exception when revoking access: "), new Object[0]);
            status = status2;
        }
        this.f3268g.i(status);
    }
}
