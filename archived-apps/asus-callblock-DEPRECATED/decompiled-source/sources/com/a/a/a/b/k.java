package com.a.a.a.b;

import android.net.http.AndroidHttpClient;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
/* loaded from: classes-dex2jar.jar:com/a/a/a/b/k.class */
public final class k implements j {

    /* renamed from: a  reason: collision with root package name */
    private HttpResponse f359a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f360b;

    public k(HttpResponse httpResponse) {
        this.f359a = httpResponse;
        this.f360b = null;
        HttpEntity entity = this.f359a.getEntity();
        if (entity != null) {
            InputStream ungzippedContent = AndroidHttpClient.getUngzippedContent(entity);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = ungzippedContent.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    ungzippedContent.close();
                    this.f360b = byteArrayOutputStream.toByteArray();
                    return;
                }
            }
        } else {
            this.f360b = null;
        }
    }

    @Override // com.a.a.a.b.j
    public final Header[] a() {
        return this.f359a.getAllHeaders();
    }

    @Override // com.a.a.a.b.j
    public final String b() {
        String str;
        if (this.f360b != null) {
            try {
                str = new String(this.f360b, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                str = null;
            }
        } else {
            str = null;
        }
        return str;
    }

    @Override // com.a.a.a.b.j
    public final StatusLine c() {
        return this.f359a.getStatusLine();
    }
}
