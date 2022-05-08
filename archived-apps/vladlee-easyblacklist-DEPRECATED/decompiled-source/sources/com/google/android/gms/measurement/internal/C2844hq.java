package com.google.android.gms.measurement.internal;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
/* renamed from: com.google.android.gms.measurement.internal.hq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hq.class */
final class C2844hq extends SSLSocket {

    /* renamed from: a */
    private final SSLSocket f17039a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2844hq(SSLSocket sSLSocket) {
        this.f17039a = sSLSocket;
    }

    @Override // javax.net.ssl.SSLSocket
    public final void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f17039a.addHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void bind(SocketAddress socketAddress) {
        this.f17039a.bind(socketAddress);
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.f17039a.close();
        }
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress) {
        this.f17039a.connect(socketAddress);
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress, int i) {
        this.f17039a.connect(socketAddress, i);
    }

    public final boolean equals(Object obj) {
        return this.f17039a.equals(obj);
    }

    @Override // java.net.Socket
    public final SocketChannel getChannel() {
        return this.f17039a.getChannel();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getEnableSessionCreation() {
        return this.f17039a.getEnableSessionCreation();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledCipherSuites() {
        return this.f17039a.getEnabledCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledProtocols() {
        return this.f17039a.getEnabledProtocols();
    }

    @Override // java.net.Socket
    public final InetAddress getInetAddress() {
        return this.f17039a.getInetAddress();
    }

    @Override // java.net.Socket
    public final InputStream getInputStream() {
        return this.f17039a.getInputStream();
    }

    @Override // java.net.Socket
    public final boolean getKeepAlive() {
        return this.f17039a.getKeepAlive();
    }

    @Override // java.net.Socket
    public final InetAddress getLocalAddress() {
        return this.f17039a.getLocalAddress();
    }

    @Override // java.net.Socket
    public final int getLocalPort() {
        return this.f17039a.getLocalPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getLocalSocketAddress() {
        return this.f17039a.getLocalSocketAddress();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getNeedClientAuth() {
        return this.f17039a.getNeedClientAuth();
    }

    @Override // java.net.Socket
    public final boolean getOOBInline() {
        return this.f17039a.getOOBInline();
    }

    @Override // java.net.Socket
    public final OutputStream getOutputStream() {
        return this.f17039a.getOutputStream();
    }

    @Override // java.net.Socket
    public final int getPort() {
        return this.f17039a.getPort();
    }

    @Override // java.net.Socket
    public final int getReceiveBufferSize() {
        int receiveBufferSize;
        synchronized (this) {
            receiveBufferSize = this.f17039a.getReceiveBufferSize();
        }
        return receiveBufferSize;
    }

    @Override // java.net.Socket
    public final SocketAddress getRemoteSocketAddress() {
        return this.f17039a.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getReuseAddress() {
        return this.f17039a.getReuseAddress();
    }

    @Override // java.net.Socket
    public final int getSendBufferSize() {
        int sendBufferSize;
        synchronized (this) {
            sendBufferSize = this.f17039a.getSendBufferSize();
        }
        return sendBufferSize;
    }

    @Override // javax.net.ssl.SSLSocket
    public final SSLSession getSession() {
        return this.f17039a.getSession();
    }

    @Override // java.net.Socket
    public final int getSoLinger() {
        return this.f17039a.getSoLinger();
    }

    @Override // java.net.Socket
    public final int getSoTimeout() {
        int soTimeout;
        synchronized (this) {
            soTimeout = this.f17039a.getSoTimeout();
        }
        return soTimeout;
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedCipherSuites() {
        return this.f17039a.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedProtocols() {
        return this.f17039a.getSupportedProtocols();
    }

    @Override // java.net.Socket
    public final boolean getTcpNoDelay() {
        return this.f17039a.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public final int getTrafficClass() {
        return this.f17039a.getTrafficClass();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getUseClientMode() {
        return this.f17039a.getUseClientMode();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getWantClientAuth() {
        return this.f17039a.getWantClientAuth();
    }

    @Override // java.net.Socket
    public final boolean isBound() {
        return this.f17039a.isBound();
    }

    @Override // java.net.Socket
    public final boolean isClosed() {
        return this.f17039a.isClosed();
    }

    @Override // java.net.Socket
    public final boolean isConnected() {
        return this.f17039a.isConnected();
    }

    @Override // java.net.Socket
    public final boolean isInputShutdown() {
        return this.f17039a.isInputShutdown();
    }

    @Override // java.net.Socket
    public final boolean isOutputShutdown() {
        return this.f17039a.isOutputShutdown();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f17039a.removeHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void sendUrgentData(int i) {
        this.f17039a.sendUrgentData(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnableSessionCreation(boolean z) {
        this.f17039a.setEnableSessionCreation(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledCipherSuites(String[] strArr) {
        this.f17039a.setEnabledCipherSuites(strArr);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledProtocols(String[] strArr) {
        String[] strArr2 = strArr;
        if (strArr != null) {
            strArr2 = strArr;
            if (Arrays.asList(strArr).contains("SSLv3")) {
                ArrayList arrayList = new ArrayList(Arrays.asList(this.f17039a.getEnabledProtocols()));
                if (arrayList.size() > 1) {
                    arrayList.remove("SSLv3");
                }
                strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
        }
        this.f17039a.setEnabledProtocols(strArr2);
    }

    @Override // java.net.Socket
    public final void setKeepAlive(boolean z) {
        this.f17039a.setKeepAlive(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setNeedClientAuth(boolean z) {
        this.f17039a.setNeedClientAuth(z);
    }

    @Override // java.net.Socket
    public final void setOOBInline(boolean z) {
        this.f17039a.setOOBInline(z);
    }

    @Override // java.net.Socket
    public final void setPerformancePreferences(int i, int i2, int i3) {
        this.f17039a.setPerformancePreferences(i, i2, i3);
    }

    @Override // java.net.Socket
    public final void setReceiveBufferSize(int i) {
        synchronized (this) {
            this.f17039a.setReceiveBufferSize(i);
        }
    }

    @Override // java.net.Socket
    public final void setReuseAddress(boolean z) {
        this.f17039a.setReuseAddress(z);
    }

    @Override // java.net.Socket
    public final void setSendBufferSize(int i) {
        synchronized (this) {
            this.f17039a.setSendBufferSize(i);
        }
    }

    @Override // java.net.Socket
    public final void setSoLinger(boolean z, int i) {
        this.f17039a.setSoLinger(z, i);
    }

    @Override // java.net.Socket
    public final void setSoTimeout(int i) {
        synchronized (this) {
            this.f17039a.setSoTimeout(i);
        }
    }

    @Override // java.net.Socket
    public final void setTcpNoDelay(boolean z) {
        this.f17039a.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public final void setTrafficClass(int i) {
        this.f17039a.setTrafficClass(i);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setUseClientMode(boolean z) {
        this.f17039a.setUseClientMode(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setWantClientAuth(boolean z) {
        this.f17039a.setWantClientAuth(z);
    }

    @Override // java.net.Socket
    public final void shutdownInput() {
        this.f17039a.shutdownInput();
    }

    @Override // java.net.Socket
    public final void shutdownOutput() {
        this.f17039a.shutdownOutput();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void startHandshake() {
        this.f17039a.startHandshake();
    }

    @Override // javax.net.ssl.SSLSocket, java.net.Socket
    public final String toString() {
        return this.f17039a.toString();
    }
}
