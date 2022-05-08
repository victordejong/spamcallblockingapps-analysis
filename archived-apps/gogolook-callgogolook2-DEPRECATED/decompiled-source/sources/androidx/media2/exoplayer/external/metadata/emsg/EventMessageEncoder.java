package androidx.media2.exoplayer.external.metadata.emsg;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/EventMessageEncoder.class */
public final class EventMessageEncoder {
    public final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
    public final DataOutputStream dataOutputStream = new DataOutputStream(this.byteArrayOutputStream);

    public static void writeNullTerminatedString(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public static void writeUnsignedInt(DataOutputStream dataOutputStream, long j) throws IOException {
        dataOutputStream.writeByte(((int) (j >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j) & 255);
    }

    @Nullable
    public byte[] encode(EventMessage eventMessage) {
        this.byteArrayOutputStream.reset();
        try {
            writeNullTerminatedString(this.dataOutputStream, eventMessage.schemeIdUri);
            writeNullTerminatedString(this.dataOutputStream, eventMessage.value != null ? eventMessage.value : "");
            writeUnsignedInt(this.dataOutputStream, 1000L);
            writeUnsignedInt(this.dataOutputStream, 0L);
            writeUnsignedInt(this.dataOutputStream, eventMessage.durationMs);
            writeUnsignedInt(this.dataOutputStream, eventMessage.f86id);
            this.dataOutputStream.write(eventMessage.messageData);
            this.dataOutputStream.flush();
            return this.byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
