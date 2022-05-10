package p131c.p161d.p266c.p267a;

import com.mopub.nativeads.MoPubNativeAdPositioning;
/* renamed from: c.d.c.a.p */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/p.class */
public final class C4935p {

    /* renamed from: a */
    public final boolean f17568a;

    /* renamed from: b */
    public final AbstractC4937b f17569b;

    /* renamed from: c */
    public final int f17570c;

    /* renamed from: c.d.c.a.p$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/p$a.class */
    public static final class C4936a implements AbstractC4937b {
        public C4936a(AbstractC4909b bVar) {
        }
    }

    /* renamed from: c.d.c.a.p$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/p$b.class */
    public interface AbstractC4937b {
    }

    public C4935p(AbstractC4937b bVar) {
        this(bVar, false, AbstractC4909b.m24839a(), MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
    }

    public C4935p(AbstractC4937b bVar, boolean z, AbstractC4909b bVar2, int i) {
        this.f17569b = bVar;
        this.f17568a = z;
        this.f17570c = i;
    }

    /* renamed from: a */
    public static C4935p m24768a(char c) {
        return m24766b(AbstractC4909b.m24834c(c));
    }

    /* renamed from: b */
    public static C4935p m24766b(AbstractC4909b bVar) {
        C4933n.m24795a(bVar);
        return new C4935p(new C4936a(bVar));
    }

    /* renamed from: a */
    public C4935p m24769a() {
        return m24767a(AbstractC4909b.m24836b());
    }

    /* renamed from: a */
    public C4935p m24767a(AbstractC4909b bVar) {
        C4933n.m24795a(bVar);
        return new C4935p(this.f17569b, this.f17568a, bVar, this.f17570c);
    }
}
