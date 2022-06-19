package p193e.p194a.p912i4.p913x;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.notifications.enhancing.SourcedContact;
import e.m.d.y.n;
import p193e.p194a.p912i4.p913x.C15301e;
import s1.z.c.l;
/* renamed from: e.a.i4.x.f */
/* loaded from: classes11-dex2jar.jar:e/a/i4/x/f.class */
public final class View$OnClickListenerC15304f implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C15301e.AbstractC15302a f43554a;

    /* renamed from: b */
    public final /* synthetic */ SourcedContact f43555b;

    public View$OnClickListenerC15304f(C15301e.AbstractC15302a abstractC15302a, SourcedContact sourcedContact) {
        this.f43554a = abstractC15302a;
        this.f43555b = sourcedContact;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.truecaller.notifications.enhancing.SourcedContactListActivity, android.content.Context, java.lang.Object] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C15301e.AbstractC15302a abstractC15302a = this.f43554a;
        SourcedContact sourcedContact = this.f43555b;
        ?? r0 = ((C15297b) abstractC15302a).f43534a;
        n.y1(r0.f14110a, "enhanceNotification", "listItemClicked");
        String str = sourcedContact.f14105d;
        String str2 = sourcedContact.f14106e;
        String str3 = sourcedContact.f14107f;
        SourceType sourceType = SourceType.SearchResult;
        l.e((Object) r0, AnalyticsConstants.CONTEXT);
        l.e(sourceType, "source");
        Intent intent = new Intent((Context) r0, DetailsViewActivity.class);
        intent.putExtra("ARG_TC_ID", str);
        intent.putExtra("NAME", str2);
        intent.putExtra("NORMALIZED_NUMBER", str3);
        intent.putExtra("RAW_NUMBER", str3);
        intent.putExtra("COUNTRY_CODE", (String) null);
        intent.putExtra("ARG_SOURCE_TYPE", 0);
        intent.putExtra("SHOULD_SAVE", true);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", true);
        intent.putExtra("SEARCH_TYPE", 10);
        intent.addFlags(8388608);
        intent.addFlags(1073741824);
        l.e((Object) r0, AnalyticsConstants.CONTEXT);
        l.e(intent, "intentWithExtras");
        r0.startActivity(intent);
    }
}
