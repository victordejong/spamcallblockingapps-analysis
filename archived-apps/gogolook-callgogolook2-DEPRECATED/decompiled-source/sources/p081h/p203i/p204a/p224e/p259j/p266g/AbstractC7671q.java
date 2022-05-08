package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7671q;
import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7678r;
/* renamed from: h.i.a.e.j.g.q */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/q.class */
public abstract class AbstractC7671q<MessageType extends AbstractC7671q<MessageType, BuilderType>, BuilderType extends AbstractC7678r<MessageType, BuilderType>> implements AbstractC7627k2 {
    public static boolean zzey = false;
    public int zzex = 0;

    /* renamed from: a */
    public void mo19829a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7627k2
    /* renamed from: e */
    public final AbstractC7539a0 mo19828e() {
        try {
            C7582f0 h = AbstractC7539a0.m20378h(mo20085g());
            mo20088a(h.m20175b());
            return h.m20176a();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: h */
    public int mo19827h() {
        throw new UnsupportedOperationException();
    }
}
