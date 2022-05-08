package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/UdpDataSource.class */
public final class UdpDataSource extends BaseDataSource {
    public static final int DEFAULT_MAX_PACKET_SIZE = 2000;
    public static final int DEFAULT_SOCKET_TIMEOUT_MILLIS = 8000;
    @Nullable
    public InetAddress address;
    @Nullable
    public MulticastSocket multicastSocket;
    public boolean opened;
    public final DatagramPacket packet;
    public final byte[] packetBuffer;
    public int packetRemaining;
    @Nullable
    public DatagramSocket socket;
    @Nullable
    public InetSocketAddress socketAddress;
    public final int socketTimeoutMillis;
    @Nullable
    public Uri uri;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException.class */
    public static final class UdpDataSourceException extends IOException {
        public UdpDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    public UdpDataSource(int i) {
        this(i, 8000);
    }

    public UdpDataSource(int i, int i2) {
        super(true);
        this.socketTimeoutMillis = i2;
        this.packetBuffer = new byte[i];
        this.packet = new DatagramPacket(this.packetBuffer, 0, i);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() {
        this.uri = null;
        MulticastSocket multicastSocket = this.multicastSocket;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.address);
            } catch (IOException e) {
            }
            this.multicastSocket = null;
        }
        DatagramSocket datagramSocket = this.socket;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.socket = null;
        }
        this.address = null;
        this.socketAddress = null;
        this.packetRemaining = 0;
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) throws UdpDataSourceException {
        this.uri = dataSpec.uri;
        String host = this.uri.getHost();
        int port = this.uri.getPort();
        transferInitializing(dataSpec);
        try {
            this.address = InetAddress.getByName(host);
            this.socketAddress = new InetSocketAddress(this.address, port);
            if (this.address.isMulticastAddress()) {
                this.multicastSocket = new MulticastSocket(this.socketAddress);
                this.multicastSocket.joinGroup(this.address);
                this.socket = this.multicastSocket;
            } else {
                this.socket = new DatagramSocket(this.socketAddress);
            }
            try {
                this.socket.setSoTimeout(this.socketTimeoutMillis);
                this.opened = true;
                transferStarted(dataSpec);
                return -1L;
            } catch (SocketException e) {
                throw new UdpDataSourceException(e);
            }
        } catch (IOException e2) {
            throw new UdpDataSourceException(e2);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws UdpDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.packetRemaining == 0) {
            try {
                this.socket.receive(this.packet);
                this.packetRemaining = this.packet.getLength();
                bytesTransferred(this.packetRemaining);
            } catch (IOException e) {
                throw new UdpDataSourceException(e);
            }
        }
        int length = this.packet.getLength();
        int i3 = this.packetRemaining;
        int min = Math.min(i3, i2);
        System.arraycopy(this.packetBuffer, length - i3, bArr, i, min);
        this.packetRemaining -= min;
        return min;
    }
}
