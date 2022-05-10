package p012b.p076s.p078b.p079a.p111z0;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: b.s.b.a.z0.g */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/g.class */
public interface AbstractC1684g {

    /* renamed from: b.s.b.a.z0.g$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/z0/g$a.class */
    public interface AbstractC1685a {
        AbstractC1684g createDataSource();
    }

    /* renamed from: a */
    long mo32144a(C1687i iVar) throws IOException;

    /* renamed from: a */
    void mo32326a(AbstractC1704x xVar);

    void close() throws IOException;

    /* renamed from: o */
    Uri mo32142o();

    /* renamed from: p */
    Map<String, List<String>> mo32322p();

    int read(byte[] bArr, int i, int i2) throws IOException;
}
