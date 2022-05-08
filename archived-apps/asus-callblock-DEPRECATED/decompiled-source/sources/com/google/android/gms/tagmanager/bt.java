package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.e;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.j;
import com.google.android.gms.internal.v;
import com.google.android.gms.tagmanager.am;
import com.google.android.gms.tagmanager.bj;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bt.class */
final class bt implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final String f4311a;

    /* renamed from: b  reason: collision with root package name */
    am<j.C0127j> f4312b;
    volatile String c;
    volatile String d;
    private final Context e;
    private final g f;
    private final String g;
    private volatile dg h;

    private bt(Context context, String str, g gVar, dg dgVar) {
        this.e = context;
        this.f = gVar;
        this.g = str;
        this.h = dgVar;
        String valueOf = String.valueOf("/r?id=");
        String valueOf2 = String.valueOf(str);
        this.f4311a = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        this.c = this.f4311a;
        this.d = null;
    }

    public bt(Context context, String str, dg dgVar) {
        this(context, str, new g(), dgVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        if (this.f4312b == null) {
            throw new IllegalStateException("callback must be set before execute");
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.e.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            an.e("...no network connectivity");
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            am<j.C0127j> amVar = this.f4312b;
            int i = am.a.f4283a;
            amVar.a();
            return;
        }
        an.e("Start loading resource from network ...");
        String valueOf = String.valueOf(this.h.f4384a);
        String str = this.c;
        String valueOf2 = String.valueOf("&v=a65833898");
        String sb = new StringBuilder(String.valueOf(valueOf).length() + 0 + String.valueOf(str).length() + String.valueOf(valueOf2).length()).append(valueOf).append(str).append(valueOf2).toString();
        String str2 = sb;
        if (this.d != null) {
            str2 = sb;
            if (!this.d.trim().equals(BuildConfig.FLAVOR)) {
                String valueOf3 = String.valueOf(sb);
                String valueOf4 = String.valueOf("&pv=");
                String str3 = this.d;
                str2 = new StringBuilder(String.valueOf(valueOf3).length() + 0 + String.valueOf(valueOf4).length() + String.valueOf(str3).length()).append(valueOf3).append(valueOf4).append(str3).toString();
            }
        }
        if (bj.a().f4303a.equals(bj.a.CONTAINER_DEBUG)) {
            String valueOf5 = String.valueOf(str2);
            String valueOf6 = String.valueOf("&gtm_debug=x");
            str2 = valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5);
        }
        e eVar = new e();
        try {
            try {
                try {
                    InputStream a2 = eVar.a(str2);
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        c.a(a2, byteArrayOutputStream);
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        j.C0127j jVar = (j.C0127j) v.a(new j.C0127j(), byteArray, byteArray.length);
                        String valueOf7 = String.valueOf(jVar);
                        an.e(new StringBuilder(String.valueOf(valueOf7).length() + 43).append("Successfully loaded supplemented resource: ").append(valueOf7).toString());
                        if (jVar.f4209b == null && jVar.f4208a.length == 0) {
                            String valueOf8 = String.valueOf(this.g);
                            an.e(valueOf8.length() != 0 ? "No change for container: ".concat(valueOf8) : new String("No change for container: "));
                        }
                        this.f4312b.a(jVar);
                        eVar.a();
                        an.e("Load resource from network finished.");
                    } catch (IOException e) {
                        String valueOf9 = String.valueOf(e.getMessage());
                        an.b(new StringBuilder(String.valueOf(str2).length() + 51 + String.valueOf(valueOf9).length()).append("Error when parsing downloaded resources from url: ").append(str2).append(" ").append(valueOf9).toString(), e);
                        am<j.C0127j> amVar2 = this.f4312b;
                        int i2 = am.a.c;
                        amVar2.a();
                        eVar.a();
                    }
                } catch (IOException e2) {
                    String valueOf10 = String.valueOf(e2.getMessage());
                    an.b(new StringBuilder(String.valueOf(str2).length() + 40 + String.valueOf(valueOf10).length()).append("Error when loading resources from url: ").append(str2).append(" ").append(valueOf10).toString(), e2);
                    am<j.C0127j> amVar3 = this.f4312b;
                    int i3 = am.a.f4284b;
                    amVar3.a();
                    eVar.a();
                }
            } catch (FileNotFoundException e3) {
                String str4 = this.g;
                an.b(new StringBuilder(String.valueOf(str2).length() + 79 + String.valueOf(str4).length()).append("No data is retrieved from the given url: ").append(str2).append(". Make sure container_id: ").append(str4).append(" is correct.").toString());
                am<j.C0127j> amVar4 = this.f4312b;
                int i4 = am.a.c;
                amVar4.a();
                eVar.a();
            }
        } catch (Throwable th) {
            eVar.a();
            throw th;
        }
    }
}
