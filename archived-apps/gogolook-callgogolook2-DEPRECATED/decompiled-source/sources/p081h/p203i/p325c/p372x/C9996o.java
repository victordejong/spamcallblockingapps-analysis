package p081h.p203i.p325c.p372x;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p270k.C7979h;
import p081h.p203i.p204a.p224e.p259j.p270k.C7980i;
import p081h.p203i.p204a.p224e.p259j.p270k.C7982k;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
/* renamed from: h.i.c.x.o */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/o.class */
public class C9996o implements Closeable {

    /* renamed from: a */
    public final URL f22598a;
    @Nullable

    /* renamed from: b */
    public AbstractC9143h<Bitmap> f22599b;
    @Nullable

    /* renamed from: c */
    public volatile InputStream f22600c;

    public C9996o(URL url) {
        this.f22598a = url;
    }

    @Nullable
    /* renamed from: a */
    public static C9996o m13748a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new C9996o(new URL(str));
        } catch (MalformedURLException e) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Not downloading image, bad URL: ".concat(valueOf);
                return null;
            }
            new String("Not downloading image, bad URL: ");
            return null;
        }
    }

    /* renamed from: a */
    public Bitmap m13749a() throws IOException {
        String valueOf = String.valueOf(this.f22598a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Starting download of: ");
        sb.append(valueOf);
        sb.toString();
        byte[] b = m13746b();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(b, 0, b.length);
        if (decodeByteArray != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf2 = String.valueOf(this.f22598a);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 31);
                sb2.append("Successfully downloaded image: ");
                sb2.append(valueOf2);
                sb2.toString();
            }
            return decodeByteArray;
        }
        String valueOf3 = String.valueOf(this.f22598a);
        StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 24);
        sb3.append("Failed to decode image: ");
        sb3.append(valueOf3);
        throw new IOException(sb3.toString());
    }

    /* renamed from: a */
    public void m13747a(Executor executor) {
        this.f22599b = C9148k.m15997a(executor, new Callable(this) { // from class: h.i.c.x.n

            /* renamed from: a */
            public final C9996o f22597a;

            {
                this.f22597a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f22597a.m13749a();
            }
        });
    }

    /* renamed from: b */
    public final byte[] m13746b() throws IOException {
        URLConnection openConnection = this.f22598a.openConnection();
        if (openConnection.getContentLength() <= 1048576) {
            InputStream inputStream = openConnection.getInputStream();
            try {
                this.f22600c = inputStream;
                byte[] a = C7979h.m18710a(C7979h.m18709a(inputStream, 1048577L));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (Log.isLoggable("FirebaseMessaging", 2)) {
                    int length = a.length;
                    String valueOf = String.valueOf(this.f22598a);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("Downloaded ");
                    sb.append(length);
                    sb.append(" bytes from ");
                    sb.append(valueOf);
                    sb.toString();
                }
                if (a.length <= 1048576) {
                    return a;
                }
                throw new IOException("Image exceeds max size of 1048576");
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        C7982k.m18705a(th, th2);
                    }
                }
                throw th;
            }
        } else {
            throw new IOException("Content-Length exceeds max size of 1048576");
        }
    }

    /* renamed from: c */
    public AbstractC9143h<Bitmap> m13745c() {
        AbstractC9143h<Bitmap> hVar = this.f22599b;
        C7021t.m21290a(hVar);
        return hVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            C7980i.m18707a(this.f22600c);
        } catch (NullPointerException e) {
            Log.e("FirebaseMessaging", "Failed to close the image download stream.", e);
        }
    }
}
