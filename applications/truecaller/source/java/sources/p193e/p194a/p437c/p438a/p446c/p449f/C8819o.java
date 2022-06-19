package p193e.p194a.p437c.p438a.p446c.p449f;

import androidx.lifecycle.LiveData;
import com.truecaller.insights.p168ui.models.AdapterItem;
import io.agora.rtc.Constants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p437c.p438a.p479i.AbstractC9117k;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.AbstractC10259i;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.f.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/o.class */
public final class C8819o extends AbstractC9117k<s, LiveData<AdapterItem.C4109a>> {

    /* renamed from: b */
    public final AbstractC10028o f26900b;

    /* renamed from: c */
    public final AbstractC10259i f26901c;

    /* renamed from: d */
    public final AbstractC10060c f26902d;

    /* renamed from: e */
    public final AbstractC9691j f26903e;

    /* renamed from: f */
    public final AbstractC9686e f26904f;

    @e(c = "com.truecaller.insights.ui.important.domain.ModelDownloadBannerUsecase", f = "ModelDownloadBannerUsecase.kt", l = {176}, m = "isModelAlreadyDownloaded")
    /* renamed from: e.a.c.a.c.f.o$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/o$a.class */
    public static final class C8820a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f26905d;

        /* renamed from: e */
        public int f26906e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8820a(d dVar) {
            super(dVar);
            C8819o.this = r4;
        }

        /* renamed from: s */
        public final Object m28032s(Object obj) {
            this.f26905d = obj;
            this.f26906e |= Integer.MIN_VALUE;
            return C8819o.this.m28033f(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8819o(AbstractC10028o abstractC10028o, AbstractC10259i abstractC10259i, AbstractC10060c abstractC10060c, AbstractC9691j abstractC9691j, AbstractC9686e abstractC9686e, @Named("IO") f fVar) {
        super(fVar);
        l.e(abstractC10028o, "insightsConfig");
        l.e(abstractC10259i, "messageTranslationContract");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC9686e, "environmentHelper");
        l.e(fVar, "ioContext");
        this.f26900b = abstractC10028o;
        this.f26901c = abstractC10259i;
        this.f26902d = abstractC10060c;
        this.f26903e = abstractC9691j;
        this.f26904f = abstractC9686e;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9117k
    /* renamed from: a */
    public /* bridge */ /* synthetic */ LiveData<AdapterItem.C4109a> mo27466a() {
        return null;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9117k
    /* renamed from: b */
    public /* bridge */ /* synthetic */ Object mo27465b(s sVar, d<? super LiveData<AdapterItem.C4109a>> dVar) {
        return m28035d(dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a4  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m28035d(s1.w.d r8) {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p446c.p449f.C8819o.m28035d(s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public final C10530c m28034e() {
        C10530c c10530c = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
        c10530c.m25821g("translation_smart_sms");
        c10530c.m25823e("model_download");
        return c10530c;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m28033f(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p446c.p449f.C8819o.m28033f(s1.w.d):java.lang.Object");
    }
}
