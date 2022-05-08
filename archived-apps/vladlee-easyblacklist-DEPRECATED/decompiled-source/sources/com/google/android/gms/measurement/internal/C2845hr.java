package com.google.android.gms.measurement.internal;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.measurement.internal.hr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hr.class */
final class C2845hr extends SSLSocketFactory {

    /* renamed from: a */
    private final SSLSocketFactory f17040a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2845hr() {
        this(HttpsURLConnection.getDefaultSSLSocketFactory());
    }

    private C2845hr(SSLSocketFactory sSLSocketFactory) {
        this.f17040a = sSLSocketFactory;
    }

    /* renamed from: a */
    private static SSLSocket m2022a(SSLSocket sSLSocket) {
        return new C2844hq(sSLSocket);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return m2022a((SSLSocket) this.f17040a.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return m2022a((SSLSocket) this.f17040a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return m2022a((SSLSocket) this.f17040a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return m2022a((SSLSocket) this.f17040a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return m2022a((SSLSocket) this.f17040a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        return m2022a((SSLSocket) this.f17040a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f17040a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f17040a.getSupportedCipherSuites();
    }
}
