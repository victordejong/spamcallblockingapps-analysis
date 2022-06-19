package p193e.p194a.p437c.p438a.p446c.p449f;

import androidx.activity.result.ActivityResultRegistry;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.Objects;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.f.t */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/t.class */
public final class C8825t<I, O> implements AbstractC25640a<Integer, AdapterItem.C4109a> {

    /* renamed from: a */
    public final /* synthetic */ C8829x f26913a;

    /* renamed from: b */
    public final /* synthetic */ ActivityResultRegistry f26914b;

    public C8825t(C8829x c8829x, ActivityResultRegistry activityResultRegistry) {
        this.f26913a = c8829x;
        this.f26914b = activityResultRegistry;
    }

    @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
    public AdapterItem.C4109a apply(Integer num) {
        C8829x c8829x = this.f26913a;
        ActivityResultRegistry activityResultRegistry = this.f26914b;
        Objects.requireNonNull(c8829x);
        l.e(activityResultRegistry, "registry");
        AdapterItem.C4109a c4109a = null;
        boolean z = false;
        if (c8829x.f26920c.mo27300c()) {
            c8829x.f26919b.mo26812v0();
            c8829x.f26919b.mo26813v(false);
        } else if (!c8829x.f26919b.mo26838i0()) {
            AbstractC10028o abstractC10028o = c8829x.f26919b;
            if (abstractC10028o.mo26871K() == 2) {
                z = true;
            }
            abstractC10028o.mo26813v(z);
            c4109a = new AdapterItem.C4109a(0L, C4078R.C4079drawable.smart_sms_banner, C4078R.string.switch_to_smarter_sms_experience, C4078R.string.easily_track_your_transactions_and_reminders, C4078R.string.switch_now, null, AdapterItem.BannerType.DEFAULT_SMART_SMS, C4078R.C4079drawable.background_smart_sms_banner, new C8828w(c8829x, activityResultRegistry), null, new C8826u(c8829x), 1);
        }
        return c4109a;
    }
}
