package p081h.p119d.p120a.p124s.p131j;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p149y.C6089a;
/* renamed from: h.d.a.s.j.o */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/o.class */
public class C5921o implements AbstractC5805b<InputStream> {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo24027a(InputStream inputStream, OutputStream outputStream) {
        byte[] a = C6089a.m23886b().m23888a();
        while (true) {
            try {
                try {
                    int read = inputStream.read(a);
                    if (read != -1) {
                        outputStream.write(a, 0, read);
                    } else {
                        C6089a.m23886b().m23887a(a);
                        return true;
                    }
                } catch (IOException e) {
                    Log.isLoggable("StreamEncoder", 3);
                    C6089a.m23886b().m23887a(a);
                    return false;
                }
            } catch (Throwable th) {
                C6089a.m23886b().m23887a(a);
                throw th;
            }
        }
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5805b
    public String getId() {
        return "";
    }
}
