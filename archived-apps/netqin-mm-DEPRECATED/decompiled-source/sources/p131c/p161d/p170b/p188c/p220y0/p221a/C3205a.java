package p131c.p161d.p170b.p188c.p220y0.p221a;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* renamed from: c.d.b.c.y0.a.a */
/* loaded from: classes-dex2jar.jar:c/d/b/c/y0/a/a.class */
public final class C3205a {

    /* renamed from: a */
    public final ByteArrayOutputStream f11845a = new ByteArrayOutputStream(RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);

    /* renamed from: b */
    public final DataOutputStream f11846b = new DataOutputStream(this.f11845a);

    /* renamed from: a */
    public static void m27442a(DataOutputStream dataOutputStream, long j) throws IOException {
        dataOutputStream.writeByte(((int) (j >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j) & 255);
    }

    /* renamed from: a */
    public static void m27441a(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    /* renamed from: a */
    public byte[] m27443a(EventMessage eventMessage) {
        this.f11845a.reset();
        try {
            m27441a(this.f11846b, eventMessage.f22135a);
            m27441a(this.f11846b, eventMessage.f22136b != null ? eventMessage.f22136b : "");
            m27442a(this.f11846b, eventMessage.f22137c);
            m27442a(this.f11846b, eventMessage.f22138d);
            this.f11846b.write(eventMessage.f22139e);
            this.f11846b.flush();
            return this.f11845a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
