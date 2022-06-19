package p193e.p194a.p682e.p683a;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.Dialog;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.widget.NestedScrollView;
import androidx.core.widget.NestedScrollView$b;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.common.collect.LinkedListMultimap;
import com.google.common.collect.Multimap;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.SupportMessenger;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.acs.p130qa.AcsQaActivity;
import com.truecaller.ads.qa.QaCampaignsActivity;
import com.truecaller.ads.qa.QaKeywordsActivity;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import com.truecaller.aftercall.PromotionType;
import com.truecaller.backup.worker.BackupWorker;
import com.truecaller.bizmon.newBusiness.profile.p150ui.BizProfileActivity;
import com.truecaller.bizmon.newBusiness.workers.BizProfileMigrationWorker;
import com.truecaller.bizmon.newBusiness.workers.BizProfileV2FetchWorker;
import com.truecaller.bizmon.p152ui.profile.BusinessProfileOnboardingActivity;
import com.truecaller.buildinfo.BuildName;
import com.truecaller.businesscard.BusinessCardBackgroundWorker;
import com.truecaller.callerid.window.CallerIdPopupQaActivity;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.calling.missedcallreminder.MissedCallReminder;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.common.account.Region;
import com.truecaller.common.account.analytics.LogoutContext;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.contactfeedback.p157db.CommentFeedback;
import com.truecaller.contactfeedback.p157db.PhoneNumberType;
import com.truecaller.contactfeedback.workers.UploadContactFeedbackWorker;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.details_view.p161qa.DetailsViewQaActivity;
import com.truecaller.dynamicfeaturesupport.p163qm.DynamicFeaturePanelActivity;
import com.truecaller.feature_toggles.control_panel.FeaturesControlPanelActivity;
import com.truecaller.forcedupdate.UpdateType;
import com.truecaller.forcedupdate.p167ui.ForcedUpdateActivity;
import com.truecaller.incallui.callui.enablePromo.InCallUIEnableAnalyticsContext;
import com.truecaller.insights.p168ui.p169qa.view.InsightsQAActivity;
import com.truecaller.insights.utils.HideTrxTempState;
import com.truecaller.insights.workers.InsightsOneOffEnrichmentWorker;
import com.truecaller.insights.workers.InsightsReSyncWorker;
import com.truecaller.log.UnmutedException;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversationlist.ConversationSpamSearchWorker;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.notifications.enhancing.SourcedContact;
import com.truecaller.notifications.enhancing.SourcedContactListActivity;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.p183ui.CallMeBackActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.p183ui.components.ComboBase;
import com.truecaller.p183ui.dialogs.QaPremiumReportDialog;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.gift.GoldGiftDialogActivity;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.presence.AvailabilityTrigger;
import com.truecaller.referral.ReferralManager;
import com.truecaller.referrals.analytics.ReferralAnalytics$Source;
import com.truecaller.searchwarnings.data.SearchWarningDTO;
import com.truecaller.service.AlarmReceiver;
import com.truecaller.service.MissedCallsNotificationService;
import com.truecaller.service.SyncPhoneBookService;
import com.truecaller.service.WidgetListProvider;
import com.truecaller.service.contact.RefreshContactIndexingService;
import com.truecaller.service.p176t9.RefreshT9MappingWorker;
import com.truecaller.settings.CallingSettings;
import com.truecaller.survey.p179qa.SurveyEntryQaActivity;
import com.truecaller.survey.p179qa.SurveyListQaActivity;
import com.truecaller.util.background.p184qa.WorkActionStatusActivity;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import com.truecaller.voip.debug.VoipAssistantPushNotification;
import e.a.r.t.c;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.r;
import e.m.e.v;
import e.m.e.z;
import e.m.f.a.e;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.StringReader;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Provider;
import n3.b.a.g;
import n3.r.a.l;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1834m0.AbstractC26854w;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1859r.p1860a.AbstractC26924f0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1480t.C22623j;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C20399t1;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1012a.C16555a;
import p193e.p194a.p1011l.p1012a.C16559b;
import p193e.p194a.p1011l.p1025p2.AbstractC17037b1;
import p193e.p194a.p1011l.p1025p2.AbstractC17140o0;
import p193e.p194a.p1011l.p1025p2.C17099i;
import p193e.p194a.p1011l.p1025p2.p1026d2.C17058g;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1053m0.p1057c1.C18065i0;
import p193e.p194a.p1053m0.p1057c1.C18071l0;
import p193e.p194a.p1066n.C18270c;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1075n3.p1076a.C18478a;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p1075n3.p1076a.C18480c;
import p193e.p194a.p1077n4.AbstractC18484a;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1080o.p1081a.p1082a.p1084b.C18517b;
import p193e.p194a.p1080o.p1081a.p1089g.p1090g.C18599a;
import p193e.p194a.p1080o.p1081a.p1089g.p1093j.C18628e;
import p193e.p194a.p1114o5.C19007d0;
import p193e.p194a.p1114o5.C19030g1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1114o5.p1121e2.AbstractC19019a;
import p193e.p194a.p1126p2.AbstractC19212i;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1138q.p1145i.AbstractC19456a;
import p193e.p194a.p1138q.p1145i.C19457b;
import p193e.p194a.p1146q2.C19519m;
import p193e.p194a.p1146q2.p1157z0.C19604a;
import p193e.p194a.p1159q4.C19651l0;
import p193e.p194a.p1159q4.C19663q0;
import p193e.p194a.p1161q5.AbstractC19688d;
import p193e.p194a.p1161q5.AbstractC19693i;
import p193e.p194a.p1164r.p1173e.AbstractC19756b;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1191r4.AbstractC19931a;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1335a.C21167a;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p1357x3.p1358h.C21404d;
import p193e.p194a.p1359x4.p1360j.AbstractC21427a;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p1396y4.C21795e;
import p193e.p194a.p1410z4.AbstractC21878a;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p294b.AbstractC7908c;
import p193e.p194a.p294b.p336i.AbstractC7919c;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import p193e.p194a.p372b0.p406e.AbstractC8417d;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p426p.p429h.C8561a;
import p193e.p194a.p372b0.p426p.p429h.C8562b;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p548h.p550l.C10262a;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p596t.AbstractC10693a;
import p193e.p194a.p613c0.C10902a;
import p193e.p194a.p614c3.AbstractC10930d;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p673d0.AbstractC12555t;
import p193e.p194a.p673d0.C12557u;
import p193e.p194a.p673d0.C12560v;
import p193e.p194a.p673d0.C12562w;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p679d5.p680g.C12623g;
import p193e.p194a.p679d5.p680g.C12627j;
import p193e.p194a.p679d5.p680g.C12637p;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p683a.C12848y0;
import p193e.p194a.p682e.p683a.View$OnClickListenerC12763k3;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p703e3.AbstractC13348a;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p717f.p718a.p728u.C13680g;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p786g0.AbstractC14356d;
import p193e.p194a.p793g3.AbstractC14430j;
import p193e.p194a.p804h.p831p0.AbstractC14719c;
import p193e.p194a.p804h.p833q0.AbstractC14722a;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p837h0.AbstractC14856t;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import p193e.p194a.p852i.p862c.p866d.AbstractC15025a;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p908w.C15248e;
import p193e.p194a.p911i3.AbstractC15266b;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import p193e.p194a.p937j4.p939b.p940a.C15574j;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p982k0.AbstractC16313f;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import q3.a.h1;
import q3.a.j0;
import q3.a.t0;
import q3.a.y2.q;
import s1.a.a.a.v0.f.d;
import s1.k;
import s1.s;
import s1.u.i;
import s1.w.f;
import s1.z.c.d0;
import w3.c.a.a.a.h;
/* renamed from: e.a.e.a.k3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/k3.class */
public class View$OnClickListenerC12763k3 extends AbstractC12827u2 implements View.OnClickListener {

    /* renamed from: s0 */
    public static final /* synthetic */ int f37157s0 = 0;

    /* renamed from: A */
    public final AbstractC19954i0 f37158A;

    /* renamed from: B */
    public final AbstractC15163d f37159B;

    /* renamed from: C */
    public final AbstractC15025a f37160C;

    /* renamed from: D */
    public final AbstractC21878a f37161D;

    /* renamed from: E */
    public final AbstractC6392i0 f37162E;

    /* renamed from: J */
    public final AbstractC19219a0 f37163J;

    /* renamed from: K */
    public final C20592g f37164K;

    /* renamed from: L */
    public final AbstractC14430j f37165L;

    /* renamed from: M */
    public final AbstractC19215b f37166M;

    /* renamed from: N */
    public final AbstractC17140o0 f37167N;

    /* renamed from: O */
    public final AbstractC19854f<AbstractC15266b> f37168O;

    /* renamed from: P */
    public final AbstractC14719c f37169P = ((C20399t1.C20416k) AbstractC17399l2.f48744a.m16142a().mo11182b()).m11158a();

    /* renamed from: Q */
    public final AbstractC19854f<AbstractC17419h> f37170Q;

    /* renamed from: R */
    public final AbstractC11705f f37171R;

    /* renamed from: S */
    public final AbstractC19854f<AbstractC6485m> f37172S;

    /* renamed from: T */
    public final AbstractC12597c f37173T;

    /* renamed from: U */
    public final AbstractC10028o f37174U;

    /* renamed from: V */
    public final AbstractC10024k f37175V;

    /* renamed from: W */
    public final AbstractC10693a f37176W;

    /* renamed from: X */
    public final AbstractC19230g f37177X;

    /* renamed from: Y */
    public final AbstractC18765c f37178Y;

    /* renamed from: Z */
    public final AbstractC16832c2 f37179Z;
    @Inject

    /* renamed from: e */
    public AbstractC21396c f37180e;
    @Inject

    /* renamed from: f */
    public AbstractC19693i f37181f;
    @Inject

    /* renamed from: g */
    public AbstractC19688d f37182g;

    /* renamed from: g0 */
    public final AbstractC14920n f37183g0;
    @Inject

    /* renamed from: h */
    public Provider<AbstractC14356d> f37184h;

    /* renamed from: h0 */
    public final CallRecordingManager f37185h0;
    @Inject

    /* renamed from: i */
    public Provider<AbstractC19931a> f37186i;

    /* renamed from: i0 */
    public final AbstractC21427a f37187i0;
    @Inject

    /* renamed from: j */
    public AbstractC19756b f37188j;

    /* renamed from: j0 */
    public final AbstractC7908c f37189j0;

    /* renamed from: k */
    public final AbstractC14856t f37190k;

    /* renamed from: k0 */
    public final AbstractC7919c f37191k0;

    /* renamed from: l */
    public final AbstractC14835j f37192l;

    /* renamed from: l0 */
    public final AbstractC19456a f37193l0;

    /* renamed from: m */
    public final AbstractC16498f f37194m;

    /* renamed from: m0 */
    public final AbstractC16111h f37195m0;

    /* renamed from: n */
    public final CallingSettings f37196n;

    /* renamed from: n0 */
    public final AbstractC13348a f37197n0;

    /* renamed from: o */
    public final AbstractC21881d f37198o;

    /* renamed from: o0 */
    public final AbstractC16313f f37199o0;

    /* renamed from: p */
    public final AbstractC8541a f37200p;

    /* renamed from: p0 */
    public final boolean f37201p0;

    /* renamed from: q */
    public final AbstractC8438a f37202q;
    @Inject

    /* renamed from: q0 */
    public AbstractC12555t f37203q0;

    /* renamed from: r */
    public final AbstractC10930d f37204r;

    /* renamed from: r0 */
    public final AbstractC13706b f37205r0;

    /* renamed from: s */
    public final AbstractC19854f<AbstractC6233m> f37206s;

    /* renamed from: t */
    public final AbstractC15275e f37207t;

    /* renamed from: u */
    public AbstractC19212i f37208u;

    /* renamed from: v */
    public ReferralManager f37209v;

    /* renamed from: w */
    public final AbstractC18484a f37210w;

    /* renamed from: x */
    public final AbstractC21631b f37211x;

    /* renamed from: y */
    public final AbstractC13967b f37212y;

    /* renamed from: z */
    public final AbstractC8426f f37213z;

    /* renamed from: e.a.e.a.k3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/k3$a.class */
    public class C12764a implements SearchView.AbstractC0071l {

        /* renamed from: a */
        public final /* synthetic */ C12767d f37214a;

        public C12764a(View$OnClickListenerC12763k3 view$OnClickListenerC12763k3, C12767d c12767d) {
            this.f37214a = c12767d;
        }

        @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
        public boolean onQueryTextChange(String str) {
            this.f37214a.filter(str);
            return false;
        }

        @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    /* renamed from: e.a.e.a.k3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/k3$b.class */
    public class C12765b extends C12772i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12765b(String... strArr) {
            super(strArr, null);
            View$OnClickListenerC12763k3.this = r6;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v58 */
        /* JADX WARN: Type inference failed for: r0v61, types: [long] */
        /* JADX WARN: Type inference failed for: r0v62 */
        /* JADX WARN: Type inference failed for: r14v0 */
        @Override // p193e.p194a.p682e.p683a.View$OnClickListenerC12763k3.C12772i
        /* renamed from: b */
        public void mo22663b(Map<SourcedContact, Contact> map) {
            if (!map.isEmpty()) {
                long[] jArr = new long[map.size()];
                int i = 0;
                for (SourcedContact sourcedContact : map.keySet()) {
                    Long l = sourcedContact.f14104c;
                    jArr[i] = (l == null ? 0 : l.longValue()) == true ? 1 : 0;
                    i++;
                }
                Intent intent = new Intent("com.truecaller.ACTION_ENHANCED_NOTIFICATION_DELETED");
                intent.putExtra("ids", jArr);
                Intent m34849pa = SourcedContactListActivity.m34849pa(View$OnClickListenerC12763k3.this.getActivity(), new LinkedHashSet(map.keySet()));
                Resources resources = View$OnClickListenerC12763k3.this.getActivity().getResources();
                String quantityString = resources.getQuantityString(C2752R.plurals.EnhancedNotificationTitle, map.size(), Integer.valueOf(map.size()));
                String quantityString2 = resources.getQuantityString(C2752R.plurals.EnhancedNotificationTitle, map.size(), Integer.valueOf(map.size()));
                String string = resources.getString(C2752R.string.EnhancedNotificationContentTextOther);
                C26450q c26450q = new C26450q((Context) View$OnClickListenerC12763k3.this.getActivity(), View$OnClickListenerC12763k3.this.f37183g0.mo19422d());
                c26450q.m1843z(quantityString);
                c26450q.m1855n(quantityString2);
                c26450q.m1856m(string);
                PendingIntent broadcast = PendingIntent.getBroadcast(View$OnClickListenerC12763k3.this.getActivity(), C2752R.C2754id.req_code_enhanced_notification_dismiss, intent, 335544320);
                Notification notification = c26450q.f74137R;
                notification.deleteIntent = broadcast;
                notification.icon = 2131236603;
                c26450q.m1853p(16, true);
                c26450q.f74147g = PendingIntent.getActivity(View$OnClickListenerC12763k3.this.getActivity(), C2752R.C2754id.req_code_enhanced_notification_open, m34849pa, 335544320);
                l activity = View$OnClickListenerC12763k3.this.getActivity();
                Object obj = C26467a.f74235a;
                c26450q.f74123D = C26467a.C26471d.m1787a(activity, 2131099684);
                View$OnClickListenerC12763k3.this.f37183g0.mo19419g(200, c26450q.m1865d());
            }
        }
    }

    /* renamed from: e.a.e.a.k3$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/k3$c.class */
    public class C12766c extends C12772i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12766c(String... strArr) {
            super(strArr, null);
            View$OnClickListenerC12763k3.this = r6;
        }

        @Override // p193e.p194a.p682e.p683a.View$OnClickListenerC12763k3.C12772i
        /* renamed from: b */
        public void mo22663b(Map<SourcedContact, Contact> map) {
            if (!map.isEmpty()) {
                SourcedContact next = map.keySet().iterator().next();
                Contact contact = map.get(next);
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                view$OnClickListenerC12763k3.startActivity(CallMeBackActivity.m34599qa(view$OnClickListenerC12763k3.getContext(), contact, next.f14107f, 1, "callMeBackPopupOutApp", InitiateCallHelper.CallContextOption.Skip.a));
            }
        }
    }

    /* renamed from: e.a.e.a.k3$d */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/k3$d.class */
    public class C12767d extends Filter {

        /* renamed from: a */
        public final List<View> f37217a;

        /* renamed from: b */
        public final List<String> f37218b;

        /* renamed from: c */
        public final Multimap<String, View> f37219c = new LinkedListMultimap();

        /* renamed from: d */
        public final Map<String, String> f37220d = new HashMap();

        public C12767d(View$OnClickListenerC12763k3 view$OnClickListenerC12763k3, ViewGroup viewGroup) {
            String str;
            String str2;
            this.f37217a = new ArrayList(viewGroup.getChildCount());
            this.f37218b = new ArrayList(viewGroup.getChildCount());
            String str3 = null;
            int i = 0;
            while (i < viewGroup.getChildCount()) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() != 0) {
                    str = str3;
                } else {
                    if (childAt instanceof TextView) {
                        str2 = ((TextView) childAt).getText().toString();
                    } else {
                        str = str3;
                        if (childAt instanceof ComboBase) {
                            str2 = ((ComboBase) childAt).getTitle();
                        }
                    }
                    this.f37217a.add(childAt);
                    this.f37218b.add(str2);
                    String str4 = (String) childAt.getTag();
                    if (h.j(str4)) {
                        str = str3;
                    } else if (str4.startsWith("Group")) {
                        String substring = (h.j(str4) || h.j("Group") || !str4.startsWith("Group")) ? str4 : str4.substring(5);
                        this.f37219c.put(substring, childAt);
                        this.f37220d.put(str2, substring);
                        str = substring;
                    } else {
                        str = str3;
                        if (str4.startsWith("Child")) {
                            str = str3;
                            if (str4.equals("Child" + str3)) {
                                this.f37219c.put(str3, childAt);
                                str = str3;
                            }
                        }
                    }
                }
                i++;
                str3 = str;
            }
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Map.Entry<String, String> entry : this.f37220d.entrySet()) {
                if (h.b(entry.getKey(), charSequence)) {
                    linkedHashSet.addAll(this.f37219c.get(entry.getValue()));
                }
            }
            for (int i = 0; i < this.f37218b.size(); i++) {
                if (h.b(this.f37218b.get(i), charSequence)) {
                    linkedHashSet.add(this.f37217a.get(i));
                }
            }
            Filter.FilterResults filterResults = new Filter.FilterResults();
            filterResults.count = linkedHashSet.size();
            filterResults.values = linkedHashSet;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            ArrayList arrayList = new ArrayList(this.f37217a);
            Set<View> set = (Set) filterResults.values;
            arrayList.removeAll(set);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((View) it.next()).setVisibility(8);
            }
            for (View view : set) {
                view.setVisibility(0);
            }
        }
    }

    /* renamed from: e.a.e.a.k3$e */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/k3$e.class */
    public static class AsyncTaskC12768e extends AsyncTask<Void, Void, AbstractC8417d> {

        /* renamed from: a */
        public final WeakReference<Activity> f37221a;

        public AsyncTaskC12768e(Activity activity) {
            this.f37221a = new WeakReference<>(activity);
        }

        @Override // android.os.AsyncTask
        public AbstractC8417d doInBackground(Void[] voidArr) {
            return TrueApp.m36032b0().m28549N().mo11657L().mo28565s();
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(AbstractC8417d abstractC8417d) {
            String str;
            AbstractC8417d abstractC8417d2 = abstractC8417d;
            if (abstractC8417d2 == null || (abstractC8417d2 instanceof AbstractC8417d.AbstractC8418a.C8421c)) {
                str = "Unexpected error";
            } else if (abstractC8417d2 instanceof AbstractC8417d.C8423b) {
                str = "Secondary number deleted";
            } else if (abstractC8417d2 instanceof AbstractC8417d.AbstractC8418a.C8419a) {
                StringBuilder m8728C = C22128a.m8728C("Error deleting secondary number status:");
                m8728C.append(((AbstractC8417d.AbstractC8418a.C8419a) abstractC8417d2).f26099a);
                str = m8728C.toString();
            } else {
                str = abstractC8417d2 instanceof AbstractC8417d.AbstractC8418a.C8420b ? "No internet connection" : abstractC8417d2 instanceof AbstractC8417d.AbstractC8418a.C8422d ? "No secondary number to delete" : "Unknown result";
            }
            Activity activity = this.f37221a.get();
            if (activity != null) {
                Toast.makeText(activity, str, 0).show();
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            Activity activity = this.f37221a.get();
            if (activity != null) {
                Toast.makeText(activity, "Deleting secondary number", 0).show();
            }
        }
    }

    /* renamed from: e.a.e.a.k3$f */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/k3$f.class */
    public static class AsyncTaskC12769f extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a */
        public final WeakReference<Context> f37222a;

        public AsyncTaskC12769f(Context context, C12764a c12764a) {
            this.f37222a = new WeakReference<>(context);
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void[] voidArr) {
            Boolean bool;
            Context context = this.f37222a.get();
            if (context == null) {
                bool = Boolean.FALSE;
            } else {
                ComponentCallbacks2C22222c m8449b = ComponentCallbacks2C22222c.m8449b(context.getApplicationContext());
                Objects.requireNonNull(m8449b);
                if (!C22623j.m8016h()) {
                    throw new IllegalArgumentException("You must call this method on a background thread");
                }
                m8449b.f61712a.f62134f.m8268a().clear();
                bool = Boolean.TRUE;
            }
            return bool;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            Context context;
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (!bool2.booleanValue() || (context = this.f37222a.get()) == null) {
                return;
            }
            Toast.makeText(context, "Glide disk cache cleared", 0).show();
        }
    }

    /* renamed from: e.a.e.a.k3$g */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/k3$g.class */
    public static class C12770g extends RuntimeException {
        public C12770g(String str, Throwable th) {
            super(str, th);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            throw new ClassNotFoundException();
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            throw new IOException();
        }
    }

    /* renamed from: e.a.e.a.k3$h */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/k3$h.class */
    public static class AsyncTaskC12771h extends AsyncTask<Void, Void, String> {

        /* renamed from: a */
        public final WeakReference<Activity> f37223a;

        public AsyncTaskC12771h(Activity activity) {
            this.f37223a = new WeakReference<>(activity);
        }

        @Override // android.os.AsyncTask
        public String doInBackground(Void[] voidArr) {
            return TrueApp.m36032b0().m28549N().mo11657L().mo28569o();
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            String str2 = str;
            if (TextUtils.isEmpty(str2)) {
                TrueApp.m36032b0().mo28536a0(true);
            } else {
                TrueApp.m36032b0().m36030d0(str2, true, false, LogoutContext.QA_MENU);
            }
            Activity activity = this.f37223a.get();
            if (activity != null) {
                TruecallerInit.m34568Ua(activity, null);
                activity.finish();
            }
        }
    }

    /* renamed from: e.a.e.a.k3$i */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/k3$i.class */
    public class C12772i {

        /* renamed from: b */
        public final String[] f37225b;

        /* renamed from: a */
        public final Map<SourcedContact, Contact> f37224a = new LinkedHashMap();

        /* renamed from: c */
        public int f37226c = 0;

        public C12772i(String[] strArr, C12764a c12764a) {
            View$OnClickListenerC12763k3.this = r5;
            this.f37225b = strArr;
        }

        /* renamed from: a */
        public void m22664a() {
            if (this.f37226c >= this.f37225b.length) {
                mo22663b(this.f37224a);
                return;
            }
            Context context = View$OnClickListenerC12763k3.this.getContext();
            int i = this.f37226c;
            if (i < 0 || i >= this.f37225b.length) {
                m22662c(null);
            }
            String str = this.f37225b[i];
            if (TextUtils.isEmpty(str)) {
                m22662c(null);
            }
            try {
                C8572b0.m28376c(str);
            } catch (e e) {
                m22662c(null);
            }
            C14022p c14022p = new C14022p(context, UUID.randomUUID(), RemoteMessageConst.NOTIFICATION);
            c14022p.f40566p = str;
            c14022p.m20844d();
            c14022p.f40557g = true;
            c14022p.f40559i = true;
            c14022p.f40560j = true;
            c14022p.f40562l = false;
            c14022p.f40565o = 19;
            c14022p.m20842f(null, false, false, new C12782m3(this));
        }

        /* renamed from: b */
        public void mo22663b(Map<SourcedContact, Contact> map) {
            View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
            view$OnClickListenerC12763k3.startActivity(SourcedContactListActivity.m34849pa(view$OnClickListenerC12763k3.getContext(), new LinkedHashSet(map.keySet())));
        }

        /* renamed from: c */
        public final void m22662c(Contact contact) {
            if (contact != null && !TextUtils.isEmpty(contact.m35491w())) {
                this.f37224a.put(new SourcedContact(SupportMessenger.TELEGRAM, "Random label", contact.getId(), contact.getTcId(), contact.m35491w(), this.f37225b[this.f37226c], C12864a2.m22592B(contact, false), C12864a2.m22592B(contact, true)), contact);
            }
            this.f37226c++;
            m22664a();
        }
    }

    public View$OnClickListenerC12763k3() {
        AbstractC15539j2 mo10154s = TrueApp.m36032b0().mo10154s();
        AbstractC8412c m28549N = TrueApp.m36032b0().m28549N();
        this.f37190k = mo10154s.mo12712H0();
        this.f37192l = mo10154s.mo12670K2();
        this.f37194m = mo10154s.mo12242q0();
        this.f37196n = mo10154s.mo12414d6();
        this.f37198o = mo10154s.mo12143x4();
        this.f37200p = mo10154s.mo12420d();
        this.f37202q = m28549N.mo12484Y();
        this.f37204r = m28549N.mo12562S2();
        this.f37208u = mo10154s.mo12371g7();
        this.f37206s = mo10154s.mo12453a7();
        this.f37207t = mo10154s.mo12617O1();
        this.f37210w = mo10154s.mo12280n1();
        this.f37211x = mo10154s.mo12805A3();
        this.f37212y = m28549N.mo12752E1();
        this.f37213z = m28549N.mo12525V();
        this.f37158A = mo10154s.mo12604P1();
        this.f37159B = mo10154s.mo12356h7();
        this.f37161D = mo10154s.mo12183u5();
        this.f37162E = mo10154s.mo12565S();
        this.f37163J = mo10154s.mo11647c();
        this.f37164K = mo10154s.mo11648b();
        this.f37165L = mo10154s.mo12478Y6();
        this.f37166M = mo10154s.mo12666K6();
        this.f37167N = mo10154s.mo12708H4();
        this.f37168O = mo10154s.mo12656L3();
        this.f37170Q = mo10154s.mo12445b1();
        this.f37171R = mo10154s.mo11631z();
        this.f37172S = mo10154s.mo12224r4();
        this.f37173T = mo10154s.mo12131y2();
        this.f37174U = mo10154s.mo12615O4();
        this.f37175V = mo10154s.mo12738F1();
        this.f37176W = mo10154s.mo12646M();
        this.f37177X = mo10154s.mo12512W();
        this.f37178Y = mo10154s.mo12685J();
        this.f37183g0 = mo10154s.mo12458a1();
        this.f37179Z = mo10154s.mo12740F();
        this.f37160C = mo10154s.mo12226r2();
        this.f37185h0 = mo10154s.mo12655L4();
        this.f37187i0 = mo10154s.mo12628N3();
        this.f37189j0 = mo10154s.mo12240q2();
        this.f37193l0 = mo10154s.mo12748E5();
        this.f37195m0 = mo10154s.mo12134y();
        this.f37197n0 = mo10154s.mo12161w();
        this.f37199o0 = mo10154s.mo12454a6();
        this.f37201p0 = mo10154s.mo12263o5();
        this.f37191k0 = mo10154s.mo12590Q2();
        this.f37205r0 = mo10154s.mo12314k7();
    }

    /* renamed from: AB */
    public final void m22707AB() {
        g$a g_a = new g$a(requireContext());
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f154d = "Add search warning";
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: e.a.e.a.u0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                if (i == 0) {
                    view$OnClickListenerC12763k3.f37203q0.mo22881b();
                } else if (i == 1) {
                    view$OnClickListenerC12763k3.f37203q0.mo22877f();
                } else if (i == 2) {
                    view$OnClickListenerC12763k3.f37203q0.mo22876g();
                } else if (i == 3) {
                    view$OnClickListenerC12763k3.f37203q0.mo22882a();
                } else if (i == 4) {
                    view$OnClickListenerC12763k3.f37203q0.mo22878e();
                } else if (i != 5) {
                } else {
                    AbstractC14722a mo12360h3 = TrueApp.m36032b0().mo10154s().mo12360h3();
                    String str = TrueApp.m36032b0().m28549N().mo11657L().mo28577g().f26095b;
                    mo12360h3.m19725a(new MissedCallReminder(str, str, System.currentTimeMillis() - TimeUnit.HOURS.toMillis(1L)));
                }
            }
        };
        c0037b.f167q = new String[]{"Allow draw over apps", "Set as default dialer", "Set as call screening app", "Ignore battery optimization", "Show request revoked permissions", "Missed call reminder"};
        c0037b.f169s = onClickListener;
        g_a.m3660i(2131887910, null);
        g_a.m3652q();
    }

    /* renamed from: BB */
    public final void m22706BB() {
        int callState = ((TelephonyManager) getContext().getSystemService(AnalyticsConstants.PHONE)).getCallState();
        String str = callState != 0 ? callState != 1 ? callState != 2 ? "" : "Offhook" : "Ringing" : "Idle";
        Context context = getContext();
        Toast.makeText(context, "Current native call state is: " + str, 0).show();
    }

    /* renamed from: CB */
    public final void m22705CB() {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = "Enter verification sequence number";
        g_a.m3654o(C2752R.layout.qa_input_dialog);
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.f0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                String obj = ((EditText) ((Dialog) dialogInterface).findViewById(C2752R.C2754id.debugInput)).getText().toString();
                if (obj == null || obj.length() >= 3 || !TextUtils.isDigitsOnly(obj)) {
                    C22128a.m8549y0(view$OnClickListenerC12763k3, "Invalid number!", 0);
                } else {
                    view$OnClickListenerC12763k3.f37188j.putInt("verificationLastSequenceNumber", Integer.parseInt(obj));
                }
            }
        });
        g_a.m3662g(2131887867, null);
        g m3668a = g_a.m3668a();
        m3668a.setOnShowListener(new DialogInterface.OnShowListener() { // from class: e.a.e.a.w1
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                EditText editText = (EditText) ((Dialog) dialogInterface).findViewById(C2752R.C2754id.debugInput);
                editText.setHint("sequence number");
                editText.setInputType(2);
                editText.setText(String.valueOf(view$OnClickListenerC12763k3.f37188j.getInt("verificationLastSequenceNumber", 0)));
                Toast.makeText(view$OnClickListenerC12763k3.getContext(), "number will be incremented by 1 during verification", 0).show();
            }
        });
        m3668a.show();
    }

    /* renamed from: DB */
    public final void m22704DB() {
        getContext().startActivity(new Intent(getContext(), VoipContactsActivity.class));
    }

    /* renamed from: EB */
    public final void m22703EB() {
        if (Build.VERSION.SDK_INT < 26) {
            C22128a.m8549y0(this, "Method tracing requires Android O or above", 1);
        } else {
            C22128a.m8549y0(this, "Method tracing requires a debuggable build", 1);
        }
    }

    /* renamed from: FB */
    public final void m22702FB(String str) {
        C21782c.m9085a(C26702l.m1431n(requireContext()), str, requireContext());
    }

    /* renamed from: GB */
    public final void m22701GB() {
        ((AbstractC21187w1) getActivity().getApplication()).mo10154s().mo12217s().mo11854a().mo13109c(C8363a.m28642a(new C8385b())).mo11828g();
    }

    /* renamed from: HB */
    public final void m22700HB() {
        CommentFeedback commentFeedback = new CommentFeedback(0L, 100L, "+460000000", "cool_feedback", "", "PENDING", true, PhoneNumberType.UNKNOWN_NUMBER_TYPE.name());
        AbstractC19456a abstractC19456a = this.f37193l0;
        ((C19457b) abstractC19456a).m13310a(Collections.singletonList(commentFeedback));
    }

    /* renamed from: QA */
    public final void m22699QA() {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = "Add edge end-point";
        g_a.m3654o(C2752R.layout.qa_edge_dialog);
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.l0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                Dialog dialog = (Dialog) dialogInterface;
                CharSequence text = ((TextView) dialog.findViewById(C2752R.C2754id.debugDomain)).getText();
                CharSequence text2 = ((TextView) dialog.findViewById(C2752R.C2754id.debugEdgeName)).getText();
                CharSequence text3 = ((TextView) dialog.findViewById(C2752R.C2754id.debugEdgeHost)).getText();
                if (TextUtils.isEmpty(text2) || TextUtils.isEmpty(text3)) {
                    return;
                }
                if (!view$OnClickListenerC12763k3.f37212y.mo20929b(String.valueOf(text), String.valueOf(text2), String.valueOf(text3))) {
                    C22128a.m8549y0(view$OnClickListenerC12763k3, "Error adding edge endpoint", 0);
                    return;
                }
                Context context = view$OnClickListenerC12763k3.getContext();
                Toast.makeText(context, "Added edge endpoint named " + ((Object) text2) + " pointing to " + ((Object) text3), 1).show();
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* renamed from: RA */
    public final void m22698RA() {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = "Add search warning";
        g_a.m3654o(C2752R.layout.qa_search_warning);
        g_a.m3660i(2131887941, new DialogInterface.OnClickListener() { // from class: e.a.e.a.a2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                Dialog dialog = (Dialog) dialogInterface;
                CharSequence text = ((TextView) dialog.findViewById(C2752R.C2754id.debugSearchWarningId)).getText();
                CharSequence text2 = ((TextView) dialog.findViewById(C2752R.C2754id.debugSearchWarningTitle)).getText();
                CharSequence text3 = ((TextView) dialog.findViewById(C2752R.C2754id.debugSearchWarningMessage)).getText();
                if (TextUtils.isEmpty(text) || TextUtils.isEmpty(text2) || h.j(text3)) {
                    C22128a.m8549y0(view$OnClickListenerC12763k3, "Incomplete input, no search warning added", 0);
                    return;
                }
                view$OnClickListenerC12763k3.f37187i0.mo9743a(new SearchWarningDTO(String.valueOf(text), String.valueOf(text2), String.valueOf(text3), "#00FF00", "#1900FF", "https://storage.googleapis.com/tc-search-context-eu/message-icon/ic_fraud.png"));
                Context context = view$OnClickListenerC12763k3.getContext();
                Toast.makeText(context, "Created search warning, id=" + ((Object) text) + ", title=" + ((Object) text2) + ", message=" + ((Object) text3), 1).show();
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* renamed from: SA */
    public final void m22697SA() {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = "Add top spammer";
        g_a.m3654o(C2752R.layout.qa_top_spammer);
        g_a.m3660i(2131887941, new DialogInterface.OnClickListener() { // from class: e.a.e.a.u1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                Dialog dialog = (Dialog) dialogInterface;
                CharSequence text = ((TextView) dialog.findViewById(C2752R.C2754id.debugSpamName)).getText();
                CharSequence text2 = ((TextView) dialog.findViewById(C2752R.C2754id.debugSpamNumber)).getText();
                if (TextUtils.isEmpty(text) || TextUtils.isEmpty(text2)) {
                    C22128a.m8549y0(view$OnClickListenerC12763k3, "Incomplete input, no top spammer added", 0);
                    return;
                }
                view$OnClickListenerC12763k3.f37190k.mo19524a(String.valueOf(text), String.valueOf(text2), 999, Arrays.asList(1L, 2L));
                Context context = view$OnClickListenerC12763k3.getContext();
                Toast.makeText(context, "Created top spammer, name=" + ((Object) text) + ", value=" + ((Object) text2), 1).show();
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* renamed from: TA */
    public final void m22696TA() {
        g$a g_a = new g$a(getContext());
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f154d = "Forced Update Scenario";
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: e.a.e.a.d0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, final int i) {
                final View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                final UpdateType mo9774b = view$OnClickListenerC12763k3.f37180e.mo9774b();
                g$a g_a2 = new g$a(view$OnClickListenerC12763k3.getContext());
                StringBuilder m8728C = C22128a.m8728C("Current: ");
                m8728C.append(mo9774b.name());
                String sb = m8728C.toString();
                AlertController.C0037b c0037b2 = g_a2.f70854a;
                c0037b2.f154d = sb;
                DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: e.a.e.a.j1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface2, int i2) {
                        View$OnClickListenerC12763k3 view$OnClickListenerC12763k32 = View$OnClickListenerC12763k3.this;
                        int i3 = i;
                        UpdateType updateType = mo9774b;
                        Objects.requireNonNull(view$OnClickListenerC12763k32);
                        UpdateType updateType2 = UpdateType.NONE;
                        view$OnClickListenerC12763k32.f37180e.mo9771e(i2 != 1 ? i2 != 2 ? i2 != 3 ? updateType2 : UpdateType.DISCONTINUED : UpdateType.REQUIRED : UpdateType.OPTIONAL, "market://details?id=com.truecaller", 1);
                        if (i3 == 1) {
                            FragmentManager childFragmentManager = view$OnClickListenerC12763k32.getChildFragmentManager();
                            AbstractC21396c abstractC21396c = view$OnClickListenerC12763k32.f37180e;
                            s1.z.c.l.e(childFragmentManager, "fragmentManager");
                            s1.z.c.l.e(abstractC21396c, "forcedUpdateManager");
                            UpdateType mo9772d = abstractC21396c.mo9772d(true);
                            if (mo9772d != updateType2) {
                                C21404d c21404d = new C21404d();
                                Bundle bundle = new Bundle();
                                bundle.putString("argForcedUpdateType", mo9772d.name());
                                c21404d.setArguments(bundle);
                                c21404d.show(childFragmentManager, C21404d.class.getSimpleName());
                            }
                        } else if (i3 == 2) {
                            ForcedUpdateActivity.m35318pa(view$OnClickListenerC12763k32.requireContext(), false);
                        }
                        Context requireContext = view$OnClickListenerC12763k32.requireContext();
                        StringBuilder m8728C2 = C22128a.m8728C("State changed from ");
                        m8728C2.append(updateType.name());
                        m8728C2.append(" to ");
                        m8728C2.append(view$OnClickListenerC12763k32.f37180e.mo9774b().name());
                        Toast.makeText(requireContext, m8728C2.toString(), 0).show();
                    }
                };
                c0037b2.f167q = new String[]{"No update", "Optional update", "Required update", "Version discontinued"};
                c0037b2.f169s = onClickListener2;
                g_a2.m3652q();
            }
        };
        c0037b.f167q = new String[]{"Just change the state", "Change state and show dialog", "Change state and show activity"};
        c0037b.f169s = onClickListener;
        g_a.m3652q();
    }

    /* renamed from: UA */
    public final void m22695UA() {
        this.f37191k0.mo29119c();
        Toast.makeText(getContext(), "Call me back db cache cleared", 0).show();
    }

    /* renamed from: VA */
    public final void m22694VA() {
        this.f37191k0.mo29116f("");
        Toast.makeText(getContext(), "Call me back number cleared", 0).show();
    }

    /* renamed from: WA */
    public final void m22693WA(Context context) {
        AccountManager accountManager = AccountManager.get(context);
        String string = context.getString(2131888248);
        Account[] accountsByType = accountManager.getAccountsByType(string);
        if (accountsByType.length == 0) {
            Toast.makeText(context, "System account does not exist", 0).show();
            return;
        }
        Random random = w3.c.a.a.a.g.a;
        int nextInt = w3.c.a.a.a.g.a.nextInt(2) + 0;
        if (nextInt == 0) {
            accountManager.invalidateAuthToken(string, accountManager.peekAuthToken(accountsByType[0], "installation_id"));
            Toast.makeText(context, "installation ID has been removed", 0).show();
        } else if (nextInt != 1) {
        } else {
            accountManager.setUserData(accountsByType[0], "countryCode", null);
            Toast.makeText(context, "country code has been removed", 0).show();
        }
    }

    /* renamed from: XA */
    public final void m22692XA() {
        "".substring(0, 1);
    }

    /* renamed from: YA */
    public final void m22691YA() {
        throw new C12770g("Test a non-serializable exception", new IllegalArgumentException(new IllegalStateException()));
    }

    /* renamed from: ZA */
    public final void m22690ZA() {
        throw new UnmutedException.C4149h(1, 0);
    }

    /* renamed from: aB */
    public final void m22689aB(Context context) {
        g$a g_a = new g$a(context);
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f154d = "Change Reminder Notif Time";
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: e.a.e.a.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3.this.f37174U.mo26831m(i);
            }
        };
        c0037b.f167q = new String[]{"Default Time", "Immediate", "After 5 min", "After 1 hour"};
        c0037b.f169s = onClickListener;
        g_a.m3668a().show();
    }

    /* renamed from: bB */
    public final void m22688bB() {
        WebView.setWebContentsDebuggingEnabled(true);
        Toast.makeText(getContext(), "Remote WebView debugging enabled", 0).show();
    }

    /* renamed from: cB */
    public final void m22687cB() {
        if (!this.f37163J.mo13830c()) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 0);
            return;
        }
        Toast.makeText(getContext(), "App is dumping its heap. It will cause UI freeze.", 0).show();
        getView().postDelayed(new Runnable() { // from class: e.a.e.a.c1
            @Override // java.lang.Runnable
            public final void run() {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Context context = view$OnClickListenerC12763k3.getContext();
                s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
                h1 h1Var = h1.a;
                t0 t0Var = t0.a;
                d.H(h1Var, q.c, (j0) null, new C18480c(context, null), 2, (Object) null).n0(false, true, new C12777l3(view$OnClickListenerC12763k3));
            }
        }, 100L);
    }

    /* renamed from: dB */
    public final void m22686dB() {
        final Context context = getContext();
        if (context == null) {
            return;
        }
        if (!this.f37163J.mo13830c()) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
            return;
        }
        Toast.makeText(context, "App is exporting DB Schema...", 0).show();
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        d.H(h1.a, C18334g0.m15209q(context).mo12378g(), (j0) null, new C19007d0(context, null), 2, (Object) null).n0(false, true, new s1.z.b.l() { // from class: e.a.e.a.q
            /* renamed from: d */
            public final Object m22653d(Object obj) {
                Context context2 = context;
                Throwable th = (Throwable) obj;
                int i = View$OnClickListenerC12763k3.f37157s0;
                if (th != null) {
                    StringBuilder m8728C = C22128a.m8728C("DB schema export failed. ");
                    m8728C.append(th.getClass().getSimpleName());
                    m8728C.append(": ");
                    m8728C.append(th.getMessage());
                    Toast.makeText(context2, m8728C.toString(), 1).show();
                }
                return s.a;
            }
        });
    }

    /* renamed from: eB */
    public final void m22685eB() {
        final Context context = getContext();
        if (context == null) {
            return;
        }
        if (!this.f37163J.mo13830c()) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 2);
            return;
        }
        Toast.makeText(context, "App is exporting logs...", 0).show();
        SimpleDateFormat simpleDateFormat = C18479b.f52167a;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        h1 h1Var = h1.a;
        t0 t0Var = t0.a;
        d.H(h1Var, q.c, (j0) null, new C18478a(context, null), 2, (Object) null).n0(false, true, new s1.z.b.l() { // from class: e.a.e.a.y
            /* renamed from: d */
            public final Object m22606d(Object obj) {
                Context context2 = context;
                Throwable th = (Throwable) obj;
                int i = View$OnClickListenerC12763k3.f37157s0;
                if (th != null) {
                    StringBuilder m8728C = C22128a.m8728C("Logs export failed. ");
                    m8728C.append(th.getClass().getSimpleName());
                    m8728C.append(": ");
                    m8728C.append(th.getMessage());
                    Toast.makeText(context2, m8728C.toString(), 1).show();
                } else {
                    Toast.makeText(context2, "Logs exported to Downloads directory", 1).show();
                }
                return s.a;
            }
        });
    }

    /* renamed from: fB */
    public final void m22684fB() {
        final Context context = getContext();
        if (context == null) {
            return;
        }
        if (!this.f37163J.mo13830c()) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 4);
            return;
        }
        Toast.makeText(context, "App is exporting logs...", 0).show();
        SimpleDateFormat simpleDateFormat = C10263b.f30411a;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        d.H(C10263b.f30413c, (f) null, (j0) null, new C10262a(context, null), 3, (Object) null).n0(false, true, new s1.z.b.l() { // from class: e.a.e.a.n
            /* renamed from: d */
            public final Object m22660d(Object obj) {
                Context context2 = context;
                Throwable th = (Throwable) obj;
                int i = View$OnClickListenerC12763k3.f37157s0;
                if (th != null) {
                    StringBuilder m8728C = C22128a.m8728C("Logs export failed. ");
                    m8728C.append(th.getClass().getSimpleName());
                    m8728C.append(": ");
                    m8728C.append(th.getMessage());
                    Toast.makeText(context2, m8728C.toString(), 1).show();
                } else {
                    Toast.makeText(context2, "Logs exported to Downloads directory", 1).show();
                }
                return s.a;
            }
        });
    }

    /* renamed from: gB */
    public final void m22683gB() {
        this.f37200p.putBoolean("featureAdCtpRotation", true);
        C22128a.m8549y0(this, "Rotation forced until feature flag sync", 0);
    }

    /* renamed from: iB */
    public final void m22682iB() {
        this.f37161D.putLong("adsFeatureHouseAdsTimeout", 1L);
    }

    /* renamed from: jB */
    public final C12560v m22681jB(String str, int i, int i2) {
        Contact contact = new Contact();
        ((ContactDto.Contact) contact.mRow).name = "Sample contact";
        contact.m35525d(new Number(str, null));
        return new C12560v(i, i2, this.f37194m.mo17316d(str), 0, false, System.currentTimeMillis(), contact, null, this.f37192l.mo19591e(str));
    }

    /* renamed from: kB */
    public final AbstractC14920n m22680kB() {
        return ((AbstractC14932g) requireContext().getApplicationContext()).mo19403n();
    }

    /* renamed from: lB */
    public final void m22679lB() {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = "Enter LeadGen ID";
        g_a.m3654o(C2752R.layout.qa_ad_leadgen_input_dialog);
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.i1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                Dialog dialog = (Dialog) dialogInterface;
                String charSequence = ((TextView) dialog.findViewById(C2752R.C2754id.debugInput)).getText().toString();
                SwitchCompat switchCompat = (SwitchCompat) dialog.findViewById(C2752R.C2754id.debugSwitchLeadgen);
                if (!TextUtils.isEmpty(charSequence)) {
                    view$OnClickListenerC12763k3.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(switchCompat.isChecked() ? C22128a.m8543z2("truecaller://article_page/", charSequence) : C22128a.m8543z2("truecaller://article_page/", charSequence))));
                } else {
                    C22128a.m8549y0(view$OnClickListenerC12763k3, "Empty ID!", 0);
                }
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* renamed from: mB */
    public final void m22678mB() {
        l activity = getActivity();
        int i = QaCampaignsActivity.a;
        s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
        activity.startActivity(new Intent((Context) activity, (Class<?>) QaCampaignsActivity.class));
    }

    /* renamed from: nB */
    public final void m22677nB() {
        l activity = getActivity();
        int i = QaKeywordsActivity.a;
        s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
        activity.startActivity(new Intent((Context) activity, (Class<?>) QaKeywordsActivity.class));
    }

    /* renamed from: oB */
    public final void m22676oB() {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = "Enter LeadGen ID";
        g_a.m3654o(C2752R.layout.qa_input_dialog);
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.j0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                String charSequence = ((TextView) ((Dialog) dialogInterface).findViewById(C2752R.C2754id.debugInput)).getText().toString();
                if (TextUtils.isEmpty(charSequence)) {
                    C22128a.m8549y0(view$OnClickListenerC12763k3, "Empty ID!", 0);
                    return;
                }
                view$OnClickListenerC12763k3.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("truecaller://leadgen/" + charSequence)));
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String[] split;
        InitiateCallHelper.CallContextOption.ShowOnBoarded showOnBoarded = InitiateCallHelper.CallContextOption.ShowOnBoarded.a;
        final AbstractC15539j2 mo10154s = TrueApp.m36032b0().mo10154s();
        AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
        int id = view.getId();
        if (id == 2131364416) {
            this.f37174U.mo26814u0(false);
            Toast.makeText(getContext(), "Categorizer update pop up state cleared", 0).show();
        } else if (id == 2131363242) {
            new C15574j(getContext()).mo18674b();
            C21795e.m9056h(requireContext());
        } else if (id == 2131363240) {
            C21795e.m9056h(requireContext());
        } else if (id == 2131363238) {
            C18334g0.m15198v0("tagsPhonebookForcedUpload", true);
            C21795e.m9056h(requireContext());
        } else if (id == 2131363192) {
            this.f37168O.mo11854a().mo18984b().mo11828g();
        } else if (id == 2131363071) {
            m22692XA();
        } else if (id == 2131363073) {
            m22690ZA();
            throw null;
        } else if (id == 2131363072) {
            m22691YA();
            throw null;
        } else if (id == 2131363175) {
            new AsyncTaskC12771h(getActivity()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else if (id == 2131363178) {
            m22669vB();
        } else if (id == 2131363069) {
            m22702FB("CleverTapRefreshWorkAction");
        } else if (id == 2131363058) {
            m22678mB();
        } else if (id == 2131363144) {
            m22677nB();
        } else if (id == 2131363145) {
            m22676oB();
        } else if (id == 2131363236) {
            m22674qB();
        } else if (id == 2131363047) {
            m22679lB();
        } else if (id == 2131363171) {
            m22688bB();
        } else if (id == 2131363106) {
            m22683gB();
        } else if (id == 2131363084) {
            this.f37159B.m19088d();
        } else if (id == 2131363086) {
            this.f37160C.mo19264f();
        } else if (id == 2131363085) {
            this.f37160C.mo19268b();
        } else if (id == 2131363230) {
            this.f37160C.mo19269a();
        } else if (id == 2131363107) {
            m22682iB();
        } else if (id == 2131363064) {
            new AsyncTaskC12769f(requireContext(), null).execute(new Void[0]);
        } else if (id == 2131363593) {
            m22686dB();
        } else if (id == 2131363185) {
            m22667xB();
        } else if (id == 2131363088) {
            getContext().getContentResolver().call(C17891a1.m15711a(), "dump", (String) null, (Bundle) null);
        } else if (id == 2131363165) {
            m22671tB();
        } else if (id == 2131363176) {
            m22670uB();
        } else if (id == 2131363044) {
            m22699QA();
        } else if (id == 2131363063) {
            this.f37212y.mo20926e();
            Toast.makeText(getContext(), "Edge locations cleared", 0).show();
        } else if (id == 2131363232) {
            m22702FB("EdgeLocationsWorkAction");
        } else if (id == 2131363172) {
            C15571h.m18630u("initialCallLogSyncComplete");
        } else if (id == 2131363180) {
            this.f37175V.mo26895b();
            dismiss();
        } else if (id == 2131363182) {
            this.f37174U.mo26869M(HideTrxTempState.DEFAULT);
            this.f37174U.mo26823q(false);
            this.f37174U.mo26826o0(false);
            this.f37174U.mo26883C(false);
            dismiss();
        } else if (id == 2131363183) {
            this.f37174U.mo26856Z(false);
        } else if (id == 2131363184) {
            this.f37196n.remove("lastInvalidCallsUpdate");
        } else if (id == 2131363046) {
            m22697SA();
        } else if (id == 2131362813) {
            this.f37192l.mo19593c();
        } else if (id == 2131363241) {
            m22701GB();
        } else if (id == 2131363231) {
            C8561a.m28386d(requireContext());
        } else if (id == 2131363101) {
            mo10154s.mo12564S0().mo29698b();
        } else if (id == 2131363100) {
            Context requireContext = requireContext();
            s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
            C26702l m1431n = C26702l.m1431n(requireContext);
            s1.z.c.l.d(m1431n, "WorkManager.getInstance(context)");
            C21782c.m9083c(m1431n, "FetchSearchWarningsWorkAction", requireContext, null, null, 12);
        } else if (id == 2131363229) {
            C8562b.m28385d(requireContext());
        } else if (id == 2131363169) {
            RefreshT9MappingWorker.m34740n();
        } else if (id == 2131363166) {
            Context context = view.getContext();
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            AbstractServiceC26431i.enqueueWork(context, RefreshContactIndexingService.class, (int) C2752R.C2754id.refresh_contacts_index_service_id, new Intent(context, RefreshContactIndexingService.class).setAction("RefreshContactIndexingService.action.sync").putExtra("RefreshContactIndexingService.extra.rebuild_all", true));
        } else if (id == 2131363048) {
            m22702FB("AttestationWorkAction");
        } else if (id == 2131363050) {
            m22702FB("BackupLogWorker");
        } else if (id == 2131363239) {
            UploadContactFeedbackWorker.m35602n(requireContext());
        } else if (id == 2131363213) {
            C12557u c12557u = new C12557u(getContext(), this.f37196n, this.f37207t, this.f37201p0);
            c12557u.mo22875h(m22681jB("+123456789", 3, Math.random() > 0.5d ? 1 : 3));
            if (Math.random() > 0.5d) {
                c12557u.mo22875h(m22681jB("+198765432", 3, Math.random() > 0.5d ? 1 : 3));
            }
            try {
                try {
                    try {
                        a aVar = new a(new StringReader("{\n   \"e\": {\"s\":2,\"c\":1443107255,\"t\":2,\"i\":391912021},\n   \"a\": {\"v\":\"10.00\",\"u\":\"http://truecaller.com\"}\n }"));
                        e.m.e.q a = v.a(aVar);
                        Objects.requireNonNull(a);
                        if (!(a instanceof e.m.e.s) && aVar.D0() != b.j) {
                            throw new z("Did not consume the entire document.");
                        }
                        C19030g1.m14229c(getContext(), new InternalTruecallerNotification(a.d(), InternalTruecallerNotification.NotificationState.NEW, 1));
                    } catch (e.m.e.g0.d e) {
                        throw new z(e);
                    }
                } catch (IOException e2) {
                    throw new r(e2);
                } catch (NumberFormatException e3) {
                    throw new z(e3);
                }
            } catch (Exception e4) {
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("new", (Integer) 1);
            contentValues.put("is_read", (Integer) 0);
            getContext().getContentResolver().update(C17891a1.C17901j.m15699b(), contentValues, "_id= (SELECT MAX(_id) FROM history WHERE type=3)", null);
            MissedCallsNotificationService.m34760h(getContext());
            C19030g1.m14231a(getContext(), 4, false, "qa");
            AlarmReceiver.AlarmType alarmType = AlarmReceiver.AlarmType.TYPE_NOTIFICATION_ACCESS;
            Notification notification = alarmType.getNotification(getContext());
            if (notification != null) {
                notification.flags &= -3;
                m22680kB().mo19419g(alarmType.getNotificationId(), notification);
            }
            AlarmReceiver.AlarmType alarmType2 = AlarmReceiver.AlarmType.TYPE_UPDATE_SPAM;
            Notification notification2 = alarmType2.getNotification(getContext());
            if (notification2 != null) {
                m22680kB().mo19419g(alarmType2.getNotificationId(), notification2);
            }
            AlarmReceiver.AlarmType alarmType3 = AlarmReceiver.AlarmType.TYPE_20DAYS;
            Notification notification3 = alarmType3.getNotification(getContext());
            if (notification3 != null) {
                m22680kB().mo19419g(alarmType3.getNotificationId(), notification3);
            }
        } else if (id == 2131363164) {
            C21782c.m9085a(AbstractC26857y.m1277k(requireContext()), "PushIdRegistrationWorkAction", requireContext());
        } else if (id == 2131363163) {
            e.m.d.w.h.g().b().m38526l(C12716e1.f37066a).m38535c(new OnCompleteListener() { // from class: e.a.e.a.i0
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                    Objects.requireNonNull(view$OnClickListenerC12763k3);
                    if (task.m38519s()) {
                        Toast.makeText(view$OnClickListenerC12763k3.requireContext(), "Firebase token has been refereshed!", 0).show();
                    } else {
                        task.m38524n();
                    }
                }
            });
        } else if (id == 2131363247) {
            AbstractC26924f0 m42920d = getActivity().getSupportFragmentManager().m42920d();
            m42920d.m1130c(new C12637p(), C12637p.class.getSimpleName());
            m42920d.mo1124i();
        } else if (id == 2131363248) {
            this.f37198o.putInt("whatsNewDialogShownRevision", 0);
            this.f37198o.remove("whatsNewShownTimestamp");
            this.f37198o.putInt("key_mdau_promo_shown_times", 0);
            this.f37198o.putLong("key_mdau_promo_shown_timestamp", 0L);
        } else if (id == 2131363207) {
            new C18270c().show(getParentFragmentManager(), C18270c.class.getSimpleName());
        } else if (id == 2131363190) {
            this.f37198o.putBoolean("backupOnboardingAvailable", true);
            this.f37198o.putBoolean("backupOnboardingShown", false);
            this.f37200p.putLong("key_backup_fetched_timestamp", System.currentTimeMillis());
        } else if (id == 2131363189) {
            this.f37196n.remove("contactListPromoteBackupCount");
            this.f37200p.putBoolean("restoreOnboardingShown", true);
        } else if (id == 2131363109) {
            this.f37200p.remove("key_backup_last_success");
            BackupWorker.m35886s();
        } else if (id == 2131363246) {
            AbstractC26924f0 m42920d2 = getActivity().getSupportFragmentManager().m42920d();
            m42920d2.m1130c(new C12627j(), C12627j.class.getSimpleName());
            m42920d2.mo1126g();
        } else if (id == 2131363120) {
            new C12814s3(this.f37166M).m22648c(requireContext());
        } else if (id == 2131362807) {
            this.f37200p.remove("profileFirstName");
        } else if (id == 2131362808) {
            this.f37200p.remove("profileLastName");
        } else if (id == 2131363102) {
            AbstractC26924f0 m42920d3 = getActivity().getSupportFragmentManager().m42920d();
            m42920d3.m1130c(new C12623g(), C12623g.class.getSimpleName());
            m42920d3.mo1126g();
        } else if (id == 2131363209) {
            this.f37196n.putLong("afterCallPromoteContactsPermissionTimestamp", 0L);
            AfterCallPromotionActivity.va(getContext(), PromotionType.CONTACT_PERMISSION);
        } else if (id == 2131363179) {
            m22668wB();
            Toast.makeText(getContext(), "Dialer promotions reset", 0).show();
        } else if (id == 2131363210) {
            m22668wB();
            C12560v m22681jB = m22681jB("0000000000", 0, 0);
            HistoryEvent m22869a = new C12562w(mo10154s.mo12619O(), mo10154s.mo11636l()).m22869a(m22681jB);
            PromotionType m13878a = this.f37208u.m13878a(m22869a, m22681jB.f36669a, m22681jB.f36673e, m22681jB.f36674f);
            AfterCallPromotionActivity.wa(view.getContext(), this.f37196n, m13878a != null ? m13878a : PromotionType.SIGN_UP, m22869a);
        } else if (id == 2131363211) {
            m22668wB();
            C12560v m22681jB2 = m22681jB("0000000000", 0, 0);
            HistoryEvent m22869a2 = new C12562w(mo10154s.mo12619O(), mo10154s.mo11636l()).m22869a(m22681jB2);
            PromotionType m13878a2 = this.f37208u.m13878a(m22869a2, m22681jB2.f36669a, m22681jB2.f36673e, m22681jB2.f36674f);
            AfterCallPromotionActivity.wa(view.getContext(), this.f37196n, m13878a2 != null ? m13878a2 : PromotionType.DIALER_OUTGOING_OUTSIDE, m22869a2);
        } else if (id == 2131363208) {
            if (getActivity() != null) {
                Intent m34554wa = TruecallerInit.m34554wa(getActivity(), "clipboard");
                m34554wa.setFlags(268435456);
                PendingIntent activity = PendingIntent.getActivity(getActivity(), C2752R.C2754id.req_code_clipboard_notification_open, m34554wa, 67108864);
                C26450q c26450q = new C26450q((Context) getActivity(), this.f37183g0.mo19422d());
                c26450q.m1847v(2131236603);
                c26450q.m1859j(C26467a.m1800b(getActivity(), 2131101323));
                c26450q.m1848u(0, 0, true);
                c26450q.m1849t(1);
                c26450q.m1850s(false);
                c26450q.m1861h(true);
                c26450q.m1857l(activity);
                c26450q.m1855n(getActivity().getString(C2752R.string.ClipboardSearchNotificationTitle, new Object[]{"+123456789"}));
                c26450q.m1843z(getActivity().getString(C2752R.string.ClipboardSearchNotificationTicker, new Object[]{"+123456789"}));
                this.f37183g0.mo19419g(100, c26450q.m1865d());
            }
        } else if (id == 2131363212) {
            new C12765b("0731256247", "0761840301", "+911244130150").m22664a();
        } else if (id == 2131363070) {
            m22693WA(view.getContext());
        } else if (id == 2131363205) {
            m22696TA();
        } else if (id == 2131363217) {
            startActivity(new Intent(requireContext(), WorkActionStatusActivity.class));
        } else if (id == 2131363114) {
            C19604a.m13108d(requireContext());
            C19519m.m13240h(requireContext());
        } else if (id == 2131363143) {
            m22702FB("InstalledAppsHeartbeatWorkAction");
        } else if (id == 2131363136) {
            InsightsReSyncWorker.m35142s("re_run_context_qa_menu", true, false);
        } else if (id == 2131363141) {
            m22702FB("InsightsSeedUpdateWorkAction");
        } else if (id == 2131363135) {
            m22702FB("InsightsRemindersWorkAction");
        } else if (id == 2131363134) {
            m22702FB("InsightsReclassificationWorkAction");
        } else if (id == 2131363129) {
            InsightsOneOffEnrichmentWorker.m35143s();
        } else if (id == 2131363132) {
            m22702FB("InsightsFeatureRegistryWorkAction");
        } else if (id == 2131363140) {
            Intent intent = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent.putExtra("qaPageToOpen", "TotalSmartCardsShownDialog");
            getContext().startActivity(intent);
        } else if (id == 2131363125) {
            Intent intent2 = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent2.putExtra("qaPageToOpen", "InsightsCategorizerSeedFetch");
            getContext().startActivity(intent2);
        } else if (id == 2131363126) {
            Intent intent3 = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent3.putExtra("qaPageToOpen", "InsightsUpdatesClassifierSeedFetch");
            getContext().startActivity(intent3);
        } else if (id == 2131363137) {
            Intent intent4 = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent4.putExtra("qaPageToOpen", "InsightRowFFTester");
            getContext().startActivity(intent4);
        } else if (id == 2131363124) {
            Intent intent5 = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent5.putExtra("qaPageToOpen", "InsightsBrandSearchTester");
            getContext().startActivity(intent5);
        } else if (id == 2131363198) {
            C15571h.m18626y("madeCallsFromCallLog", false);
        } else if (id == 2131363142) {
            AbstractC19019a mo12733F6 = ((AbstractC21187w1) getActivity().getApplicationContext()).mo10154s().mo12733F6();
            mo12733F6.mo14252a(1);
            mo12733F6.mo14252a(0);
        } else if (id == 2131363113) {
            m22685eB();
        } else if (id == 2131364417) {
            m22684fB();
        } else if (id == 2131363148) {
            m22703EB();
        } else if (id == 2131363174) {
            this.f37200p.putLong("key_last_set_status_time", 0L);
            this.f37200p.putString("last_availability_update_success", null);
            this.f37170Q.mo11854a().mo16128d(AvailabilityTrigger.USER_ACTION, true);
        } else if (id == 2131363156) {
            g$a g_a = new g$a(requireContext());
            g_a.m3655n("Override locally stored version code");
            g_a.m3654o(C2752R.layout.qa_input_dialog);
            g_a.m3659j("Save", new DialogInterface.OnClickListener() { // from class: e.a.e.a.k1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                    Objects.requireNonNull(view$OnClickListenerC12763k3);
                    CharSequence text = ((TextView) ((Dialog) dialogInterface).findViewById(C2752R.C2754id.debugInput)).getText();
                    Integer h = s1.f0.q.h(text == null ? "" : text.toString());
                    if (h == null) {
                        Toast.makeText(view$OnClickListenerC12763k3.requireContext(), "Version code should be an integer", 0).show();
                        return;
                    }
                    C15571h.m18628w("VERSION_CODE", h.intValue());
                    Toast.makeText(view$OnClickListenerC12763k3.requireContext(), "Saved, restart the app to see the difference", 0).show();
                }
            });
            g_a.m3661h("Cancel", null);
            g m3668a = g_a.m3668a();
            m3668a.setOnShowListener(DialogInterface$OnShowListenerC12832v1.f37323a);
            m3668a.show();
        } else if (id == 2131363147) {
            startActivity(new Intent(requireContext(), DynamicFeaturePanelActivity.class));
        } else if (id == 2131363080) {
            ((AbstractC19931a) this.f37186i.get()).mo11799c();
        } else if (id == 2131363186) {
            this.f37200p.remove("featureRegion1_qa");
            C19045j0.m14202n(getView(), C2752R.C2754id.debugSwitchRegion1, this.f37213z.mo28594d());
            this.f37200p.remove("featureRegion1_qa");
            this.f37200p.remove("ppolicy_accepted");
            this.f37202q.remove("region_c_accepted");
        } else if (id == 2131363177) {
            this.f37200p.remove("ppolicy_accepted");
            this.f37202q.remove("region_c_accepted");
            this.f37202q.remove("region_za_policy_accepted");
        } else if (id == 2131363228) {
            this.f37206s.mo11854a().mo31698b(true);
        } else if (id == 2131363167) {
            new C18065i0().m15507a(C18071l0.m15500j(m28551L, C18071l0.m15501d(), C22128a.m8596m1()).getWritableDatabase());
        } else if (id == 2131363199) {
            C15314a c15314a = C15314a.f43582g;
            final List<AbstractC15317d> m18934e = C15314a.m18934e();
            String[] strArr = new String[m18934e.size()];
            AbstractC15317d m18938a = C15314a.m18938a();
            int i = 0;
            for (int i2 = 0; i2 < m18934e.size(); i2++) {
                strArr[i2] = getContext().getString(m18934e.get(i2).m18928a());
                if (m18934e.get(i2) == m18938a) {
                    i = i2;
                }
            }
            g$a g_a2 = new g$a(getContext());
            g_a2.m3657l(strArr, i, new DialogInterface.OnClickListener() { // from class: e.a.e.a.q1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                    List list = m18934e;
                    Objects.requireNonNull(view$OnClickListenerC12763k3);
                    C15314a c15314a2 = C15314a.f43582g;
                    C15314a.m18930i((AbstractC15317d) list.get(i3));
                    TrueApp.m36032b0().mo10154s().mo12792B2().mo10143a((AbstractC15317d) list.get(i3));
                    Context context2 = view$OnClickListenerC12763k3.getContext();
                    StringBuilder m8728C = C22128a.m8728C("Theme set to ");
                    m8728C.append(((AbstractC15317d) list.get(i3)).f43586b);
                    Toast.makeText(context2, m8728C.toString(), 0).show();
                    view$OnClickListenerC12763k3.getContext().getApplicationContext().setTheme(((AbstractC15317d) list.get(i3)).f43587c);
                    TruecallerInit.m34567Va(view$OnClickListenerC12763k3.getContext(), "calls", true, null);
                }
            });
            g_a2.m3652q();
        } else if (id == 2131363051) {
            startActivity(BusinessProfileOnboardingActivity.m35832qa(getActivity(), false));
        } else if (id == 2131363219) {
            new C12772i(new String[]{"0731256247", "0761840301", "+911244130150"}, null).m22664a();
        } else if (id == 2131363052) {
            new C12766c("0735342770").m22664a();
        } else if (id == 2131363062) {
            getContext().getSharedPreferences("callMeBackNotifications", 0).edit().clear().apply();
        } else if (id == 2131363066) {
            ReferralManager referralManager = this.f37209v;
            if (referralManager != null) {
                referralManager.clear();
            }
        } else if (id == 2131363081) {
            m22665zB(false);
        } else if (id == 2131363097) {
            this.f37210w.remove("KeyCallLogPromoDisabledUntil");
            m22665zB(true);
        } else if (id == 2131363043) {
            new C10902a().show(getFragmentManager(), "");
        } else if (id == 2131362810) {
            C15571h.m18630u("feature_pro_promo_popup_last_time");
            C15571h.m18630u("promo_popup_last_shown_timestamp");
            TrueApp.m36032b0().mo10154s().mo11643f().clear();
            TrueApp.m36032b0().mo10154s().mo12132y1().m16549a();
            TrueApp.m36032b0().mo10154s().mo12547T5().mo16606b();
            this.f37179Z.clear();
        } else if (id == 2131362809) {
            this.f37167N.mo16475c();
        } else if (id == 2131363677) {
            m22702FB("PremiumStatusWorkAction");
        } else if (id == 2131363678) {
            m22702FB("ContactsPremiumStatusFetchWorkAction");
        } else if (id == 2131362892) {
            new C12757j3(mo10154s.mo12416d4(), mo10154s.mo12377g0(), mo10154s.mo12512W()).m22711a();
            Toast.makeText(m28551L, "Consumables consumed!", 0).show();
        } else if (id == 2131365893) {
            AbstractC17037b1 mo12547T5 = TrueApp.m36032b0().mo10154s().mo12547T5();
            StringBuilder m8728C = C22128a.m8728C("Subscription RTDN status: ");
            m8728C.append(mo12547T5.mo16607a());
            Toast.makeText(m28551L, m8728C.toString(), 1).show();
        } else if (id == 2131365890) {
            TrueApp.m36032b0().mo10154s().mo12777C3().mo17167b(requireContext(), PremiumLaunchContext.ONCE_PER_MONTH_POPUP);
        } else if (id == 2131363087) {
            m22687cB();
        } else if (id == 2131363645) {
            startActivity(new Intent(getContext(), FeaturesControlPanelActivity.class));
        } else if (id == 2131362658) {
            startActivity(new Intent(getContext(), CallerIdPopupQaActivity.class));
        } else if (id == 2131361865) {
            startActivity(new Intent(getContext(), AcsQaActivity.class));
        } else if (id == 2131363329) {
            startActivity(new Intent(getContext(), DetailsViewQaActivity.class));
        } else if (id == 2131363214) {
            AbstractC19854f<AbstractC7343q> mo12417d3 = TrueApp.m36032b0().mo10154s().mo12417d3();
            Message.C4209b c4209b = new Message.C4209b();
            c4209b.m35006g(Entity.m35049b("text/plain", "Your otp is 767676"));
            c4209b.m35005h(Participant.m35455d("46763185096", TrueApp.m36032b0().mo10154s().mo12296m(), "-1"));
            Message m35012a = c4209b.m35012a();
            Conversation.C4191b c4191b = new Conversation.C4191b();
            c4191b.m35064a(m35012a.f13382c);
            mo12417d3.mo11854a().mo29767j(Collections.singletonMap(c4191b.m35063b(), Collections.singletonList(m35012a)));
        } else if (id == 2131363150) {
            new C12851y3().show(getFragmentManager(), "qa_mock_im");
        } else if (id == 2131363119) {
            new C12798p3().show(getFragmentManager(), "qa_edit_im_history_size");
        } else if (id == 2131363233) {
            this.f37172S.mo11854a().mo30896d(true, true);
        } else if (id == 2131363235) {
            this.f37172S.mo11854a().mo30896d(false, true);
        } else if (id == 2131363234) {
            this.f37172S.mo11854a().mo30879u().mo11828g();
        } else if (id == 2131363181) {
            this.f37211x.mo9317a();
        } else if (id == 2131363104) {
            startActivity(this.f37211x.mo9322H(getContext(), null, null, null, null, false, null));
        } else if (id == 2131363065) {
            this.f37158A.mo11746q();
        } else if (id == 2131366986) {
            this.f37198o.putLong("whoViewedMeLastVisitTimestamp", 0L);
        } else if (id == 2131366987) {
            m22702FB("WhoViewedMeWeeklySummaryWorkAction");
        } else if (id == 2131363168) {
            this.f37183g0.mo19415k(true);
            this.f37183g0.mo19417i();
            Toast.makeText(getContext(), "Notification channels are recreated", 0).show();
        } else if (id == 2131363074) {
            this.f37183g0.mo19417i();
            Toast.makeText(getContext(), "Notification channels are created", 0).show();
        } else if (id == 2131363061) {
            this.f37183g0.mo19415k(false);
            Toast.makeText(getContext(), "Notification channels are cleaned up", 0).show();
        } else if (id == 2131363173) {
            this.f37183g0.mo19415k(true);
            Toast.makeText(getContext(), "All notification channels are deleted!", 0).show();
        } else if (id == 2131363153) {
            C19291g.m13495y1(getActivity());
        } else if (id == 2131363154) {
            TrueApp.m36032b0().mo10154s().mo12747E6().m18958a(requireContext(), NotificationAccessSource.UNKNOWN, C2752R.string.toast_allow_notification_access);
        } else if (id == 2131363203) {
            TrueApp.m36032b0().mo10154s().mo12142x5().mo19388c();
        } else if (id == 2131363202) {
            TrueApp.m36032b0().mo10154s().mo12142x5().mo19386e();
        } else if (id == 2131363057) {
            m22707AB();
        } else if (id == 2131363054) {
            AbstractC20235a mo12671K0 = mo10154s.mo12671K0();
            AbstractC19230g mo12512W = mo10154s.mo12512W();
            StringBuilder m8728C2 = C22128a.m8728C("Device: ");
            m8728C2.append(mo12512W.mo13792e());
            m8728C2.append(StringConstant.NEW_LINE);
            m8728C2.append("Manufacturer: ");
            m8728C2.append(mo12512W.mo13787j());
            m8728C2.append(StringConstant.NEW_LINE);
            m8728C2.append("Android version: ");
            m8728C2.append(Build.VERSION.SDK_INT);
            m8728C2.append(StringConstant.NEW_LINE);
            m8728C2.append("Legacy device blacklist: ");
            m8728C2.append(mo12671K0.getString(this.f37164K.m10948t().mo10940a()));
            m8728C2.append(StringConstant.NEW_LINE);
            m8728C2.append("Legacy device blacklist regex: ");
            m8728C2.append(mo12671K0.getString(this.f37164K.m10949s().mo10940a()));
            m8728C2.append(StringConstant.NEW_LINE);
            m8728C2.append("Legacy manufacturer blacklist: ");
            m8728C2.append(mo12671K0.getString(this.f37164K.m10947u().mo10940a()));
            m8728C2.append(StringConstant.NEW_LINE);
            m8728C2.append("Acessibility device blacklist: ");
            m8728C2.append(mo12671K0.getString(this.f37164K.m10951q().mo10940a()));
            m8728C2.append(StringConstant.NEW_LINE);
            m8728C2.append("Acessibility manufacturer blacklist: ");
            m8728C2.append(mo12671K0.getString(this.f37164K.m10950r().mo10940a()));
            m8728C2.append(StringConstant.NEW_LINE);
            m8728C2.append("Supported Android version: ");
            m8728C2.append(">=21");
            m8728C2.append("\n\n");
            m8728C2.append("Legacy feature supported: ");
            m8728C2.append(mo10154s.mo12655L4().mo17584n());
            m8728C2.append("\n\n");
            m8728C2.append("Accessibility feature supported: ");
            m8728C2.append(mo10154s.mo12655L4().mo17606B());
            m8728C2.append("\n\n");
            m8728C2.append(mo10154s.mo12655L4().toString());
            String sb = m8728C2.toString();
            if (getContext() != null) {
                g$a g_a3 = new g$a(getContext());
                g_a3.m3663f(sb);
                g_a3.m3652q();
            }
        } else if (id == 2131363149) {
            this.f37185h0.mo17391t(true);
        } else if (id == 2131363056) {
            this.f37199o0.reset();
        }
        if (id == 2131363055) {
            this.f37199o0.mo17563C1();
        } else if (id == 2131363068) {
            m22702FB("CleverTapRefreshWorkAction");
        } else if (id == 2131363059) {
            m22702FB("UnclassifiedMessagesWorkAction");
        } else if (id == 2131363121) {
            this.f37171R.mo24179n();
        } else if (id == 2131363152) {
            this.f37171R.mo24172u();
        } else if (id == 2131363158) {
            m22672sB();
        } else if (id == 2131363151) {
            m22706BB();
        } else if (id == 2131363245) {
            m22704DB();
        } else if (id == 2131363157) {
            m22673rB();
        } else if (id == 2131363060) {
            m22689aB(getContext());
        } else if (id == 2131363187) {
            this.f37174U.mo26831m(0);
        } else if (id == 2131363076) {
            AbstractC26924f0 m42920d4 = getActivity().getSupportFragmentManager().m42920d();
            m42920d4.m1130c(new e.a.h.a.a(), e.a.h.a.a.class.getSimpleName());
            m42920d4.mo1126g();
        } else if (id == 2131363138) {
            AbstractC26924f0 m42920d5 = getActivity().getSupportFragmentManager().m42920d();
            m42920d5.m1130c(new C12858z2(), C12858z2.class.getSimpleName());
            m42920d5.mo1126g();
        } else if (id == 2131362743) {
            AbstractC26924f0 m42920d6 = getActivity().getSupportFragmentManager().m42920d();
            m42920d6.m1130c(new C12725f2(), C12725f2.class.getSimpleName());
            m42920d6.mo1126g();
        } else if (id == 2131363133) {
            Intent intent6 = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent6.putExtra("qaPageToOpen", "InsightsMalanaSeed");
            getContext().startActivity(intent6);
        } else if (id == 2131363127) {
            this.f37176W.mo25743e();
            dismiss();
        } else if (id == 2131363082) {
            this.f37174U.mo26864R(false);
            dismiss();
        } else if (id == 2131363128) {
            this.f37176W.mo25746b(getContext());
            dismiss();
        } else if (id == 2131363188) {
            this.f37200p.putBoolean("smart_notifications_clicked", false);
            dismiss();
        } else if (id == 2131363237) {
            Intent intent7 = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent7.putExtra("qaPageToOpen", "InsightsUpdatesClassifierTest");
            getContext().startActivity(intent7);
        } else if (id == 2131363112) {
            Intent intent8 = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent8.putExtra("qaPageToOpen", "FtsFragment");
            getContext().startActivity(intent8);
        } else if (id == 2131363170) {
            Intent intent9 = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent9.putExtra("qaPageToOpen", "InsightsReminders");
            getContext().startActivity(intent9);
        } else if (id == 2131363218) {
            Intent intent10 = new Intent((Context) getActivity(), (Class<?>) InsightsQAActivity.class);
            intent10.putExtra("qaPageToOpen", "InsightsSmsFeatureFilterTester");
            getContext().startActivity(intent10);
        } else if (id == 2131363991) {
            TrueApp.m36032b0().mo10154s().mo12158w2().clear();
        } else if (id == 2131365885) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            InCallUIEnableAnalyticsContext inCallUIEnableAnalyticsContext = InCallUIEnableAnalyticsContext.INCALLUI_PROMO;
            s1.z.c.l.e(parentFragmentManager, "fragmentManager");
            s1.z.c.l.e(inCallUIEnableAnalyticsContext, "analyticsContext");
            C13680g c13680g = new C13680g();
            s1.z.c.l.e(inCallUIEnableAnalyticsContext, "analyticsContext");
            Bundle bundle = new Bundle();
            bundle.putString("analytics_context", inCallUIEnableAnalyticsContext.getValue());
            c13680g.setArguments(bundle);
            c13680g.show(parentFragmentManager, C13680g.class.getSimpleName());
        } else if (id == 2131363067) {
            this.f37200p.remove("core_isReturningUser");
        } else if (id == 2131363215) {
            new C12687c().show(getParentFragmentManager(), "qa_data_stats");
        } else if (id == 2131363222) {
            m22675pB();
        } else if (id == 2131363204) {
            new C12707d4().show(getParentFragmentManager(), "qa_set_business_flags");
        } else if (id == 2131363075) {
            new C12680b().show(getParentFragmentManager(), "qa_business_custom_replies");
        } else if (id == 2131365880) {
            startActivity(new Intent((Context) getActivity(), (Class<?>) BizProfileActivity.class));
        } else if (id == 2131363706) {
            AbstractC26857y m1277k = AbstractC26857y.m1277k(getContext());
            C26842r.C26843a c26843a = new C26842r.C26843a(BizProfileV2FetchWorker.class);
            c26843a.f75128d.add(BizProfileV2FetchWorker.class.getSimpleName());
            C26842r m1272b = c26843a.m1272b();
            s1.z.c.l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
            AbstractC26854w m1285c = m1277k.m1285c(m1272b);
            C26842r.C26843a c26843a2 = new C26842r.C26843a(BizProfileMigrationWorker.class);
            c26843a2.f75128d.add(BizProfileMigrationWorker.class.getSimpleName());
            C26842r m1272b2 = c26843a2.m1272b();
            s1.z.c.l.d(m1272b2, "OneTimeWorkRequest.Build…\n                .build()");
            m1285c.m1289b(m1272b2).mo1290a();
        } else if (id == 2131363707) {
            BusinessCardBackgroundWorker.m35806n(0L);
        } else if (id == 2131362812) {
            ((AbstractC14356d) this.f37184h.get()).mo20187l();
        } else if (id == 2131365881) {
            String string = this.f37200p.getString("premiumFriendUpgradedPhoneNumber");
            ArrayList arrayList = new ArrayList();
            if (h.m(string)) {
                for (String str : string.split(",")) {
                    k<Contact, Number> mo17344c = mo10154s.mo12787B7().mo17344c(str);
                    arrayList.add(String.format("%s : %s : %s", ((Contact) mo17344c.a()).m35491w(), ((Contact) mo17344c.a()).m35543U().getLevel(), str));
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.add("No contacts are present");
            }
            g$a g_a4 = new g$a(requireContext());
            g_a4.m3665d((CharSequence[]) arrayList.toArray(new String[0]), null);
            g_a4.m3652q();
        } else if (id == 2131365882) {
            new Thread(new Runnable() { // from class: e.a.e.a.t
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC15539j2 abstractC15539j2 = AbstractC15539j2.this;
                    int i3 = View$OnClickListenerC12763k3.f37157s0;
                    if (!abstractC15539j2.mo12494X3().m16535b(true)) {
                        C17099i mo12494X3 = abstractC15539j2.mo12494X3();
                        Objects.requireNonNull(mo12494X3);
                        PremiumLaunchContext premiumLaunchContext = PremiumLaunchContext.FRIEND_UPGRADED_TO_PREMIUM_NOTIFICATION;
                        Bitmap decodeResource = BitmapFactory.decodeResource(mo12494X3.f47999a.getResources(), C2752R.C2753drawable.avatar_empty);
                        s1.z.c.l.d(decodeResource, "BitmapFactory.decodeReso… R.drawable.avatar_empty)");
                        mo12494X3.m16534c(premiumLaunchContext, "Tester friend upgraded to Truecaller Premium", "Unlock Truecaller premium now!", mo12494X3.m16536a(decodeResource));
                    }
                }
            }).start();
        } else if (id == 2131365878) {
            s1.z.c.l.e("call-context", "analyticsContext");
            C18517b.m14823QA(getChildFragmentManager(), new InitiateCallHelper.CallOptions("12345", "call-context", null, null, false, false, null, false, showOnBoarded));
        } else if (id == 2131365877) {
            s1.z.c.l.e("call-context", "analyticsContext");
            C18628e.m14707VA(getChildFragmentManager(), new InitiateCallHelper.CallOptions("12345", "call-context", null, null, false, false, null, false, showOnBoarded), new OnDemandMessageSource.DetailsScreen());
        } else if (id == 2131362103) {
            new C16559b().show(getChildFragmentManager(), "");
        } else if (id == 2131363450) {
            new C16555a().show(getChildFragmentManager(), "");
        } else if (id == 2131364560) {
            startActivity(GoldGiftDialogActivity.m34819pa(requireContext(), false));
        } else if (id == 2131362958) {
            this.f37178Y.mo14505t();
        } else if (id == 2131362956) {
            C18599a.m14740VA(getChildFragmentManager(), "");
        } else if (id == 2131362959) {
            this.f37178Y.mo14515j();
        } else if (id == 2131362957) {
            this.f37178Y.mo14503v();
        } else if (id == 2131366740) {
            m22705CB();
        } else if (id == 2131363045) {
            m22698RA();
        } else if (id == 2131363200) {
            m22700HB();
        } else if (id == 2131365619) {
            startActivity(c.ua(getContext(), WizardActivity.class));
        } else if (id == 2131365620) {
            new AsyncTaskC12768e(getActivity()).execute(new Void[0]);
        } else if (id == 2131364426) {
            m22702FB("NotificationDefaultSmsPromoWorkAction");
        } else if (id == 2131366555) {
            C26702l m1431n2 = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
            EnumC26832h enumC26832h = EnumC26832h.REPLACE;
            C21762h c21762h = new C21762h(d0.a(ConversationSpamSearchWorker.class), null, 2);
            c21762h.m9108f(EnumC26841q.CONNECTED);
            m1431n2.m1279i("ConversationSpamSearchWorker", enumC26832h, c21762h.m9113a());
        } else if (id == 2131363681) {
            m22702FB("TopSpammersSyncWorkAction");
        } else if (id == 2131364987) {
            m22702FB("OfflineAdsDataUploadWorkAction");
        } else if (id == 2131365467) {
            this.f37162E.mo30984v1(0);
        } else if (id == 2131365466) {
            this.f37162E.mo31150R2(0L);
        } else if (id == 2131363256) {
            new C12792o3().show(getParentFragmentManager(), "qa_default_sms_promo");
        } else if (id == 2131363146) {
            new C12820t3().show(getParentFragmentManager(), "qa_link_preview");
        } else if (id == 2131365468) {
            this.f37189j0.mo29132b("show_priority_call_banner");
            this.f37162E.mo31186K1(0L);
        } else if (id == 2131365469) {
            this.f37189j0.mo29132b("show_verified_business_banner");
            this.f37162E.mo31186K1(0L);
        } else if (id == 2131365875) {
            this.f37197n0.mo21887f(getChildFragmentManager());
        } else if (id == 2131365892) {
            this.f37195m0.mo17824v(getChildFragmentManager(), "Contact Name");
        } else if (id == 2131365896) {
            this.f37195m0.mo17866B(getChildFragmentManager());
        } else if (id == 2131365889) {
            QaPremiumReportDialog.m34503QA(QaPremiumReportDialog.Type.PREMIUM_REPORT).show(getParentFragmentManager(), "qa-premium-report");
        } else if (id == 2131365888) {
            QaPremiumReportDialog.m34503QA(QaPremiumReportDialog.Type.PRODUCTS_REPORT).show(getParentFragmentManager(), "qa-premium-report");
        } else if (id == 2131364561) {
            C12676a4.m22757QA().show(getParentFragmentManager(), "qa-purchase-any-sku");
        } else if (id == 2131365897) {
            this.f37195m0.mo17865C(getParentFragmentManager());
        } else if (id == 2131363800) {
            this.f37195m0.mo17852P();
        } else if (id == 2131365898) {
            Context requireContext2 = requireContext();
            StringBuilder m8728C3 = C22128a.m8728C("WhatsApp CallerID notifications: ");
            m8728C3.append(this.f37182g.mo12995m());
            Toast.makeText(requireContext2, m8728C3.toString(), 0).show();
        } else if (id == 2131366946) {
            this.f37181f.clear();
        } else if (id == 2131363130) {
            m22702FB("InsightsEventAggregationWorkAction");
        } else if (id == 2131363123) {
            m22702FB("InsightsBrandMonitoringWorkAction");
        } else if (id == 2131363139) {
            m22702FB("InsightsSenderResolutionWorkAction");
        } else if (id == 2131363680) {
            Context requireContext3 = requireContext();
            s1.z.c.l.e(requireContext3, AnalyticsConstants.CONTEXT);
            C26702l m1431n3 = C26702l.m1431n(requireContext3);
            s1.z.c.l.d(m1431n3, "WorkManager.getInstance(context)");
            C21782c.m9083c(m1431n3, "FetchSurveysWorkAction", requireContext3, null, null, 12);
        } else if (id == 2131364647) {
            startActivity(SurveyListQaActivity.m34720qa(requireContext()));
        } else if (id == 2131364414) {
            startActivity(SurveyEntryQaActivity.m34731pa(requireContext()));
        } else if (id == 2131365886) {
            startActivity(new Intent(requireContext(), AcsQaActivity.class));
        } else if (id == 2131365683) {
            m22666yB();
        } else if (id == 2131362806) {
            m22694VA();
        } else if (id == 2131362805) {
            m22695UA();
        } else if (id == 2131365470) {
            this.f37205r0.mo21258k();
        } else if (id == 2131362604) {
            if (this.f37164K.m10997H().isEnabled()) {
                this.f37171R.mo24178o(new VoipAssistantPushNotification("+46745357553", "Your cloths are washed and ready to be pickedup from the shop.", "https://call-hero.s3.amazonaws.com/tracks/e7b57f4b969c9341c7206c34763f59e1.png"));
            } else {
                Toast.makeText(requireContext(), "Feature flag is disabled", 1).show();
            }
        } else if (id == 2131362591) {
            m22702FB("CallAssistantNumberSyncWorkAction");
        } else if (id == 2131365891) {
            Contact contact = new Contact();
            contact.m35525d(Number.m35483a("+46735358210", "+46735358210", "SE"));
            C21167a.f59336h.m10178a(contact, ReferralAnalytics$Source.QA_MENU).show(getChildFragmentManager(), C21167a.class.getSimpleName());
        } else if (id == 2131365019) {
            new C17058g(this.f37166M).m16592a(requireContext());
        }
    }

    public void onCreate(Bundle bundle) {
        View$OnClickListenerC12763k3.super.onCreate(bundle);
        this.f37209v = C19651l0.m13085OA(getChildFragmentManager(), "ReferralManagerImpl");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return C17422k.m16052t0(layoutInflater).inflate(C2752R.layout.dialog_qa_menu, viewGroup, false);
    }

    public void onDestroy() {
        View$OnClickListenerC12763k3.super.onDestroy();
        l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        View$OnClickListenerC12763k3.super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 0) {
            if (iArr[0] == 0) {
                m22687cB();
            } else {
                C22128a.m8549y0(this, "We need media storage access for saving heap info file. Please try again and grant permission when android will ask about it", 1);
            }
        } else if (i == 1) {
            if (iArr[0] == 0) {
                m22686dB();
            } else {
                C22128a.m8549y0(this, "We need media storage access for exporting DB Schema. Please try again and grant permission when android will ask about it", 1);
            }
        } else if (i == 2) {
            if (iArr[0] == 0) {
                m22685eB();
            } else {
                C22128a.m8549y0(this, "We need media storage access for exporting logs. Please try again and grant permission when android will ask about it", 1);
            }
        } else if (i == 4) {
            if (iArr[0] == 0) {
                m22684fB();
            } else {
                C22128a.m8549y0(this, "We need media storage access for exporting logs. Please try again and grant permission when android will ask about it", 1);
            }
        } else if (i != 3) {
        } else {
            if (iArr[0] == 0) {
                m22703EB();
            } else {
                C22128a.m8549y0(this, "We need media storage access for method tracing. Please try again and grant permission when android will ask about it", 1);
            }
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        String str;
        ArrayList arrayList = new ArrayList();
        BuildName[] values = BuildName.values();
        int i = 0;
        while (true) {
            str = "";
            if (i >= 68) {
                break;
            }
            BuildName buildName = values[i];
            arrayList.add(new C13197i0(0, buildName.name(), "", buildName.name()));
            i++;
        }
        s1.z.b.a aVar = new s1.z.b.a() { // from class: e.a.e.a.n0
            public final Object invoke() {
                return View$OnClickListenerC12763k3.this.f37204r.getString("BUILD_KEY");
            }
        };
        final C12848y0 c12848y0 = new C12848y0(this);
        int i2 = C19045j0.f53198b;
        ComboBase comboBase = null;
        if (view != null) {
            if (view.getContext() == null) {
                comboBase = null;
            } else {
                comboBase = (ComboBase) view.findViewById(C2752R.C2754id.debugPartner);
                if (comboBase == null) {
                    comboBase = null;
                } else {
                    comboBase.setData(arrayList);
                    comboBase.setSelection(C19045j0.m14206j(arrayList, (String) aVar.invoke()));
                    comboBase.m34539a(new ComboBase.AbstractC4672a() { // from class: e.a.o5.a
                        @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
                        /* renamed from: a */
                        public final void mo14306a(ComboBase comboBase2) {
                            C19045j0.AbstractC19046a abstractC19046a = C19045j0.AbstractC19046a.this;
                            ((C12848y0) abstractC19046a).f37366a.f37204r.putString("BUILD_KEY", comboBase2.getSelection().mo18607e().toString());
                        }
                    });
                }
            }
        }
        comboBase.m34539a(new ComboBase.AbstractC4672a() { // from class: e.a.e.a.m0
            @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
            /* renamed from: a */
            public final void mo14306a(ComboBase comboBase2) {
                View$OnClickListenerC12763k3.this.f37204r.putString("BUILD_KEY", comboBase2.getSelection().mo18607e().toString());
                Context context = comboBase2.getContext();
                int i3 = WidgetListProvider.f14768a;
                Intent intent = new Intent("com.truecaller.widget.UPDATE_HEADER");
                intent.setComponent(new ComponentName(context, WidgetListProvider.class));
                context.sendBroadcast(intent);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugForceAds, C15571h.m18636o("qaForceAds"), C12785n1.f37239a);
        C19045j0.m14199q(view, C2752R.C2754id.debugDisableAdsRequests, this.f37161D.getBoolean("adsQaDisableRequests"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.p
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37161D.putBoolean("adsQaDisableRequests", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugServer, C15571h.m18636o("qaServer"), C12824u.f37305a);
        C19045j0.m14199q(view, C2752R.C2754id.debugSwitchRegion1, this.f37213z.mo28594d(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.w
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37202q.putBoolean("featureRegion1", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugSwitchRegionC, this.f37213z.mo28597a(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.v0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37202q.putBoolean("featureRegionC_qa", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugSwitchRegionZa, this.f37213z.mo28592f() == Region.REGION_ZA, new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.p1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37202q.putBoolean("featureRegionZa_qa", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugSwitchRegionBr, this.f37213z.mo28592f() == Region.REGION_BR, new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.v
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37202q.putBoolean("featureRegionBr_qa", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugFakeSendingSms, C15571h.m18636o("qaReferralFakeSendSms"), C12849y1.f37367a);
        C19045j0.m14199q(view, C2752R.C2754id.debugForceLogging, C15571h.m18636o("qaEnableLogging"), C12789o0.f37245a);
        C19045j0.m14199q(view, C2752R.C2754id.debugForceShowReferralButton, C15571h.m18636o("qaForceShowReferral"), C12801q0.f37267a);
        C19045j0.m14199q(view, C2752R.C2754id.debugEnableDomainFronting, this.f37166M.mo13856Y0(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.x1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13870H1(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugBackupForceRootFolder, this.f37200p.getBoolean("backupForceRootFolder"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.z1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37200p.putBoolean("backupForceRootFolder", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugWhoViewedMePBContact, this.f37200p.getBoolean("whoViewedMePBContactEnabled"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.p0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37200p.putBoolean("whoViewedMePBContactEnabled", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugWhoViewedMeACS, this.f37200p.getBoolean("whoViewedMeACSEnabled"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.b1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37200p.putBoolean("whoViewedMeACSEnabled", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugEnableCleverTap, this.f37200p.getBoolean("featureCleverTap"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.i
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37200p.putBoolean("featureCleverTap", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugImDowngrade, this.f37166M.mo13875B1(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.d1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13867O1(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugImCommands, this.f37166M.mo13837t2(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.j
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13838q2(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugImEmptyUserInfo, this.f37166M.mo13873E2(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.k0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13853Z2(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugImDevEndpoint, "messenger-dev-se1.truecaller.com".equals(this.f37212y.mo20925f("eu", KnownEndpoints.MESSENGER.getKey())), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.z
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                if (z) {
                    view$OnClickListenerC12763k3.f37212y.mo20929b("eu", KnownEndpoints.MESSENGER.getKey(), "messenger-dev-se1.truecaller.com");
                } else {
                    view$OnClickListenerC12763k3.f37212y.mo20927d("eu", KnownEndpoints.MESSENGER.getKey());
                }
                view$OnClickListenerC12763k3.f37162E.mo31037l4(null);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugExpireImAttachments, this.f37166M.mo13844m0(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.w0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13859U0(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugDelayImAttachmentUploads, this.f37166M.mo13863R0(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.h0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13836u(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugDelayImAttachmentSending, this.f37166M.mo13874B2(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.g1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13843m1(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugShouldTreadSmsAsUrgent, this.f37166M.mo13840p0(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.r
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13845l1(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugUseShortUrgentMessageExpiry, this.f37166M.mo13839q1(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.s1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13851a3(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugEnableRecorderLeak, this.f37199o0.mo17553L0(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.f1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37199o0.mo17558I2(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugCallRecordingAccessibilityServiceVisibility, this.f37185h0.mo17578u(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.z0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37185h0.mo17594c(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugShowVoipDebugUI, this.f37171R.mo24176q(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.a1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37171R.mo24180m(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugForceVoipEncryption, this.f37171R.mo24168y(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.m
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37171R.mo24195A(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugPickerForceGeocoding, this.f37200p.getBoolean("forceRemoteGeocoding"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.l
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37200p.putBoolean("forceRemoteGeocoding", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugPickerApiKey, this.f37200p.getBoolean("forceTestApiKeys"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.m1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37200p.putBoolean("forceTestApiKeys", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugUseUkLogo, this.f37202q.getBoolean("useUkLogo"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.c0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37202q.putBoolean("useUkLogo", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugEnableInviteTab, C15571h.m18636o("qaEnableInviteTab"), C12842x.f37357a);
        C19045j0.m14199q(view, C2752R.C2754id.debugEnablePdoViewer, this.f37174U.mo26855a(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.a0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37174U.mo26816t0(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugEnableInsightsDebugLogs, this.f37174U.mo26880D0(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.o
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37174U.mo26821r(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.insightsLocalSenderFilter, C15571h.m18636o("isInsightsLocalSenderFilterEnabled"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.l1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37174U.mo26876F0(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.insightsLocalMalanaSeed, C15571h.m18636o("isInsightsLocalMalanaSeedEnabled"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.s
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37174U.mo26873I(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.addSamplePremiumCards, this.f37166M.mo13848h1(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.o1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13841n1(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.useRazorpayTestKey, this.f37166M.mo13862S(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.h1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13846k2(z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.verificationSkipDropCallRejection, this.f37188j.getBoolean("qa_skip_drop_call_rejection"), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.b2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37188j.putBoolean("qa_skip_drop_call_rejection", z);
            }
        });
        C19045j0.m14199q(view, C2752R.C2754id.debugFinishTruecallerInit, this.f37166M.mo13855Y1(), new CompoundButton.OnCheckedChangeListener() { // from class: e.a.e.a.r0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                View$OnClickListenerC12763k3.this.f37166M.mo13854Z0(z);
            }
        });
        C19045j0.m14200p(view, C2752R.C2754id.insightCategorizerUpdatePopUp, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugUploadUGC, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugUploadDeltaUGC, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugUploadAutoTags, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRunInitialize, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCrash, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCrashUnmuted, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCrashNonSerializable, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugReset, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetContactSettings, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCampaingns, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugKeywords, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugLeadgenAds, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugUnifiedLeadgenAds, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugArticlePageAds, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRemoteWebView, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugForceCtpRotation, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugDropAdsGamCache, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugDropAdsRouterCache, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugDropAdsOfflineCache, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsEventAggregationWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsBrandMonitoringWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSyncOfflineAds, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugForceHouseAdsTimeout, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugClearGlideCache, this);
        C19045j0.m14200p(view, C2752R.C2754id.exportDbSchema, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetProvider, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugDumpProvider, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugReadableDatabases, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetAlarms, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugAddEdgeLocation, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugClearEdgeLocations, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugTriggerEdgeLocationsTask, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRemoveCallLogSyncComplete, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetImportantTabSeen, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetLastInvalidCallLogReportTimestamp, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugAddTopSpammer, this);
        C19045j0.m14200p(view, C2752R.C2754id.clearWhitelist, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugUploadEvents, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSyncTags, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSyncKeywords, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugBackupLog, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugFetchSpamCategories, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugFetchSearchWarnings, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRefreshT9Mapping, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRebuildContactSorting, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugAttestationTask, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugWhatsNew, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugWhatsNewReset, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowBackupOnboarding, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRestoreOnboardingReset, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRestoreBackupPromoContacts, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugForceRunBackup, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugWelcome, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInboxPromo, this);
        C19045j0.m14200p(view, C2752R.C2754id.clearFirstName, this);
        C19045j0.m14200p(view, C2752R.C2754id.clearLastName, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugFillName, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowNotifications, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugPushIdRegistration, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugPushIdRefresh, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowContactPermissionPromotion, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCorruptAccount, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetDialerPromotions, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowDialerPromotions, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowDialerPromotionsOutgoing, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowClipBoardNotification, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowEnhancingNotification, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSetForcedUpdate, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugHeartBeat, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowWorkActions, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInstalledAppsHeartBeat, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsRerunWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsUpdateSeedModelWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsReminderWorkAction, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsSenderResolutionWorkAction, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsReTrainWorkAction, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsEventClearWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsEnrichWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsFeatureWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsTotalSmartCardsCount, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsCategorizerSeedFetcher, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsClassifierSeedFetcher, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugUpdatesClassifierTester, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsRowFeatureFlag, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsBrandStats, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsCorruptDB, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSelectTapBehavior, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInstallShortcuts, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugGetLogs, this);
        C19045j0.m14200p(view, C2752R.C2754id.insightsDebugGetLogs, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugMethodTracing, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugReportPresence, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugOverrideStoredVersionCode, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugManageDynamicFeatureModule, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugDisableAlphaBuildAlerts, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetRegion1, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetConsent, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSyncAllMessages, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRecalculateThreadStats, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSelectTheme, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugBusinessProfileOnboarding, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSourcedContactList, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCallMeBackActivity, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugClearCallMeBack, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugClearReferral, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugDisableReferralFlags, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugEnableReferral, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugAbTestingSettings, this);
        C19045j0.m14200p(view, C2752R.C2754id.clearPremiumStatus, this);
        C19045j0.m14200p(view, C2752R.C2754id.clearPremiumProducts, this);
        C19045j0.m14200p(view, C2752R.C2754id.fetchPremiumStatus, this);
        C19045j0.m14200p(view, C2752R.C2754id.fetchPremiumStatusForContacts, this);
        C19045j0.m14200p(view, C2752R.C2754id.consumeConsumable, this);
        C19045j0.m14200p(view, C2752R.C2754id.showSubscriptionStatus, this);
        C19045j0.m14200p(view, C2752R.C2754id.showPremiumScreenAsPopup, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugDumpHprof, this);
        C19045j0.m14200p(view, C2752R.C2754id.featuresPanel, this);
        C19045j0.m14200p(view, C2752R.C2754id.callHeroIncoming, this);
        C19045j0.m14200p(view, C2752R.C2754id.callAssistantNumberSync, this);
        C19045j0.m14200p(view, C2752R.C2754id.callerIdPopup, this);
        C19045j0.m14200p(view, C2752R.C2754id.acs, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowOTPNotification, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugMockImMessages, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugImHistoryBatch, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugTriggerFullRecovery, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugTriggerPartialRecovery, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugTriggerGroupInviteReminders, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetFlashTooltips, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugFlashHomeScreen, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugClearProfileViews, this);
        C19045j0.m14200p(view, C2752R.C2754id.wvmResetLastVisited, this);
        C19045j0.m14200p(view, C2752R.C2754id.wvmTriggerWeeklySummary, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRecreateNotificationChannels, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCreateNotificationChannels, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCleanupNotificationChannels, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugRemoveNotificationChannels, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugOpenDrawOnTopPermissions, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugOpenNotificationAccessPermissions, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSetAsDefaultDialerApp, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSetAsCallerIdApp, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCallingNotifications, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCallRecordingDiagnostics, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugMigrateRecordingsToScopedStorage, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCallRecordingResetOnboardingState, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCallRecordingResetFloatingShow, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCleverTapProProp, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCategorizerTask, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugIncomingVoip, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugOngoingVoip, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugOverrideVoipRtmNotificationToken, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugNativeCallState, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugVoiceLauncher, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugOverrideVoipIdExpiration, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugDefaultDialerPromo, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsSMSTester, this);
        C19045j0.m14200p(view, C2752R.C2754id.changeCountryCode, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsMalanaSeedViewer, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugInsightsClearActionStates, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugDisableSmartFeedOnboarding, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetWhatsThisNotification, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugFtsSearch, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugReminders, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSmartSmsFeatureFilters, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCleverTapRefreshTask, this);
        C19045j0.m14200p(view, C2752R.C2754id.ghostCallClearCache, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetFeedbackConsent, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetHideTrxState, this);
        C19045j0.m14200p(view, C2752R.C2754id.showInCallUIPromo, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugClearReturningUser, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugUploadContactFeedback, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugShowStats, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugStartHiddenNumberConversation, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSetBusinessFlagsConversation, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugCustomRepliesConversation, this);
        C19045j0.m14200p(view, C2752R.C2754id.internalNotificationsDefaultSmsPromo, this);
        C19045j0.m14200p(view, C2752R.C2754id.fetchTopSpammersAction, this);
        C19045j0.m14200p(view, C2752R.C2754id.triggerConversationSpamSearchWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.offlineAdsDataUpload, this);
        C19045j0.m14200p(view, C2752R.C2754id.resetDefaultSmsPromoShownFlag, this);
        C19045j0.m14200p(view, C2752R.C2754id.resetDefaultSmsPromoShownDate, this);
        C19045j0.m14200p(view, C2752R.C2754id.defaultSmsPromo, this);
        C19045j0.m14200p(view, C2752R.C2754id.showEditBizProfile, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugChangeReminderTime, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugResetReminderTime, this);
        C19045j0.m14200p(view, C2752R.C2754id.clearSuspensionCache, this);
        C19045j0.m14200p(view, C2752R.C2754id.showFriendUpgradedContacts, this);
        C19045j0.m14200p(view, C2752R.C2754id.showFriendUpgradedNotification, this);
        C19045j0.m14200p(view, C2752R.C2754id.showContextCallOnDemandCustomMessage, this);
        C19045j0.m14200p(view, C2752R.C2754id.showContextCallOnDemandPicker, this);
        C19045j0.m14200p(view, C2752R.C2754id.addPremiumScreenTopImage, this);
        C19045j0.m14200p(view, C2752R.C2754id.editDebugSubscriptions, this);
        C19045j0.m14200p(view, C2752R.C2754id.launchGoldGiftActivity, this);
        C19045j0.m14200p(view, C2752R.C2754id.contextCallResetGuideline, this);
        C19045j0.m14200p(view, C2752R.C2754id.fireBizMigrationWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.fireBusinessCardWorker, this);
        C19045j0.m14200p(view, C2752R.C2754id.contextCallAddNewReason, this);
        C19045j0.m14200p(view, C2752R.C2754id.contextCallResetPromo, this);
        C19045j0.m14200p(view, C2752R.C2754id.contextCallClearPredefinedMessages, this);
        C19045j0.m14200p(view, C2752R.C2754id.verificationSequenceNo, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugAddSearchWarning, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugSendTestCommentFeedback, this);
        C19045j0.m14200p(view, C2752R.C2754id.detailsView, this);
        C19045j0.m14200p(view, C2752R.C2754id.secondaryNumberDelete, this);
        C19045j0.m14200p(view, C2752R.C2754id.secondaryNumberAddEdit, this);
        C19045j0.m14200p(view, C2752R.C2754id.debugLinkPreviewMetaData, this);
        C19045j0.m14200p(view, C2752R.C2754id.resetPriorityBizAwarenessBanner, this);
        C19045j0.m14200p(view, C2752R.C2754id.resetVerifiedBizAwarenessBanner, this);
        C19045j0.m14200p(view, C2752R.C2754id.showCallAlertNotificationDebug, this);
        C19045j0.m14200p(view, C2752R.C2754id.showReportVideoCaller, this);
        C19045j0.m14200p(view, C2752R.C2754id.showVideoCallerIdAvatar, this);
        C19045j0.m14200p(view, C2752R.C2754id.showPremiumReport, this);
        C19045j0.m14200p(view, C2752R.C2754id.showPremiumProducts, this);
        C19045j0.m14200p(view, C2752R.C2754id.launchPurchaseOfSKU, this);
        C19045j0.m14200p(view, C2752R.C2754id.showVideoCallerIdCachedVideosDebug, this);
        C19045j0.m14200p(view, C2752R.C2754id.forceNotifyFrequentContactWithVideoId, this);
        C19045j0.m14200p(view, C2752R.C2754id.showWhatsAppCallerIdCount, this);
        C19045j0.m14200p(view, C2752R.C2754id.whatsAppCallerIdClear, this);
        C19045j0.m14200p(view, C2752R.C2754id.fetchSurveys, this);
        C19045j0.m14200p(view, C2752R.C2754id.listSurveys, this);
        C19045j0.m14200p(view, C2752R.C2754id.insertSurvey, this);
        C19045j0.m14200p(view, C2752R.C2754id.showPacsSurvey, this);
        C19045j0.m14200p(view, C2752R.C2754id.setCallMeBackNumber, this);
        C19045j0.m14200p(view, C2752R.C2754id.clearCallMeBackNumber, this);
        C19045j0.m14200p(view, C2752R.C2754id.clearCallMeBackCache, this);
        C19045j0.m14200p(view, C2752R.C2754id.resetVoipTooltip, this);
        C19045j0.m14200p(view, C2752R.C2754id.showReferralShareSheet, this);
        C19045j0.m14200p(view, C2752R.C2754id.openDisabledFeaturesDialog, this);
        C19045j0.m14194v(view.findViewById(C2752R.C2754id.debugFinishTruecallerInit), Build.VERSION.SDK_INT >= 31, true);
        Locale locale = Locale.US;
        String format = String.format(locale, "%s store v%s(%d) | actual v%s(%d) | %d\nMobile Services: %s", "Release", "12.21.6", 1221006, "12.21.6", 1221006, Long.valueOf(this.f37200p.getLong("profileUserId", 0L)), i.N(this.f37173T.mo22841c(), StringConstant.NEW_LINE, "", "", -1, "", C12817t0.f37287a));
        final TextView textView = (TextView) view.findViewById(C2752R.C2754id.dialogTitle);
        textView.setText(format);
        Location m22533y = C12864a2.m22533y(requireContext());
        String format2 = C12864a2.m22538t(requireContext(), "COMPILE_TIME") != null ? new SimpleDateFormat("HH:mm dd/MM/yyyy", locale).format(new Date(((Long) C12864a2.m22538t(requireContext(), "COMPILE_TIME")).longValue())) : "Not Available";
        String mo13790g = this.f37177X.mo13790g();
        String mo31078f = this.f37162E.mo31078f();
        if (m22533y != null) {
            StringBuilder m8728C = C22128a.m8728C("\nLat: ");
            m8728C.append(m22533y.getLatitude());
            m8728C.append("\nLon: ");
            m8728C.append(m22533y.getLongitude());
            str = m8728C.toString();
        }
        ((TextView) view.findViewById(C2752R.C2754id.dialogDetails)).setText(String.format("Build time: %s\nDevice: %s\nIM ID: %s%s", format2, mo13790g, mo31078f, str));
        final C12767d c12767d = new C12767d(this, (ViewGroup) view.findViewById(C2752R.C2754id.debugOptions));
        final SearchView searchView = (SearchView) view.findViewById(C2752R.C2754id.debugSearch);
        searchView.setOnSearchClickListener(new View.OnClickListener() { // from class: e.a.e.a.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TextView textView2 = textView;
                int i3 = View$OnClickListenerC12763k3.f37157s0;
                textView2.setVisibility(8);
            }
        });
        searchView.setOnCloseListener(new SearchView.AbstractC0070k() { // from class: e.a.e.a.e0
            @Override // androidx.appcompat.widget.SearchView.AbstractC0070k
            public final boolean onClose() {
                View$OnClickListenerC12763k3.C12767d c12767d2 = View$OnClickListenerC12763k3.C12767d.this;
                TextView textView2 = textView;
                int i3 = View$OnClickListenerC12763k3.f37157s0;
                for (View view2 : c12767d2.f37217a) {
                    view2.setVisibility(0);
                }
                textView2.setVisibility(0);
                return false;
            }
        });
        searchView.setOnQueryTextListener(new C12764a(this, c12767d));
        view.findViewById(C2752R.C2754id.debugScrollView).setOnScrollChangeListener(new NestedScrollView$b() { // from class: e.a.e.a.k
            @Override // androidx.core.widget.NestedScrollView$b
            /* renamed from: a */
            public final void mo2161a(NestedScrollView nestedScrollView, int i3, int i4, int i5, int i6) {
                SearchView searchView2 = SearchView.this;
                int i7 = View$OnClickListenerC12763k3.f37157s0;
                C19286f.m13681W(searchView2, false);
            }
        });
    }

    /* renamed from: pB */
    public final void m22675pB() {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = "Enter IM ID";
        g_a.m3654o(C2752R.layout.qa_input_dialog);
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.s0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                String charSequence = ((TextView) ((Dialog) dialogInterface).findViewById(C2752R.C2754id.debugInput)).getText().toString();
                if (!h.j(charSequence)) {
                    Context context = view$OnClickListenerC12763k3.getContext();
                    ConversationActivity.C4167a c4167a = ConversationActivity.f13017e;
                    s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
                    s1.z.c.l.e(charSequence, "imId");
                    Participant.C3848b c3848b = new Participant.C3848b(3);
                    c3848b.f11598e = charSequence;
                    c3848b.f11596c = charSequence;
                    c3848b.f11605l = null;
                    c3848b.f11606m = null;
                    c3848b.f11600g = null;
                    Participant m35443a = c3848b.m35443a();
                    s1.z.c.l.d(m35443a, "Participant.Builder(True…\n                .build()");
                    Intent putExtra = new Intent(context, ConversationActivity.class).putExtra("participants", new Participant[]{m35443a}).putExtra("is_hidden_number_intent", true);
                    s1.z.c.l.d(putExtra, "Intent(context, Conversa…DDEN_NUMBER_INTENT, true)");
                    view$OnClickListenerC12763k3.startActivity(putExtra);
                }
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* renamed from: qB */
    public final void m22674qB() {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = "Enter LeadGen ID";
        g_a.m3654o(C2752R.layout.qa_ad_leadgen_input_dialog);
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.r1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                Dialog dialog = (Dialog) dialogInterface;
                String charSequence = ((TextView) dialog.findViewById(C2752R.C2754id.debugInput)).getText().toString();
                SwitchCompat switchCompat = (SwitchCompat) dialog.findViewById(C2752R.C2754id.debugSwitchLeadgen);
                if (!TextUtils.isEmpty(charSequence)) {
                    view$OnClickListenerC12763k3.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(switchCompat.isChecked() ? C22128a.m8543z2("truecaller://offline_leadgen/", charSequence) : C22128a.m8543z2("truecaller://online_leadgen/", charSequence))));
                } else {
                    C22128a.m8549y0(view$OnClickListenerC12763k3, "Empty ID!", 0);
                }
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* renamed from: rB */
    public final void m22673rB() {
        View inflate = LayoutInflater.from(getContext()).inflate(C2752R.layout.qa_voip_override_id_expiration, (ViewGroup) getView(), false);
        final EditText editText = (EditText) inflate.findViewById(C2752R.C2754id.debugOwnIdExpiration);
        Long mo24170w = this.f37171R.mo24170w();
        if (mo24170w != null) {
            long longValue = mo24170w.longValue() - (System.currentTimeMillis() / 1000);
            if (longValue > 0) {
                editText.setHint(longValue + " seconds are left");
            } else {
                editText.setHint("Already expired.");
            }
        }
        g$a g_a = new g$a(getContext());
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f154d = "Voip id expiration";
        c0037b.f171u = inflate;
        c0037b.f170t = 0;
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.b0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                EditText editText2 = editText;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                String trim = editText2.getText().toString().trim();
                if (trim.isEmpty()) {
                    view$OnClickListenerC12763k3.f37171R.mo24174s(null);
                    Toast.makeText(view$OnClickListenerC12763k3.getContext(), "Custom own voip id expiration is cleared.", 1).show();
                    return;
                }
                Long valueOf = Long.valueOf(Long.parseLong(trim));
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                view$OnClickListenerC12763k3.f37171R.mo24174s(Long.valueOf(valueOf.longValue() + currentTimeMillis));
                Context context = view$OnClickListenerC12763k3.getContext();
                Toast.makeText(context, "Own voip id will be expired in " + valueOf + " seconds.", 1).show();
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* renamed from: sB */
    public final void m22672sB() {
        View inflate = LayoutInflater.from(getContext()).inflate(C2752R.layout.qa_voip_override_rtm_not_token, (ViewGroup) getView(), false);
        final EditText editText = (EditText) inflate.findViewById(C2752R.C2754id.debugRtmToken);
        editText.setText(C15571h.m18647d("qa_voip_notification_rtm_token"));
        g$a g_a = new g$a(getContext());
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f154d = "New RTM token";
        c0037b.f171u = inflate;
        c0037b.f170t = 0;
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.g0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                EditText editText2 = editText;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                C15571h.m18627x("qa_voip_notification_rtm_token", editText2.getText().toString().trim());
                Toast.makeText(view$OnClickListenerC12763k3.getContext(), "Token has been overridden.", 0).show();
            }
        });
        g_a.m3662g(2131887867, null);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: e.a.e.a.t1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                C15571h.m18630u("qa_voip_notification_rtm_token");
                Toast.makeText(view$OnClickListenerC12763k3.getContext(), "Token has been cleared.", 0).show();
            }
        };
        AlertController.C0037b c0037b2 = g_a.f70854a;
        c0037b2.f161k = "Clear";
        c0037b2.f162l = onClickListener;
        g_a.m3652q();
    }

    /* renamed from: tB */
    public final void m22671tB() {
        File[] listFiles;
        try {
            File parentFile = getContext().getDatabasePath("test.db").getParentFile();
            Class<?> cls = Class.forName("android.os.FileUtils");
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("setPermissions", String.class, cls2, cls2, cls2);
            TreeSet treeSet = new TreeSet();
            for (File file : parentFile.listFiles()) {
                if (file.getName().endsWith(".db")) {
                    method.invoke(null, file.getAbsolutePath(), 420, -1, -1);
                    treeSet.add(file.getAbsolutePath());
                    String str = "File permissions changed for " + file;
                }
            }
            if (treeSet.isEmpty()) {
                return;
            }
            Toast.makeText(getContext(), "Permissions changed for: " + TextUtils.join(",", treeSet), 1).show();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: uB */
    public final void m22670uB() {
        AlarmReceiver.AlarmType[] values = AlarmReceiver.AlarmType.values();
        for (int i = 0; i < 9; i++) {
            C15571h.m18625z(values[i].name(), 0L);
        }
        AlarmReceiver.m34773a(getContext(), false);
    }

    /* renamed from: vB */
    public final void m22669vB() {
        this.f37169P.m19732a();
        Toast.makeText(getContext(), "Contacts settings reseted", 1).show();
    }

    /* renamed from: wB */
    public final void m22668wB() {
        this.f37196n.remove("lastCallMadeWithTcTime");
        this.f37196n.remove("lastDialerPromotionTime");
    }

    /* renamed from: xB */
    public final void m22667xB() {
        boolean z;
        if (C12864a2.m22547k(getContext())) {
            AbstractC15539j2 mo10154s = TrueApp.m36032b0().mo10154s();
            mo10154s.mo12471Z0().mo11854a().mo16223y();
            SyncPhoneBookService.m34744a(getContext(), false);
            mo10154s.mo12453a7().mo11854a().mo31698b(true);
            z = true;
        } else {
            z = false;
        }
        C15248e.m19004a(getContext()).reset();
        if (z) {
            C22128a.m8549y0(this, "Provider has been reset, syncing call log and phone book", 0);
        } else {
            C22128a.m8549y0(this, "Could not reset provider", 1);
        }
    }

    /* renamed from: yB */
    public final void m22666yB() {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f154d = "Enter call me back test number";
        g_a.m3654o(C2752R.layout.qa_callmeback_input_dialog);
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.g
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC12763k3 view$OnClickListenerC12763k3 = View$OnClickListenerC12763k3.this;
                Objects.requireNonNull(view$OnClickListenerC12763k3);
                String charSequence = ((TextView) ((Dialog) dialogInterface).findViewById(C2752R.C2754id.etCallMeBackNumberInput)).getText().toString();
                if (!TextUtils.isEmpty(charSequence)) {
                    view$OnClickListenerC12763k3.f37191k0.mo29116f(charSequence);
                    Toast.makeText(view$OnClickListenerC12763k3.getContext(), "Call me back number set", 0).show();
                }
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* renamed from: zB */
    public final void m22665zB(boolean z) {
        C19663q0 c19663q0 = new C19663q0(this.f37164K);
        for (int i = 0; i < 9; i++) {
            c19663q0.mo13033c(new String[]{"featureReferralNavigationDrawer", "featureReferralDeeplink", "featureContactDetail", "featureAftercall", "featureAftercallSaveContact", "featureGoPro", "featurePushNotification", "featureReferralDeeplink", "featureReferralAfterCallPromo"}[i], z);
        }
    }
}
