package com.google.android.gms.internal.ads;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ho */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ho.class */
public final class C1931ho extends SSLSocketFactory {

    /* renamed from: a */
    private SSLSocketFactory f8550a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b */
    private final /* synthetic */ C1932hp f8551b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1931ho(C1932hp hpVar) {
        this.f8551b = hpVar;
    }

    /* renamed from: a */
    private final Socket m4712a(Socket socket) {
        int i;
        int i2;
        i = this.f8551b.f8568q;
        if (i > 0) {
            i2 = this.f8551b.f8568q;
            socket.setReceiveBufferSize(i2);
        }
        this.f8551b.f8569r.add(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return m4712a(this.f8550a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return m4712a(this.f8550a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return m4712a(this.f8550a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return m4712a(this.f8550a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        return m4712a(this.f8550a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f8550a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f8550a.getSupportedCipherSuites();
    }
}
