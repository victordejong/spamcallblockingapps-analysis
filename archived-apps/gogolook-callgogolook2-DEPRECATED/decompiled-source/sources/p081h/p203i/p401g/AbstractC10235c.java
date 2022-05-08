package p081h.p203i.p401g;

import p081h.p203i.p401g.AbstractC10437l0;
/* renamed from: h.i.g.c */
/* loaded from: classes2-dex2jar.jar:h/i/g/c.class */
public abstract class AbstractC10235c<MessageType extends AbstractC10437l0> implements AbstractC10462s0<MessageType> {

    /* renamed from: a */
    public static final C10459r f23062a = C10459r.m11791a();

    @Override // p081h.p203i.p401g.AbstractC10462s0
    /* renamed from: a */
    public MessageType mo11789a(AbstractC10253g gVar, C10459r rVar) throws C10222a0 {
        return m13055a((AbstractC10235c<MessageType>) m13052b(gVar, rVar));
    }

    /* renamed from: a */
    public final MessageType m13055a(MessageType messagetype) throws C10222a0 {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        C10222a0 a = m13051b(messagetype).m13033a();
        a.m13078a(messagetype);
        throw a;
    }

    @Override // p081h.p203i.p401g.AbstractC10462s0
    /* renamed from: a */
    public MessageType mo11787a(byte[] bArr) throws C10222a0 {
        return m13053a(bArr, f23062a);
    }

    /* renamed from: a */
    public MessageType m13054a(byte[] bArr, int i, int i2, C10459r rVar) throws C10222a0 {
        MessageType b = m13050b(bArr, i, i2, rVar);
        m13055a((AbstractC10235c<MessageType>) b);
        return b;
    }

    /* renamed from: a */
    public MessageType m13053a(byte[] bArr, C10459r rVar) throws C10222a0 {
        return m13054a(bArr, 0, bArr.length, rVar);
    }

    /* renamed from: b */
    public final C10241d1 m13051b(MessageType messagetype) {
        return messagetype instanceof AbstractC10228b ? ((AbstractC10228b) messagetype).mo13061k() : new C10241d1(messagetype);
    }

    /* renamed from: b */
    public MessageType m13052b(AbstractC10253g gVar, C10459r rVar) throws C10222a0 {
        try {
            AbstractC10267h c = gVar.mo12951c();
            MessageType messagetype = (MessageType) ((AbstractC10437l0) mo11788a(c, rVar));
            try {
                c.mo12924a(0);
                return messagetype;
            } catch (C10222a0 e) {
                e.m13078a(messagetype);
                throw e;
            }
        } catch (C10222a0 e2) {
            throw e2;
        }
    }

    /* renamed from: b */
    public MessageType m13050b(byte[] bArr, int i, int i2, C10459r rVar) throws C10222a0 {
        try {
            AbstractC10267h a = AbstractC10267h.m12936a(bArr, i, i2);
            MessageType messagetype = (MessageType) ((AbstractC10437l0) mo11788a(a, rVar));
            try {
                a.mo12924a(0);
                return messagetype;
            } catch (C10222a0 e) {
                e.m13078a(messagetype);
                throw e;
            }
        } catch (C10222a0 e2) {
            throw e2;
        }
    }
}
