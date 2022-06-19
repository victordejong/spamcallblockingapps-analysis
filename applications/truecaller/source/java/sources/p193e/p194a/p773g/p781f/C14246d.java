package p193e.p194a.p773g.p781f;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.analytics.AnalyticsContext;
import com.truecaller.acs.analytics.ClickEvent;
import com.truecaller.analytics.common.event.UserInteractionEvent;
import com.truecaller.analytics.common.event.ViewActionEvent;
import e.m.d.y.n;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p773g.p781f.AbstractC14247e;
import p193e.p194a.p773g.p781f.AbstractC14250f;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.g.f.d */
/* loaded from: classes4-dex2jar.jar:e/a/g/f/d.class */
public final class C14246d implements AbstractC14243a {

    /* renamed from: a */
    public AnalyticsContext f41165a;

    /* renamed from: b */
    public final f f41166b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC19463a0> f41167c;

    /* renamed from: d */
    public AbstractC19462a f41168d;

    @Inject
    public C14246d(@Named("IO") f fVar, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC19462a abstractC19462a) {
        l.e(fVar, "asyncContext");
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f41166b = fVar;
        this.f41167c = abstractC19854f;
        this.f41168d = abstractC19462a;
    }

    /* renamed from: a */
    public static final Set m20313a(C14246d c14246d, String str, ClickEvent clickEvent) {
        Set set;
        Objects.requireNonNull(c14246d);
        ViewActionEvent.C2856a c2856a = ViewActionEvent.f9985d;
        String str2 = null;
        switch (clickEvent.ordinal()) {
            case 0:
                ViewActionEvent.DetailsSubAction detailsSubAction = ViewActionEvent.DetailsSubAction.BUTTON;
                l.e(str, AnalyticsConstants.CONTEXT);
                l.e(detailsSubAction, "subAction");
                String value = detailsSubAction.getValue();
                l.e("details", "action");
                set = i.y0(new ViewActionEvent("details", value, str));
                break;
            case 1:
                ViewActionEvent.DetailsSubAction detailsSubAction2 = ViewActionEvent.DetailsSubAction.HEADER;
                l.e(str, AnalyticsConstants.CONTEXT);
                l.e(detailsSubAction2, "subAction");
                String value2 = detailsSubAction2.getValue();
                l.e("details", "action");
                set = i.y0(new ViewActionEvent("details", value2, str));
                break;
            case 2:
                ViewActionEvent.TagSubAction tagSubAction = ViewActionEvent.TagSubAction.BUTTON;
                l.e(str, AnalyticsConstants.CONTEXT);
                if (tagSubAction != null) {
                    str2 = tagSubAction.getValue();
                }
                l.e(RemoteMessageConst.Notification.TAG, "action");
                set = i.y0(new ViewActionEvent(RemoteMessageConst.Notification.TAG, str2, str));
                break;
            case 3:
                l.e(str, AnalyticsConstants.CONTEXT);
                l.e("call", "action");
                set = i.y0(new ViewActionEvent("call", null, str));
                break;
            case 4:
                l.e(str, AnalyticsConstants.CONTEXT);
                l.e("message", "action");
                set = i.y0(new ViewActionEvent("message", null, str));
                break;
            case 5:
                set = i.z0(new AbstractC19549v[]{c2856a.m35933e(str, ViewActionEvent.ContactAction.SAVE), new UserInteractionEvent(str, UserInteractionEvent.Action.SAVED_CONTACT)});
                break;
            case 6:
                set = i.z0(new AbstractC19549v[]{c2856a.m35933e(str, ViewActionEvent.ContactAction.EDIT), new UserInteractionEvent(str, UserInteractionEvent.Action.EDITED_CONTACT)});
                break;
            case 7:
                set = i.z0(new AbstractC19549v[]{C22128a.m8584p1("blockQuery", "action", "blockQuery", null, str), new UserInteractionEvent(str, UserInteractionEvent.Action.BLOCKED)});
                break;
            case 8:
                set = i.z0(new AbstractC19549v[]{C22128a.m8584p1("unblockQuery", "action", "unblockQuery", null, str), new UserInteractionEvent(str, UserInteractionEvent.Action.UNBLOCKED)});
                break;
            case 9:
                set = i.z0(new AbstractC19549v[]{c2856a.m35924n(str), new UserInteractionEvent(str, UserInteractionEvent.Action.SUGGESTED_NAME)});
                break;
            case 10:
                set = i.z0(new AbstractC19549v[]{c2856a.m35924n(str), new UserInteractionEvent(str, UserInteractionEvent.Action.SUGGESTED_NAME)});
                break;
            case 11:
                set = i.y0(new UserInteractionEvent(str, UserInteractionEvent.Action.POSITIVE_BUTTON));
                break;
            case 12:
                set = i.y0(new UserInteractionEvent(str, UserInteractionEvent.Action.NEGATIVE_BUTTON));
                break;
            case 13:
                set = i.y0(new UserInteractionEvent(str, UserInteractionEvent.Action.WARNED_FRIENDS));
                break;
            case 14:
                ViewActionEvent.BusinessSuggestionSubAction businessSuggestionSubAction = ViewActionEvent.BusinessSuggestionSubAction.YES;
                l.e(str, AnalyticsConstants.CONTEXT);
                l.e(businessSuggestionSubAction, "subAction");
                String value3 = businessSuggestionSubAction.getValue();
                l.e("businessSuggestion", "action");
                set = i.y0(new ViewActionEvent("businessSuggestion", value3, str));
                break;
            case 15:
                ViewActionEvent.BusinessSuggestionSubAction businessSuggestionSubAction2 = ViewActionEvent.BusinessSuggestionSubAction.NO;
                l.e(str, AnalyticsConstants.CONTEXT);
                l.e(businessSuggestionSubAction2, "subAction");
                String value4 = businessSuggestionSubAction2.getValue();
                l.e("businessSuggestion", "action");
                set = i.y0(new ViewActionEvent("businessSuggestion", value4, str));
                break;
            default:
                throw new s1.i();
        }
        return set;
    }

    /* renamed from: b */
    public static final void m20312b(C14246d c14246d, AbstractC14250f abstractC14250f) {
        String str;
        String str2;
        Objects.requireNonNull(c14246d);
        if (l.a(abstractC14250f, AbstractC14250f.C14254d.f41174a)) {
            n.B0(new UserInteractionEvent("widget", UserInteractionEvent.Action.LIST_ITEM_CLICKED), c14246d.f41168d);
        } else if (l.a(abstractC14250f, AbstractC14250f.C14251a.f41171a)) {
            AnalyticsContext analyticsContext = c14246d.f41165a;
            if (analyticsContext == null) {
                l.l("analyticsContext");
                throw null;
            }
            String value = analyticsContext.getValue();
            ViewActionEvent.BusinessSuggestionSubAction businessSuggestionSubAction = ViewActionEvent.BusinessSuggestionSubAction.SHOWN;
            l.e(value, AnalyticsConstants.CONTEXT);
            l.e(businessSuggestionSubAction, "subAction");
            String value2 = businessSuggestionSubAction.getValue();
            l.e("businessSuggestion", "action");
            n.B0(new ViewActionEvent("businessSuggestion", value2, value), c14246d.f41168d);
        } else if (abstractC14250f instanceof AbstractC14250f.C14252b) {
            int ordinal = ((AbstractC14250f.C14252b) abstractC14250f).f41172a.ordinal();
            if (ordinal == 0) {
                str2 = "EmptySpace";
            } else if (ordinal == 1) {
                str2 = "NativeBackButton";
            } else if (ordinal == 2) {
                str2 = "CloseButton";
            } else if (ordinal == 3) {
                str2 = "SwipeToDismiss";
            } else if (ordinal == 4) {
                str2 = "Minimized";
            } else if (ordinal != 5) {
                throw new s1.i();
            } else {
                str2 = "ForcedUpdate";
            }
            AnalyticsContext analyticsContext2 = c14246d.f41165a;
            if (analyticsContext2 != null) {
                C22128a.m8711G0("AFTERCALL_Dismissed", null, C22128a.m8661V("Context", analyticsContext2.getValue(), "Dismiss_Type", str2), null, "it.build()", c14246d.f41168d);
            } else {
                l.l("analyticsContext");
                throw null;
            }
        } else if (!(abstractC14250f instanceof AbstractC14250f.C14253c)) {
        } else {
            AbstractC14250f.C14253c c14253c = (AbstractC14250f.C14253c) abstractC14250f;
            AbstractC14247e abstractC14247e = c14253c.f41173a;
            if (l.a(abstractC14247e, AbstractC14247e.C14249b.f41170a)) {
                str = "widget";
            } else {
                if (abstractC14247e instanceof AbstractC14247e.C14248a) {
                    AbstractC14247e abstractC14247e2 = c14253c.f41173a;
                    Objects.requireNonNull(abstractC14247e2, "null cannot be cast to non-null type com.truecaller.acs.analytics.Source.Other");
                    int i = ((AbstractC14247e.C14248a) abstractC14247e2).f41169a;
                    boolean z = i != 1 ? i != 2 ? (i == 3 || i == 5 || i == 6 || i == 10) ? true : true : true : true;
                    if (z) {
                        str = "outgoingCall";
                    } else if (z) {
                        str = "incomingCall";
                    } else if (z) {
                        str = "missedCallNotification";
                    }
                }
                str = null;
            }
            AnalyticsContext analyticsContext3 = c14246d.f41165a;
            if (analyticsContext3 == null) {
                l.l("analyticsContext");
                throw null;
            }
            String value3 = analyticsContext3.getValue();
            n.B0(C22128a.m8580q1(value3, "viewId", value3, str, null), c14246d.f41168d);
        }
    }
}
