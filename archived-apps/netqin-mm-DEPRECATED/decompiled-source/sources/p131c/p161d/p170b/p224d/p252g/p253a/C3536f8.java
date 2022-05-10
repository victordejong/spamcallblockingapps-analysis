package p131c.p161d.p170b.p224d.p252g.p253a;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: c.d.b.d.g.a.f8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f8.class */
public final class C3536f8 extends SSLSocketFactory {

    /* renamed from: a */
    public SSLSocketFactory f12893a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b */
    public final /* synthetic */ C3462d8 f12894b;

    public C3536f8(C3462d8 d8Var) {
        this.f12894b = d8Var;
    }

    /* renamed from: a */
    public final Socket m27006a(Socket socket) throws SocketException {
        int i;
        int i2;
        i = this.f12894b.f12632o;
        if (i > 0) {
            i2 = this.f12894b.f12632o;
            socket.setReceiveBufferSize(i2);
        }
        this.f12894b.m27076a(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        Socket createSocket = this.f12893a.createSocket(str, i);
        m27006a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        Socket createSocket = this.f12893a.createSocket(str, i, inetAddress, i2);
        m27006a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        Socket createSocket = this.f12893a.createSocket(inetAddress, i);
        m27006a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        Socket createSocket = this.f12893a.createSocket(inetAddress, i, inetAddress2, i2);
        m27006a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        Socket createSocket = this.f12893a.createSocket(socket, str, i, z);
        m27006a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f12893a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f12893a.getSupportedCipherSuites();
    }
}
