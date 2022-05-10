package p599h;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
/* renamed from: h.o */
/* loaded from: classes2-dex2jar.jar:h/o.class */
public interface AbstractC10227o {

    /* renamed from: a */
    public static final AbstractC10227o f37745a = new C10228a();

    /* renamed from: h.o$a */
    /* loaded from: classes2-dex2jar.jar:h/o$a.class */
    public class C10228a implements AbstractC10227o {
        @Override // p599h.AbstractC10227o
        /* renamed from: a */
        public List<InetAddress> mo1002a(String str) throws UnknownHostException {
            if (str != null) {
                try {
                    return Arrays.asList(InetAddress.getAllByName(str));
                } catch (NullPointerException e) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + str);
                    unknownHostException.initCause(e);
                    throw unknownHostException;
                }
            } else {
                throw new UnknownHostException("hostname == null");
            }
        }
    }

    /* renamed from: a */
    List<InetAddress> mo1002a(String str) throws UnknownHostException;
}
