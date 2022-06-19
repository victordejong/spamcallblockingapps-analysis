package p193e.p194a.p437c.p438a.p446c.p449f;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.activity.result.ActivityResultRegistry;
import androidx.lifecycle.LiveData;
import com.truecaller.insights.p168ui.models.AdapterItem;
import io.agora.rtc.Constants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p437c.p438a.p479i.AbstractC9117k;
import p193e.p194a.p437c.p524b.AbstractC9689h;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.f.x */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/x.class */
public final class C8829x extends AbstractC9117k<ActivityResultRegistry, LiveData<AdapterItem.C4109a>> {

    /* renamed from: b */
    public final AbstractC10028o f26919b;

    /* renamed from: c */
    public final AbstractC9689h f26920c;

    /* renamed from: d */
    public final AbstractC10060c f26921d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8829x(AbstractC10028o abstractC10028o, AbstractC9689h abstractC9689h, @Named("IO") f fVar, AbstractC10060c abstractC10060c) {
        super(fVar);
        l.e(abstractC10028o, "insightsConfig");
        l.e(abstractC9689h, "permissionHelper");
        l.e(fVar, "ioContext");
        l.e(abstractC10060c, "analyticsManager");
        this.f26919b = abstractC10028o;
        this.f26920c = abstractC9689h;
        this.f26921d = abstractC10060c;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9117k
    /* renamed from: a */
    public LiveData<AdapterItem.C4109a> mo27466a() {
        return MediaSessionCompat.m43285M0(null, 0L, new C8824s(null), 3);
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9117k
    /* renamed from: b */
    public Object mo27465b(ActivityResultRegistry activityResultRegistry, d<? super LiveData<AdapterItem.C4109a>> dVar) {
        LiveData m43275Q0 = MediaSessionCompat.m43275Q0(this.f26919b.mo26868N(), new C8825t(this, activityResultRegistry));
        l.d(m43275Q0, "Transformations.map(insi… { getBannerItem(input) }");
        return m43275Q0;
    }

    /* renamed from: d */
    public final C10530c m28025d() {
        C10530c c10530c = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
        c10530c.m25821g("default_sms_banner");
        c10530c.m25824d("important_tab");
        c10530c.m25825c("click");
        c10530c.m25823e("default_sms");
        return c10530c;
    }
}
