package p193e.p194a.p437c.p578p;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.amazon.device.ads.MraidExpandCommand;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.android.material.C2080R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Int64Value;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.MediaFormat;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.BusinessExt;
import com.truecaller.api.services.messenger.p138v1.models.MessageContent;
import com.truecaller.api.services.messenger.p138v1.models.Peer;
import com.truecaller.api.services.messenger.p138v1.models.Role;
import com.truecaller.api.services.messenger.p138v1.models.UserInfo;
import com.truecaller.api.services.messenger.p138v1.models.input.InputMessageContent;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import com.truecaller.common.p156ui.banner.BannerViewX;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.insights.C4030R;
import com.truecaller.insights.binders.utils.BankUiProperties;
import com.truecaller.insights.binders.utils.BillUiProperties;
import com.truecaller.insights.binders.utils.DeliverySchemaRuleHelper;
import com.truecaller.insights.binders.utils.OrderStatus;
import com.truecaller.insights.binders.utils.TravelUiProperties;
import com.truecaller.insights.categorizer.model.AndroidClassKeywordMeta;
import com.truecaller.insights.categorizer.model.AndroidClassMeta;
import com.truecaller.insights.categorizer.model.AndroidMultiClassClassifierModel;
import com.truecaller.insights.categorizer.model.AndroidWordToClassProb;
import com.truecaller.insights.commons.model.Transport;
import com.truecaller.insights.models.DomainOrigin;
import com.truecaller.insights.models.InsightsDomain;
import com.truecaller.insights.models.categorizerseed.CategorizerSeedServiceModel;
import com.truecaller.insights.models.classifierseed.ClassKeywordMeta;
import com.truecaller.insights.models.classifierseed.ClassMeta;
import com.truecaller.insights.models.classifierseed.ClassifierSeedServiceModel;
import com.truecaller.insights.models.classifierseed.Probability;
import com.truecaller.insights.models.classifierseed.Vectors;
import com.truecaller.insights.models.pdo.ExtendedPdo;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.models.smartcards.ActionStateEntity;
import com.truecaller.insights.models.updates.UpdateCategory;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.financepage.models.FinanceTab;
import com.truecaller.insights.reminders.actions.binders.BillReminderMeta;
import com.truecaller.insights.smartcards.SmartCardCategory;
import com.truecaller.insights.smartcards.SmartCardStatus;
import com.truecaller.insights.source.ModelType;
import com.truecaller.insights.source.SourceType;
import com.truecaller.insights.utils.DateFormat;
import com.truecaller.insights.utils.FeedbackConsentState;
import com.truecaller.insights.utils.FeedbackConsentType;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.C4161R;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversation.draft.DraftArguments;
import com.truecaller.messaging.conversation.richtext.FormattingStyle;
import com.truecaller.messaging.data.types.AudioEntity;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.DocumentEntity;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.GifEntity;
import com.truecaller.messaging.data.types.ImForwardInfo;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImageEntity;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.LinkPreviewEntity;
import com.truecaller.messaging.data.types.LocationEntity;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TextEntity;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.data.types.VCardEntity;
import com.truecaller.messaging.data.types.VideoEntity;
import com.truecaller.messaging.linkpreviews.LinkMetaData;
import com.truecaller.messaging.mediamanager.AttachmentType;
import com.truecaller.messaging.mediamanager.SortOption;
import com.truecaller.messaging.notifications.NotificationIdentifier;
import com.truecaller.messaging.transport.history.HistoryTransportInfo;
import com.truecaller.messaging.transport.mms.MmsTransportInfo;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import com.truecaller.messaging.transport.p170im.ImUnreadRemindersBroadcastReceiver;
import com.truecaller.messaging.transport.sms.SmsTransportInfo;
import com.truecaller.messaging.transport.status.StatusTransportInfo;
import com.truecaller.notifications.OTPCopierService;
import com.truecaller.notifications.OtpAnalyticsModel;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.analytics.LogLevel;
import com.truecaller.premium.data.ProductKind;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import e.m.d.g;
import e.m.d.n.j.j.d0;
import e.m.d.n.j.j.m;
import e.m.d.n.j.j.n;
import e.m.d.n.j.j.w;
import e.m.d.n.j.j.x;
import e.m.d.n.j.j.y;
import e.m.e.z;
import io.agora.rtc.Constants;
import java.io.Serializable;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLException;
import org.apache.avro.Schema;
import p1727n3.p1807k.p1808a.C26458x;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1818g.C26536a;
import p1727n3.p1868v.C27010k0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.AbstractC17218r;
import p193e.p194a.p1011l.p1012a.AbstractC16571e0;
import p193e.p194a.p1011l.p1012a.C16575f0;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1011l.p1021l2.AbstractC16953b;
import p193e.p194a.p1011l.p1021l2.AbstractC16954c;
import p193e.p194a.p1011l.p1023n2.AbstractC17000j;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1050l5.p1051a.C17463b4;
import p193e.p194a.p1050l5.p1051a.C17654m3;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19872n;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p198b.AbstractC4965k;
import p193e.p194a.p195a.p198b.C4975o;
import p193e.p194a.p195a.p200c.AbstractC5524m5;
import p193e.p194a.p195a.p200c.C5060a5;
import p193e.p194a.p195a.p200c.p203c.AbstractC5149q;
import p193e.p194a.p195a.p200c.p203c.C5143k;
import p193e.p194a.p195a.p200c.p206i.C5351c;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
import p193e.p194a.p195a.p200c.p215n.C5566t;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5726c;
import p193e.p194a.p195a.p200c.p222s8.C5727d;
import p193e.p194a.p195a.p200c.p222s8.C5728e;
import p193e.p194a.p195a.p223c1.AbstractC5843b;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p224d.AbstractC5931s;
import p193e.p194a.p195a.p224d.C5925m;
import p193e.p194a.p195a.p227e.C5998j;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.C6118h;
import p193e.p194a.p195a.p231g.C6123i;
import p193e.p194a.p195a.p231g.C6244s;
import p193e.p194a.p195a.p231g.C6245t;
import p193e.p194a.p195a.p231g.p234l0.C6227c;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.p245a.EnumC6521b2;
import p193e.p194a.p195a.p269n.AbstractC7004h;
import p193e.p194a.p195a.p271o.AbstractC7098k;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import p193e.p194a.p195a.p271o.C7083e;
import p193e.p194a.p195a.p271o.C7100m;
import p193e.p194a.p195a.p271o.C7104o;
import p193e.p194a.p195a.p280s0.AbstractC7249d;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p432b4.p433a.C8636a;
import p193e.p194a.p432b4.p433a.C8638c;
import p193e.p194a.p437c.p438a.p439a.C8688e;
import p193e.p194a.p437c.p438a.p439a.View$OnClickListenerC8689f;
import p193e.p194a.p437c.p438a.p439a.p440a.C8684c;
import p193e.p194a.p437c.p438a.p446c.p448e.C8784a;
import p193e.p194a.p437c.p438a.p446c.p448e.C8789d;
import p193e.p194a.p437c.p438a.p446c.p449f.C8793b;
import p193e.p194a.p437c.p438a.p446c.p449f.C8803g;
import p193e.p194a.p437c.p438a.p446c.p449f.C8813j;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8856c;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8857d;
import p193e.p194a.p437c.p438a.p456d.p461d.AbstractC8890c;
import p193e.p194a.p437c.p438a.p456d.p461d.C8888a;
import p193e.p194a.p437c.p438a.p456d.p461d.C8889b;
import p193e.p194a.p437c.p438a.p477g.C9016b2;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9109d;
import p193e.p194a.p437c.p438a.p493l.C9245c;
import p193e.p194a.p437c.p438a.p506o.AbstractC9439b;
import p193e.p194a.p437c.p438a.p506o.View$OnClickListenerC9441d;
import p193e.p194a.p437c.p438a.p506o.View$OnClickListenerC9442e;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9459c;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p438a.p520r.C9588e;
import p193e.p194a.p437c.p438a.p520r.C9589f;
import p193e.p194a.p437c.p523a0.AbstractC9678z;
import p193e.p194a.p437c.p523a0.C9612a0;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p531c0.AbstractC10039x;
import p193e.p194a.p437c.p531c0.C10021h;
import p193e.p194a.p437c.p531c0.C10022i;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p531c0.C10033r;
import p193e.p194a.p437c.p531c0.C10037v;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p535f.AbstractC10084h;
import p193e.p194a.p437c.p535f.p537k.C10091b;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p570j.AbstractC10439b;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p579q.AbstractC10513j;
import p193e.p194a.p437c.p579q.C10496c;
import p193e.p194a.p437c.p579q.C10510g;
import p193e.p194a.p437c.p580r.AbstractC10518b;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import p193e.p194a.p437c.p580r.p585f.C10536a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10542b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10584c;
import p193e.p194a.p437c.p580r.p589j.C10582b;
import p193e.p194a.p437c.p580r.p589j.C10583b0;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import p193e.p194a.p437c.p580r.p592m.C10650a;
import p193e.p194a.p437c.p598v.p603h.AbstractC10738e;
import p193e.p194a.p437c.p598v.p604i.C10748g;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10810b;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import p193e.p194a.p437c.p606w.p607o0.p608k.C10833b;
import p193e.p194a.p437c.p606w.p607o0.p608k.C10834c;
import p193e.p194a.p437c.p609x.AbstractC10860a;
import p193e.p194a.p437c.p610y.AbstractC10876i;
import p193e.p194a.p437c.p610y.C10866b;
import p193e.p194a.p437c.p610y.C10868c;
import p193e.p194a.p437c.p610y.C10870d;
import p193e.p194a.p437c.p610y.C10871e;
import p193e.p194a.p437c.p610y.C10873g;
import p193e.p194a.p437c.p610y.C10874h;
import p193e.p194a.p437c.p610y.C10885j;
import p193e.p194a.p437c.p610y.C10888l;
import p193e.p194a.p615c4.AbstractC10936d;
import p193e.p194a.p615c4.C10937e;
import p193e.p194a.p751f4.p753b.AbstractC13954b;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import p3.a.g1;
import p3.a.i1;
import q3.a.j0;
import s1.f0.r;
import s1.f0.v;
import s1.k;
import s1.o;
import s1.s;
import s1.u.i;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.f0;
import s1.z.c.l;
import u3.a0;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.b.a.h;
import w3.b.a.p;
import w3.b.a.q;
/* renamed from: e.a.c.p.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/p/a.class */
public final class C10480a {

    /* renamed from: a */
    public static boolean f31166a;

    /* renamed from: b */
    public static AbstractC10936d f31167b;

    /* renamed from: A */
    public static final boolean m26095A(List<Message> list, C20592g c20592g, AbstractC5524m5 abstractC5524m5) {
        Participant[] participantArr;
        l.e(list, "$this$allowToDeleteForRecipient");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC5524m5, "conversationState");
        boolean z = false;
        if (!c20592g.m10995J().isEnabled()) {
            return false;
        }
        Conversation mo32851p = abstractC5524m5.mo32851p();
        if (mo32851p != null && (participantArr = mo32851p.f13211m) != null && C6405h.m31298f(participantArr)) {
            return false;
        }
        if (!list.isEmpty()) {
            for (Message message : list) {
                if (!(message.f13390k == 2 && m25874x1(message))) {
                    break;
                }
            }
        }
        z = true;
        return z;
    }

    /* renamed from: A1 */
    public static final boolean m26093A1(Message message) {
        l.e(message, "$this$isScheduled");
        return (message.f13386g & 128) != 0;
    }

    /* renamed from: A2 */
    public static final void m26092A2(Button button, AbstractC10876i abstractC10876i, AbstractC9439b abstractC9439b, String str, boolean z, int i) {
        l.e(button, "$this$setActionOrHide");
        l.e(abstractC9439b, "actionListener");
        l.e(str, "analyticsCategory");
        if (abstractC10876i == null) {
            C19286f.m13689O(button);
            return;
        }
        C19286f.m13684T(button);
        button.setText(abstractC10876i.mo25531a());
        button.setOnClickListener(new View$OnClickListenerC9442e(abstractC9439b, abstractC10876i, str, z, i));
    }

    /* renamed from: B */
    public static final int m26091B(Message message) {
        l.e(message, "$this$apiVersion");
        TransportInfo transportInfo = message.f13393n;
        TransportInfo transportInfo2 = transportInfo;
        if (!(transportInfo instanceof ImTransportInfo)) {
            transportInfo2 = null;
        }
        ImTransportInfo imTransportInfo = (ImTransportInfo) transportInfo2;
        return imTransportInfo != null ? imTransportInfo.f13736i : 0;
    }

    /* renamed from: B0 */
    public static final ContextThemeWrapper m26090B0(Context context) {
        l.e(context, "$this$getInsightsContextThemeWrapper");
        C15314a c15314a = C15314a.f43582g;
        return C15314a.m18933f() ? new ContextThemeWrapper(context, C4078R.style.ThemeX_Insights_Dark) : new ContextThemeWrapper(context, C4078R.style.ThemeX_Insights_Light);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
        if (r0 != 14) goto L18;
     */
    /* renamed from: B1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m26089B1(p3.a.g1 r3) {
        /*
            r0 = r3
            java.lang.String r1 = "$this$isTransientError"
            s1.z.c.l.e(r0, r1)
            r0 = r3
            p3.a.g1$b r0 = r0.a
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L14
            goto L4e
        L14:
            r0 = r3
            int r0 = r0.ordinal()
            r5 = r0
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 1
            if (r0 == r1) goto L50
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 2
            if (r0 == r1) goto L50
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 4
            if (r0 == r1) goto L50
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 8
            if (r0 == r1) goto L50
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 10
            if (r0 == r1) goto L50
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 13
            if (r0 == r1) goto L50
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 14
            if (r0 == r1) goto L50
        L4e:
            r0 = 0
            r6 = r0
        L50:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m26089B1(p3.a.g1):boolean");
    }

    /* renamed from: B2 */
    public static final void m26088B2(Button button, AbstractC10876i abstractC10876i, s1.z.b.l<? super AbstractC10876i, s> lVar) {
        l.e(button, "$this$setActionOrHide");
        l.e(lVar, "action");
        if (abstractC10876i == null) {
            C19286f.m13689O(button);
            return;
        }
        C19286f.m13684T(button);
        button.setText(abstractC10876i.mo25531a());
        button.setOnClickListener(new View$OnClickListenerC9441d(lVar, abstractC10876i));
    }

    /* renamed from: C */
    public static final void m26087C(Intent intent, List<Message> list) {
        l.e(intent, "$this$appendMessageIds");
        l.e(list, "messages");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (Message message : list) {
            arrayList.add(Long.valueOf(message.f13380a));
        }
        Object[] array = arrayList.toArray(new Long[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        intent.putExtra("com.truecaller.messaging.message_ids", (Serializable) ((Long[]) array));
    }

    /* renamed from: C0 */
    public static final List<BinaryEntity> m26086C0(List<ForwardContentItem> list) {
        l.e(list, "$this$mediaEntities");
        ArrayList arrayList = new ArrayList();
        for (ForwardContentItem forwardContentItem : list) {
            BinaryEntity binaryEntity = forwardContentItem.f12986c;
            if (binaryEntity != null) {
                arrayList.add(binaryEntity);
            }
        }
        return arrayList;
    }

    /* renamed from: C1 */
    public static final boolean m26085C1(Conversation conversation) {
        l.e(conversation, "$this$isUnread");
        return conversation.f13210l > 0 || conversation.f13215q;
    }

    /* renamed from: C2 */
    public static final void m26084C2(TextView textView, int i) {
        l.e(textView, "$this$setCleanupPeriod");
        textView.setText(i != -1 ? i != 0 ? textView.getContext().getString(C2752R.string.inbox_cleanup_older_than_days, Integer.valueOf(i)) : textView.getContext().getString(C2752R.string.inbox_cleanup_none) : textView.getContext().getString(C2752R.string.inbox_cleanup_all));
    }

    /* renamed from: D */
    public static final void m26083D(Intent intent, String str) {
        l.e(intent, "$this$appendNotificationAction");
        l.e(str, "action");
        intent.putExtra("com.truecaller.messaging.action_from_notification", str);
    }

    /* renamed from: D0 */
    public static final String m26082D0(String str, AbstractC13967b abstractC13967b, AbstractC13954b abstractC13954b) {
        l.e(str, "$this$getNativeEdgeHost");
        l.e(abstractC13967b, "edgeLocationsManager");
        l.e(abstractC13954b, "domainResolver");
        String mo20925f = abstractC13967b.mo20925f(abstractC13954b.mo20940c(), str);
        return mo20925f != null ? mo20925f : abstractC13967b.mo20925f(abstractC13954b.mo20941b(), str);
    }

    /* renamed from: D1 */
    public static final boolean m26081D1(Message message) {
        l.e(message, "$this$isUrgent");
        boolean z = true;
        if (message.f13377Q != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: D2 */
    public static final void m26080D2(ImageView imageView, Integer num) {
        l.e(imageView, "$this$setImageResourceOrHide");
        if (num == null) {
            C19286f.m13689O(imageView);
            return;
        }
        C19286f.m13684T(imageView);
        imageView.setImageResource(num.intValue());
    }

    /* renamed from: E */
    public static final void m26079E(Intent intent, int i, String str) {
        l.e(intent, "$this$appendNotificationId");
        intent.putExtra("tc_notification_id", i);
        if (str != null) {
            intent.putExtra("tc_notification_tag", str);
        }
    }

    /* renamed from: E0 */
    public static final String m26078E0(String str) {
        l.e(str, "vendor");
        String obj = v.g0(str).toString();
        return obj.length() > 0 ? i.O(v.U(C22128a.m8733A2(" +", obj, StringConstant.SPACE), new String[]{StringConstant.SPACE}, false, 0, 6), StringConstant.SPACE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C10033r.f29865b, 30) : "";
    }

    /* renamed from: E1 */
    public static final boolean m26077E1(CategorizerSeedServiceModel categorizerSeedServiceModel) {
        l.e(categorizerSeedServiceModel, "$this$isValidResponse");
        return l.a("TCBI-1000", categorizerSeedServiceModel.getMeta().getStatus()) && categorizerSeedServiceModel.getData().getVectors() != null;
    }

    /* renamed from: E2 */
    public static final void m26076E2(Activity activity) {
        l.e(activity, "$this$setInsightsTheme");
        C15314a c15314a = C15314a.f43582g;
        if (C15314a.m18933f()) {
            activity.setTheme(C4078R.style.ThemeX_Insights_Dark);
        } else {
            activity.setTheme(C4078R.style.ThemeX_Insights_Light);
        }
    }

    /* renamed from: F */
    public static /* synthetic */ Object m26075F(AbstractC10821g abstractC10821g, ParsedDataObject parsedDataObject, boolean z, d dVar, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return abstractC10821g.mo25582g(parsedDataObject, z, dVar);
    }

    /* renamed from: F0 */
    public static final b m26074F0(InsightsDomain insightsDomain) {
        b bVar;
        l.e(insightsDomain, "$this$getOrderDateTime");
        if (insightsDomain instanceof InsightsDomain.C4057a) {
            bVar = insightsDomain.getMsgDateTime();
        } else if (insightsDomain instanceof InsightsDomain.Bill) {
            bVar = ((InsightsDomain.Bill) insightsDomain).getBillDueDateTime();
        } else if (insightsDomain instanceof InsightsDomain.C4058b) {
            InsightsDomain.C4058b c4058b = (InsightsDomain.C4058b) insightsDomain;
            if (c4058b.m35250e() == OrderStatus.ActionRequired && c4058b.m35249f() == DeliverySchemaRuleHelper.OrderSubStatus.SelfPickup) {
                bVar = c4058b.m35252c();
                if (bVar == null) {
                    bVar = c4058b.getMsgDateTime();
                }
            } else {
                bVar = c4058b.getMsgDateTime();
            }
        } else if (insightsDomain instanceof InsightsDomain.C4059c) {
            b m35245b = ((InsightsDomain.C4059c) insightsDomain).m35245b();
            bVar = m35245b != null ? m35245b : insightsDomain.getMsgDateTime();
        } else if (insightsDomain instanceof InsightsDomain.C4060d) {
            bVar = insightsDomain.getMsgDateTime();
        } else if (insightsDomain instanceof InsightsDomain.C4061e) {
            bVar = insightsDomain.getMsgDateTime();
        } else if (insightsDomain instanceof InsightsDomain.C4062f) {
            bVar = ((InsightsDomain.C4062f) insightsDomain).f12611a;
        } else if (!(insightsDomain instanceof InsightsDomain.C4063g)) {
            throw new s1.i();
        } else {
            bVar = insightsDomain.getMsgDateTime();
        }
        return bVar;
    }

    /* renamed from: F1 */
    public static String m26073F1(Participant[] participantArr) {
        String str;
        List<Participant> asList = Arrays.asList(participantArr);
        if (asList == null) {
            str = null;
        } else {
            StringBuilder sb = new StringBuilder();
            for (Participant participant : asList) {
                sb.append(m25885v0(participant));
                sb.append((CharSequence) ", ");
            }
            if (sb.length() > 0) {
                sb.setLength(sb.length() - ", ".length());
            }
            str = sb.toString();
        }
        return str;
    }

    /* renamed from: F2 */
    public static /* synthetic */ void m26072F2(AbstractC4965k abstractC4965k, CharSequence charSequence, ListItemX.SubtitleColor subtitleColor, Drawable drawable, Drawable drawable2, ListItemX.SubtitleColor subtitleColor2, boolean z, List list, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            subtitleColor = ListItemX.SubtitleColor.DEFAULT;
        }
        if ((i & 4) != 0) {
            drawable = null;
        }
        ListItemX.SubtitleColor subtitleColor3 = (i & 16) != 0 ? subtitleColor : subtitleColor2;
        if ((i & 32) != 0) {
            z = false;
        }
        abstractC4965k.mo34184N3(charSequence, subtitleColor, drawable, null, subtitleColor3, z, null, z2);
    }

    /* renamed from: G */
    public static void m26071G(C9016b2 c9016b2, C10888l c10888l, Context context, int i) {
        Context context2;
        if ((i & 2) != 0) {
            ConstraintLayout constraintLayout = c9016b2.f27386a;
            l.d(constraintLayout, "root");
            context2 = constraintLayout.getContext();
            l.d(context2, "root.context");
        } else {
            context2 = null;
        }
        l.e(c9016b2, "$this$bindSmartCard");
        l.e(c10888l, "smartCardUiModel");
        l.e(context2, AnalyticsConstants.CONTEXT);
        ImageView imageView = c9016b2.f27388c;
        l.d(imageView, "imageCategoryIcon");
        m26080D2(imageView, Integer.valueOf(C9589f.m27407a(c10888l.f32320a)));
        TextView textView = c9016b2.f27391f;
        l.d(textView, "textCategory");
        textView.setText(C9589f.m27405c(c10888l.f32320a, context2));
        TextView textView2 = c9016b2.f27402q;
        l.d(textView2, "textStatus");
        SmartCardStatus smartCardStatus = c10888l.f32321b;
        m26068G2(textView2, smartCardStatus != null ? context2.getString(smartCardStatus.getLabel()) : null, null);
        SmartCardStatus smartCardStatus2 = c10888l.f32321b;
        if (smartCardStatus2 != null) {
            TextView textView3 = c9016b2.f27402q;
            l.d(textView3, "textStatus");
            textView3.setBackgroundTintList(ColorStateList.valueOf(C19291g.m13612L(context2, smartCardStatus2.getColor())));
        }
        TextView textView4 = c9016b2.f27401p;
        l.d(textView4, "textRightTitle");
        m26068G2(textView4, c10888l.f32327h, null);
        Integer num = c10888l.f32328i;
        if (num != null) {
            int intValue = num.intValue();
            TextView textView5 = c9016b2.f27401p;
            Object obj = C26467a.f74235a;
            textView5.setTextColor(C26467a.C26471d.m1787a(context2, intValue));
        }
        TextView textView6 = c9016b2.f27403r;
        l.d(textView6, "textSubtitle");
        m26068G2(textView6, c10888l.f32326g, null);
        TextView textView7 = c9016b2.f27404s;
        l.d(textView7, "textTitle");
        m26068G2(textView7, c10888l.f32322c, c10888l.f32325f);
        if (c10888l.f32320a == SmartCardCategory.OTP) {
            c9016b2.f27404s.setTextSize(2, 24.0f);
        } else {
            c9016b2.f27404s.setTextSize(2, 16.0f);
        }
        if (c10888l.f32324e != 0) {
            TextView textView8 = c9016b2.f27400o;
            l.d(textView8, "textMessage");
            m26068G2(textView8, c10888l.f32323d, null);
            TextView textView9 = c9016b2.f27400o;
            l.d(textView9, "textMessage");
            textView9.setMaxLines(c10888l.f32324e);
        } else {
            TextView textView10 = c9016b2.f27400o;
            l.d(textView10, "textMessage");
            C19286f.m13689O(textView10);
        }
        if (c10888l.f32324e == 0 || (c10888l.f32322c == null && c10888l.f32326g == null)) {
            View view = c9016b2.f27389d;
            l.d(view, "messageSpacing");
            C19286f.m13689O(view);
        } else {
            View view2 = c9016b2.f27389d;
            l.d(view2, "messageSpacing");
            C19286f.m13684T(view2);
        }
        C10885j c10885j = (C10885j) i.G(c10888l.f32330k, 0);
        C10885j c10885j2 = (C10885j) i.G(c10888l.f32330k, 1);
        C10885j c10885j3 = (C10885j) i.G(c10888l.f32330k, 2);
        C10885j c10885j4 = (C10885j) i.G(c10888l.f32330k, 3);
        TextView textView11 = c9016b2.f27392g;
        l.d(textView11, "textInfo1Name");
        m26068G2(textView11, c10885j != null ? c10885j.f32313a : null, null);
        TextView textView12 = c9016b2.f27394i;
        l.d(textView12, "textInfo2Name");
        m26068G2(textView12, c10885j2 != null ? c10885j2.f32313a : null, null);
        TextView textView13 = c9016b2.f27396k;
        l.d(textView13, "textInfo3Name");
        m26068G2(textView13, c10885j3 != null ? c10885j3.f32313a : null, null);
        TextView textView14 = c9016b2.f27398m;
        l.d(textView14, "textInfo4Name");
        m26068G2(textView14, c10885j4 != null ? c10885j4.f32313a : null, null);
        TextView textView15 = c9016b2.f27393h;
        l.d(textView15, "textInfo1Value");
        m26068G2(textView15, c10885j != null ? c10885j.f32314b : null, null);
        TextView textView16 = c9016b2.f27395j;
        l.d(textView16, "textInfo2Value");
        m26068G2(textView16, c10885j2 != null ? c10885j2.f32314b : null, null);
        TextView textView17 = c9016b2.f27397l;
        l.d(textView17, "textInfo3Value");
        m26068G2(textView17, c10885j3 != null ? c10885j3.f32314b : null, null);
        TextView textView18 = c9016b2.f27399n;
        l.d(textView18, "textInfo4Value");
        m26068G2(textView18, c10885j4 != null ? c10885j4.f32314b : null, null);
        MaterialButton materialButton = c9016b2.f27387b;
        l.d(materialButton, "buttonShowTransaction");
        C19286f.m13689O(materialButton);
        TextView textView19 = c9016b2.f27390e;
        l.d(textView19, "textCardInfo");
        C19286f.m13689O(textView19);
    }

    /* renamed from: G0 */
    public static final k<String, String> m26070G0(String str, String str2) {
        return (str == null || str2 == null) ? null : new k<>(str, str2);
    }

    /* renamed from: G1 */
    public static long m26069G1(long j) {
        return (j & 4611686018427387903L) | 4611686018427387904L;
    }

    /* renamed from: G2 */
    public static final void m26068G2(TextView textView, String str, C10583b0 c10583b0) {
        l.e(textView, "$this$setTextOrHide");
        if (str == null) {
            C19286f.m13689O(textView);
            return;
        }
        C19286f.m13684T(textView);
        if (c10583b0 == null) {
            textView.setText(str);
            return;
        }
        Context context = textView.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        List<C10583b0> m3962T1 = C25225a.m3962T1(c10583b0);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "contentText");
        l.e(m3962T1, "contentTextColor");
        SpannableString spannableString = new SpannableString(str);
        for (C10583b0 c10583b02 : m3962T1) {
            Integer num = c10583b02.f31572c;
            if (num != null) {
                spannableString.setSpan(new ForegroundColorSpan(C17422k.m16105M(context, num.intValue())), c10583b02.f31570a, c10583b02.f31571b, 33);
            }
        }
        textView.setText(spannableString);
    }

    /* renamed from: H */
    public static final AbstractC10039x<Boolean> m26067H(SharedPreferences sharedPreferences, String str, boolean z) {
        l.e(sharedPreferences, "$this$booleanLiveData");
        l.e(str, AnalyticsConstants.KEY);
        return new C10037v(sharedPreferences, str, z);
    }

    /* renamed from: H0 */
    public static final String m26066H0(Message message) {
        String str = message.f13382c.f11579l;
        String str2 = message.f13398s;
        if (str != null && (!r.p(str))) {
            str2 = str;
        } else if (str2 == null || !(!r.p(str2))) {
            str2 = "User";
        }
        return str2;
    }

    /* renamed from: H1 */
    public static void m26065H1(AbstractC7098k abstractC7098k, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        C7104o c7104o = (C7104o) abstractC7098k;
        Objects.requireNonNull(c7104o);
        s1.a.a.a.v0.f.d.w2(c7104o, (f) null, (j0) null, new C7100m(c7104o, z, z2, null), 3, (Object) null);
    }

    /* renamed from: I */
    public static C8638c m26063I(a aVar, int i) {
        a aVar2 = (i & 1) != 0 ? C8636a.f26490b : null;
        l.e(aVar2, "isAppLocaleRtl");
        C8638c c8638c = new C8638c(aVar2);
        c8638c.m28168b('1', "'", null);
        c8638c.m28169a('2', "ABC");
        c8638c.m28169a('3', "DEF");
        c8638c.m28169a('4', "GHI");
        c8638c.m28169a('5', "JKL");
        c8638c.m28169a('6', "MNO");
        c8638c.m28169a('7', "PQRS");
        c8638c.m28169a('8', "TUV");
        c8638c.m28169a('9', "WXYZ");
        c8638c.m28169a('0', "+");
        return c8638c;
    }

    /* renamed from: I0 */
    public static final k<String, Integer> m26062I0(p pVar) {
        k<String, Integer> kVar;
        l.e(pVar, "$this$getPrepaidBillUiDate");
        h r = h.r(p.h(), pVar);
        l.d(r, "Days.daysBetween(currentDate, dueDate)");
        int i = ((w3.b.a.e0.i) r).a;
        if (i >= 6) {
            StringBuilder m8728C = C22128a.m8728C("Expiring on ");
            m8728C.append(m25870y0(pVar));
            kVar = new k<>(m8728C.toString(), Integer.valueOf(C4030R.attr.tcx_alertBackgroundOrange));
        } else {
            C10091b c10091b = C10091b.f30006b;
            kVar = C10091b.f30005a.d(i) ? new k<>(C22128a.m8599l2("Expiring in ", i, " days"), Integer.valueOf(C4030R.attr.tcx_alertBackgroundOrange)) : i == 1 ? new k<>("Expiring Tomorrow", Integer.valueOf(C4030R.attr.tcx_alertBackgroundOrange)) : i == 0 ? new k<>("Expiring Today", Integer.valueOf(C4030R.attr.tcx_alertBackgroundOrange)) : new k<>("Expired", Integer.valueOf(C4030R.attr.tcx_alertBackgroundOrange));
        }
        return kVar;
    }

    /* renamed from: I1 */
    public static final void m26061I1(Throwable th) {
        l.e(th, "throwable");
        m26057J1(th, null);
    }

    /* renamed from: I2 */
    public static final void m26060I2(RecyclerView recyclerView, LinearLayoutManager linearLayoutManager, FloatingActionButton floatingActionButton, s1.z.b.l<? super Boolean, s> lVar) {
        l.e(recyclerView, "rv");
        l.e(linearLayoutManager, "layoutManager");
        l.e(floatingActionButton, "anchor");
        l.e(lVar, "onFabShown");
        recyclerView.addOnScrollListener(new C8688e(linearLayoutManager, floatingActionButton, lVar, recyclerView, (int) recyclerView.getResources().getDimension(C4078R.dimen.scroll_to_top_threshold)));
        floatingActionButton.setOnClickListener(new View$OnClickListenerC8689f(recyclerView));
    }

    /* renamed from: J */
    public static /* synthetic */ Intent m26059J(AbstractC16613a2 abstractC16613a2, Context context, PremiumLaunchContext premiumLaunchContext, String str, SubscriptionPromoEventMetaData subscriptionPromoEventMetaData, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 8) != 0) {
            subscriptionPromoEventMetaData = null;
        }
        return abstractC16613a2.mo17166c(context, premiumLaunchContext, str, subscriptionPromoEventMetaData);
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* renamed from: J0 */
    public static String m26058J0(Participant participant) {
        int i = participant.f11569b;
        if (i != 0) {
            if (i == 5) {
                return AbstractApplicationC8442a.m28551L().getResources().getString(C4161R.string.incallui_hidden_number);
            }
            if (i != 2) {
                if (i != 3) {
                    return participant.f11572e;
                }
                if (w3.c.a.a.a.h.l(participant.f11579l)) {
                    return participant.f11579l;
                }
                String str = participant.f11572e;
                l.e(str, "imPeerId");
                StringBuilder sb = new StringBuilder();
                sb.append("User");
                char c = 5381;
                for (int i2 = 0; i2 < str.length(); i2++) {
                    c = str.charAt(i2) + (c << 5) + c;
                }
                sb.append(Math.abs(c % 16960));
                return sb.toString();
            }
        }
        return C26536a.m1710c().m1707f(participant.f11572e);
    }

    /* renamed from: J1 */
    public static final void m26057J1(Throwable th, String str) {
        AbstractC10936d abstractC10936d;
        l.e(th, "exception");
        if (str == null) {
            th.getMessage();
        }
        if (f31166a) {
            if (!(!(th instanceof ConnectException) && !(th instanceof UnknownHostException) && !(th instanceof SocketTimeoutException) && !(th instanceof SocketException) && !(th instanceof SSLException) && !(th instanceof i1)) || (abstractC10936d = f31167b) == null) {
                return;
            }
            Throwable m25488a = ((C10937e) abstractC10936d).m25488a(th);
            e.m.d.n.i m25900s0 = m25900s0();
            if (m25900s0 == null) {
                return;
            }
            w wVar = m25900s0.a.f;
            Thread currentThread = Thread.currentThread();
            Objects.requireNonNull(wVar);
            long currentTimeMillis = System.currentTimeMillis();
            m mVar = wVar.e;
            mVar.b(new n(mVar, new y(wVar, currentTimeMillis, m25488a, currentThread)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0042, code lost:
        if ((s1.f0.r.n("text/plain", r0, true) || s1.f0.r.n("text/html", r0, true)) == false) goto L12;
     */
    /* renamed from: J2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m26056J2(android.content.Intent r4) {
        /*
            r0 = r4
            java.lang.String r1 = "$this$shouldAddContentUris"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            java.lang.String r0 = r0.getType()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L45
            r0 = r4
            java.lang.String r0 = r0.getType()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "contentType"
            s1.z.c.l.e(r0, r1)
            java.lang.String r0 = "text/plain"
            r1 = r4
            r2 = 1
            boolean r0 = s1.f0.r.n(r0, r1, r2)
            if (r0 != 0) goto L3f
            java.lang.String r0 = "text/html"
            r1 = r4
            r2 = 1
            boolean r0 = s1.f0.r.n(r0, r1, r2)
            if (r0 == 0) goto L3a
            goto L3f
        L3a:
            r0 = 0
            r7 = r0
            goto L41
        L3f:
            r0 = 1
            r7 = r0
        L41:
            r0 = r7
            if (r0 != 0) goto L47
        L45:
            r0 = 1
            r6 = r0
        L47:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m26056J2(android.content.Intent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0302, code lost:
        if (r8.equals("iw") != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x030f, code lost:
        if (r8.equals("he") != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0312, code lost:
        r8 = new p193e.p194a.p432b4.p433a.C8638c(r9);
        r0 = new java.lang.StringBuilder(4);
        r0.append((char) 1493);
        r0.append((char) 1492);
        r0.append((char) 1491);
        r0 = r0.toString();
        s1.z.c.l.d(r0, "sb.append('ו')\n         …  .append('ד').toString()");
        r8.m28169a('2', r0);
        r0.setLength(0);
        r0.append((char) 1490);
        r0.append((char) 1489);
        r0.append((char) 1488);
        r0 = r0.toString();
        s1.z.c.l.d(r0, "sb.append('ג')\n         …  .append('א').toString()");
        r8.m28169a('3', r0);
        r0.setLength(0);
        r0.append((char) 1503);
        r0.append((char) 1504);
        r0.append((char) 1501);
        r0.append((char) 1502);
        r0 = r0.toString();
        s1.z.c.l.d(r0, "sb.append('ן')\n         …  .append('מ').toString()");
        r8.m28169a('4', r0);
        r0.setLength(0);
        r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8705H2(r0, 1500, 1498, 1499, 1497);
        p193e.p1432d.p1439c.p1440a.C22128a.m8707H0(r0, "sb.append('ל')\n         …  .append('י').toString()", r8, '5', r0, r0, 0);
        r0.append((char) 1496);
        r0.append((char) 1495);
        r0.append((char) 1494);
        r0 = r0.toString();
        s1.z.c.l.d(r0, "sb.append('ט')\n         …  .append('ז').toString()");
        r8.m28169a('6', r0);
        r0.setLength(0);
        r0.append((char) 1514);
        r0.append((char) 1513);
        r0.append((char) 1512);
        r0 = r0.toString();
        p193e.p1432d.p1439c.p1440a.C22128a.m8707H0(r0, "sb.append('ת')\n         …  .append('ר').toString()", r8, '7', r0, r0, 0);
        r0.append((char) 1511);
        r0.append((char) 1509);
        r0.append((char) 1510);
        r0 = r0.toString();
        s1.z.c.l.d(r0, "sb.append('ק')\n         …  .append('צ').toString()");
        r8.m28169a('8', r0);
        r0.setLength(0);
        r0.append((char) 1507);
        r0.append((char) 1508);
        r0.append((char) 1506);
        r0.append((char) 1505);
        r0 = r0.toString();
        s1.z.c.l.d(r0, "sb.append('ף')\n         …  .append('ס').toString()");
        r8.m28169a('9', r0);
        r8.m28169a('0', "+");
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p194a.p432b4.p433a.C8638c m26055K(java.lang.String r8, s1.z.b.a r9, int r10) {
        /*
            Method dump skipped, instructions count: 2297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m26055K(java.lang.String, s1.z.b.a, int):e.a.b4.a.c");
    }

    /* renamed from: K0 */
    public static /* synthetic */ Object m26054K0(AbstractC9678z abstractC9678z, String str, SourceType sourceType, String str2, d dVar, int i, Object obj) {
        if ((i & 2) != 0) {
            sourceType = null;
        }
        return ((C9612a0) abstractC9678z).m27390a(str, sourceType, null, dVar);
    }

    /* renamed from: K1 */
    public static final void m26053K1(AbstractC19462a abstractC19462a, List<k<String, Float>> list, String str) {
        l.e(abstractC19462a, "$this$logLanguageIdentificationResults");
        l.e(list, "confidenceValues");
        l.e(str, "deviceLang");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            k kVar = (k) it.next();
            String str2 = (String) kVar.a;
            Object obj = linkedHashMap.get(str2);
            ArrayList arrayList = obj;
            if (obj == null) {
                arrayList = C22128a.m8673R(linkedHashMap, str2);
            }
            ((List) arrayList).add(Float.valueOf(((Number) kVar.b).floatValue()));
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            m26041N1(abstractC19462a, (List) entry.getValue(), (String) entry.getKey(), str);
        }
    }

    /* renamed from: K2 */
    public static final String m26052K2(String str) {
        l.e(str, "$this$takeIfBelow12");
        if (!(Build.VERSION.SDK_INT < 31)) {
            str = null;
        }
        return str;
    }

    /* renamed from: L */
    public static final Integer m26051L(Event event) {
        UserInfo legacyUserInfo;
        BusinessExt businessExt;
        l.e(event, "$this$businessFeatureFlags");
        Event.MessageSent messageSent = event.getMessageSent();
        return (messageSent == null || (legacyUserInfo = messageSent.getLegacyUserInfo()) == null || (businessExt = legacyUserInfo.getBusinessExt()) == null) ? null : Integer.valueOf((int) businessExt.getEnabledFeatures());
    }

    /* renamed from: L0 */
    public static final Set<AbstractC10836e.C10839c> m26050L0(Collection<? extends AbstractC10836e> collection) {
        l.e(collection, "$this$getSenders");
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (obj instanceof AbstractC10836e.C10839c) {
                arrayList.add(obj);
            }
        }
        return i.d1(arrayList);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x020f  */
    /* renamed from: L2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m26048L2(p193e.p194a.p437c.p580r.p582e.p583a.C10531a r11, p193e.p194a.p372b0.p419m.p422c.AbstractC8511a r12, p193e.p194a.p372b0.p419m.p423d.AbstractC8514a r13, p193e.p194a.p437c.p606w.p607o0.AbstractC10821g r14, s1.w.d<? super p193e.p194a.p437c.p438a.p493l.C9234a> r15) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m26048L2(e.a.c.r.e.a.a, e.a.b0.m.c.a, e.a.b0.m.d.a, e.a.c.w.o0.g, s1.w.d):java.lang.Object");
    }

    /* renamed from: M */
    public static final void m26047M(Context context, Bundle bundle) {
        int i;
        l.e(context, "$this$cancelNotification");
        if (bundle == null || (i = bundle.getInt("tc_notification_id", -1)) == -1) {
            return;
        }
        new C26458x(context).m1816b(i);
        C19291g.m13515s(context);
    }

    /* renamed from: M0 */
    public static final String m26046M0(a0 a0Var) {
        l.e(a0Var, "$this$getTcEndpointName");
        if (!r.m(a0Var.e, ".truecaller.com", false, 2)) {
            return null;
        }
        String str = a0Var.e;
        int length = str.length();
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(0, length - 15);
        l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    /* renamed from: M1 */
    public static final void m26045M1(String str) {
        e.m.d.n.i m25900s0;
        l.e(str, RemoteMessageConst.MessageBody.MSG);
        if (!f31166a || (m25900s0 = m25900s0()) == null) {
            return;
        }
        d0 d0Var = m25900s0.a;
        Objects.requireNonNull(d0Var);
        long currentTimeMillis = System.currentTimeMillis();
        long j = d0Var.c;
        w wVar = d0Var.f;
        wVar.e.b(new x(wVar, currentTimeMillis - j, str));
    }

    /* renamed from: M2 */
    public static final C10582b m26044M2(ActionStateEntity actionStateEntity) {
        l.e(actionStateEntity, "$this$toActionState");
        return new C10582b(actionStateEntity.getId(), actionStateEntity.getEntityId(), actionStateEntity.getDomain(), actionStateEntity.getState(), actionStateEntity.getCreatedAt(), actionStateEntity.getUpdatesAt(), DomainOrigin.SMS, actionStateEntity.getExtra());
    }

    /* renamed from: N */
    public static void m26043N(List<ContentProviderOperation> list, long j, int i, int i2) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28340A(j));
        newUpdate.withValue("category", Integer.valueOf(i));
        newUpdate.withValue("classification", Integer.valueOf(i2));
        list.add(newUpdate.build());
    }

    /* renamed from: N0 */
    public static final int m26042N0(Message message) {
        l.e(message, "$this$getTransport");
        int i = message.f13391l;
        if (i == 3) {
            i = message.f13390k;
        }
        return i;
    }

    /* renamed from: N1 */
    public static final void m26041N1(AbstractC19462a abstractC19462a, List<Float> list, String str, String str2) {
        float f;
        l.e(abstractC19462a, "$this$logTranslationConfidence");
        l.e(list, "confidence");
        l.e(str, "sourceLang");
        l.e(str2, "deviceLang");
        Iterator<T> it = list.iterator();
        if (it.hasNext()) {
            float floatValue = ((Number) it.next()).floatValue();
            while (true) {
                f = floatValue;
                if (!it.hasNext()) {
                    break;
                }
                floatValue = Math.min(f, ((Number) it.next()).floatValue());
            }
            Iterator<T> it2 = list.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            float floatValue2 = ((Number) it2.next()).floatValue();
            while (true) {
                float f2 = floatValue2;
                if (!it2.hasNext()) {
                    float j = (float) i.j(list);
                    LinkedHashMap m8655X = C22128a.m8655X("TextMessageTranslationConfidence", "type");
                    LinkedHashMap m8649Z = C22128a.m8649Z("sourceLanguage", AnalyticsConstants.NAME, str, "value", m8655X, "sourceLanguage", str, "deviceLanguage", AnalyticsConstants.NAME, str2, "value", "deviceLanguage", str2);
                    int size = list.size();
                    l.e("numMessages", AnalyticsConstants.NAME);
                    m8649Z.put("numMessages", Double.valueOf(size));
                    float f3 = 100;
                    int m4001J2 = C25225a.m4001J2(f * f3);
                    l.e("minConf", AnalyticsConstants.NAME);
                    m8649Z.put("minConf", Double.valueOf(m4001J2));
                    int m4001J22 = C25225a.m4001J2(f2 * f3);
                    l.e("maxConf", AnalyticsConstants.NAME);
                    m8649Z.put("maxConf", Double.valueOf(m4001J22));
                    int m4001J23 = C25225a.m4001J2(j * f3);
                    l.e("meanConf", AnalyticsConstants.NAME);
                    m8649Z.put("meanConf", Double.valueOf(m4001J23));
                    C17697p3.C17699b m15852a = C17697p3.m15852a();
                    m15852a.m15850b("TextMessageTranslationConfidence");
                    m15852a.m15849c(m8649Z);
                    m15852a.m15848d(m8655X);
                    C17697p3 build = m15852a.build();
                    l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
                    abstractC19462a.mo13275a(build);
                    return;
                }
                floatValue2 = Math.max(f2, ((Number) it2.next()).floatValue());
            }
        } else {
            throw new NoSuchElementException();
        }
    }

    /* renamed from: N2 */
    public static final ActionStateEntity m26040N2(C10582b c10582b) {
        l.e(c10582b, "$this$toActionStateEntity");
        return new ActionStateEntity(c10582b.f31562a, c10582b.f31563b, c10582b.f31564c, c10582b.f31565d, c10582b.f31568g.toString(), c10582b.f31566e, c10582b.f31567f, c10582b.f31569h);
    }

    /* renamed from: O0 */
    public static ContentValues m26038O0(HistoryTransportInfo historyTransportInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("raw_id", Long.valueOf(historyTransportInfo.f13703b));
        contentValues.put("info1", Integer.valueOf(historyTransportInfo.f13704c));
        contentValues.put("info3", historyTransportInfo.f13706e);
        contentValues.put("info2", Integer.valueOf(historyTransportInfo.f13705d));
        contentValues.put("info5", Integer.valueOf(historyTransportInfo.f13707f));
        contentValues.put("info6", historyTransportInfo.f13708g);
        return contentValues;
    }

    /* renamed from: O1 */
    public static final void m26037O1(AbstractC16952a abstractC16952a, AbstractC16954c abstractC16954c) {
        l.e(abstractC16952a, "$this$logWith");
        l.e(abstractC16954c, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        AbstractC16953b abstractC16953b = (AbstractC16953b) abstractC16954c;
        LogLevel m16735o = abstractC16953b.m16735o();
        l.e(m16735o, "logLevel");
        if (m16735o.getPriority() >= abstractC16952a.mo9874e().getPriority()) {
            abstractC16953b.m16734p(abstractC16952a);
        }
    }

    /* renamed from: O2 */
    public static final C10530c m26036O2(AbstractC9460d abstractC9460d, String str) {
        C10530c c10530c;
        l.e(abstractC9460d, "$this$toAnalyticsBuilder");
        l.e(str, "actionType");
        if (abstractC9460d instanceof AbstractC9460d.C9461a) {
            AbstractC9460d.C9461a c9461a = (AbstractC9460d.C9461a) abstractC9460d;
            c10530c = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
            c10530c.m25821g("past_smart_card");
            c10530c.m25823e("past_section");
            c10530c.m25825c(str);
            c10530c.m25824d("insights_smart_feed");
        } else if (abstractC9460d instanceof AbstractC9460d.C9463c) {
            AbstractC9460d.C9463c c9463c = (AbstractC9460d.C9463c) abstractC9460d;
            c10530c = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
            c10530c.m25821g("upcoming_smart_card");
            c10530c.m25823e("collapsed_card");
            c10530c.m25825c(str);
            c10530c.m25826b("collapse");
            c10530c.m25824d("insights_smart_feed");
        } else if (abstractC9460d instanceof AbstractC9460d.C9464d) {
            AbstractC9460d.C9464d c9464d = (AbstractC9460d.C9464d) abstractC9460d;
            c10530c = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
            c10530c.m25821g("upcoming_smart_card");
            c10530c.m25823e("collapsed_card");
            c10530c.m25825c(str);
            c10530c.m25826b(MraidExpandCommand.NAME);
            c10530c.m25824d("insights_smart_feed");
        } else if (abstractC9460d instanceof AbstractC9460d.C9465e) {
            AbstractC9460d.C9465e c9465e = (AbstractC9460d.C9465e) abstractC9460d;
            c10530c = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
            c10530c.m25821g("upcoming_smart_card");
            String str2 = c9465e.f28709c.f32336c;
            Locale locale = Locale.US;
            l.d(locale, "Locale.US");
            Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = str2.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            c10530c.m25823e(lowerCase);
            c10530c.m25825c(str);
            c10530c.m25822f(c9465e.f28708b.f28695a.f28700c);
            c10530c.m25824d("insights_smart_feed");
        } else if (!(abstractC9460d instanceof AbstractC9460d.C9462b)) {
            throw new s1.i();
        } else {
            c10530c = new C10530c(null, null, null, null, null, null, null, Constants.ERR_WATERMARKR_INFO);
        }
        return c10530c;
    }

    /* renamed from: P */
    public static /* synthetic */ C8889b m26035P(AbstractC8890c abstractC8890c, FinanceTab financeTab, List list, C27010k0 c27010k0, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            c27010k0 = null;
        }
        return abstractC8890c.mo27980a(financeTab, list, c27010k0, null);
    }

    /* renamed from: P0 */
    public static ContentValues m26034P0(ImTransportInfo imTransportInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("raw_id", imTransportInfo.f13729b);
        contentValues.put("info5", Integer.valueOf(imTransportInfo.f13730c));
        contentValues.put("info1", Integer.valueOf(imTransportInfo.f13731d));
        contentValues.put("info2", Integer.valueOf(imTransportInfo.f13732e));
        contentValues.put("info3", Integer.valueOf(imTransportInfo.f13733f));
        contentValues.put("info4", Integer.valueOf(imTransportInfo.f13734g));
        contentValues.put("info6", Integer.valueOf(imTransportInfo.f13735h));
        contentValues.put("info7", Integer.valueOf(imTransportInfo.f13736i));
        contentValues.put("info8", Long.valueOf(imTransportInfo.f13737j));
        contentValues.put("info12", Integer.valueOf(imTransportInfo.f13740m));
        contentValues.put("info17", imTransportInfo.f13742o);
        return contentValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [double] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* renamed from: P1 */
    public static final AndroidMultiClassClassifierModel m26033P1(ClassifierSeedServiceModel classifierSeedServiceModel) {
        s1.u.s sVar;
        List<ClassMeta> classMetas;
        s1.u.s sVar2 = s1.u.s.a;
        l.e(classifierSeedServiceModel, "$this$mapToAndroidClassifier");
        Vectors vectors = classifierSeedServiceModel.getData().getVectors();
        if (vectors == null || (classMetas = vectors.getClassMetas()) == null) {
            sVar = sVar2;
        } else {
            s1.u.s arrayList = new ArrayList(C25225a.m4004J(classMetas, 10));
            for (ClassMeta classMeta : classMetas) {
                int classId = classMeta.getClassId();
                String className = classMeta.getClassName();
                double classProb = classMeta.getClassProb();
                double tfIdfSum = classMeta.getTfIdfSum();
                int docInClass = classMeta.getDocInClass();
                Integer wordsInClass = classMeta.getWordsInClass();
                arrayList.add(new AndroidClassMeta(classId, className, Double.valueOf(classProb), Double.valueOf(tfIdfSum), docInClass, wordsInClass != null ? Double.valueOf(wordsInClass.intValue()) : null));
            }
            sVar = arrayList;
        }
        Vectors vectors2 = classifierSeedServiceModel.getData().getVectors();
        s1.u.s sVar3 = sVar2;
        if (vectors2 != null) {
            List<Probability> probabilities = vectors2.getProbabilities();
            sVar3 = sVar2;
            if (probabilities != null) {
                s1.u.s arrayList2 = new ArrayList(C25225a.m4004J(probabilities, 10));
                Iterator it = probabilities.iterator();
                while (true) {
                    sVar3 = arrayList2;
                    if (!it.hasNext()) {
                        break;
                    }
                    Probability probability = (Probability) it.next();
                    Double idf = probability.getIdf();
                    int noOfMessages = probability.getNoOfMessages();
                    List<ClassKeywordMeta> probabilities2 = probability.getProbabilities();
                    ArrayList arrayList3 = new ArrayList(C25225a.m4004J(probabilities2, 10));
                    for (ClassKeywordMeta classKeywordMeta : probabilities2) {
                        int classIdentifier = classKeywordMeta.getClassIdentifier();
                        Double probs = classKeywordMeta.getProbs();
                        Integer tf = classKeywordMeta.getTf();
                        arrayList3.add(new AndroidClassKeywordMeta(classIdentifier, probs, tf != null ? Double.valueOf(tf.intValue()) : null));
                    }
                    arrayList2.add(new AndroidWordToClassProb(idf, noOfMessages, arrayList3, probability.getWord()));
                }
            }
        }
        Vectors vectors3 = classifierSeedServiceModel.getData().getVectors();
        int version = vectors3 != null ? vectors3.getVersion() : 0;
        Vectors vectors4 = classifierSeedServiceModel.getData().getVectors();
        return new AndroidMultiClassClassifierModel(sVar, sVar3, version, (vectors4 != null ? (double) vectors4.getBarrierValue() : false) == true ? 1.0d : 0.0d);
    }

    /* renamed from: P2 */
    public static final String m26032P2(long j) {
        String str;
        long j2 = 1000;
        long j3 = j / j2;
        long j4 = 99;
        if (0 <= j3 && j4 >= j3) {
            str = "0-100";
        } else {
            long j5 = 199;
            if (100 <= j3 && j5 >= j3) {
                str = "100-200";
            } else {
                long j6 = 299;
                if (200 <= j3 && j6 >= j3) {
                    str = "200-300";
                } else {
                    long j7 = 399;
                    if (300 <= j3 && j7 >= j3) {
                        str = "300-500";
                    } else {
                        long j8 = 499;
                        if (400 <= j3 && j8 >= j3) {
                            str = "400-500";
                        } else {
                            long j9 = 599;
                            if (500 <= j3 && j9 >= j3) {
                                str = "500-600";
                            } else {
                                long j10 = 699;
                                if (600 <= j3 && j10 >= j3) {
                                    str = "600-700";
                                } else {
                                    long j11 = 799;
                                    if (700 <= j3 && j11 >= j3) {
                                        str = "700-800";
                                    } else {
                                        str = (((long) 800) <= j3 && ((long) 899) >= j3) ? "800-900" : (((long) 900) <= j3 && j2 >= j3) ? "900-1000" : ">1mb";
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: Q */
    public static final Intent m26031Q(Context context, String str, long j, NotificationIdentifier notificationIdentifier, OtpAnalyticsModel otpAnalyticsModel, long j2, String str2) {
        Intent intent = new Intent(context, OTPCopierService.class);
        intent.putExtra("MESSAGE_ID", j);
        intent.putExtra("OTP_NOTIFICATION_ID", notificationIdentifier);
        intent.putExtra("CONVERSATION_ID", j2);
        intent.putExtra("extra_otp_analytics_model", otpAnalyticsModel);
        intent.putExtra("SILENT_MARK_AS_READ", str2);
        intent.setAction(str);
        return intent;
    }

    /* renamed from: Q0 */
    public static ContentValues m26030Q0(MmsTransportInfo mmsTransportInfo) {
        AssertionUtil.isNotNull(mmsTransportInfo.f13790e, new String[0]);
        ContentValues contentValues = new ContentValues();
        contentValues.put("raw_id", Long.valueOf(mmsTransportInfo.f13787b));
        contentValues.put("info2", Integer.valueOf(mmsTransportInfo.f13788c));
        contentValues.put("info3", mmsTransportInfo.f13790e.toString());
        contentValues.put("info1", Long.valueOf(mmsTransportInfo.f13789d));
        contentValues.put("info5", Integer.valueOf(mmsTransportInfo.f13792g));
        contentValues.put("info6", mmsTransportInfo.f13793h);
        contentValues.put("info7", Integer.valueOf(mmsTransportInfo.f13794i));
        Uri uri = mmsTransportInfo.f13797l;
        if (uri != null) {
            contentValues.put("info12", uri.toString());
        }
        contentValues.put("info13", mmsTransportInfo.f13800o);
        long j = ((e) mmsTransportInfo.f13801p).a;
        if (j != 0) {
            contentValues.put("info14", Long.valueOf(j / 1000));
        }
        contentValues.put("info15", Integer.valueOf(mmsTransportInfo.f13802q));
        contentValues.put("info16", Integer.valueOf(mmsTransportInfo.f13803r));
        contentValues.put("info17", Integer.valueOf(mmsTransportInfo.f13804s));
        contentValues.put("info20", mmsTransportInfo.f13807v);
        contentValues.put("info21", Integer.valueOf(mmsTransportInfo.f13808w));
        contentValues.put("info22", Integer.valueOf(mmsTransportInfo.f13809x));
        contentValues.put("info23", Integer.valueOf(mmsTransportInfo.f13810y));
        contentValues.put("info24", Long.valueOf(mmsTransportInfo.f13811z));
        contentValues.put("info4", Integer.valueOf(mmsTransportInfo.f13791f));
        contentValues.put("info8", mmsTransportInfo.f13795j);
        contentValues.put("info9", Integer.valueOf(mmsTransportInfo.f13796k));
        contentValues.put("info10", mmsTransportInfo.f13798m);
        contentValues.put("info11", Integer.valueOf(mmsTransportInfo.f13799n));
        contentValues.put("info18", mmsTransportInfo.f13805t);
        contentValues.put("info19", mmsTransportInfo.f13806u);
        contentValues.put("info25", Integer.valueOf(mmsTransportInfo.f13781A));
        contentValues.put("info26", Integer.valueOf(mmsTransportInfo.f13782B));
        contentValues.put("info27", Boolean.valueOf(mmsTransportInfo.f13783C));
        return contentValues;
    }

    /* renamed from: Q1 */
    public static /* synthetic */ C7083e m26029Q1(AbstractC7107p abstractC7107p, long j, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 8) != 0) {
            z = true;
        }
        return abstractC7107p.mo30113b(j, i, i2, z);
    }

    /* renamed from: Q2 */
    public static final String m26028Q2(long j) {
        int millis = (int) (j / TimeUnit.SECONDS.toMillis(1L));
        return millis == 0 ? "0-1" : millis == 1 ? "1-2" : millis == 2 ? "2-3" : millis == 3 ? "3-4" : millis == 4 ? "4-5" : millis == 5 ? "5-6" : millis == 6 ? "6-7" : millis == 7 ? "7-8" : millis == 8 ? "8-9" : (9 <= millis && 10 >= millis) ? "9-10" : ">10";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* renamed from: R */
    public static /* synthetic */ Intent m26027R(Context context, String str, long j, NotificationIdentifier notificationIdentifier, OtpAnalyticsModel otpAnalyticsModel, long j2, String str2, int i) {
        ?? r16 = j2;
        if ((i & 32) != 0) {
            r16 = 0;
        }
        return m26031Q(context, str, j, notificationIdentifier, otpAnalyticsModel, r16, null);
    }

    /* renamed from: R0 */
    public static ContentValues m26026R0(SmsTransportInfo smsTransportInfo) {
        AssertionUtil.isNotNull(smsTransportInfo.f13867e, new String[0]);
        ContentValues contentValues = new ContentValues();
        contentValues.put("raw_id", Long.valueOf(smsTransportInfo.f13864b));
        contentValues.put("info2", Integer.valueOf(smsTransportInfo.f13865c));
        contentValues.put("info3", smsTransportInfo.f13867e.toString());
        contentValues.put("info4", Integer.valueOf(smsTransportInfo.f13869g));
        contentValues.put("info5", Integer.valueOf(smsTransportInfo.f13870h));
        contentValues.put("info6", smsTransportInfo.f13871i);
        contentValues.put("info8", Integer.valueOf(smsTransportInfo.f13872j));
        contentValues.put("info9", Boolean.valueOf(smsTransportInfo.f13873k));
        contentValues.put("info1", Long.valueOf(smsTransportInfo.f13866d));
        contentValues.put("info7", smsTransportInfo.f13868f);
        contentValues.put("info10", smsTransportInfo.f13874l);
        return contentValues;
    }

    /* renamed from: R1 */
    public static final List<AbstractC10836e> m26025R1(Collection<? extends AbstractC10836e> collection) {
        List<AbstractC10836e> list;
        l.e(collection, "$this$maybeAddDefaultCategories");
        if (collection.isEmpty() || (m26018T0(collection).isEmpty() && m25910q0(collection).isEmpty() && m25880w0(collection).isEmpty())) {
            List T = i.T(new AbstractC10836e.C10838b[]{new AbstractC10836e.C10838b("Bill"), new AbstractC10836e.C10838b("Bank"), new AbstractC10836e.C10838b("Travel"), new AbstractC10836e.C10838b("Delivery"), new AbstractC10836e.C10838b("Event")});
            f0 f0Var = new f0(3);
            Objects.requireNonNull(UpdateCategory.Companion);
            List<UpdateCategory> m3897h3 = C25225a.m3897h3(UpdateCategory.values());
            ArrayList arrayList = new ArrayList(C25225a.m4004J(m3897h3, 10));
            for (UpdateCategory updateCategory : m3897h3) {
                arrayList.add(new AbstractC10836e.C10840d(updateCategory));
            }
            Object[] array = arrayList.toArray(new AbstractC10836e.C10840d[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            f0Var.a(array);
            Objects.requireNonNull(SmartCardCategory.Companion);
            List<SmartCardCategory> m3897h32 = C25225a.m3897h3(SmartCardCategory.values());
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(m3897h32, 10));
            for (SmartCardCategory smartCardCategory : m3897h32) {
                arrayList2.add(new AbstractC10836e.C10837a(smartCardCategory));
            }
            Object[] array2 = arrayList2.toArray(new AbstractC10836e.C10837a[0]);
            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
            f0Var.a(array2);
            Object[] array3 = T.toArray(new AbstractC10836e.C10838b[0]);
            Objects.requireNonNull(array3, "null cannot be cast to non-null type kotlin.Array<T>");
            f0Var.a(array3);
            list = i.l0(collection, i.T((AbstractC10836e[]) f0Var.a.toArray(new AbstractC10836e[f0Var.b()])));
        } else {
            list = i.S0(collection);
        }
        return list;
    }

    /* renamed from: R2 */
    public static final BinaryEntity m26024R2(C6227c c6227c) {
        l.e(c6227c, "$this$toBinaryEntity");
        Entity.C4195a c4195a = Entity.f13305h;
        long j = c6227c.f20876f;
        String str = c6227c.f20877g;
        Uri uri = c6227c.f20878h;
        int i = c6227c.f20879i;
        int i2 = c6227c.f20882l;
        String str2 = c6227c.f20884n;
        if (str2 == null) {
            str2 = "";
        }
        return Entity.C4195a.m35041b(c4195a, j, str, i, uri, c6227c.f20880j, c6227c.f20881k, i2, 0L, false, null, null, str2, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 259968);
    }

    /* renamed from: S */
    public static final PendingIntent m26023S(Context context, List<Message> list, NotificationIdentifier notificationIdentifier, String str, String str2) {
        return m26019T(context, list, notificationIdentifier, str, str2, false, false, 48);
    }

    /* renamed from: S0 */
    public static final k<String, Integer> m26022S0(p pVar) {
        k<String, Integer> kVar;
        l.e(pVar, "$this$getUiDueDate");
        h r = h.r(p.h(), pVar);
        l.d(r, "Days.daysBetween(currentDate, dueDate)");
        int i = ((w3.b.a.e0.i) r).a;
        if (i >= 6) {
            StringBuilder m8728C = C22128a.m8728C("Due on ");
            m8728C.append(m25870y0(pVar));
            kVar = new k<>(m8728C.toString(), Integer.valueOf(C4030R.attr.tcx_textPrimary));
        } else {
            C10091b c10091b = C10091b.f30006b;
            if (C10091b.f30005a.d(i)) {
                kVar = new k<>(C22128a.m8599l2("Due in ", i, " days"), Integer.valueOf(C4030R.attr.tcx_alertBackgroundOrange));
            } else if (i == 1) {
                kVar = new k<>("Due Tomorrow", Integer.valueOf(C4030R.attr.tcx_alertBackgroundOrange));
            } else if (i == 0) {
                kVar = new k<>("Due Today", Integer.valueOf(C4030R.attr.tcx_alertBackgroundRed));
            } else if (i == -1) {
                kVar = new k<>("Overdue by 1 day", Integer.valueOf(C4030R.attr.tcx_alertBackgroundRed));
            } else {
                StringBuilder m8728C2 = C22128a.m8728C("Overdue by ");
                m8728C2.append(Math.abs(i));
                m8728C2.append(" days");
                kVar = new k<>(m8728C2.toString(), Integer.valueOf(C4030R.attr.tcx_alertBackgroundRed));
            }
        }
        return kVar;
    }

    /* renamed from: S1 */
    public static final Mention[] m26021S1(String str) {
        Mention[] mentionArr;
        try {
            mentionArr = (Mention[]) e.m.d.y.n.B1(Mention[].class).cast(new e.m.e.k().g(str, Mention[].class));
            if (mentionArr == null) {
                mentionArr = new Mention[0];
            }
        } catch (z e) {
            mentionArr = new Mention[0];
        }
        return mentionArr;
    }

    /* renamed from: S2 */
    public static final b m26020S2(Date date) {
        l.e(date, "$this$toDateTime");
        return new b(date.getTime());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* renamed from: T */
    public static PendingIntent m26019T(Context context, List list, NotificationIdentifier notificationIdentifier, String str, String str2, boolean z, boolean z2, int i) {
        PendingIntent pendingIntent;
        Message message;
        if ((i & 8) != 0) {
            str2 = "notificationIncomingMessage";
        }
        if ((i & 16) != 0) {
            z = false;
        }
        if ((i & 32) != 0) {
            z2 = false;
        }
        l.e(context, "$this$createOpenPendingIntent");
        l.e(list, "messages");
        l.e(notificationIdentifier, "notificationId");
        l.e(str, "action");
        l.e(str2, "analyticsContext");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(Long.valueOf(((Message) it.next()).f13381b));
        }
        List list2 = (list.size() == 1) != false ? list : null;
        ?? r25 = (list2 == null || (message = (Message) i.B(list2)) == null) ? true : message.f13380a;
        if (linkedHashSet.isEmpty() || linkedHashSet.size() > 1) {
            Intent m34553xa = TruecallerInit.m34553xa(context, "messages", str2);
            m26087C(m34553xa, list);
            m26079E(m34553xa, notificationIdentifier.f13653a, notificationIdentifier.f13654b);
            m26083D(m34553xa, str);
            pendingIntent = PendingIntent.getActivity(context, 0, m34553xa, 201326592);
            l.d(pendingIntent, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        } else {
            pendingIntent = ConversationActivity.C4167a.m35127c(ConversationActivity.f13017e, context, ((Number) i.A(linkedHashSet)).longValue(), r25 == true ? 1L : 0L, str2, z2, z, false, null, notificationIdentifier, str, 192);
        }
        return pendingIntent;
    }

    /* renamed from: T0 */
    public static final Set<AbstractC10836e.C10840d> m26018T0(Collection<? extends AbstractC10836e> collection) {
        l.e(collection, "$this$getUpdateCategories");
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (obj instanceof AbstractC10836e.C10840d) {
                arrayList.add(obj);
            }
        }
        return i.d1(arrayList);
    }

    /* renamed from: T1 */
    public static final BillReminderMeta m26017T1(String str) {
        e.m.e.k kVar = new e.m.e.k();
        if (str != null) {
            return (BillReminderMeta) e.m.d.y.n.B1(BillReminderMeta.class).cast(kVar.g(str, BillReminderMeta.class));
        }
        return null;
    }

    /* renamed from: T2 */
    public static final String m26016T2(List<Message> list) {
        l.e(list, "$this$toEditEntityType");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = list.iterator();
        do {
            String str = "mixed";
            if (!it.hasNext()) {
                if (linkedHashSet.size() == 1) {
                    str = (String) i.A(linkedHashSet);
                }
                return str;
            }
            Entity[] entityArr = ((Message) it.next()).f13394o;
            l.d(entityArr, "message.entities");
            for (Entity entity : entityArr) {
                switch (entity.mo34993d()) {
                    case 0:
                        linkedHashSet.add("text");
                        break;
                    case 1:
                        linkedHashSet.add("image");
                        break;
                    case 2:
                        linkedHashSet.add("video");
                        break;
                    case 3:
                        linkedHashSet.add(MediaFormat.GIF);
                        break;
                    case 4:
                        linkedHashSet.add("audio");
                        break;
                    case 5:
                        linkedHashSet.add("doc");
                        break;
                    case 6:
                        linkedHashSet.add("vcard");
                        break;
                }
            }
        } while (linkedHashSet.size() <= 1);
        return "mixed";
    }

    /* renamed from: U */
    public static final PendingIntent m26015U(Context context, String str, Bundle bundle) {
        Intent intent = new Intent(context, ImUnreadRemindersBroadcastReceiver.class);
        intent.setAction(str);
        intent.putExtras(bundle);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 201326592);
        l.d(broadcast, "Intent(context, ImUnread…ent.FLAG_IMMUTABLE)\n    }");
        return broadcast;
    }

    /* renamed from: U0 */
    public static /* synthetic */ Object m26014U0(AbstractC10810b abstractC10810b, String str, String str2, ModelType modelType, d dVar, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return abstractC10810b.mo25599g(str, str2, null, dVar);
    }

    /* renamed from: U1 */
    public static /* synthetic */ void m26013U1(AbstractC5418j.AbstractC5419a abstractC5419a, Message message, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        abstractC5419a.mo32970Sb(message, z);
    }

    /* renamed from: U2 */
    public static final BinaryEntity m26012U2(LinkMetaData linkMetaData) {
        l.e(linkMetaData, "$this$toEntity");
        int ordinal = linkMetaData.f13538e.ordinal();
        String str = ordinal != 1 ? ordinal != 2 ? "application/vnd.truecaller.linkpreview" : "application/vnd.truecaller.linkpreview.playable" : "application/vnd.truecaller.linkpreview.media";
        String str2 = linkMetaData.f13535b;
        String str3 = linkMetaData.f13536c;
        String str4 = linkMetaData.f13534a;
        String str5 = linkMetaData.f13537d;
        return new LinkPreviewEntity(0L, str, 0, 0, 0, 0L, str5 != null ? Uri.parse(str5) : null, str2, str3, str4, 61);
    }

    /* renamed from: V0 */
    public static final CharSequence m26010V0(VCardEntity vCardEntity, Context context) {
        String str;
        l.e(vCardEntity, "$this$getVCardName");
        l.e(context, AnalyticsConstants.CONTEXT);
        boolean z = false;
        if (vCardEntity.f13475w > 1) {
            if (vCardEntity.f13474v.length() == 0) {
                Resources resources = context.getResources();
                int i = vCardEntity.f13475w;
                str = resources.getQuantityString(C2752R.plurals.MmsMultipleContactsVcardName, i, Integer.valueOf(i));
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(w3.c.a.a.a.h.a(vCardEntity.f13474v, 16));
                sb.append(" + ");
                Resources resources2 = context.getResources();
                int i2 = vCardEntity.f13475w;
                sb.append(resources2.getQuantityString(C2752R.plurals.MultipleContactsVcardName, i2 - 1, Integer.valueOf(i2 - 1)));
                str = sb.toString();
            }
            l.d(str, "if (contactName.isEmpty(…tactsCount - 1)\n        }");
        } else {
            if (vCardEntity.f13474v.length() == 0) {
                z = true;
            }
            str = z ? context.getResources().getString(C2752R.string.MessageContactAttachmentPlaceholder) : vCardEntity.f13474v;
            l.d(str, "if (contactName.isEmpty(…    contactName\n        }");
        }
        return str;
    }

    /* renamed from: V1 */
    public static final b m26009V1(DateFormat dateFormat, String str) {
        b bVar;
        l.e(dateFormat, "$this$parseDateTimeOrNull");
        try {
            bVar = dateFormat.formatter().b(str);
        } catch (Exception e) {
            if (!(e instanceof UnsupportedOperationException) && !(e instanceof IllegalArgumentException)) {
                throw e;
            }
            bVar = null;
        }
        return bVar;
    }

    /* renamed from: V2 */
    public static final C17463b4 m26008V2(Participant participant) {
        String str;
        l.e(participant, "$this$toEventParticipant");
        C17654m3.C17656b m15891a = C17654m3.m15891a();
        m15891a.m15887d(participant.m35447m());
        m15891a.m15889b(!TextUtils.isEmpty(participant.f11579l));
        m15891a.m15885f(Boolean.valueOf(participant.f11576i == 1));
        m15891a.m15886e(Boolean.valueOf(participant.f11577j));
        m15891a.m15884g(Boolean.valueOf(participant.f11576i == 2));
        m15891a.m15882i(Boolean.valueOf(participant.m35445o()));
        m15891a.m15888c(Boolean.valueOf((participant.f11581n & 64) != 0));
        m15891a.m15883h(Integer.valueOf(Math.max(0, participant.f11583p)));
        C17654m3 build = m15891a.build();
        if (!participant.m35448l() && !participant.m35447m()) {
            String str2 = participant.f11571d;
            l.d(str2, "rawAddress");
            if (C10031q.m26801c(str2)) {
                str = "10_digit";
                Schema schema = C17463b4.f48938d;
                C17463b4.C17465b c17465b = new C17463b4.C17465b(null);
                c17465b.m16015c(participant.m35452g());
                c17465b.validate(c17465b.fields()[1], str);
                c17465b.f48946b = str;
                c17465b.fieldSetFlags()[1] = true;
                c17465b.m16016b(build);
                C17463b4 build2 = c17465b.build();
                l.d(build2, "EventParticipant.newBuil…fo(info)\n        .build()");
                return build2;
            }
        }
        str = participant.m35453f();
        l.d(str, "numberForAnalytics");
        Schema schema2 = C17463b4.f48938d;
        C17463b4.C17465b c17465b2 = new C17463b4.C17465b(null);
        c17465b2.m16015c(participant.m35452g());
        c17465b2.validate(c17465b2.fields()[1], str);
        c17465b2.f48946b = str;
        c17465b2.fieldSetFlags()[1] = true;
        c17465b2.m16016b(build);
        C17463b4 build22 = c17465b2.build();
        l.d(build22, "EventParticipant.newBuil…fo(info)\n        .build()");
        return build22;
    }

    /* renamed from: W */
    public static final int m26007W(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Resources resources = context.getResources();
        l.d(resources, "context.resources");
        return (int) TypedValue.applyDimension(1, i, resources.getDisplayMetrics());
    }

    /* renamed from: W0 */
    public static final boolean m26006W0(AbstractC10024k abstractC10024k, FeedbackConsentType feedbackConsentType) {
        l.e(abstractC10024k, "$this$hasFbConsentAsked");
        l.e(feedbackConsentType, "consentType");
        return C25225a.m3976Q(new FeedbackConsentState[]{FeedbackConsentState.CONSENT_NOT_GIVEN, FeedbackConsentState.CONSENT_GIVEN}, abstractC10024k.mo26896a(feedbackConsentType));
    }

    /* renamed from: W1 */
    public static final p m26005W1(DateFormat dateFormat, String str) {
        p pVar;
        l.e(dateFormat, "$this$parseLocalDateOrNull");
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            q c = dateFormat.formatter().c(str);
            pVar = new p(c.a, c.b);
        } catch (Exception e) {
            if (e instanceof UnsupportedOperationException) {
                pVar = null;
            } else if (!(e instanceof IllegalArgumentException)) {
                throw e;
            } else {
                pVar = null;
            }
        }
        return pVar;
    }

    /* renamed from: W2 */
    public static final ExtendedPdo m26004W2(ParsedDataObject parsedDataObject, Long l, boolean z) {
        ExtendedPdo extendedPdo;
        l.e(parsedDataObject, "$this$toExtendedPdo");
        Transport transport = z ? Transport.IM : Transport.SMS;
        if (l != null) {
            l.longValue();
            extendedPdo = new ExtendedPdo(l.longValue(), transport, null, null, null, 0.0f, 0, 124, null);
        } else {
            extendedPdo = new ExtendedPdo(0L, transport, null, null, null, 0.0f, 0, 125, null);
        }
        extendedPdo.setMessageID(parsedDataObject.getMessageID());
        extendedPdo.setD(parsedDataObject.getD());
        extendedPdo.setK(parsedDataObject.getK());
        extendedPdo.setP(parsedDataObject.getP());
        extendedPdo.setC(parsedDataObject.getC());
        extendedPdo.setO(parsedDataObject.getO());
        extendedPdo.setF(parsedDataObject.getF());
        extendedPdo.setG(parsedDataObject.getG());
        extendedPdo.setS(parsedDataObject.getS());
        extendedPdo.setAccountModelId(parsedDataObject.getAccountModelId());
        extendedPdo.setVal1(parsedDataObject.getVal1());
        extendedPdo.setVal2(parsedDataObject.getVal2());
        extendedPdo.setVal3(parsedDataObject.getVal3());
        extendedPdo.setVal4(parsedDataObject.getVal4());
        extendedPdo.setVal5(parsedDataObject.getVal5());
        extendedPdo.setDatetime(parsedDataObject.getDatetime());
        extendedPdo.setAddress(parsedDataObject.getAddress());
        extendedPdo.setMsgDate(parsedDataObject.getMsgDate());
        extendedPdo.setDate(parsedDataObject.getDate());
        extendedPdo.setDffVal1(parsedDataObject.getDffVal1());
        extendedPdo.setDffVal2(parsedDataObject.getDffVal2());
        extendedPdo.setDffVal3(parsedDataObject.getDffVal3());
        extendedPdo.setDffVal4(parsedDataObject.getDffVal4());
        extendedPdo.setDffVal5(parsedDataObject.getDffVal5());
        extendedPdo.setActive(parsedDataObject.getActive());
        extendedPdo.setState(parsedDataObject.getState());
        extendedPdo.setSyntheticRecordId(parsedDataObject.getSyntheticRecordId());
        extendedPdo.setDeleted(parsedDataObject.getDeleted());
        extendedPdo.setCreatedAt(parsedDataObject.getCreatedAt());
        extendedPdo.setSpamCategory(parsedDataObject.getSpamCategory());
        return extendedPdo;
    }

    /* renamed from: X */
    public static DraftArguments m26003X(C5143k c5143k) {
        DraftArguments draftArguments = c5143k.f17580a;
        Objects.requireNonNull(draftArguments, "Cannot return null from a non-@Nullable @Provides method");
        return draftArguments;
    }

    /* renamed from: X0 */
    public static final boolean m26002X0(AbstractC10024k abstractC10024k, FeedbackConsentType feedbackConsentType) {
        l.e(abstractC10024k, "$this$hasFeedbackConsent");
        l.e(feedbackConsentType, "consentType");
        FeedbackConsentState mo26896a = abstractC10024k.mo26896a(feedbackConsentType);
        FeedbackConsentState feedbackConsentState = FeedbackConsentState.CONSENT_GIVEN;
        return mo26896a == feedbackConsentState && abstractC10024k.mo26896a(FeedbackConsentType.MASTER_CONSENT) == feedbackConsentState;
    }

    /* renamed from: X1 */
    public static final w3.b.a.r m26001X1(DateFormat dateFormat, String str) {
        w3.b.a.r rVar;
        l.e(dateFormat, "$this$parseLocalTimeOrNull");
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            q c = dateFormat.formatter().c(str);
            rVar = new w3.b.a.r(c.a, c.b);
        } catch (Exception e) {
            if (e instanceof UnsupportedOperationException) {
                rVar = null;
            } else if (!(e instanceof IllegalArgumentException)) {
                throw e;
            } else {
                rVar = null;
            }
        }
        return rVar;
    }

    /* renamed from: X2 */
    public static final String m26000X2(AbstractC10836e abstractC10836e) {
        String str;
        l.e(abstractC10836e, "$this$toFilterString");
        if (abstractC10836e instanceof AbstractC10836e.C10840d) {
            str = ((AbstractC10836e.C10840d) abstractC10836e).f32189a.getLabel();
        } else if (abstractC10836e instanceof AbstractC10836e.C10837a) {
            str = ((AbstractC10836e.C10837a) abstractC10836e).f32186a.getKey();
        } else if (abstractC10836e instanceof AbstractC10836e.C10838b) {
            str = ((AbstractC10836e.C10838b) abstractC10836e).f32187a;
        } else if (!(abstractC10836e instanceof AbstractC10836e.C10839c)) {
            throw new s1.i();
        } else {
            str = ((AbstractC10836e.C10839c) abstractC10836e).f32188a;
        }
        return str;
    }

    /* renamed from: Y */
    public static final List<k<Draft, Collection<BinaryEntity>>> m25999Y(Draft draft, Collection<? extends BinaryEntity> collection) {
        l.e(draft, "draft");
        if (collection == null) {
            collection = s1.u.s.a;
        }
        return C25225a.m3962T1(new k(draft, collection));
    }

    /* renamed from: Y0 */
    public static final boolean m25998Y0(AbstractC10024k abstractC10024k, FeedbackConsentType feedbackConsentType) {
        l.e(abstractC10024k, "$this$hasFeedbackShown");
        l.e(feedbackConsentType, "consentType");
        return abstractC10024k.mo26896a(feedbackConsentType) == FeedbackConsentState.CONSENT_SHOWN;
    }

    /* renamed from: Y1 */
    public static final boolean m25997Y1(C10510g c10510g) {
        Object obj;
        boolean z;
        l.e(c10510g, "$this$performDismissAction");
        Iterator<T> it = c10510g.f31254f.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((AbstractC10567a) obj) instanceof AbstractC10567a.C10572c) {
                break;
            }
        }
        AbstractC10567a abstractC10567a = (AbstractC10567a) obj;
        if (abstractC10567a != null) {
            AbstractC10584c mo25781a = abstractC10567a.mo25781a();
            if (mo25781a != null) {
                mo25781a.mo25772d();
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: Y2 */
    public static final C10496c m25996Y2(InsightsDomain.C4057a c4057a, AbstractC10084h abstractC10084h, BankUiProperties[] bankUiPropertiesArr) {
        l.e(c4057a, "$this$toFinanceData");
        l.e(abstractC10084h, "binder");
        l.e(bankUiPropertiesArr, AnalyticsConstants.PROPERTIES);
        AbstractC10518b mo26691a = abstractC10084h.mo26691a(c4057a, C25225a.m3897h3(bankUiPropertiesArr));
        AbstractC10518b abstractC10518b = mo26691a;
        if (!(mo26691a instanceof AbstractC10518b.C10519a)) {
            abstractC10518b = null;
        }
        AbstractC10518b.C10519a c10519a = (AbstractC10518b.C10519a) abstractC10518b;
        if (c10519a != null) {
            return new C10496c(c4057a.f12544w, c4057a.getConversationId(), c4057a.getSender(), c4057a.getCategory(), c10519a, ((e) c4057a.getMsgDateTime()).a, c4057a.getSpamCategory(), c4057a.isIM());
        }
        return null;
    }

    /* renamed from: Z0 */
    public static final boolean m25994Z0(AbstractC10024k abstractC10024k, FeedbackConsentType feedbackConsentType) {
        l.e(abstractC10024k, "$this$hasFeedbackStarted");
        l.e(feedbackConsentType, "consentType");
        return abstractC10024k.mo26896a(feedbackConsentType) != FeedbackConsentState.NOT_STARTED;
    }

    /* renamed from: Z1 */
    public static AbstractC19870l m25993Z1(C6123i c6123i) {
        Objects.requireNonNull(c6123i);
        C6244s c6244s = new C6244s(new C6245t(null), new C19872n());
        l.d(c6244s, "MessagingStorageActorsBuilder().build()");
        return c6244s;
    }

    /* renamed from: Z2 */
    public static final ContentProviderOperation m25992Z2(Entity entity, int i) {
        l.e(entity, "$this$toInsertContentProviderOperation");
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C8582g0.m28296x());
        newInsert.withValue("type", entity.f13307b);
        newInsert.withValue("entity_type", Integer.valueOf(entity.mo34993d()));
        if (entity.mo34894r()) {
            TextEntity textEntity = (TextEntity) entity;
            newInsert.withValue("entity_info1", textEntity.f13465i);
            l.d(newInsert.withValue("entity_info2", Boolean.valueOf(textEntity.f13466j)), "withValue(TextColumns.IS_RICH_TEXT, isRichText)");
        } else {
            BinaryEntity binaryEntity = (BinaryEntity) entity;
            newInsert.withValue("entity_info1", binaryEntity.f13173i.toString());
            newInsert.withValue("entity_info3", Long.valueOf(binaryEntity.f13175k));
            newInsert.withValue("entity_info2", Integer.valueOf(entity.f13308c));
            if (entity.mo34999h()) {
                GifEntity gifEntity = (GifEntity) entity;
                newInsert.withValue("entity_info5", Integer.valueOf(gifEntity.f13347v));
                newInsert.withValue("entity_info6", Integer.valueOf(gifEntity.f13348w));
                newInsert.withValue("entity_info4", gifEntity.f13349x.toString());
                String str = entity.f13307b;
                l.e(str, "contentType");
                if (r.n("tenor/gif", str, true)) {
                    newInsert.withValue("entity_info7", gifEntity.f13309A);
                }
            } else if (entity.mo34895l()) {
                ImageEntity imageEntity = (ImageEntity) entity;
                newInsert.withValue("entity_info5", Integer.valueOf(imageEntity.f13347v));
                newInsert.withValue("entity_info6", Integer.valueOf(imageEntity.f13348w));
                l.d(newInsert.withValue("entity_info4", imageEntity.f13349x.toString()), "withValue(ImageColumns.T… thumbnailUri.toString())");
            } else if (entity.mo34892w()) {
                VideoEntity videoEntity = (VideoEntity) entity;
                newInsert.withValue("entity_info5", Integer.valueOf(videoEntity.f13480v));
                newInsert.withValue("entity_info6", Integer.valueOf(videoEntity.f13481w));
                newInsert.withValue("entity_info7", Integer.valueOf(videoEntity.f13482x));
                l.d(newInsert.withValue("entity_info4", videoEntity.f13483y.toString()), "withValue(VideoColumns.T… thumbnailUri.toString())");
            } else if (entity.mo34896e()) {
                l.d(newInsert.withValue("entity_info4", Integer.valueOf(((AudioEntity) entity).f13170v)), "withValue(AudioColumns.D…as AudioEntity).duration)");
            } else if (entity.mo35000g()) {
                l.d(newInsert.withValue("entity_info4", ((DocumentEntity) entity).f13263v), "withValue(DocumentColumn…DocumentEntity).fileName)");
            } else if (entity.mo34893t()) {
                VCardEntity vCardEntity = (VCardEntity) entity;
                newInsert.withValue("entity_info5", vCardEntity.f13474v);
                newInsert.withValue("entity_info6", Integer.valueOf(vCardEntity.f13475w));
                l.d(newInsert.withValue("entity_info4", String.valueOf(vCardEntity.f13476x)), "withValue(VCardColumns.T… thumbnailUri.toString())");
            } else if (entity.mo34997n()) {
                LinkPreviewEntity linkPreviewEntity = (LinkPreviewEntity) entity;
                newInsert.withValue("entity_info4", linkPreviewEntity.f13358y);
                newInsert.withValue("entity_info6", linkPreviewEntity.f13359z);
                newInsert.withValue("entity_info7", linkPreviewEntity.f13352A);
                Uri uri = linkPreviewEntity.f13357x;
                if (uri != null) {
                    newInsert.withValue("entity_info5", String.valueOf(uri));
                }
            } else if (entity.mo34996o()) {
                LocationEntity locationEntity = (LocationEntity) entity;
                newInsert.withValue("entity_info4", locationEntity.f13360v);
                newInsert.withValue("entity_info5", Double.valueOf(locationEntity.f13361w));
                l.d(newInsert.withValue("entity_info6", Double.valueOf(locationEntity.f13362x)), "withValue(LocationColumns.LONGITUDE, longitude)");
            }
        }
        newInsert.withValueBackReference("message_id", i);
        ContentProviderOperation build = newInsert.build();
        l.d(build, "ContentProviderOperation…ssageIndex)\n    }.build()");
        return build;
    }

    /* renamed from: a */
    public static final String m25991a(MessageContent messageContent) {
        String str;
        MessageContent.AttachmentCase attachmentCase = messageContent.getAttachmentCase();
        if (attachmentCase != null) {
            switch (attachmentCase.ordinal()) {
                case 0:
                    MessageContent.Image image = messageContent.getImage();
                    l.d(image, "image");
                    str = image.getMimeType();
                    break;
                case 1:
                    str = "text/vcard";
                    break;
                case 2:
                    str = "application/vnd.truecaller.location";
                    break;
                case 3:
                    MessageContent.Video video = messageContent.getVideo();
                    l.d(video, "video");
                    str = video.getMimeType();
                    break;
                case 4:
                    MessageContent.Audio audio = messageContent.getAudio();
                    l.d(audio, "audio");
                    str = audio.getMimeType();
                    break;
                case 5:
                    str = "tenor/gif";
                    break;
                case 6:
                    MessageContent.File file = messageContent.getFile();
                    l.d(file, "file");
                    str = file.getMimeType();
                    break;
                case 7:
                    break;
                default:
                    throw new s1.i();
            }
            return str;
        }
        str = null;
        return str;
    }

    /* renamed from: a1 */
    public static final boolean m25989a1(ImGroupInfo imGroupInfo) {
        l.e(imGroupInfo, "$this$hasLeftGroup");
        return imGroupInfo.f13324f == 0;
    }

    /* renamed from: a2 */
    public static C8684c m25988a2(C8784a c8784a, AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, AbstractC10860a abstractC10860a, AbstractC9114h abstractC9114h, AbstractC8852j abstractC8852j, AbstractC9691j abstractC9691j, C8856c c8856c, C8857d c8857d, AbstractC10060c abstractC10060c, AbstractC10439b abstractC10439b) {
        Objects.requireNonNull(c8784a);
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC10860a, "messageInfoLoader");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC8852j, "lifecycleAwareToolTipController");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(c8856c, "recentTransactionAdapter");
        l.e(c8857d, "recentUpdatesAdapter");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        l.e(abstractC10439b, "deeplinkEnricher");
        return new C8684c(abstractC10258h, abstractC8511a, abstractC10860a, abstractC9114h, abstractC8852j, abstractC9691j, c8856c, c8857d, abstractC10060c, abstractC10439b);
    }

    /* renamed from: a3 */
    public static final ContentProviderOperation m25987a3(Mention mention, int i) {
        l.e(mention, "$this$toInsertContentProviderOperation");
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C8582g0.m28301s());
        newInsert.withValue("im_id", mention.getImId());
        newInsert.withValue("m_offset", Integer.valueOf(mention.getOffset()));
        newInsert.withValue("m_length", Integer.valueOf(mention.getLength()));
        newInsert.withValue("private_name", mention.getPrivateName());
        newInsert.withValue("public_name", mention.getPublicName());
        newInsert.withValueBackReference("message_id", i);
        ContentProviderOperation build = newInsert.build();
        l.d(build, "ContentProviderOperation…ssageIndex)\n    }.build()");
        return build;
    }

    /* renamed from: b */
    public static final CharSequence m25986b(String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new StyleSpan(1), 0, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    /* renamed from: b1 */
    public static final boolean m25984b1(Collection<ForwardContentItem> collection) {
        boolean z;
        Object obj;
        l.e(collection, "$this$hasMedia");
        Iterator<T> it = collection.iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((ForwardContentItem) obj).f12986c != null) {
                break;
            }
        }
        if (obj == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: b2 */
    public static AbstractC6115g m25983b2(C6123i c6123i) {
        Objects.requireNonNull(c6123i);
        return new C6118h();
    }

    /* renamed from: b3 */
    public static final C10329b m25982b3(C10536a c10536a) {
        l.e(c10536a, "$this$toInsightsFeedback");
        return new C10329b(c10536a.f31453f, c10536a.f31454g, new b(c10536a.f31449b.getTime()), c10536a.f31456i, c10536a.f31455h, c10536a.f31451d, c10536a.f31450c, null, false, 384);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        if (r32 != null) goto L17;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.truecaller.messaging.data.types.Message m25981c(com.truecaller.messaging.data.types.Draft r26, com.truecaller.messaging.data.types.Message r27) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m25981c(com.truecaller.messaging.data.types.Draft, com.truecaller.messaging.data.types.Message):com.truecaller.messaging.data.types.Message");
    }

    /* renamed from: c0 */
    public static final C10748g m25980c0(Intent intent) {
        l.e(intent, "$this$extractReminderCommonParams");
        String stringExtra = intent.getStringExtra("com.truecaller.insights.reminders.notifications.EXTRAS.META_JSON");
        if (stringExtra == null) {
            AssertionUtil.OnlyInDebug.shouldNeverHappen(new IllegalStateException("Missing Meta Data JSON"), new String[0]);
            return null;
        }
        l.d(stringExtra, "getStringExtra(EXTRA_NOT…        return null\n    }");
        String stringExtra2 = intent.getStringExtra("com.truecaller.insights.reminders.notifications.EXTRAS.REF_ID");
        if (stringExtra2 == null) {
            AssertionUtil.OnlyInDebug.shouldNeverHappen(new IllegalStateException("Missing Reminder Ref Id"), new String[0]);
            return null;
        }
        l.d(stringExtra2, "getStringExtra(EXTRA_NOT…        return null\n    }");
        String stringExtra3 = intent.getStringExtra("com.truecaller.insights.reminders.notifications.EXTRAS.CATEGORY");
        if (stringExtra3 == null) {
            AssertionUtil.OnlyInDebug.shouldNeverHappen(new IllegalStateException("Missing Action Category"), new String[0]);
            return null;
        }
        m25888u2(stringExtra3);
        AbstractC10738e.C10739a c10739a = AbstractC10738e.C10739a.f31897c;
        int intExtra = intent.getIntExtra("com.truecaller.insights.reminders.notifications.EXTRAS.NOTIFICATION_ID", -1);
        BillReminderMeta m26017T1 = m26017T1(stringExtra);
        C10748g c10748g = null;
        if (m26017T1 != null) {
            c10748g = new C10748g(m26017T1, stringExtra2, c10739a, intExtra);
        }
        return c10748g;
    }

    /* renamed from: c1 */
    public static final boolean m25979c1(C16503a c16503a, Role role) {
        l.e(c16503a, "$this$hasRole");
        l.e(role, "role");
        return (c16503a.f46398b & role.getNumber()) != 0;
    }

    /* renamed from: c2 */
    public static C8793b m25978c2(C8784a c8784a, AbstractC10497d abstractC10497d, f fVar, AbstractC9691j abstractC9691j, AbstractC10028o abstractC10028o, C8888a c8888a, AbstractC10060c abstractC10060c) {
        Objects.requireNonNull(c8784a);
        l.e(abstractC10497d, "businessInsightsManager");
        l.e(fVar, "ioContext");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10028o, "insightConfig");
        l.e(c8888a, "financeBoundaryUseCase");
        l.e(abstractC10060c, "analyticsManager");
        return new C8793b(abstractC10497d, fVar, abstractC9691j, abstractC10028o, c8888a, abstractC10060c);
    }

    /* renamed from: c3 */
    public static final C10266c m25977c3(Message message, String str) {
        l.e(message, "$this$toInsightsSmsMessage");
        Participant participant = message.f13382c;
        l.d(participant, "this.participant");
        String str2 = participant.m35448l() ? message.f13382c.f11572e : message.f13398s;
        long j = message.f13380a;
        if (str2 == null) {
            str2 = "";
        }
        String m35025a = message.m35025a();
        l.d(m35025a, "this.buildMessageText()");
        Date n = message.f13384e.n();
        l.d(n, "this.date.toDate()");
        long j2 = message.f13381b;
        int i = message.f13390k;
        String str3 = message.f13392m;
        String str4 = message.f13382c.f11579l;
        if (str4 == null) {
            str4 = "";
        }
        return new C10266c(j, str2, m35025a, n, j2, i, str3, 0, str, false, str4, 640);
    }

    /* renamed from: d */
    public static final float m25976d(float f, s1.d0.e eVar) {
        float f2;
        if (((Number) eVar.getStart()).floatValue() > ((Number) eVar.c()).floatValue()) {
            f2 = (((Number) eVar.c()).floatValue() + ((Number) eVar.getStart()).floatValue()) / 2;
        } else {
            f2 = Math.min(Math.max(f, ((Number) eVar.getStart()).floatValue()), ((Number) eVar.c()).floatValue());
        }
        return f2;
    }

    /* renamed from: d0 */
    public static /* synthetic */ Object m25975d0(AbstractC7004h abstractC7004h, long j, int i, int i2, AttachmentType attachmentType, SortOption sortOption, String str, String[] strArr, d dVar, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 1;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        if ((i3 & 32) != 0) {
            str = null;
        }
        return abstractC7004h.mo30311a(j, i, i2, attachmentType, sortOption, str, null, dVar);
    }

    /* renamed from: d1 */
    public static int m25974d1(List<ContentProviderOperation> list, Set<Participant> set, boolean z) {
        AssertionUtil.AlwaysFatal.isFalse(set.isEmpty(), "Participants set should never be empty");
        int size = set.size();
        String[] strArr = new String[size];
        int i = 0;
        for (Participant participant : set) {
            strArr[i] = participant.f11572e;
            i++;
        }
        Participant next = set.iterator().next();
        String str = next.f11569b == 4 ? next.f11572e : null;
        AssertionUtil.AlwaysFatal.isFalse(size == 0, "Participants set should never be empty");
        Uri.Builder appendEncodedPath = C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_conversations");
        for (int i2 = 0; i2 < size; i2++) {
            appendEncodedPath.appendQueryParameter("addr", strArr[i2]);
        }
        ContentProviderOperation.Builder withValue = ContentProviderOperation.newInsert(appendEncodedPath.build()).withValue("tc_group_id", str).withValue("hidden_number", Boolean.valueOf(z));
        int size2 = list.size();
        list.add(withValue.build());
        return size2;
    }

    /* renamed from: d2 */
    public static C9109d m25973d2(C8789d c8789d, f fVar, AbstractC10028o abstractC10028o, AbstractC10497d abstractC10497d, AbstractC9691j abstractC9691j) {
        Objects.requireNonNull(c8789d);
        l.e(fVar, "ioContext");
        l.e(abstractC10028o, "insightConfig");
        l.e(abstractC10497d, "insightsUiManager");
        l.e(abstractC9691j, "insightsStatusProvider");
        return new C9109d(fVar, abstractC10028o, abstractC10497d, abstractC9691j);
    }

    /* renamed from: d3 */
    public static final LayoutInflater m25972d3(LayoutInflater layoutInflater) {
        l.e(layoutInflater, "$this$toInsightsThemeInflater");
        Context context = layoutInflater.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(m26090B0(context));
        l.d(cloneInContext, "cloneInContext(context.g…htsContextThemeWrapper())");
        return cloneInContext;
    }

    /* renamed from: e */
    public static final CharacterStyle m25971e(Context context) {
        return new ForegroundColorSpan(C19291g.m13612L(context, C4161R.attr.tcx_textTertiary));
    }

    /* renamed from: e1 */
    public static int m25969e1(List<ContentProviderOperation> list, Participant participant) {
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C17891a1.C17902k.m15675H());
        newInsert.withValue("type", Integer.valueOf(participant.f11569b)).withValue("raw_destination", participant.f11571d).withValue("normalized_destination", participant.f11572e).withValue("country_code", participant.f11573f).withValue("tc_im_peer_id", participant.f11570c).withValue("aggregated_contact_id", Long.valueOf(participant.f11575h)).withValue("im_business_state", Integer.valueOf(participant.f11592y)).withValue("im_business_feature_flags", Integer.valueOf(participant.f11593z));
        int size = list.size();
        list.add(newInsert.build());
        return size;
    }

    /* renamed from: e2 */
    public static C8813j m25968e2(C8784a c8784a, AbstractC10497d abstractC10497d, f fVar, AbstractC9691j abstractC9691j, AbstractC10028o abstractC10028o) {
        Objects.requireNonNull(c8784a);
        l.e(abstractC10497d, "businessInsightsManager");
        l.e(fVar, "ioContext");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10028o, "insightConfig");
        return new C8813j(abstractC10497d, fVar, abstractC9691j, abstractC10028o);
    }

    /* renamed from: e3 */
    public static final p m25967e3(Date date) {
        l.e(date, "$this$toLocalDate");
        return new p(date);
    }

    /* renamed from: f */
    public static final float m25966f(s1.d0.e eVar, float f) {
        float f2;
        float f3;
        s1.d0.d dVar = (s1.d0.d) eVar;
        if (((Number) dVar.getStart()).floatValue() > ((Number) dVar.c()).floatValue()) {
            f3 = (((Number) dVar.c()).floatValue() + ((Number) dVar.getStart()).floatValue()) / 2;
        } else if (f < ((Number) dVar.getStart()).floatValue()) {
            f3 = ((Number) dVar.getStart()).floatValue();
        } else if (f <= ((Number) dVar.c()).floatValue()) {
            f2 = 0.0f;
            return f2;
        } else {
            f3 = ((Number) dVar.c()).floatValue();
        }
        f2 = f - f3;
        return f2;
    }

    /* renamed from: f0 */
    public static final <T> List<T> m25965f0(Iterable<? extends T> iterable, AbstractC10255e abstractC10255e) {
        l.e(iterable, "$this$filterBlockedSenders");
        l.e(abstractC10255e, "insightsFilterFetcher");
        C9588e c9588e = new C9588e(abstractC10255e);
        ArrayList arrayList = new ArrayList();
        for (T t : iterable) {
            if (((Boolean) c9588e.m27408d(t)).booleanValue()) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: f1 */
    public static final void m25964f1(AbstractC10876i abstractC10876i) {
        C10866b c10866b;
        l.e(abstractC10876i, "$this$invoke");
        if (abstractC10876i instanceof AbstractC10876i.C10877a) {
            c10866b = new C10866b(((AbstractC10876i.C10877a) abstractC10876i).f32298c, 2);
        } else if (abstractC10876i instanceof AbstractC10876i.C10879c) {
            c10866b = new C10866b(((AbstractC10876i.C10879c) abstractC10876i).f32302c, 4);
        } else if (abstractC10876i instanceof AbstractC10876i.C10880d) {
            c10866b = new C10870d(((AbstractC10876i.C10880d) abstractC10876i).f32304c);
        } else if (abstractC10876i instanceof AbstractC10876i.C10881e) {
            c10866b = new C10871e(((AbstractC10876i.C10881e) abstractC10876i).f32306c);
        } else if (l.a(abstractC10876i, AbstractC10876i.C10882f.f32307b)) {
            c10866b = null;
        } else if (abstractC10876i instanceof AbstractC10876i.C10883g) {
            c10866b = new C10873g(((AbstractC10876i.C10883g) abstractC10876i).f32309c);
        } else if (abstractC10876i instanceof AbstractC10876i.C10884h) {
            c10866b = new C10874h(((AbstractC10876i.C10884h) abstractC10876i).f32311c);
        } else if (!(abstractC10876i instanceof AbstractC10876i.C10878b)) {
            throw new s1.i();
        } else {
            c10866b = new C10868c(((AbstractC10876i.C10878b) abstractC10876i).f32300c, 5);
        }
        if (c10866b != null) {
            c10866b.mo25772d();
        }
    }

    /* renamed from: f2 */
    public static InboxTab m25963f2(C4975o c4975o) {
        InboxTab inboxTab = c4975o.f16989b;
        Objects.requireNonNull(inboxTab, "Cannot return null from a non-@Nullable @Provides method");
        return inboxTab;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00fd  */
    /* renamed from: f3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.truecaller.messaging.data.types.Message m25962f3(p193e.p194a.p195a.p231g.p234l0.C6227c r26, long r27) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m25962f3(e.a.a.g.l0.c, long):com.truecaller.messaging.data.types.Message");
    }

    /* renamed from: g */
    public static final AbstractC17405c.AbstractC17406a m25961g(AbstractC17405c abstractC17405c, Participant participant) {
        AbstractC17405c.AbstractC17406a abstractC17406a;
        if (participant == null || participant.f11569b != 0) {
            abstractC17406a = null;
        } else {
            String str = participant.f11572e;
            l.d(str, "participant.normalizedAddress");
            abstractC17406a = abstractC17405c.mo9921c(str);
        }
        return abstractC17406a;
    }

    /* renamed from: g0 */
    public static final boolean m25960g0(InsightsDomain.Bill bill) {
        l.e(bill, "bill");
        boolean z = true;
        if (!(bill.getDueAmt().length() > 0) || C17891a1.C17902k.m15690C(bill) <= PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            z = false;
        }
        return z;
    }

    /* renamed from: g1 */
    public static final boolean m25959g1(Event event, C20592g c20592g) {
        boolean z;
        l.e(event, "$this$isBusiness");
        l.e(c20592g, "featuresRegistry");
        if (event.getPayloadCase() == Event.PayloadCase.MESSAGE_SENT && event.getMessageSent().hasLegacyUserInfo()) {
            Event.MessageSent messageSent = event.getMessageSent();
            l.d(messageSent, "messageSent");
            if (messageSent.getLegacyUserInfo().hasBusinessExt() && c20592g.m10998G().isEnabled()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: g2 */
    public static Message m25958g2(C5566t c5566t) {
        Message message = c5566t.f18795b;
        Objects.requireNonNull(message, "Cannot return null from a non-@Nullable @Provides method");
        return message;
    }

    /* renamed from: g3 */
    public static final NewFeatureLabelType m25957g3(AbstractC16736t abstractC16736t) {
        l.e(abstractC16736t, "$this$toNewFeatureCardType");
        return abstractC16736t instanceof AbstractC16736t.C16740d ? NewFeatureLabelType.GHOST_CALL : abstractC16736t instanceof AbstractC16736t.C16737a ? NewFeatureLabelType.ANNOUNCE_CALL : abstractC16736t instanceof AbstractC16736t.C16750n ? NewFeatureLabelType.WHATS_APP_CALLER_ID : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0201  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m25956h(com.truecaller.api.services.messenger.p138v1.events.Event r3) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m25956h(com.truecaller.api.services.messenger.v1.events.Event):java.lang.String");
    }

    /* renamed from: h0 */
    public static final boolean m25955h0(InsightsDomain.Bill bill) {
        l.e(bill, "bill");
        return !C17891a1.C17902k.m15680F0(bill);
    }

    /* renamed from: h1 */
    public static final boolean m25954h1(C16993f c16993f) {
        l.e(c16993f, "product");
        return i.T(new ProductKind[]{ProductKind.CONSUMABLE_GOLD_YEARLY, ProductKind.CONSUMABLE_YEARLY}).contains(c16993f.f47672k);
    }

    /* renamed from: h2 */
    public static AbstractC5931s m25953h2(C5925m c5925m) {
        AbstractC5931s abstractC5931s = c5925m.f19817b;
        Objects.requireNonNull(abstractC5931s, "Cannot return null from a non-@Nullable @Provides method");
        return abstractC5931s;
    }

    /* renamed from: h3 */
    public static final Participant m25952h3(Peer.User user, Boolean bool, Integer num) {
        Participant.C3848b c3848b;
        l.e(user, "$this$toParticipant");
        int i = 0;
        if (user.hasPhoneNumber()) {
            c3848b = new Participant.C3848b(0);
            StringBuilder m8558w = C22128a.m8558w('+');
            Int64Value phoneNumber = user.getPhoneNumber();
            l.d(phoneNumber, "phoneNumber");
            m8558w.append(phoneNumber.getValue());
            c3848b.f11598e = m8558w.toString();
        } else {
            c3848b = new Participant.C3848b(3);
            c3848b.f11598e = user.getId();
        }
        l.d(c3848b, "if (hasPhoneNumber()) {\n…rmalizedAddress(id)\n    }");
        if (bool != null) {
            bool.booleanValue();
            c3848b.f11617x = bool.booleanValue() ? 1 : 0;
            if (num != null) {
                i = num.intValue();
            }
            c3848b.f11618y = i;
        }
        c3848b.f11596c = user.getId();
        Participant m35443a = c3848b.m35443a();
        l.d(m35443a, "builder.setImPeerId(id).build()");
        return m35443a;
    }

    /* renamed from: i */
    public static final String m25951i(EnumC6521b2 enumC6521b2) {
        String str;
        int ordinal = enumC6521b2.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            str = "121";
        } else if (ordinal != 2 && ordinal != 3) {
            throw new s1.i();
        } else {
            str = "group";
        }
        return str;
    }

    /* renamed from: i0 */
    public static /* synthetic */ void m25950i0(AbstractC5149q abstractC5149q, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        abstractC5149q.mo33797Y4(z);
    }

    /* renamed from: i1 */
    public static final boolean m25949i1(Message message) {
        boolean z;
        l.e(message, "$this$isDowngraded");
        TransportInfo transportInfo = message.f13393n;
        if (transportInfo instanceof ImTransportInfo) {
            Objects.requireNonNull(transportInfo, "null cannot be cast to non-null type com.truecaller.messaging.transport.im.ImTransportInfo");
            if (((ImTransportInfo) transportInfo).f13736i > 0) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: i2 */
    public static AbstractC16571e0 m25948i2() {
        int i = AbstractC17218r.f48341a;
        Locale locale = Locale.getDefault();
        l.d(locale, "Locale.getDefault()");
        return new C16575f0(locale);
    }

    /* renamed from: i3 */
    public static final Participant m25947i3(Peer peer) {
        Participant participant;
        l.e(peer, "$this$toParticipant");
        Peer.TypeCase typeCase = peer.getTypeCase();
        if (typeCase != null && typeCase.ordinal() == 1) {
            Peer.Group group = peer.getGroup();
            l.d(group, "group");
            Participant.C3848b c3848b = new Participant.C3848b(4);
            c3848b.f11598e = group.getId();
            participant = c3848b.m35443a();
            l.d(participant, "Participant.Builder(Part…alizedAddress(id).build()");
        } else {
            Peer.User user = peer.getUser();
            l.d(user, "user");
            participant = m25952h3(user, null, null);
        }
        return participant;
    }

    /* renamed from: j */
    public static final String m25946j(Resources resources, int i, int i2, int i3) {
        String str;
        if (i3 == 0) {
            str = resources.getString(i2);
            l.d(str, "getString(zeroResId)");
        } else {
            str = resources.getQuantityString(i, i3, Integer.valueOf(i3));
            l.d(str, "getQuantityString(id, quantity, quantity)");
        }
        return str;
    }

    /* renamed from: j0 */
    public static final boolean m25945j0(Message message) {
        boolean z;
        l.e(message, "$this$forbiddenToForward");
        boolean z2 = true;
        if (!message.m35016k()) {
            z2 = true;
            if ((message.f13386g & 254) <= 0) {
                Entity[] entityArr = message.f13394o;
                l.d(entityArr, "entities");
                int length = entityArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    }
                    if (entityArr[i].f13308c != 0) {
                        z = true;
                        break;
                    }
                    i++;
                }
                z2 = z;
            }
        }
        return z2;
    }

    /* renamed from: j1 */
    public static final boolean m25944j1(C6227c c6227c) {
        l.e(c6227c, "$this$isDownloadable");
        int i = c6227c.f20879i;
        return i == 2 || i == 4 || i == 5;
    }

    /* renamed from: j2 */
    public static C8856c m25943j2(C8784a c8784a, AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, AbstractC9114h abstractC9114h, AbstractC9691j abstractC9691j) {
        Objects.requireNonNull(c8784a);
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC9691j, "insightsStatusProvider");
        return new C8856c(abstractC10258h, abstractC8511a, abstractC9114h, abstractC9691j);
    }

    /* renamed from: j3 */
    public static final Participant m25942j3(C6227c c6227c) {
        l.e(c6227c, "$this$toParticipant");
        Participant.C3848b c3848b = new Participant.C3848b(c6227c.f20890t);
        c3848b.f11598e = c6227c.f20891u;
        c3848b.f11605l = c6227c.f20892v;
        Participant m35443a = c3848b.m35443a();
        l.d(m35443a, "Participant.Builder(part…icipantName)\n    .build()");
        return m35443a;
    }

    /* renamed from: k */
    public static final String m25941k(EnumC6521b2 enumC6521b2) {
        String str;
        int ordinal = enumC6521b2.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        throw new s1.i();
                    }
                }
            }
            str = "48h";
            return str;
        }
        str = "6h";
        return str;
    }

    /* renamed from: k1 */
    public static final boolean m25939k1(Conversation conversation) {
        l.e(conversation, "$this$isDraft");
        return (conversation.f13203e & 2) != 0;
    }

    /* renamed from: k2 */
    public static C8857d m25938k2(C8784a c8784a, AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, AbstractC9114h abstractC9114h, AbstractC9691j abstractC9691j) {
        Objects.requireNonNull(c8784a);
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC9691j, "insightsStatusProvider");
        return new C8857d(abstractC10258h, abstractC8511a, abstractC9114h, abstractC9691j);
    }

    /* renamed from: l */
    public static final boolean m25936l(MessageContent messageContent) {
        boolean z;
        List<MessageContent.MessageEntity> messageEntitiesList = messageContent.getMessageEntitiesList();
        l.d(messageEntitiesList, "messageEntitiesList");
        if (!messageEntitiesList.isEmpty()) {
            for (MessageContent.MessageEntity messageEntity : messageEntitiesList) {
                if (messageEntity.hasMention()) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    /* renamed from: l0 */
    public static final String m25935l0(Conversation conversation, InboxTab inboxTab) {
        l.e(conversation, "$this$getAvailabilityIdentifier");
        l.e(inboxTab, "tab");
        boolean m25914p1 = m25914p1(conversation.f13211m);
        boolean z = true;
        boolean z2 = inboxTab == InboxTab.SPAM;
        if (inboxTab != InboxTab.OTHERS) {
            z = false;
        }
        String str = null;
        if (!m25914p1) {
            str = null;
            if (!z) {
                if (z2) {
                    str = null;
                } else {
                    Participant[] participantArr = conversation.f13211m;
                    l.d(participantArr, "participants");
                    Participant participant = (Participant) C25225a.m3845s0(participantArr);
                    str = null;
                    if (participant != null) {
                        str = participant.f11569b != 0 ? null : participant.f11572e;
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: l1 */
    public static final boolean m25934l1(Message message) {
        l.e(message, "$this$isDraft");
        return (message.f13386g & 2) != 0;
    }

    /* renamed from: l2 */
    public static AbstractC19233h0 m25933l2(C5060a5 c5060a5) {
        return new C19235i0(C17422k.m16113E(c5060a5.f17328f, true));
    }

    /* renamed from: l3 */
    public static final C10833b m25932l3(C10834c c10834c) {
        l.e(c10834c, "$this$toQueryFilters");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (AbstractC10836e abstractC10836e : c10834c.f32182a) {
            if (abstractC10836e instanceof AbstractC10836e.C10840d) {
                arrayList.add(m26000X2(abstractC10836e));
            } else if (abstractC10836e instanceof AbstractC10836e.C10837a) {
                arrayList2.add(m26000X2(abstractC10836e));
            } else if (abstractC10836e instanceof AbstractC10836e.C10838b) {
                arrayList3.add(m26000X2(abstractC10836e));
            } else if (abstractC10836e instanceof AbstractC10836e.C10839c) {
                arrayList4.add(m26000X2(abstractC10836e));
            }
        }
        return new C10833b(arrayList, arrayList2, arrayList3, arrayList4);
    }

    /* renamed from: m */
    public static final int m25931m(Message message) {
        int i = 1;
        if ((message.f13386g & 1) == 0) {
            i = 0;
        }
        int i2 = i;
        if (message.f13382c.f11569b == 4) {
            i2 = i | 2;
        }
        return i2;
    }

    /* renamed from: m0 */
    public static final Set<String> m25930m0(Contact contact) {
        Set set;
        List<Number> m35557M;
        if (contact == null || (m35557M = contact.m35557M()) == null) {
            set = u.a;
        } else {
            ArrayList arrayList = new ArrayList();
            for (Number number : m35557M) {
                l.d(number, "it");
                String m35479e = number.m35479e();
                if (m35479e != null) {
                    arrayList.add(m35479e);
                }
            }
            set = i.d1(arrayList);
        }
        return set;
    }

    /* renamed from: m1 */
    public static final boolean m25929m1(DraftArguments draftArguments) {
        boolean z;
        l.e(draftArguments, "$this$isEdit");
        List<Draft> list = draftArguments.f13075b;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    if (((Draft) it.next()).m35060c()) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: m2 */
    public static AbstractC19233h0 m25928m2(C5566t c5566t) {
        return new C19235i0(c5566t.f18794a);
    }

    /* renamed from: m3 */
    public static final SmartCardCategory m25927m3(UpdateCategory updateCategory) {
        SmartCardCategory smartCardCategory;
        l.e(updateCategory, "$this$toSmartCardCategory");
        switch (updateCategory.ordinal()) {
            case 0:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            case 1:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            case 2:
                smartCardCategory = SmartCardCategory.Loan;
                break;
            case 3:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            case 4:
                smartCardCategory = SmartCardCategory.Travel;
                break;
            case 5:
                smartCardCategory = SmartCardCategory.Event;
                break;
            case 6:
                smartCardCategory = SmartCardCategory.Bill;
                break;
            case 7:
                smartCardCategory = SmartCardCategory.Recharge;
                break;
            case 8:
                smartCardCategory = SmartCardCategory.Appointment;
                break;
            case 9:
                smartCardCategory = SmartCardCategory.Delivery;
                break;
            case 10:
                smartCardCategory = SmartCardCategory.Prescription;
                break;
            case 11:
                smartCardCategory = SmartCardCategory.School;
                break;
            case 12:
                smartCardCategory = SmartCardCategory.Tax;
                break;
            case 13:
                smartCardCategory = SmartCardCategory.Vaccine;
                break;
            case 14:
                smartCardCategory = SmartCardCategory.WeatherAlert;
                break;
            case 15:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            case 16:
                smartCardCategory = SmartCardCategory.Balance;
                break;
            case 17:
                smartCardCategory = SmartCardCategory.Investments;
                break;
            case 18:
                smartCardCategory = SmartCardCategory.DataUsage;
                break;
            case 19:
                smartCardCategory = SmartCardCategory.SecurityAlert;
                break;
            case 20:
                smartCardCategory = SmartCardCategory.MissedCall;
                break;
            case 21:
                smartCardCategory = SmartCardCategory.VoiceMail;
                break;
            case 22:
                smartCardCategory = SmartCardCategory.Balance;
                break;
            case 23:
                smartCardCategory = SmartCardCategory.MissedCall;
                break;
            case 24:
                smartCardCategory = SmartCardCategory.Betting;
                break;
            case 25:
                smartCardCategory = SmartCardCategory.MissedCall;
                break;
            case 26:
                smartCardCategory = SmartCardCategory.Promotion;
                break;
            case 27:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            case 28:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            case 29:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            case 30:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            case 31:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            case 32:
                smartCardCategory = SmartCardCategory.Loan;
                break;
            case 33:
                smartCardCategory = SmartCardCategory.Loan;
                break;
            case 34:
                smartCardCategory = SmartCardCategory.Loan;
                break;
            case 35:
                smartCardCategory = SmartCardCategory.Loan;
                break;
            case 36:
                smartCardCategory = SmartCardCategory.Transaction;
                break;
            default:
                throw new s1.i();
        }
        return smartCardCategory;
    }

    /* renamed from: n */
    public static final InputPeer m25926n(String str) {
        InputPeer.C3289b newBuilder = InputPeer.newBuilder();
        InputPeer.Group.C3286a newBuilder2 = InputPeer.Group.newBuilder();
        newBuilder2.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder2).instance.setId(str);
        newBuilder.m35897a(newBuilder2);
        InputPeer build = newBuilder.build();
        l.d(build, "InputPeer.newBuilder().s…).setId(groupId)).build()");
        return build;
    }

    /* renamed from: n0 */
    public static final String m25925n0(C10748g c10748g) {
        String str;
        l.e(c10748g, "$this$getBillType");
        String subCategory = c10748g.f31935a.getSubCategory();
        int hashCode = subCategory.hashCode();
        if (hashCode == -303793002) {
            if (subCategory.equals("credit_card")) {
                str = "CreditCard";
            }
            str = "Bill";
        } else if (hashCode != 15963059) {
            if (hashCode == 2096722819 && subCategory.equals("prepaid_expiry")) {
                str = "PrepaidExpiry";
            }
            str = "Bill";
        } else {
            if (subCategory.equals("prepaid_success")) {
                str = "PrepaidSuccess";
            }
            str = "Bill";
        }
        return str;
    }

    /* renamed from: n1 */
    public static final boolean m25924n1(Message message) {
        l.e(message, "$this$isEdited");
        return message.f13379S != -1;
    }

    /* renamed from: n2 */
    public static AbstractC19233h0 m25923n2(C4975o c4975o) {
        return new C19235i0(c4975o.f16988a);
    }

    /* renamed from: n3 */
    public static String m25922n3(String str, String str2, int i) {
        String str3 = (i & 1) != 0 ? "\\s+" : null;
        l.e(str, "$this$toSnakeCase");
        l.e(str3, "separator");
        String lowerCase = str.toLowerCase();
        l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
        return i.O(C22128a.m8641b0(str3, lowerCase, 0), AnalyticsConstants.DELIMITER_MAIN, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C10021h.f29853b, 30);
    }

    /* renamed from: o */
    public static final boolean m25921o(Participant participant) {
        return C17891a1.C17902k.m15588o(participant.f11585r, 128) || C17891a1.C17902k.m15588o(participant.f11585r, 512);
    }

    /* renamed from: o0 */
    public static final FrameLayout m25920o0(e.m.a.g.e.e eVar) {
        l.e(eVar, "$this$getBottomSheet");
        e.m.a.g.e.d dialog = eVar.getDialog();
        Dialog dialog2 = dialog;
        if (!(dialog instanceof e.m.a.g.e.d)) {
            dialog2 = null;
        }
        e.m.a.g.e.d dVar = dialog2;
        if (dVar != null) {
            return (FrameLayout) dVar.findViewById(C2080R.C2082id.design_bottom_sheet);
        }
        return null;
    }

    /* renamed from: o1 */
    public static final boolean m25919o1(Conversation conversation) {
        l.e(conversation, "$this$isGroup");
        boolean z = true;
        if (conversation.f13201c != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: o2 */
    public static C8803g m25918o2(C8784a c8784a, AbstractC10497d abstractC10497d, f fVar, AbstractC9691j abstractC9691j, AbstractC10255e abstractC10255e) {
        Objects.requireNonNull(c8784a);
        l.e(abstractC10497d, "businessInsightsManager");
        l.e(fVar, "ioContext");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10255e, "insightsFilterFetcher");
        return new C8803g(abstractC10497d, fVar, abstractC9691j, abstractC10255e);
    }

    /* renamed from: o3 */
    public static String m25917o3(String str, String str2, int i) {
        String str3 = (i & 1) != 0 ? "\\s+" : null;
        l.e(str, "$this$toTitleCase");
        l.e(str3, "separator");
        String lowerCase = str.toLowerCase();
        l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
        return i.O(C22128a.m8641b0(str3, lowerCase, 0), StringConstant.SPACE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C10022i.f29854b, 30);
    }

    /* renamed from: p */
    public static final String m25916p(String str, List list, Context context) {
        String str2 = str;
        if (!list.isEmpty()) {
            StringBuilder m8728C = C22128a.m8728C(C22128a.m8543z2(str, StringConstant.SPACE));
            m8728C.append(context.getResources().getString(C2752R.string.inbox_cleanup_confirm_messages_from, i.O(list, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C5998j.f19964b, 30)));
            str2 = m8728C.toString();
        }
        return str2;
    }

    /* renamed from: p0 */
    public static final BottomSheetBehavior<FrameLayout> m25915p0(e.m.a.g.e.e eVar) {
        l.e(eVar, "$this$getBottomSheetBehavior");
        FrameLayout m25920o0 = m25920o0(eVar);
        if (m25920o0 != null) {
            return BottomSheetBehavior.H(m25920o0);
        }
        return null;
    }

    /* renamed from: p1 */
    public static boolean m25914p1(Participant[] participantArr) {
        boolean z = true;
        if (participantArr.length <= 1) {
            z = m25904r1(participantArr);
        }
        return z;
    }

    /* renamed from: p2 */
    public static AbstractC19233h0 m25913p2(C5351c c5351c) {
        return new C19235i0(c5351c.f18302a);
    }

    /* renamed from: p3 */
    public static final C9245c m25912p3(AbstractC10567a abstractC10567a) {
        C9245c c9245c;
        l.e(abstractC10567a, "$this$toUiActionData");
        if (abstractC10567a instanceof AbstractC10567a.AbstractC10568a.C10570b) {
            c9245c = new C9245c(l.a(((AbstractC10567a.AbstractC10568a.C10570b) abstractC10567a).f31516h, "PrepaidExpiry") ? "Recharge" : "Pay Bill", abstractC10567a);
        } else if (abstractC10567a instanceof AbstractC10567a.C10572c) {
            c9245c = new C9245c("Dismiss", abstractC10567a);
        } else if (abstractC10567a instanceof AbstractC10567a.C10577g) {
            c9245c = new C9245c("Send Feedback", abstractC10567a);
        } else if (abstractC10567a instanceof AbstractC10567a.AbstractC10568a.C10569a) {
            c9245c = new C9245c(l.a(((AbstractC10567a.AbstractC10568a.C10569a) abstractC10567a).f31507g, "PrepaidExpiry") ? "Already Recharged" : "Already Paid", abstractC10567a);
        } else if (abstractC10567a instanceof AbstractC10567a.C10573d) {
            c9245c = new C9245c("", abstractC10567a);
        } else if (abstractC10567a instanceof AbstractC10567a.AbstractC10578h.C10580b) {
            c9245c = new C9245c(abstractC10567a.mo25780b(), abstractC10567a);
        } else if (abstractC10567a instanceof AbstractC10567a.AbstractC10578h.C10579a) {
            c9245c = new C9245c(abstractC10567a.mo25780b(), abstractC10567a);
        } else if (abstractC10567a instanceof AbstractC10567a.AbstractC10575f.C10576a) {
            c9245c = new C9245c(abstractC10567a.mo25780b(), abstractC10567a);
        } else if (!(abstractC10567a instanceof AbstractC10567a.C10574e)) {
            throw new IllegalArgumentException("UiActionData type not supported yet javaClass");
        } else {
            c9245c = new C9245c(abstractC10567a.mo25780b(), abstractC10567a);
        }
        return c9245c;
    }

    /* renamed from: q */
    public static final BannerViewX m25911q(View view, AbstractC18905m abstractC18905m, RecyclerView.AbstractC0313c0 abstractC0313c0, String str, String str2) {
        View findViewById = view.findViewById(2131362284);
        BannerViewX bannerViewX = (BannerViewX) findViewById;
        bannerViewX.setPrimaryButtonCLickListener(new C25278g3(0, bannerViewX, abstractC18905m, str, abstractC0313c0, str2));
        bannerViewX.setSecondaryButtonCLickListener(new C25278g3(1, bannerViewX, abstractC18905m, str, abstractC0313c0, str2));
        l.d(findViewById, "findViewById<BannerViewX…r, this))\n        }\n    }");
        return (BannerViewX) findViewById;
    }

    /* renamed from: q0 */
    public static final Set<AbstractC10836e.C10837a> m25910q0(Collection<? extends AbstractC10836e> collection) {
        l.e(collection, "$this$getCardCategories");
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (obj instanceof AbstractC10836e.C10837a) {
                arrayList.add(obj);
            }
        }
        return i.d1(arrayList);
    }

    /* renamed from: q1 */
    public static final boolean m25909q1(Conversation conversation) {
        l.e(conversation, "$this$isGroupInvitation");
        ImGroupInfo imGroupInfo = conversation.f13224z;
        boolean z = true;
        if (imGroupInfo == null || !m25894t1(imGroupInfo)) {
            z = false;
        }
        return z;
    }

    /* renamed from: q2 */
    public static /* synthetic */ Object m25908q2(AbstractC6248w abstractC6248w, Long l, Long l2, Integer num, d dVar, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        if ((i & 2) != 0) {
            l2 = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        return abstractC6248w.mo31562n(l, l2, num, dVar);
    }

    /* renamed from: q3 */
    public static final AbstractC10513j m25907q3(InsightsDomain insightsDomain, AbstractC10084h abstractC10084h, List<? extends AbstractC10567a> list) {
        AbstractC10513j.C10514a c10514a;
        l.e(insightsDomain, "$this$toUpcomingData");
        l.e(abstractC10084h, "uiSchemaBinder");
        l.e(list, "actionsList");
        if (insightsDomain instanceof InsightsDomain.Bill) {
            InsightsDomain.Bill bill = (InsightsDomain.Bill) insightsDomain;
            l.e(bill, "$this$toBillUpcomingData");
            l.e(abstractC10084h, "uiSchemaBinder");
            l.e(list, "actionsList");
            AbstractC10518b mo26691a = abstractC10084h.mo26691a(bill, i.T(new BillUiProperties[]{BillUiProperties.DUE_AMT, BillUiProperties.UI_DUE_DATE, BillUiProperties.TRX_CURRENCY, BillUiProperties.UI_DUE_AMT, BillUiProperties.UI_TAGS, BillUiProperties.UI_TRX_TYPE, BillUiProperties.UI_DUEINS_TYPE, BillUiProperties.BILL_DATE_TIME, BillUiProperties.PAST_UI_DUE_DATE}));
            if (mo26691a != null) {
                c10514a = new AbstractC10513j.C10514a(bill.getMsgId(), bill.getConversationId(), bill.getSender(), bill.getCategory(), (AbstractC10567a) i.B(list), list.get(1), i.s(list, 2), (AbstractC10518b.C10520b) mo26691a, bill.getSpamCategory(), bill.isIM());
                return c10514a;
            }
            c10514a = null;
            return c10514a;
        } else if (!(insightsDomain instanceof InsightsDomain.C4062f)) {
            StringBuilder m8728C = C22128a.m8728C("Binder for ");
            m8728C.append(insightsDomain.getCategory());
            m8728C.append(" is not defined yet");
            throw new IllegalArgumentException(m8728C.toString());
        } else {
            InsightsDomain.C4062f c4062f = (InsightsDomain.C4062f) insightsDomain;
            l.e(c4062f, "$this$toTravelUpcomingData");
            l.e(abstractC10084h, "uiSchemaBinder");
            l.e(list, "actionsList");
            AbstractC10518b mo26691a2 = abstractC10084h.mo26691a(c4062f, i.T(new TravelUiProperties[]{TravelUiProperties.LOCATION, TravelUiProperties.PNR, TravelUiProperties.TRAVEL_TYPE, TravelUiProperties.DATETIME, TravelUiProperties.UI_DATE, TravelUiProperties.SEAT, TravelUiProperties.MORE_INFO, TravelUiProperties.CATEGORY, TravelUiProperties.MESSAGE_ID, TravelUiProperties.SENDER_ID, TravelUiProperties.CONTENT_TITLE, TravelUiProperties.ICON, TravelUiProperties.ALERT_TYPE, TravelUiProperties.ENABLE_EXPERIMENTAL_SENDER, TravelUiProperties.UI_TAGS, TravelUiProperties.TRAVEL_DATE_TIME}));
            if (mo26691a2 != null) {
                c10514a = new AbstractC10513j.C10515b(c4062f.getMsgId(), c4062f.getConversationId(), c4062f.getSender(), c4062f.getCategory(), (AbstractC10567a) i.B(list), list.get(1), i.s(list, 2), (AbstractC10518b.C10524f) mo26691a2, c4062f.getSpamCategory(), c4062f.isIM());
                return c10514a;
            }
            c10514a = null;
            return c10514a;
        }
    }

    /* renamed from: r */
    public static final CharacterStyle m25906r(FormattingStyle formattingStyle) {
        TypefaceSpan typefaceSpan;
        int ordinal = formattingStyle.ordinal();
        if (ordinal == 0) {
            typefaceSpan = new StyleSpan(1);
        } else if (ordinal == 1) {
            typefaceSpan = new StyleSpan(2);
        } else if (ordinal == 2) {
            typefaceSpan = new UnderlineSpan();
        } else if (ordinal == 3) {
            typefaceSpan = new StrikethroughSpan();
        } else if (ordinal != 4 && ordinal != 5) {
            throw new s1.i();
        } else {
            typefaceSpan = new TypefaceSpan("monospace");
        }
        return typefaceSpan;
    }

    /* renamed from: r0 */
    public static final String m25905r0(AbstractC10518b.C10520b c10520b) {
        String str;
        boolean z = true;
        if (l.a(c10520b.f31321o, "PrepaidExpiry")) {
            if (!r.p(c10520b.f31311e)) {
                StringBuilder m8728C = C22128a.m8728C("Plan expiring on ");
                m8728C.append(c10520b.f31311e);
                str = m8728C.toString();
            } else {
                str = "Plan expiring";
            }
        } else if (l.a(c10520b.f31321o, "PrepaidSuccess")) {
            str = "Recharge successful";
        } else if (Float.parseFloat(c10520b.f31310d) <= 0) {
            str = "No payment due";
        } else {
            if (c10520b.f31311e.length() != 0) {
                z = false;
            }
            if (z) {
                StringBuilder m8728C2 = C22128a.m8728C("Bill ");
                m8728C2.append(c10520b.f31314h);
                str = m8728C2.toString();
            } else {
                StringBuilder m8728C3 = C22128a.m8728C("Bill ");
                m8728C3.append(c10520b.f31314h);
                m8728C3.append(" on ");
                m8728C3.append(c10520b.f31311e);
                str = m8728C3.toString();
            }
        }
        return str;
    }

    /* renamed from: r1 */
    public static boolean m25904r1(Participant[] participantArr) {
        boolean z = false;
        if (participantArr.length == 1) {
            z = false;
            if (participantArr[0].f11569b == 4) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: r2 */
    public static final List<InsightsDomain.Bill> m25903r2(List<InsightsDomain.Bill> list) {
        l.e(list, "$this$removeDuplicatePdoBills");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            InsightsDomain.Bill bill = list.get(size);
            String f = DateFormat.MMMM_yyyy.formatter().f(bill.getBillDateTime());
            String sender = bill.getSender();
            Objects.requireNonNull(sender, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = sender.toLowerCase();
            l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            o oVar = new o(lowerCase, bill.getInsNum(), f);
            String sender2 = bill.getSender();
            Objects.requireNonNull(sender2, "null cannot be cast to non-null type java.lang.String");
            String lowerCase2 = sender2.toLowerCase();
            l.d(lowerCase2, "(this as java.lang.String).toLowerCase()");
            o oVar2 = new o(lowerCase2, bill.getDueAmt(), f);
            if (bill.getInsNum().length() > 0) {
                if (!linkedHashSet.contains(oVar) && !linkedHashSet2.contains(oVar2)) {
                    arrayList.add(bill);
                }
                linkedHashSet.add(oVar);
            } else if (!linkedHashSet2.contains(oVar2)) {
                arrayList.add(bill);
            }
            linkedHashSet2.add(oVar2);
        }
        return i.x0(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0098  */
    /* renamed from: r3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final p193e.p194a.p912i4.C15293v m25902r3(android.service.notification.StatusBarNotification r6, android.content.Context r7) {
        /*
            r0 = r6
            java.lang.String r1 = "$this$toWhatsAppNotification"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            android.app.Notification r0 = r0.getNotification()
            android.os.Bundle r0 = r0.extras
            java.lang.String r1 = "android.title"
            java.lang.String r0 = r0.getString(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L23
            goto L27
        L23:
            java.lang.String r0 = ""
            r8 = r0
        L27:
            r0 = r8
            java.lang.String r1 = "notification.extras.getS…cation.EXTRA_TITLE) ?: \"\""
            s1.z.c.l.d(r0, r1)
            r0 = r7
            java.lang.String r1 = "$this$getOngoingVideoCallString"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            java.lang.String r1 = "com.whatsapp"
            android.content.res.Resources r0 = r0.getResourcesForApplication(r1)
            r7 = r0
            r0 = r7
            r1 = r7
            java.lang.String r2 = "video_ongoing_call"
            java.lang.String r3 = "string"
            java.lang.String r4 = "com.whatsapp"
            int r1 = r1.getIdentifier(r2, r3, r4)
            java.lang.String r0 = r0.getString(r1)
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L89
            r0 = r6
            android.app.Notification r0 = r0.getNotification()
            android.os.Bundle r0 = r0.extras
            java.lang.String r1 = "android.text"
            java.lang.String r0 = r0.getString(r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L7a
            r0 = r10
            r1 = r7
            r2 = 1
            boolean r0 = s1.f0.v.z(r0, r1, r2)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r7 = r0
            goto L7c
        L7a:
            r0 = 0
            r7 = r0
        L7c:
            r0 = r7
            if (r0 == 0) goto L89
            r0 = r7
            boolean r0 = r0.booleanValue()
            r11 = r0
            goto L8c
        L89:
            r0 = 0
            r11 = r0
        L8c:
            r0 = r6
            android.app.Notification r0 = r0.getNotification()
            android.app.Notification$Action[] r0 = r0.actions
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L9b
            r0 = r6
            int r0 = r0.length
            r9 = r0
        L9b:
            e.a.i4.v r0 = new e.a.i4.v
            r1 = r0
            r2 = r8
            r3 = r11
            r4 = r9
            r1.<init>(r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m25902r3(android.service.notification.StatusBarNotification, android.content.Context):e.a.i4.v");
    }

    /* renamed from: s */
    public static final String m25901s(i1 i1Var) {
        String str;
        g1 g1Var = i1Var.a;
        l.d(g1Var, UpdateKey.STATUS);
        if (g1Var.b == null) {
            g1 g1Var2 = i1Var.a;
            l.d(g1Var2, UpdateKey.STATUS);
            str = g1Var2.a.toString();
        } else {
            StringBuilder sb = new StringBuilder();
            g1 g1Var3 = i1Var.a;
            l.d(g1Var3, UpdateKey.STATUS);
            sb.append(g1Var3.a);
            sb.append('.');
            g1 g1Var4 = i1Var.a;
            l.d(g1Var4, UpdateKey.STATUS);
            sb.append(g1Var4.b);
            str = sb.toString();
        }
        return str;
    }

    /* renamed from: s0 */
    public static final e.m.d.n.i m25900s0() {
        e.m.d.n.i iVar;
        try {
            g b = g.b();
            b.a();
            iVar = (e.m.d.n.i) b.d.a(e.m.d.n.i.class);
            Objects.requireNonNull(iVar, "FirebaseCrashlytics component is not present.");
        } catch (NullPointerException e) {
            iVar = null;
        }
        return iVar;
    }

    /* renamed from: s1 */
    public static final boolean m25899s1(Message message) {
        l.e(message, "$this$isIncoming");
        boolean z = true;
        if ((message.f13386g & 1) != 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: s2 */
    public static final AbstractC5726c m25898s2(AudioManager audioManager) {
        C5728e c5728e;
        l.e(audioManager, "$this$requestAudioFocusForVoiceClips");
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest build = new AudioFocusRequest.Builder(4).setOnAudioFocusChangeListener(C25344k.f70752d).setAudioAttributes(new AudioAttributes.Builder().setContentType(1).setUsage(2).build()).build();
            audioManager.requestAudioFocus(build);
            l.d(build, "audioFocusRequest");
            c5728e = new C5728e(build);
        } else {
            audioManager.requestAudioFocus(C25344k.f70750b, 0, 4);
            c5728e = new C5727d(C25344k.f70751c);
        }
        return c5728e;
    }

    /* renamed from: s3 */
    public static final k<String, List<Mention>> m25897s3(Mention[] mentionArr, String str, boolean z) {
        Mention mention;
        l.e(mentionArr, "$this$transformMentions");
        l.e(str, "text");
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            int length = mentionArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    mention = null;
                    break;
                }
                mention = mentionArr[i3];
                if (mention.getOffset() == i) {
                    break;
                }
                i3++;
            }
            if (mention != null) {
                String publicName = z ? mention.getPublicName() : mention.getPrivateName();
                sb.append(publicName);
                arrayList.add(new Mention(mention.getId(), mention.getImId(), i2, publicName.length(), mention.getPrivateName(), mention.getPublicName()));
                int length2 = mention.getLength();
                i2 = publicName.length() + i2;
                i = length2 + i;
            } else {
                sb.append(str.charAt(i));
                i++;
                i2++;
            }
        }
        String sb2 = sb.toString();
        l.d(sb2, "result.toString()");
        return new k<>(sb2, arrayList);
    }

    /* renamed from: t */
    public static final String m25896t(AttachmentType attachmentType) {
        String str;
        int ordinal = attachmentType.ordinal();
        if (ordinal == 0) {
            str = "media";
        } else if (ordinal == 1) {
            str = "document";
        } else if (ordinal == 2) {
            str = "audio";
        } else if (ordinal != 3) {
            throw new s1.i();
        } else {
            str = "link";
        }
        return str;
    }

    /* renamed from: t0 */
    public static final String m25895t0(AbstractC10518b.C10524f c10524f) {
        String str;
        if (!r.p(c10524f.f31358e)) {
            str = c10524f.f31357d + ", " + c10524f.f31358e;
        } else {
            str = c10524f.f31357d;
        }
        return str;
    }

    /* renamed from: t1 */
    public static final boolean m25894t1(ImGroupInfo imGroupInfo) {
        l.e(imGroupInfo, "$this$isInvitation");
        return (imGroupInfo.f13324f & 2) != 0;
    }

    /* renamed from: t2 */
    public static /* synthetic */ Object m25893t2(AbstractC7249d abstractC7249d, String str, int i, boolean z, d dVar, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return abstractC7249d.mo29906a(str, i, z, dVar);
    }

    /* renamed from: t3 */
    public static /* synthetic */ k m25892t3(Mention[] mentionArr, String str, boolean z, int i) {
        if ((i & 2) != 0) {
            z = true;
        }
        return m25897s3(mentionArr, str, z);
    }

    /* renamed from: u */
    public static final int m25891u(g1 g1Var) {
        String str;
        g1.b bVar = g1Var.a;
        int i = bVar.a + 10000;
        int ordinal = bVar.ordinal();
        if (ordinal == 3) {
            String str2 = g1Var.b;
            if (str2 != null) {
                int hashCode = str2.hashCode();
                if (hashCode != -1304663041) {
                    if (hashCode == 1816128711 && str2.equals("MEDIA_NOT_SUPPORTED")) {
                        i = 5;
                    }
                } else if (str2.equals("MESSAGE_TOO_LONG")) {
                    i = 4;
                }
            }
        } else if (ordinal == 5) {
            i = 7;
        } else if (ordinal == 8 && (str = g1Var.b) != null && str.hashCode() == -1256364918 && str.equals("REQUEST_THROTTLED")) {
            i = 6;
        }
        return i;
    }

    /* renamed from: u0 */
    public static final String m25890u0(AbstractC5524m5 abstractC5524m5, AbstractC19223c0 abstractC19223c0) {
        String str;
        Participant participant;
        l.e(abstractC5524m5, "$this$getDeleteForRecipientCaption");
        l.e(abstractC19223c0, "resourceProvider");
        Participant[] mo32852o = abstractC5524m5.mo32852o();
        if (mo32852o == null || !C6405h.m31298f(mo32852o)) {
            Participant[] mo32852o2 = abstractC5524m5.mo32852o();
            str = abstractC19223c0.mo13768b(C2752R.string.ConversationMessagesDeleteForRecipient, (mo32852o2 == null || (participant = (Participant) C25225a.m3845s0(mo32852o2)) == null) ? null : C6405h.m31301c(participant));
            l.d(str, "resourceProvider.getStri…irst()?.getDisplayName())");
        } else {
            str = abstractC19223c0.mo13768b(C2752R.string.ConversationMessagesDeleteForAllMembers, new Object[0]);
            l.d(str, "resourceProvider.getStri…sagesDeleteForAllMembers)");
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f8  */
    /* renamed from: u1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m25889u1(p193e.p194a.p195a.p224d.AbstractC5931s r3) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m25889u1(e.a.a.d.s):boolean");
    }

    /* renamed from: u2 */
    public static final AbstractC10738e m25888u2(String str) {
        l.e(str, "$this$resolveCategory");
        if (str.hashCode() != 2038791 || !str.equals("BILL")) {
            throw new IllegalArgumentException("Unknown category");
        }
        return AbstractC10738e.C10739a.f31897c;
    }

    /* renamed from: u3 */
    public static /* synthetic */ String m25887u3(AbstractC10542b abstractC10542b, ParsedDataObject parsedDataObject, String str, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return abstractC10542b.mo25791b(parsedDataObject, str, z);
    }

    /* renamed from: v */
    public static final InputMessageContent.ForwardInfo m25886v(Message message) {
        ImForwardInfo imForwardInfo = message.f13376P;
        InputMessageContent.ForwardInfo forwardInfo = null;
        if (imForwardInfo != null) {
            String str = imForwardInfo.f13315a;
            forwardInfo = null;
            if (str != null) {
                String str2 = imForwardInfo.f13316b;
                forwardInfo = null;
                if (str2 != null) {
                    String str3 = imForwardInfo.f13317c;
                    InputMessageContent.ForwardInfo.C3259a newBuilder = InputMessageContent.ForwardInfo.newBuilder();
                    ImForwardInfo imForwardInfo2 = message.f13376P;
                    String str4 = null;
                    if (imForwardInfo2 != null) {
                        str4 = imForwardInfo2.f13318d;
                    }
                    if (str4 == null) {
                        str4 = "";
                    }
                    newBuilder.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder).instance.setRefForwardingId(str4);
                    newBuilder.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder).instance.setSourceMessageId(str);
                    InputPeer.C3289b newBuilder2 = InputPeer.newBuilder();
                    InputPeer.User.C3287a newBuilder3 = InputPeer.User.newBuilder();
                    newBuilder3.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder3).instance.setId(str2);
                    newBuilder2.m35896b((InputPeer.User) newBuilder3.build());
                    InputPeer build = newBuilder2.build();
                    newBuilder.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder).instance.setSourceSender(build);
                    if (str3 != null) {
                        InputPeer.C3289b newBuilder4 = InputPeer.newBuilder();
                        InputPeer.User.C3287a newBuilder5 = InputPeer.User.newBuilder();
                        newBuilder5.copyOnWrite();
                        ((GeneratedMessageLite.Builder) newBuilder5).instance.setId(str3);
                        newBuilder4.m35896b((InputPeer.User) newBuilder5.build());
                        InputPeer build2 = newBuilder4.build();
                        newBuilder.copyOnWrite();
                        ((GeneratedMessageLite.Builder) newBuilder).instance.setSourceContext(build2);
                    }
                    forwardInfo = (InputMessageContent.ForwardInfo) newBuilder.build();
                }
            }
        }
        return forwardInfo;
    }

    /* renamed from: v0 */
    public static String m25885v0(Participant participant) {
        if (!C17891a1.C17902k.m15588o(participant.f11585r, 64) || !w3.c.a.a.a.h.l(participant.f11586s) || !AbstractApplicationC8442a.m28551L().m28549N().mo11648b().m10955m().isEnabled()) {
            return w3.c.a.a.a.h.l(participant.f11579l) ? participant.f11579l : m26058J0(participant);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(participant.f11586s);
        sb.append(w3.c.a.a.a.h.l(participant.f11579l) ? C22128a.m8618h(C22128a.m8728C(" ("), participant.f11579l, ")") : "");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0046, code lost:
        if (r6 < ((w3.b.a.e0.e) r0).a) goto L9;
     */
    /* renamed from: v1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m25884v1(com.truecaller.messaging.data.types.Conversation r5, long r6) {
        /*
            r0 = r5
            java.lang.String r1 = "$this$isMuted"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            w3.b.a.b r0 = r0.f13197P
            r8 = r0
            r0 = r8
            java.lang.String r1 = "muted"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            long r0 = r0.a
            r9 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L29
        L23:
            r0 = 0
            r11 = r0
            goto L49
        L29:
            r0 = r9
            r1 = -1
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L34
            goto L49
        L34:
            r0 = r5
            w3.b.a.b r0 = r0.f13197P
            r5 = r0
            r0 = r5
            java.lang.String r1 = "muted"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r5
            long r1 = r1.a
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L23
        L49:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p578p.C10480a.m25884v1(com.truecaller.messaging.data.types.Conversation, long):boolean");
    }

    /* renamed from: v2 */
    public static final AbstractC10651b m25883v2(String str) {
        AbstractC10651b abstractC10651b;
        AbstractC10651b abstractC10651b2 = AbstractC10651b.C10667n.f31757b;
        AbstractC10651b abstractC10651b3 = AbstractC10651b.C10670q.f31760b;
        AbstractC10651b abstractC10651b4 = AbstractC10651b.C10659f.f31749b;
        AbstractC10651b abstractC10651b5 = AbstractC10651b.C10655b0.f31745b;
        AbstractC10651b abstractC10651b6 = AbstractC10651b.C10674u.f31764b;
        AbstractC10651b abstractC10651b7 = AbstractC10651b.C10669p.f31759b;
        AbstractC10651b abstractC10651b8 = AbstractC10651b.C10671r.f31761b;
        AbstractC10651b abstractC10651b9 = AbstractC10651b.C10657d.f31747b;
        AbstractC10651b abstractC10651b10 = AbstractC10651b.C10666m.f31756b;
        AbstractC10651b abstractC10651b11 = AbstractC10651b.C10654b.f31744b;
        AbstractC10651b abstractC10651b12 = AbstractC10651b.C10665l.f31755b;
        AbstractC10651b abstractC10651b13 = AbstractC10651b.C10676w.f31766b;
        l.e(str, "label");
        if (!r.n(str, "Transaction", true)) {
            if (!r.n(str, "Loan", true)) {
                if (r.n(str, "Travel", true)) {
                    abstractC10651b = AbstractC10651b.C10677x.f31767b;
                } else if (r.n(str, "Flight", true)) {
                    abstractC10651b = AbstractC10651b.C10662i.f31752b;
                } else if (r.n(str, "Train", true)) {
                    abstractC10651b = AbstractC10651b.C10675v.f31765b;
                } else if (r.n(str, "Bus", true)) {
                    abstractC10651b = AbstractC10651b.C10658e.f31748b;
                } else if (r.n(str, "Event", true)) {
                    abstractC10651b = AbstractC10651b.C10661h.f31751b;
                } else {
                    if (!r.n(str, "Bill", true)) {
                        if (!r.n(str, "Recharge", true)) {
                            if (r.n(str, "Appointment", true)) {
                                abstractC10651b = AbstractC10651b.C10652a.f31742b;
                            } else if (r.n(str, "Delivery", true)) {
                                abstractC10651b = AbstractC10651b.C10660g.f31750b;
                            } else {
                                if (!r.n(str, "Prescription", true)) {
                                    if (r.n(str, "School", true)) {
                                        abstractC10651b = AbstractC10651b.C10672s.f31762b;
                                    } else {
                                        if (!r.n(str, "Tax", true)) {
                                            if (r.n(str, "Vaccine", true)) {
                                                abstractC10651b = AbstractC10651b.C10679z.f31768b;
                                            } else {
                                                if (!r.n(str, "Weather alert", true)) {
                                                    if (!r.n(str, "Balance", true)) {
                                                        if (r.n(str, "Investments", true)) {
                                                            abstractC10651b = AbstractC10651b.C10664k.f31754b;
                                                        } else {
                                                            if (!r.n(str, "Data usage", true)) {
                                                                if (r.n(str, "Security alert", true)) {
                                                                    abstractC10651b = AbstractC10651b.C10673t.f31763b;
                                                                } else {
                                                                    if (!r.n(str, "Missed call", true)) {
                                                                        if (r.n(str, "Voice mail", true)) {
                                                                            abstractC10651b = AbstractC10651b.C10653a0.f31743b;
                                                                        } else if (r.n(str, "Betting", true)) {
                                                                            abstractC10651b = AbstractC10651b.C10656c.f31746b;
                                                                        } else {
                                                                            if (!r.n(str, "Promotion", true)) {
                                                                                if (!r.n(str, "Cheque status", true) && !r.n(str, "Transaction declined", true)) {
                                                                                    if (!r.n(str, "Loan update", true)) {
                                                                                        if (!r.n(str, "Finance", true) && !r.n(str, "Transfer", true)) {
                                                                                            if (r.n(str, "Cab", true)) {
                                                                                                abstractC10651b = abstractC10651b2;
                                                                                            } else if (!r.n(str, "Weather", true)) {
                                                                                                if (r.n(str, "NON IMPORTANT", true)) {
                                                                                                    abstractC10651b = abstractC10651b2;
                                                                                                } else if (!r.n(str, "Payment reminder", true)) {
                                                                                                    if (!r.n(str, "Mobile recharge", true)) {
                                                                                                        if (!r.n(str, "Rx", true)) {
                                                                                                            if (!r.n(str, "Tax returns", true)) {
                                                                                                                if (!r.n(str, "Payment successful", true)) {
                                                                                                                    if (!r.n(str, "Mobile balance", true)) {
                                                                                                                        if (!r.n(str, "Mobile data", true)) {
                                                                                                                            if (!r.n(str, "Call notification", true)) {
                                                                                                                                if (!r.n(str, "Low balance", true)) {
                                                                                                                                    if (!r.n(str, "Missed calls", true)) {
                                                                                                                                        if (!r.n(str, "Offers", true)) {
                                                                                                                                            if (!r.n(str, "Transaction successful", true) && !r.n(str, "Transaction pending", true) && !r.n(str, "Transaction processing", true) && !r.n(str, "Payment received", true)) {
                                                                                                                                                if (!r.n(str, "Loan approved", true) && !r.n(str, "Loan due", true) && !r.n(str, "Loan overdue", true) && !r.n(str, "Loan closed", true)) {
                                                                                                                                                    if (!r.n(str, "Beneficiary credited", true)) {
                                                                                                                                                        C10263b.f30414d.m26508b(new C10650a(str), null);
                                                                                                                                                        abstractC10651b = new AbstractC10651b.C10678y(str);
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            abstractC10651b = abstractC10651b3;
                                                                        }
                                                                    }
                                                                    abstractC10651b = abstractC10651b10;
                                                                }
                                                            }
                                                            abstractC10651b = abstractC10651b4;
                                                        }
                                                    }
                                                    abstractC10651b = abstractC10651b11;
                                                }
                                                abstractC10651b = abstractC10651b5;
                                            }
                                        }
                                        abstractC10651b = abstractC10651b6;
                                    }
                                }
                                abstractC10651b = abstractC10651b7;
                            }
                        }
                        abstractC10651b = abstractC10651b8;
                    }
                    abstractC10651b = abstractC10651b9;
                }
                return abstractC10651b;
            }
            abstractC10651b = abstractC10651b12;
            return abstractC10651b;
        }
        abstractC10651b = abstractC10651b13;
        return abstractC10651b;
    }

    /* renamed from: w */
    public static final InputMessageContent.MessageEntity m25881w(Mention mention) {
        InputMessageContent.MessageEntity.C3265a newBuilder = InputMessageContent.MessageEntity.newBuilder();
        InputMessageContent.MessageEntity.Mention.C3264a newBuilder2 = InputMessageContent.MessageEntity.Mention.newBuilder();
        String imId = mention.getImId();
        newBuilder2.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder2).instance.setImId(imId);
        InputMessageContent.MessageEntity.Mention build = newBuilder2.build();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setMention(build);
        newBuilder.m35906b(mention.getOffset());
        newBuilder.m35907a(mention.getLength());
        InputMessageContent.MessageEntity build2 = newBuilder.build();
        l.d(build2, "InputMessageContent.Mess…(length)\n        .build()");
        return build2;
    }

    /* renamed from: w0 */
    public static final Set<AbstractC10836e.C10838b> m25880w0(Collection<? extends AbstractC10836e> collection) {
        l.e(collection, "$this$getGrammars");
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (obj instanceof AbstractC10836e.C10838b) {
                arrayList.add(obj);
            }
        }
        return i.d1(arrayList);
    }

    /* renamed from: w1 */
    public static final boolean m25879w1(ImGroupInfo imGroupInfo) {
        l.e(imGroupInfo, "$this$isMuted");
        int i = imGroupInfo.f13326h;
        boolean z = true;
        if (i != 1) {
            z = i == 2;
        }
        return z;
    }

    /* renamed from: w2 */
    public static final void m25878w2(q3.a.n<? super AbstractC17000j> nVar, AbstractC17000j abstractC17000j) {
        l.e(nVar, "$this$resumeIfActive");
        l.e(abstractC17000j, "result");
        if (nVar.b()) {
            nVar.c(abstractC17000j);
        }
    }

    /* renamed from: w3 */
    public static void m25877w3(List<ContentProviderOperation> list, Message message, int i) {
        AssertionUtil.isTrue(message.m35019g(), "Can update only already stored messages");
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28340A(message.f13380a));
        switch (message.f13390k) {
            case 0:
                newUpdate.withValues(m26026R0((SmsTransportInfo) message.f13393n));
                break;
            case 1:
                newUpdate.withValues(m26030Q0((MmsTransportInfo) message.f13393n));
                break;
            case 2:
                newUpdate.withValues(m26034P0((ImTransportInfo) message.f13393n));
                break;
            case 3:
            case 4:
            case 7:
                break;
            case 5:
                newUpdate.withValues(m26038O0((HistoryTransportInfo) message.f13393n));
                break;
            case 6:
                StatusTransportInfo statusTransportInfo = (StatusTransportInfo) message.f13393n;
                ContentValues contentValues = new ContentValues();
                contentValues.put("raw_id", statusTransportInfo.f13888b);
                newUpdate.withValues(contentValues);
                break;
            default:
                StringBuilder m8728C = C22128a.m8728C("Unsupported transport for message: ");
                m8728C.append(message.f13390k);
                throw new RuntimeException(m8728C.toString());
        }
        newUpdate.withValue("read", Boolean.valueOf(message.f13388i));
        newUpdate.withValue("seen", Boolean.valueOf(message.f13387h));
        newUpdate.withValue("locked", Boolean.valueOf(message.f13389j));
        newUpdate.withValue(UpdateKey.STATUS, Integer.valueOf(message.f13386g));
        newUpdate.withValue("date", Long.valueOf(((e) message.f13384e).a));
        newUpdate.withValue("date_sent", Long.valueOf(((e) message.f13383d).a));
        newUpdate.withValue("transport", Integer.valueOf(message.f13390k));
        newUpdate.withValue("retry_count", Integer.valueOf(message.f13402w));
        if (i >= 0) {
            newUpdate.withValueBackReference("conversation_id", i);
        }
        list.add(newUpdate.build());
    }

    /* renamed from: x */
    public static final Peer.TypeCase m25876x(Event event) {
        Peer.TypeCase typeCase;
        Event.PayloadCase payloadCase = event.getPayloadCase();
        if (payloadCase != null) {
            int ordinal = payloadCase.ordinal();
            if (ordinal == 0) {
                Event.MessageSent messageSent = event.getMessageSent();
                l.d(messageSent, "messageSent");
                Peer recipient = messageSent.getRecipient();
                l.d(recipient, "messageSent.recipient");
                typeCase = recipient.getTypeCase();
            } else if (ordinal == 2) {
                Event.ReactionSent reactionSent = event.getReactionSent();
                l.d(reactionSent, "reactionSent");
                Peer recipient2 = reactionSent.getRecipient();
                l.d(recipient2, "reactionSent.recipient");
                typeCase = recipient2.getTypeCase();
            }
            return typeCase;
        }
        typeCase = null;
        return typeCase;
    }

    /* renamed from: x0 */
    public static final String m25875x0(Peer peer) {
        String str;
        l.e(peer, "$this$getGroupId");
        Peer.TypeCase typeCase = peer.getTypeCase();
        String str2 = null;
        if (typeCase != null && typeCase.ordinal() == 1) {
            Peer.Group group = peer.getGroup();
            l.d(group, "group");
            str = group.getId();
        } else {
            str = null;
        }
        if (!(str == null || str.length() == 0)) {
            str2 = str;
        }
        return str2;
    }

    /* renamed from: x1 */
    public static final boolean m25874x1(Message message) {
        l.e(message, "$this$isOutgoing");
        boolean z = true;
        if ((message.f13386g & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: x2 */
    public static final List<String> m25873x2(String str) {
        return str != null ? v.T(str, new char[]{'|'}, false, 0, 6) : s1.u.s.a;
    }

    /* renamed from: y */
    public static final Intent m25871y(Intent intent, String str, String str2) {
        l.e(intent, "$this$addAnalyticsParams");
        l.e(str, "analyticsPeer");
        l.e(str2, "analyticsUnreadPeriod");
        intent.putExtra("analytics_peer", str);
        intent.putExtra("analytics_unread_period", str2);
        return intent;
    }

    /* renamed from: y0 */
    public static final String m25870y0(p pVar) {
        l.e(pVar, "$this$getHumanReadableDate");
        StringBuilder sb = new StringBuilder();
        sb.append(DateFormat.d.formatter().g(pVar));
        int c = pVar.b.g().c(pVar.a);
        if (c >= 20) {
            c %= 10;
        }
        sb.append(c != 1 ? c != 2 ? c != 3 ? "th" : "rd" : "nd" : "st");
        sb.append(StringConstant.SPACE);
        sb.append(DateFormat.MMM.formatter().g(pVar));
        return sb.toString();
    }

    /* renamed from: y1 */
    public static final boolean m25869y1(p pVar) {
        l.e(pVar, "$this$isPastDay");
        h r = h.r(p.h(), pVar);
        l.d(r, "Days.daysBetween(LocalDate.now(), this)");
        return ((w3.b.a.e0.i) r).a < 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [e.a.a.c1.d] */
    /* renamed from: y2 */
    public static /* synthetic */ AbstractC19891x m25868y2(AbstractC5854d abstractC5854d, AbstractC5843b.C5848e c5848e, boolean z, String str, long j, int i, Object obj) {
        ?? r11 = j;
        if ((i & 8) != 0) {
            r11 = 0;
        }
        return abstractC5854d.mo32323b(c5848e, z, str, r11);
    }

    /* renamed from: z */
    public static final Intent m25867z(Intent intent, String str) {
        l.e(intent, "$this$addNotificationParams");
        l.e(str, "peer");
        int hashCode = str.hashCode();
        if (hashCode != 48688) {
            if (hashCode == 98629247 && str.equals("group")) {
                intent.putExtra("tc_notification_id", C2752R.C2754id.im_unread_reminders_groups_notification_id);
            }
        } else if (str.equals("121")) {
            intent.putExtra("tc_notification_id", C2752R.C2754id.im_unread_reminders_notification_id);
        }
        return intent;
    }

    /* renamed from: z0 */
    public static final String m25866z0(AbstractC9459c abstractC9459c) {
        l.e(abstractC9459c, "$this$getHumanReadableDateTime");
        b mo27544a = abstractC9459c.mo27544a();
        b bVar = new b();
        String f = DateFormat.MMMM.formatter().f(mo27544a);
        String f2 = DateFormat.MMMM_yyyy.formatter().f(mo27544a);
        if (l.a(mo27544a.Q(), bVar.Q()) && l.a(mo27544a.A(), bVar.A())) {
            f2 = C22128a.m8543z2("THIS MONTH - ", f);
        } else if (l.a(mo27544a.Q(), bVar.Q())) {
            l.d(f, "justMonth");
            f2 = f;
        } else {
            l.d(f2, "monthYear");
        }
        return f2;
    }

    /* renamed from: z1 */
    public static final boolean m25865z1(Message message) {
        TextEntity textEntity;
        l.e(message, "$this$isRichText");
        Entity[] entityArr = message.f13394o;
        l.d(entityArr, "entities");
        int length = entityArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                textEntity = null;
                break;
            }
            textEntity = entityArr[i];
            if (textEntity.mo34894r()) {
                break;
            }
            i++;
        }
        if (!(textEntity instanceof TextEntity)) {
            textEntity = null;
        }
        TextEntity textEntity2 = textEntity;
        boolean z = false;
        if (textEntity2 != null) {
            z = false;
            if (textEntity2.f13466j) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: z2 */
    public static final <T> T m25864z2(List<? extends T> list) {
        l.e(list, "$this$secondOrNull");
        if (list.size() < 2) {
            return null;
        }
        return list.get(1);
    }
}
