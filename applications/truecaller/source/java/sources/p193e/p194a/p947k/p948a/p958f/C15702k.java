package p193e.p194a.p947k.p948a.p958f;

import com.truecaller.videocallerid.p187ui.preview.PreviewActions;
import com.truecaller.videocallerid.upload.UploadingStates;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.preview.PreviewPresenter$maybeSubscribeVideoUploadState$2", f = "PreviewPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.a.f.k */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/f/k.class */
public final class C15702k extends i implements p<UploadingStates, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f44295e;

    /* renamed from: f */
    public final /* synthetic */ C15699j f44296f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15702k(C15699j c15699j, d dVar) {
        super(2, dVar);
        this.f44296f = c15699j;
    }

    /* renamed from: i */
    public final d<s> m18478i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C15702k c15702k = new C15702k(this.f44296f, dVar);
        c15702k.f44295e = obj;
        return c15702k;
    }

    /* renamed from: k */
    public final Object m18477k(Object obj, Object obj2) {
        AbstractC15697h abstractC15697h;
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C15699j c15699j = this.f44296f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        UploadingStates uploadingStates = (UploadingStates) obj;
        if (uploadingStates == UploadingStates.UNKNOWN) {
            AbstractC15697h abstractC15697h2 = (AbstractC15697h) c15699j.f57683a;
            if (abstractC15697h2 != null) {
                abstractC15697h2.mo18503Z9();
            }
        } else if (uploadingStates == UploadingStates.FAILED) {
            AbstractC15697h abstractC15697h3 = (AbstractC15697h) c15699j.f57683a;
            if (abstractC15697h3 != null) {
                abstractC15697h3.mo18507H(PreviewActions.RETRY_UPLOAD);
            }
        } else if (C15699j.m18488Ij(c15699j) && uploadingStates == UploadingStates.SUCCESSFUL) {
            AbstractC15697h abstractC15697h4 = (AbstractC15697h) c15699j.f57683a;
            if (abstractC15697h4 != null) {
                abstractC15697h4.mo18500h7(PreviewActions.DISMISS);
            }
            AbstractC15697h abstractC15697h5 = (AbstractC15697h) c15699j.f57683a;
            if (abstractC15697h5 != null) {
                abstractC15697h5.mo18503Z9();
            }
        } else if (uploadingStates == UploadingStates.UPLOADING) {
            AbstractC15697h abstractC15697h6 = (AbstractC15697h) c15699j.f57683a;
            if (abstractC15697h6 != null) {
                abstractC15697h6.mo18494s8(PreviewActions.DISMISS);
            }
        } else if (uploadingStates == UploadingStates.SUCCESSFUL && (abstractC15697h = (AbstractC15697h) c15699j.f57683a) != null) {
            abstractC15697h.mo18500h7(PreviewActions.DISMISS);
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m18476s(Object obj) {
        AbstractC15697h abstractC15697h;
        C25225a.m3932a3(obj);
        UploadingStates uploadingStates = (UploadingStates) this.f44295e;
        if (uploadingStates == UploadingStates.UNKNOWN) {
            AbstractC15697h abstractC15697h2 = (AbstractC15697h) this.f44296f.f57683a;
            if (abstractC15697h2 != null) {
                abstractC15697h2.mo18503Z9();
            }
        } else if (uploadingStates == UploadingStates.FAILED) {
            AbstractC15697h abstractC15697h3 = (AbstractC15697h) this.f44296f.f57683a;
            if (abstractC15697h3 != null) {
                abstractC15697h3.mo18507H(PreviewActions.RETRY_UPLOAD);
            }
        } else if (C15699j.m18488Ij(this.f44296f) && uploadingStates == UploadingStates.SUCCESSFUL) {
            AbstractC15697h abstractC15697h4 = (AbstractC15697h) this.f44296f.f57683a;
            if (abstractC15697h4 != null) {
                abstractC15697h4.mo18500h7(PreviewActions.DISMISS);
            }
            AbstractC15697h abstractC15697h5 = (AbstractC15697h) this.f44296f.f57683a;
            if (abstractC15697h5 != null) {
                abstractC15697h5.mo18503Z9();
            }
        } else if (uploadingStates == UploadingStates.UPLOADING) {
            AbstractC15697h abstractC15697h6 = (AbstractC15697h) this.f44296f.f57683a;
            if (abstractC15697h6 != null) {
                abstractC15697h6.mo18494s8(PreviewActions.DISMISS);
            }
        } else if (uploadingStates == UploadingStates.SUCCESSFUL && (abstractC15697h = (AbstractC15697h) this.f44296f.f57683a) != null) {
            abstractC15697h.mo18500h7(PreviewActions.DISMISS);
        }
        return s.a;
    }
}
