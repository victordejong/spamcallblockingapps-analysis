package com.mixpanel.android.java_websocket.drafts;

import com.mixpanel.android.java_websocket.WebSocket;
import com.mixpanel.android.java_websocket.exceptions.IncompleteHandshakeException;
import com.mixpanel.android.java_websocket.exceptions.InvalidDataException;
import com.mixpanel.android.java_websocket.exceptions.InvalidHandshakeException;
import com.mixpanel.android.java_websocket.exceptions.LimitExedeedException;
import com.mixpanel.android.java_websocket.framing.Framedata;
import com.mixpanel.android.java_websocket.framing.FramedataImpl1;
import com.mixpanel.android.java_websocket.handshake.ClientHandshake;
import com.mixpanel.android.java_websocket.handshake.ClientHandshakeBuilder;
import com.mixpanel.android.java_websocket.handshake.HandshakeBuilder;
import com.mixpanel.android.java_websocket.handshake.HandshakeImpl1Client;
import com.mixpanel.android.java_websocket.handshake.HandshakeImpl1Server;
import com.mixpanel.android.java_websocket.handshake.Handshakedata;
import com.mixpanel.android.java_websocket.handshake.ServerHandshake;
import com.mixpanel.android.java_websocket.handshake.ServerHandshakeBuilder;
import com.mixpanel.android.java_websocket.util.Charsetfunctions;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/drafts/Draft.class */
public abstract class Draft {
    public static final byte[] FLASH_POLICY_REQUEST = Charsetfunctions.utf8Bytes("<policy-file-request/>��");
    public static int INITIAL_FAMESIZE = 64;
    public static int MAX_FAME_SIZE = 1000;
    protected WebSocket.Role role = null;
    protected Framedata.Opcode continuousFrameType = null;

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/drafts/Draft$CloseHandshakeType.class */
    public enum CloseHandshakeType {
        NONE,
        ONEWAY,
        TWOWAY
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/drafts/Draft$HandshakeState.class */
    public enum HandshakeState {
        MATCHED,
        NOT_MATCHED
    }

    public static ByteBuffer readLine(ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        byte b = 48;
        while (byteBuffer.hasRemaining()) {
            byte b2 = byteBuffer.get();
            allocate.put(b2);
            if (b == 13 && b2 == 10) {
                allocate.limit(allocate.position() - 2);
                allocate.position(0);
                return allocate;
            }
            b = b2;
        }
        byteBuffer.position(byteBuffer.position() - allocate.position());
        return null;
    }

    public static String readStringLine(ByteBuffer byteBuffer) {
        ByteBuffer readLine = readLine(byteBuffer);
        return readLine == null ? null : Charsetfunctions.stringAscii(readLine.array(), 0, readLine.limit());
    }

    public static HandshakeBuilder translateHandshakeHttp(ByteBuffer byteBuffer, WebSocket.Role role) throws InvalidHandshakeException, IncompleteHandshakeException {
        HandshakeImpl1Server handshakeImpl1Server;
        String readStringLine = readStringLine(byteBuffer);
        if (readStringLine == null) {
            throw new IncompleteHandshakeException(byteBuffer.capacity() + 128);
        }
        String[] split = readStringLine.split(" ", 3);
        if (split.length != 3) {
            throw new InvalidHandshakeException();
        }
        if (role == WebSocket.Role.CLIENT) {
            HandshakeImpl1Server handshakeImpl1Server2 = new HandshakeImpl1Server();
            HandshakeImpl1Server handshakeImpl1Server3 = handshakeImpl1Server2;
            handshakeImpl1Server3.setHttpStatus(Short.parseShort(split[1]));
            handshakeImpl1Server3.setHttpStatusMessage(split[2]);
            handshakeImpl1Server = handshakeImpl1Server2;
        } else {
            HandshakeImpl1Client handshakeImpl1Client = new HandshakeImpl1Client();
            handshakeImpl1Client.setResourceDescriptor(split[1]);
            handshakeImpl1Server = handshakeImpl1Client;
        }
        String readStringLine2 = readStringLine(byteBuffer);
        while (readStringLine2 != null && readStringLine2.length() > 0) {
            String[] split2 = readStringLine2.split(":", 2);
            if (split2.length != 2) {
                throw new InvalidHandshakeException("not an http header");
            }
            handshakeImpl1Server.put(split2[0], split2[1].replaceFirst("^ +", ""));
            readStringLine2 = readStringLine(byteBuffer);
        }
        if (readStringLine2 != null) {
            return handshakeImpl1Server;
        }
        throw new IncompleteHandshakeException();
    }

    public abstract HandshakeState acceptHandshakeAsClient(ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidHandshakeException;

    public abstract HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) throws InvalidHandshakeException;

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean basicAccept(Handshakedata handshakedata) {
        return handshakedata.getFieldValue("Upgrade").equalsIgnoreCase("websocket") && handshakedata.getFieldValue("Connection").toLowerCase(Locale.ENGLISH).contains("upgrade");
    }

    public int checkAlloc(int i) throws LimitExedeedException, InvalidDataException {
        if (i >= 0) {
            return i;
        }
        throw new InvalidDataException(1002, "Negative count");
    }

    public List<Framedata> continuousFrame(Framedata.Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        if (opcode == Framedata.Opcode.BINARY || opcode == Framedata.Opcode.TEXT || opcode == Framedata.Opcode.TEXT) {
            if (this.continuousFrameType != null) {
                this.continuousFrameType = Framedata.Opcode.CONTINUOUS;
            } else {
                this.continuousFrameType = opcode;
            }
            FramedataImpl1 framedataImpl1 = new FramedataImpl1(this.continuousFrameType);
            try {
                framedataImpl1.setPayload(byteBuffer);
                framedataImpl1.setFin(z);
                if (z) {
                    this.continuousFrameType = null;
                } else {
                    this.continuousFrameType = opcode;
                }
                return Collections.singletonList(framedataImpl1);
            } catch (InvalidDataException e) {
                throw new RuntimeException(e);
            }
        } else {
            throw new IllegalArgumentException("Only Opcode.BINARY or  Opcode.TEXT are allowed");
        }
    }

    public abstract Draft copyInstance();

    public abstract ByteBuffer createBinaryFrame(Framedata framedata);

    public abstract List<Framedata> createFrames(String str, boolean z);

    public abstract List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z);

    public List<ByteBuffer> createHandshake(Handshakedata handshakedata, WebSocket.Role role) {
        return createHandshake(handshakedata, role, true);
    }

    public List<ByteBuffer> createHandshake(Handshakedata handshakedata, WebSocket.Role role, boolean z) {
        StringBuilder sb = new StringBuilder(100);
        if (handshakedata instanceof ClientHandshake) {
            sb.append("GET ");
            sb.append(((ClientHandshake) handshakedata).getResourceDescriptor());
            sb.append(" HTTP/1.1");
        } else if (handshakedata instanceof ServerHandshake) {
            sb.append("HTTP/1.1 101 " + ((ServerHandshake) handshakedata).getHttpStatusMessage());
        } else {
            throw new RuntimeException("unknow role");
        }
        sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        Iterator<String> iterateHttpFields = handshakedata.iterateHttpFields();
        while (iterateHttpFields.hasNext()) {
            String next = iterateHttpFields.next();
            String fieldValue = handshakedata.getFieldValue(next);
            sb.append(next);
            sb.append(": ");
            sb.append(fieldValue);
            sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
        sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        byte[] asciiBytes = Charsetfunctions.asciiBytes(sb.toString());
        byte[] content = z ? handshakedata.getContent() : null;
        ByteBuffer allocate = ByteBuffer.allocate((content == null ? 0 : content.length) + asciiBytes.length);
        allocate.put(asciiBytes);
        if (content != null) {
            allocate.put(content);
        }
        allocate.flip();
        return Collections.singletonList(allocate);
    }

    public abstract CloseHandshakeType getCloseHandshakeType();

    public WebSocket.Role getRole() {
        return this.role;
    }

    public abstract ClientHandshakeBuilder postProcessHandshakeRequestAsClient(ClientHandshakeBuilder clientHandshakeBuilder) throws InvalidHandshakeException;

    public abstract HandshakeBuilder postProcessHandshakeResponseAsServer(ClientHandshake clientHandshake, ServerHandshakeBuilder serverHandshakeBuilder) throws InvalidHandshakeException;

    public abstract void reset();

    public void setParseMode(WebSocket.Role role) {
        this.role = role;
    }

    public abstract List<Framedata> translateFrame(ByteBuffer byteBuffer) throws InvalidDataException;

    public Handshakedata translateHandshake(ByteBuffer byteBuffer) throws InvalidHandshakeException {
        return translateHandshakeHttp(byteBuffer, this.role);
    }
}
