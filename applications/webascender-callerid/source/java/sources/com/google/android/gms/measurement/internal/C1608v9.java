package com.google.android.gms.measurement.internal;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.measurement.internal.v9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v9.class */
final class C1608v9 extends SSLSocketFactory {

    /* renamed from: a */
    private final SSLSocketFactory f4542a;

    C1608v9(SSLSocketFactory sSLSocketFactory) {
        this.f4542a = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() throws IOException {
        return new C1602u9(this, (SSLSocket) this.f4542a.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        return new C1602u9(this, (SSLSocket) this.f4542a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return new C1602u9(this, (SSLSocket) this.f4542a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return new C1602u9(this, (SSLSocket) this.f4542a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return new C1602u9(this, (SSLSocket) this.f4542a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return new C1602u9(this, (SSLSocket) this.f4542a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f4542a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f4542a.getSupportedCipherSuites();
    }
}
