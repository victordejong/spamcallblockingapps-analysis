package p193e.p194a.p786g0.p789k;

import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.g0.k.e */
/* loaded from: classes14-dex2jar.jar:e/a/g0/k/e.class */
public abstract class AbstractC14390e {

    /* renamed from: a */
    public final AbstractC12603e f41529a;

    /* renamed from: e.a.g0.k.e$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/k/e$a.class */
    public static final class C14391a extends AbstractC14390e {

        /* renamed from: b */
        public final C14384a f41530b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14391a(C14384a c14384a, AbstractC12603e abstractC12603e) {
            super(abstractC12603e, null);
            l.e(c14384a, "error");
            l.e(abstractC12603e, "engine");
            this.f41530b = c14384a;
        }
    }

    /* renamed from: e.a.g0.k.e$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/k/e$b.class */
    public static final class C14392b extends AbstractC14390e {

        /* renamed from: b */
        public final String f41531b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14392b(String str, AbstractC12603e abstractC12603e) {
            super(abstractC12603e, null);
            l.e(str, RemoteMessageConst.DATA);
            l.e(abstractC12603e, "engine");
            this.f41531b = str;
        }
    }

    public AbstractC14390e(AbstractC12603e abstractC12603e, f fVar) {
        this.f41529a = abstractC12603e;
    }
}
