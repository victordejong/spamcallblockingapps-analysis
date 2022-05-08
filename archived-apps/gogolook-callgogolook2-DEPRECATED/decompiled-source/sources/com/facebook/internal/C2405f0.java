package com.facebook.internal;

import android.net.Uri;
import com.facebook.internal.C2473q;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
/* renamed from: com.facebook.internal.f0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/f0.class */
public class C2405f0 {

    /* renamed from: a */
    public static final String f2997a = "f0";

    /* renamed from: b */
    public static final String f2998b = f2997a + "_Redirect";

    /* renamed from: c */
    public static C2473q f2999c;

    /* renamed from: a */
    public static Uri m34890a(Uri uri) {
        InputStreamReader inputStreamReader;
        Throwable th;
        if (uri == null) {
            return null;
        }
        String uri2 = uri.toString();
        try {
            C2473q a = m34891a();
            InputStreamReader inputStreamReader2 = null;
            boolean z = false;
            while (true) {
                try {
                    InputStream a2 = a.m34623a(uri2, f2998b);
                    if (a2 == null) {
                        break;
                    }
                    z = true;
                    inputStreamReader = new InputStreamReader(a2);
                    try {
                        char[] cArr = new char[128];
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            int read = inputStreamReader.read(cArr, 0, cArr.length);
                            if (read <= 0) {
                                break;
                            }
                            sb.append(cArr, 0, read);
                        }
                        C2408g0.m34863a(inputStreamReader);
                        uri2 = sb.toString();
                        inputStreamReader2 = inputStreamReader;
                    } catch (IOException e) {
                        C2408g0.m34863a(inputStreamReader);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        C2408g0.m34863a(inputStreamReader);
                        throw th;
                    }
                } catch (IOException e2) {
                    inputStreamReader = inputStreamReader2;
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamReader = inputStreamReader2;
                }
            }
            if (z) {
                Uri parse = Uri.parse(uri2);
                C2408g0.m34863a(inputStreamReader2);
                return parse;
            }
            C2408g0.m34863a(inputStreamReader2);
            return null;
        } catch (IOException e3) {
            inputStreamReader = null;
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader = null;
        }
    }

    /* renamed from: a */
    public static C2473q m34891a() throws IOException {
        C2473q qVar;
        synchronized (C2405f0.class) {
            try {
                if (f2999c == null) {
                    f2999c = new C2473q(f2997a, new C2473q.C2482g());
                }
                qVar = f2999c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qVar;
    }

    /* renamed from: a */
    public static void m34889a(Uri uri, Uri uri2) {
        if (uri != null && uri2 != null) {
            OutputStream outputStream = null;
            OutputStream outputStream2 = null;
            try {
                outputStream = m34891a().m34619b(uri.toString(), f2998b);
                outputStream2 = outputStream;
                outputStream = outputStream;
                outputStream.write(uri2.toString().getBytes());
            } catch (IOException e) {
            } catch (Throwable th) {
                C2408g0.m34863a(outputStream2);
                throw th;
            }
            C2408g0.m34863a(outputStream);
        }
    }
}
