package p459j.p460a.p474c0.p491g.p495d0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.mopub.common.Constants;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogView;
import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import gogolook.callgogolook2.messaging.scan.p077ui.MessageScanActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.p074ad.AdDataSource;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import gogolook.callgogolook2.setting.SettingsActivity;
import gogolook.callgogolook2.vas.main.VasDetectionActivity;
import gogolook.callgogolook2.vas.util.SimpleVasInfoPack;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p081h.p160h.p161a.EnumC6184a;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e;
import p459j.p460a.p521j0.p529x.C12754a;
import p459j.p460a.p521j0.p529x.C12755b;
import p459j.p460a.p521j0.p529x.C12758e;
import p459j.p460a.p521j0.p529x.C12771h;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p521j0.p529x.C12817p;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14131q4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p589f5.C14005a;
import p459j.p460a.p604y0.p610e.C14568b;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p632u.C15012h0;
import p626l.p632u.C15013i;
import p626l.p641z.p642c.AbstractC15125s;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u001a\u0018��2\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0081\u0001\u0010\r\u001a\u00020\u000e2w\u0010\u000f\u001as\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u000e0\u0010H\u0002J\b\u0010\u001a\u001a\u00020\u000eH\u0002J\u0012\u0010\u001b\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u001d\u001a\u00020\u000eH\u0016J \u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!H\u0002JT\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u001f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010 \u001a\u00020!2\b\b\u0001\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020(H\u0002J\b\u0010*\u001a\u00020+H\u0007J\u0018\u0010,\u001a\u00020\u00152\u0006\u0010$\u001a\u00020%2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020(2\u0006\u00100\u001a\u00020(H\u0007J\u0010\u00101\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\b\u00102\u001a\u00020\u000eH\u0016J\u0010\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u00020#H\u0003J\u0010\u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u00020(H\u0016J\b\u00107\u001a\u00020\u000eH\u0016JL\u00108\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010 \u001a\u00020!2\u0006\u0010&\u001a\u00020\u001f2\b\b\u0001\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020(H\u0002J\u0010\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u0015H\u0016J\b\u0010;\u001a\u00020\u000eH\u0016J\b\u0010<\u001a\u00020=H\u0016J\b\u0010>\u001a\u00020=H\u0016J\b\u0010?\u001a\u00020\u000eH\u0016J\b\u0010@\u001a\u00020\u000eH\u0016J\b\u0010A\u001a\u00020\u000eH\u0016J\b\u0010B\u001a\u00020\u000eH\u0016J\u0010\u0010C\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020%H\u0016J\b\u0010D\u001a\u00020\u000eH\u0016JN\u0010E\u001a\u00020\u000e2\b\u0010F\u001a\u0004\u0018\u00010\u00152\b\u0010G\u001a\u0004\u0018\u00010\u00152\u0006\u0010H\u001a\u00020=2\u0006\u0010I\u001a\u00020=2\b\u0010J\u001a\u0004\u0018\u00010\u00152\u0006\u0010K\u001a\u00020=2\u0006\u0010L\u001a\u00020=2\u0006\u0010M\u001a\u00020=H\u0007J\u0010\u0010N\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010O\u001a\u00020=2\u0006\u0010P\u001a\u00020(H\u0002J\u0012\u0010Q\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010R\u001a\u00020\u000e2\u0006\u0010S\u001a\u00020\u0007H\u0016J\"\u0010T\u001a\u00020\u000e2\u0006\u0010K\u001a\u00020=2\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010.H\u0002J\u0010\u0010U\u001a\u00020\u000e2\u0006\u0010V\u001a\u00020\u0015H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006W"}, m815d2 = {"Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogPresenter;", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Presenter;", "host", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Host;", "smsView", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$SmsView;", "smsData", "Lgogolook/callgogolook2/phone/sms/WhoscallSmsData;", "adDataSource", "Lgogolook/callgogolook2/ad/AdDataSource;", "(Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Host;Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$SmsView;Lgogolook/callgogolook2/phone/sms/WhoscallSmsData;Lgogolook/callgogolook2/ad/AdDataSource;)V", "getHost", "()Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Host;", "canPerformReport", "", "perform", "Lkotlin/Function5;", "Lgogolook/callgogolook2/gson/RowInfo;", "Lkotlin/ParameterName;", "name", "rowInfo", "", "senderAddress", "senderAddressE164", "conversationId", "content", "cancelNotificationWithTag", MraidParser.MRAID_COMMAND_CLOSE, "action", "copyOtpToClipboard", "getDefaultDataUserReport", "Lgogolook/callgogolook2/gson/DataUserReport;", "numberInfo", "Lgogolook/callgogolook2/gson/NumberInfo;", "getReportDialogActivityIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "userReport", "reportSource", "", "smsFilterType", "getScanMessageTrackingContent", "Lgogolook/callgogolook2/util/urlscan/MessageScanUtils$UrlScanTrackingContent;", "getSubscriptionString", "vasInfoPack", "Lgogolook/callgogolook2/vas/util/SimpleVasInfoPack;", "getUrlScanResultImage", SmsUrlScanResultRealmObject.RATING, "getVasScanMessageIntent", "goSmsSetting", "launchActivityWithParent", "targetIntent", "launchConversationPage", "gfSource", "launchNumberDetailPage", "launchReportActivity", "launchUrlScanPage", "fromSource", "launchVasScan", "needToShowAd", "", "performCallAction", "performMyReport", "performReport", "performReportNotSpam", "performReportSpam", "requestAd", "scanMessage", "setButtons", "mySpamReason", "otpStr", "isSpoofNumber", "isSpamNumber", ContactRealmObject.CONTACT_ID, "isShowContentDirectly", "isSmsBlockingEnabled", "isVasMessage", "setupSubtitle", "shouldShowContentFilterResult", "contentType", "trackSmsDataBeforeClose", "updateData", "newSmsData", "updateScanResultUi", "urlClicked", "url", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.g.d0.g */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/g.class */
public final class C12001g implements AbstractC11996e {

    /* renamed from: a */
    public final AbstractC11994c f26889a;

    /* renamed from: b */
    public final AbstractC11999f f26890b;

    /* renamed from: c */
    public C12817p f26891c;

    /* renamed from: d */
    public final AdDataSource f26892d;

    /* renamed from: j.a.c0.g.d0.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/g$a.class */
    public static final class C12002a extends AbstractC15150l implements AbstractC15125s<RowInfo, String, String, String, String, C14989s> {
        public C12002a() {
            super(5);
        }

        @Override // p626l.p641z.p642c.AbstractC15125s
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C14989s mo422a(RowInfo rowInfo, String str, String str2, String str3, String str4) {
            m7562a(rowInfo, str, str2, str3, str4);
            return C14989s.f33022a;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final void m7562a(RowInfo rowInfo, String str, String str2, String str3, String str4) {
            C15149k.m377b(rowInfo, "rowInfo");
            C15149k.m377b(str, "senderAddress");
            C15149k.m377b(str2, "senderAddressE164");
            C15149k.m377b(str4, "content");
            C12001g gVar = C12001g.this;
            NumberInfo g = rowInfo.m28226g();
            C15149k.m383a((Object) g, "rowInfo.numberInfo");
            DataUserReport a = gVar.m7584a(str, str2, g);
            C12001g gVar2 = C12001g.this;
            NumberInfo g2 = rowInfo.m28226g();
            C15149k.m383a((Object) g2, "rowInfo.numberInfo");
            C12817p pVar = C12001g.this.f26891c;
            gVar2.m7583a(str, str2, str4, str3, g2, a, 1, pVar != null ? pVar.m5220b() : -1);
        }
    }

    /* renamed from: j.a.c0.g.d0.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/g$b.class */
    public static final class C12003b extends AbstractC15150l implements AbstractC15125s<RowInfo, String, String, String, String, C14989s> {
        public C12003b() {
            super(5);
        }

        @Override // p626l.p641z.p642c.AbstractC15125s
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C14989s mo422a(RowInfo rowInfo, String str, String str2, String str3, String str4) {
            m7561a(rowInfo, str, str2, str3, str4);
            return C14989s.f33022a;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final void m7561a(RowInfo rowInfo, String str, String str2, String str3, String str4) {
            C15149k.m377b(rowInfo, "rowInfo");
            C15149k.m377b(str, "senderAddress");
            C15149k.m377b(str2, "senderAddressE164");
            C15149k.m377b(str4, "content");
            C12001g gVar = C12001g.this;
            NumberInfo g = rowInfo.m28226g();
            C15149k.m383a((Object) g, "rowInfo.numberInfo");
            DataUserReport a = gVar.m7584a(str, str2, g);
            C12001g gVar2 = C12001g.this;
            NumberInfo g2 = rowInfo.m28226g();
            C15149k.m383a((Object) g2, "rowInfo.numberInfo");
            C12817p pVar = C12001g.this.f26891c;
            gVar2.m7583a(str, str2, str4, str3, g2, a, 1, pVar != null ? pVar.m5220b() : -1);
        }
    }

    /* renamed from: j.a.c0.g.d0.g$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/g$c.class */
    public static final class C12004c extends AbstractC15150l implements AbstractC15125s<RowInfo, String, String, String, String, C14989s> {
        public C12004c() {
            super(5);
        }

        @Override // p626l.p641z.p642c.AbstractC15125s
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C14989s mo422a(RowInfo rowInfo, String str, String str2, String str3, String str4) {
            m7560a(rowInfo, str, str2, str3, str4);
            return C14989s.f33022a;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final void m7560a(RowInfo rowInfo, String str, String str2, String str3, String str4) {
            C15149k.m377b(rowInfo, "rowInfo");
            C15149k.m377b(str, "senderAddress");
            C15149k.m377b(str2, "senderAddressE164");
            C15149k.m377b(str4, "content");
            C12001g gVar = C12001g.this;
            NumberInfo g = rowInfo.m28226g();
            C15149k.m383a((Object) g, "rowInfo.numberInfo");
            DataUserReport a = gVar.m7584a(str, str2, g);
            NumberInfo g2 = rowInfo.m28226g();
            C15149k.m383a((Object) g2, "rowInfo.numberInfo");
            a.m28466b(0, g2.m28383M());
            C12001g gVar2 = C12001g.this;
            NumberInfo g3 = rowInfo.m28226g();
            C15149k.m383a((Object) g3, "rowInfo.numberInfo");
            C12817p pVar = C12001g.this.f26891c;
            gVar2.m7583a(str, str2, str4, str3, g3, a, 2, pVar != null ? pVar.m5220b() : -1);
        }
    }

    /* renamed from: j.a.c0.g.d0.g$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/g$d.class */
    public static final class C12005d extends AbstractC15150l implements AbstractC15125s<RowInfo, String, String, String, String, C14989s> {
        public C12005d() {
            super(5);
        }

        @Override // p626l.p641z.p642c.AbstractC15125s
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C14989s mo422a(RowInfo rowInfo, String str, String str2, String str3, String str4) {
            m7559a(rowInfo, str, str2, str3, str4);
            return C14989s.f33022a;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final void m7559a(RowInfo rowInfo, String str, String str2, String str3, String str4) {
            C15149k.m377b(rowInfo, "rowInfo");
            C15149k.m377b(str, "senderAddress");
            C15149k.m377b(str2, "senderAddressE164");
            C15149k.m377b(str4, "content");
            C12001g gVar = C12001g.this;
            NumberInfo g = rowInfo.m28226g();
            C15149k.m383a((Object) g, "rowInfo.numberInfo");
            DataUserReport a = gVar.m7584a(str, str2, g);
            NumberInfo g2 = rowInfo.m28226g();
            C15149k.m383a((Object) g2, "rowInfo.numberInfo");
            a.m28466b(1, g2.m28383M());
            Context context = C12001g.this.m7563l().getContext();
            C12817p pVar = C12001g.this.f26891c;
            C12928g.m4987a(context, false, false, true, str, null, 2, a, null, false, true, null, str3, str4, pVar != null ? pVar.m5220b() : -1);
        }
    }

    public C12001g(AbstractC11994c cVar, AbstractC11999f fVar, C12817p pVar, AdDataSource adDataSource) {
        C15149k.m377b(cVar, "host");
        C15149k.m377b(fVar, "smsView");
        C15149k.m377b(adDataSource, "adDataSource");
        this.f26889a = cVar;
        this.f26890b = fVar;
        this.f26891c = pVar;
        this.f26892d = adDataSource;
    }

    /* renamed from: a */
    public final Intent m7591a(Context context, String str, String str2, String str3, DataUserReport dataUserReport, String str4, NumberInfo numberInfo, int i, int i2) {
        Intent intent = new Intent(context, ReportDialogActivity.class);
        Bundle bundle = new Bundle();
        bundle.putBoolean(NovaHomeBadger.TAG, true);
        bundle.putString("tagE164", str2);
        bundle.putString("tagNumber", str);
        List<String> h = numberInfo.m28324h();
        C15149k.m383a((Object) h, "numberInfo.askNames");
        Object[] array = h.toArray(new String[0]);
        if (array != null) {
            bundle.putStringArray("tagSuggest", (String[]) array);
            bundle.putString("dataUserReport", DataUserReport.m28451k(dataUserReport));
            bundle.putInt("blockCtype", 2);
            if (C13891a.m3143s()) {
                bundle.putString("smsReportConversationId", str4);
                bundle.putInt("smsReportSource", i);
                bundle.putString("smsReportSmsContent", str3);
                bundle.putInt("smsReportFilterType", i2);
            }
            intent.putExtras(bundle);
            intent.setFlags(268435456);
            return intent;
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* renamed from: a */
    public final DataUserReport m7584a(String str, String str2, NumberInfo numberInfo) {
        String C = numberInfo.m28393C();
        if (C == null) {
            C = "";
        }
        String M = numberInfo.m28383M();
        if (M == null) {
            M = "";
        }
        return new DataUserReport(str, str2, C, M, DataUserReport.Source.SMS);
    }

    /* renamed from: a */
    public final String m7592a(Context context, SimpleVasInfoPack simpleVasInfoPack) {
        String str;
        if (simpleVasInfoPack.f13007a == C14568b.f32547n) {
            if (simpleVasInfoPack.f13009c <= 0 || simpleVasInfoPack.f13010d <= 0) {
                str = context.getString(R$string.vas_SMS_hint_subscription_noneprice);
            } else {
                C15136c0 c0Var = C15136c0.f33133a;
                String string = context.getString(R$string.vas_SMS_hint_subscription_price);
                C15149k.m383a((Object) string, "context.getString(R.stri…_hint_subscription_price)");
                Object[] objArr = {simpleVasInfoPack.m25941a(), context.getString(simpleVasInfoPack.f13010d)};
                str = String.format(string, Arrays.copyOf(objArr, objArr.length));
                C15149k.m383a((Object) str, "java.lang.String.format(format, *args)");
            }
            C15149k.m383a((Object) str, "if (price <= 0 || period…riod));\n                }");
        } else {
            str = context.getString(R$string.vas_SMS_hint_promotion);
            C15149k.m383a((Object) str, "context.getString(R.string.vas_SMS_hint_promotion)");
        }
        return str;
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: a */
    public void mo7594a(int i) {
        String h;
        int i2;
        C12817p pVar = this.f26891c;
        if (pVar != null && (h = pVar.m5214h()) != null) {
            if (C12810o.m5235j()) {
                C12817p pVar2 = this.f26891c;
                i2 = pVar2 != null ? pVar2.m5220b() : 1;
            } else {
                i2 = -1;
            }
            if (C12810o.m5244c()) {
                Intent a = AbstractC12126w.m7095a().mo7084a(this.f26889a.getContext(), i, h, i2, (String) null);
                C15149k.m383a((Object) a, "UIIntents\n              …                    null)");
                m7590a(a);
            } else if (h != null) {
                C12810o.m5258a(this.f26889a.getContext(), h, (String) null);
            }
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: a */
    public void mo7593a(Context context) {
        C15149k.m377b(context, "context");
        if (mo7570e()) {
            Set<? extends EnumC6184a> a = C15012h0.m594a((Object[]) new EnumC6184a[]{EnumC6184a.NATIVE});
            if (AdUtils.m28819a()) {
                a.add(EnumC6184a.AOTTER_TREK);
            }
            this.f26892d.mo28869a(context, AdUnit.SMS, a);
        }
    }

    /* renamed from: a */
    public final void m7590a(Intent intent) {
        Intent intent2 = new Intent(this.f26889a.getContext(), MainActivity.class);
        intent2.putExtra("goto", "smslog");
        intent2.putExtra("from", "ndp");
        try {
            C14217x3.m2187a(this.f26889a.getContext(), intent2, intent, 0).send();
        } catch (PendingIntent.CanceledException e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: a */
    public void mo7586a(C12817p pVar) {
        NumberInfo g;
        NumberInfo g2;
        NumberInfo.Whoscall whoscall;
        NumberInfo.Whoscall.Spam spam;
        C15149k.m377b(pVar, "newSmsData");
        C12817p pVar2 = this.f26891c;
        if (pVar2 != null) {
            if (!(!pVar2.m5216f().m5422b(pVar.m5216f()) || !pVar2.m5216f().m5424a(pVar.m5216f()))) {
                pVar2 = null;
            }
            if (pVar2 != null) {
                C12771h B = this.f26889a.mo7619B();
                AbstractC11996e.C11998b.m7614b(this, null, 1, null);
                Context context = this.f26889a.getContext();
                if (context != null) {
                    C12771h.m5383a(B, context, null, 2, null);
                    B.m5379b(context);
                }
            }
        }
        Context context2 = this.f26889a.getContext();
        boolean z = pVar.m5212j() != null;
        boolean q = C12810o.m5228q();
        String a = C11522d.m9290a(pVar.m5214h(), pVar.m5215g());
        AbstractC11999f fVar = this.f26890b;
        RowInfo g3 = pVar.m5215g();
        CharSequence charSequence = a;
        if (g3 != null) {
            NumberInfo g4 = g3.m28226g();
            charSequence = a;
            if (g4 != null) {
                NumberInfo.Whoscall whoscall2 = g4.whoscall;
                charSequence = a;
                if (whoscall2 != null) {
                    charSequence = a;
                    if (whoscall2.favored) {
                        charSequence = CallUtils.m26593a(context2, (int) R$drawable.call_favorite_green_icon, (CharSequence) a);
                    }
                }
            }
        }
        C15149k.m383a((Object) charSequence, "if (smsData.rowInfo?.num…                } else it");
        fVar.setTitle(charSequence);
        m7576b(pVar);
        this.f26890b.mo7612a(pVar.m5215g(), pVar.m5224a());
        this.f26890b.mo7608a(pVar.m5216f().m5423b(), q, !z);
        m7580a(q, pVar, pVar.m5212j());
        RowInfo g5 = pVar.m5215g();
        String str = (g5 == null || (g2 = g5.m28226g()) == null || (whoscall = g2.whoscall) == null || (spam = whoscall.mySpam) == null) ? null : spam.reason;
        if (str == null) {
            str = "";
        }
        String a2 = C14093n4.m2578a(str);
        String d = pVar.m5216f().m5420d();
        RowInfo g6 = pVar.m5215g();
        RowInfo.Primary.Type type = null;
        if (g6 != null) {
            RowInfo.Primary h = g6.m28224h();
            type = null;
            if (h != null) {
                type = h.type;
            }
        }
        boolean z2 = type == RowInfo.Primary.Type.SPOOF;
        RowInfo g7 = pVar.m5215g();
        m7582a(a2, d, z2, (g7 == null || (g = g7.m28226g()) == null || !g.m28329f0()) ? false : true, pVar.m5224a(), q, C12810o.m5234k() && (C14017g4.m2831E() || C14017g4.m2835A()), z);
        this.f26891c = pVar;
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: a */
    public void mo7585a(String str) {
        if ((C15149k.m384a((Object) str, (Object) MraidParser.MRAID_COMMAND_CLOSE) || C15149k.m384a((Object) str, (Object) "back")) && C11507b.m9467a(C13978e.f31386a, "isFirstSmsDialog", (Boolean) null, 2, (Object) null) && C14217x3.m2107z()) {
            this.f26890b.mo7599h();
            C13978e.f31386a.m9459a("isFirstSmsDialog", (String) false);
            return;
        }
        mo7575b(str);
        this.f26889a.mo7618C();
        if (C15149k.m384a((Object) str, (Object) "report") || C15149k.m384a((Object) str, (Object) "has_reported") || C15149k.m384a((Object) str, (Object) "spam") || C15149k.m384a((Object) str, (Object) "not_spam") || C15149k.m384a((Object) str, (Object) "reply") || C15149k.m384a((Object) str, (Object) "content") || C15149k.m384a((Object) str, (Object) "scan_url") || C15149k.m384a((Object) str, (Object) "view_message_to_scp")) {
            m7564k();
        }
    }

    /* renamed from: a */
    public final void m7583a(String str, String str2, String str3, String str4, NumberInfo numberInfo, DataUserReport dataUserReport, int i, int i2) {
        Context context = this.f26889a.getContext();
        C14191v.m2257a(context, m7591a(context, str, str2, str3, dataUserReport, str4, numberInfo, i, i2), null, 2, null);
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m7582a(String str, String str2, boolean z, boolean z2, String str3, boolean z3, boolean z4, boolean z5) {
        C11993b[] bVarArr;
        C11993b bVar;
        C11993b bVar2;
        C11993b bVar3;
        C11993b bVar4;
        C11993b bVar5;
        if (z) {
            C11993b[] bVarArr2 = new C11993b[3];
            if (str2 != null) {
                if (str2.length() > 0) {
                    bVar5 = this.f26890b.mo7601f();
                    bVarArr2[0] = bVar5;
                    bVarArr2[1] = this.f26890b.mo7603d();
                    bVarArr2[2] = null;
                    bVarArr = bVarArr2;
                }
            }
            bVar5 = z4 ? this.f26890b.mo7613a() : this.f26890b.mo7605c();
            bVarArr2[0] = bVar5;
            bVarArr2[1] = this.f26890b.mo7603d();
            bVarArr2[2] = null;
            bVarArr = bVarArr2;
        } else if (z5) {
            bVarArr = new C11993b[]{this.f26890b.mo7598i(), null, null};
        } else if (!z3) {
            C11993b[] bVarArr3 = new C11993b[3];
            if (str2 != null) {
                if (str2.length() > 0) {
                    bVar4 = this.f26890b.mo7601f();
                    bVarArr3[0] = bVar4;
                    bVarArr3[1] = this.f26890b.mo7597j();
                    bVarArr3[2] = null;
                    bVarArr = bVarArr3;
                }
            }
            bVar4 = this.f26890b.mo7596k();
            bVarArr3[0] = bVar4;
            bVarArr3[1] = this.f26890b.mo7597j();
            bVarArr3[2] = null;
            bVarArr = bVarArr3;
        } else {
            if (str3 != null) {
                if (str3.length() > 0) {
                    C11993b[] bVarArr4 = new C11993b[3];
                    if (str2 != null) {
                        if (str2.length() > 0) {
                            bVar3 = this.f26890b.mo7601f();
                            bVarArr4[0] = bVar3;
                            bVarArr4[1] = this.f26890b.mo7602e();
                            bVarArr4[2] = null;
                            bVarArr = bVarArr4;
                        }
                    }
                    bVar3 = this.f26890b.mo7596k();
                    bVarArr4[0] = bVar3;
                    bVarArr4[1] = this.f26890b.mo7602e();
                    bVarArr4[2] = null;
                    bVarArr = bVarArr4;
                }
            }
            if (str != null) {
                if (str.length() > 0) {
                    bVarArr = new C11993b[]{this.f26890b.mo7604c(str), null, null};
                }
            }
            if (z2) {
                C11993b[] bVarArr5 = new C11993b[3];
                if (str2 != null) {
                    if (str2.length() > 0) {
                        bVar2 = this.f26890b.mo7601f();
                        bVarArr5[0] = bVar2;
                        bVarArr5[1] = this.f26890b.mo7603d();
                        bVarArr5[2] = null;
                        bVarArr = bVarArr5;
                    }
                }
                bVar2 = z4 ? this.f26890b.mo7613a() : this.f26890b.mo7605c();
                bVarArr5[0] = bVar2;
                bVarArr5[1] = this.f26890b.mo7603d();
                bVarArr5[2] = null;
                bVarArr = bVarArr5;
            } else {
                C11993b[] bVarArr6 = new C11993b[3];
                if (str2 != null) {
                    if (str2.length() > 0) {
                        bVar = this.f26890b.mo7601f();
                        bVarArr6[0] = bVar;
                        bVarArr6[1] = this.f26890b.mo7602e();
                        bVarArr6[2] = this.f26890b.mo7600g();
                        bVarArr = bVarArr6;
                    }
                }
                bVar = this.f26890b.mo7596k();
                bVarArr6[0] = bVar;
                bVarArr6[1] = this.f26890b.mo7602e();
                bVarArr6[2] = this.f26890b.mo7600g();
                bVarArr = bVarArr6;
            }
        }
        this.f26889a.mo7619B().m5380a(bVarArr);
        this.f26890b.mo7610a((C11993b) C15013i.m585a(bVarArr, 0), (C11993b) C15013i.m585a(bVarArr, 1), (C11993b) C15013i.m585a(bVarArr, 2));
    }

    /* renamed from: a */
    public final void m7581a(AbstractC15125s<? super RowInfo, ? super String, ? super String, ? super String, ? super String, C14989s> sVar) {
        RowInfo g;
        String h;
        C12817p pVar = this.f26891c;
        if (pVar != null && (g = pVar.m5215g()) != null && (h = pVar.m5214h()) != null) {
            String l = C14108o4.m2474l(h);
            String b = pVar.m5216f().m5423b();
            C15149k.m383a((Object) l, "senderAddressE164");
            sVar.mo422a(g, h, l, pVar.m5219c(), b);
        }
    }

    /* renamed from: a */
    public final void m7580a(boolean z, C12817p pVar, SimpleVasInfoPack simpleVasInfoPack) {
        SmsDialogView.AbstractC4788c cVar;
        Context context = this.f26889a.getContext();
        AbstractC11999f fVar = this.f26890b;
        Integer num = null;
        if (simpleVasInfoPack != null) {
            cVar = new SmsDialogView.AbstractC4788c.C4795g(m7592a(context, simpleVasInfoPack));
        } else if (!z) {
            cVar = null;
        } else if (!m7573c(pVar.m5220b())) {
            cVar = null;
            if (C12810o.m5243c(pVar.m5216f().m5423b())) {
                if (C12810o.m5239f()) {
                    cVar = new SmsDialogView.AbstractC4788c.C4790b(context);
                } else if (!C14005a.m2894a()) {
                    cVar = new SmsDialogView.AbstractC4788c.C4792d(context);
                } else {
                    SmsDialogView.AbstractC4788c.C4794f fVar2 = new SmsDialogView.AbstractC4788c.C4794f(context);
                    C14005a.C14007b i = pVar.m5213i();
                    Integer valueOf = i != null ? Integer.valueOf(i.m2855f()) : null;
                    cVar = fVar2;
                    if (valueOf != null) {
                        Integer valueOf2 = Integer.valueOf(C14131q4.m2409b(C14131q4.m2413a(valueOf.intValue())));
                        if (!(valueOf2.intValue() > 0)) {
                            valueOf2 = null;
                        }
                        cVar = fVar2;
                        if (valueOf2 != null) {
                            int intValue = valueOf2.intValue();
                            int b = m7578b(valueOf.intValue());
                            String string = context.getString(intValue);
                            C15149k.m383a((Object) string, "context.getString(it)");
                            cVar = new SmsDialogView.AbstractC4788c.C4793e(Integer.valueOf(b), string, C14131q4.m2407c(valueOf.intValue()));
                            C14989s sVar = C14989s.f33022a;
                        }
                    }
                }
            }
        } else if (pVar.m5220b() == 0) {
            cVar = new SmsDialogView.AbstractC4788c.C4789a(context);
        } else if (C12810o.m5243c(pVar.m5216f().m5423b())) {
            String string2 = context.getString(R$string.sms_alert_spam);
            C15149k.m383a((Object) string2, "context.getString(R.string.sms_alert_spam)");
            cVar = new SmsDialogView.AbstractC4788c.C4791c(Integer.valueOf((int) R$drawable.sms_caution_url_icon), string2);
            if (!C14005a.m2894a()) {
                String string3 = context.getString(R$string.sms_alert_spam_haveurl);
                C15149k.m383a((Object) string3, "context.getString(R.string.sms_alert_spam_haveurl)");
                cVar = new SmsDialogView.AbstractC4788c.C4791c(Integer.valueOf((int) R$drawable.sms_caution_url_icon), string3);
            } else {
                C14005a.C14007b i2 = pVar.m5213i();
                if (i2 != null) {
                    num = Integer.valueOf(i2.m2855f());
                }
                if (num == null) {
                    String string4 = context.getString(R$string.sms_dialog_alert_spam_urlscanning);
                    C15149k.m383a((Object) string4, "context.getString(R.stri…g_alert_spam_urlscanning)");
                    cVar = new SmsDialogView.AbstractC4788c.C4791c(Integer.valueOf((int) R$drawable.sms_caution_url_icon), string4);
                } else {
                    C14005a.C14007b i3 = pVar.m5213i();
                    if (i3 != null) {
                        String string5 = context.getString(C14131q4.m2412a(C14131q4.m2413a(i3.m2855f()), 2));
                        C15149k.m383a((Object) string5, "context.getString(getRes…        SMS_FILTER_SPAM))");
                        cVar = new SmsDialogView.AbstractC4788c.C4791c(Integer.valueOf((int) R$drawable.sms_caution_url_icon), string5);
                        C14989s sVar2 = C14989s.f33022a;
                    }
                }
            }
        } else {
            String string6 = context.getString(R$string.sms_alert_spam);
            C15149k.m383a((Object) string6, "context.getString(R.string.sms_alert_spam)");
            cVar = new SmsDialogView.AbstractC4788c.C4791c(Integer.valueOf((int) R$drawable.sms_caution_url_icon), string6);
        }
        fVar.mo7611a(cVar);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: a */
    public boolean mo7595a() {
        RowInfo g;
        String f;
        C12817p pVar = this.f26891c;
        if (pVar == null || (g = pVar.m5215g()) == null || (f = g.m28228f()) == null) {
            return false;
        }
        Context context = this.f26889a.getContext();
        if (!C14191v.m2255b(context)) {
            context = null;
        }
        return context != null ? C14217x3.m2145e(context, f, 15) : true;
    }

    @VisibleForTesting
    /* renamed from: b */
    public final int m7578b(int i) {
        return (1 == i || 2 == i || 4 == i) ? R$drawable.sms_caution_url_icon : 3 == i ? R$drawable.ic_smsdialog_scan_warning : R$drawable.ic_smsdialog_scan;
    }

    /* renamed from: b */
    public final Intent m7577b(Context context) {
        Intent intent = new Intent(context, VasDetectionActivity.class);
        intent.putExtra("vas_gf_source", 2);
        intent.addFlags(268435456);
        return intent;
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: b */
    public void mo7579b() {
        String h;
        C12817p pVar = this.f26891c;
        if (pVar != null && (h = pVar.m5214h()) != null) {
            NumberDetailActivity.C4873a aVar = NumberDetailActivity.f12014n;
            Context context = this.f26889a.getContext();
            Bundle bundle = new Bundle();
            bundle.putBoolean("show_history", true);
            m7590a(aVar.m26841a(context, h, null, bundle, "FROM_Sms_Dialog"));
        }
    }

    /* renamed from: b */
    public final void m7576b(C12817p pVar) {
        String str;
        RowInfo.Secondary i;
        AbstractC11999f fVar = this.f26890b;
        String a = pVar.m5224a();
        if (!(a == null || a.length() == 0)) {
            str = C14108o4.m2493a(pVar.m5214h(), true, false);
        } else {
            RowInfo g = pVar.m5215g();
            str = (g == null || (i = g.m28223i()) == null) ? null : i.name;
            if (str == null) {
                str = "";
            }
        }
        C15149k.m383a((Object) str, "if (!smsData.contactId.i…Empty()\n                }");
        fVar.mo7609a(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fb  */
    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo7575b(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p491g.p495d0.C12001g.mo7575b(java.lang.String):void");
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: c */
    public void mo7574c() {
        m7581a(new C12002a());
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: c */
    public void mo7572c(String str) {
        C15149k.m377b(str, "fromSource");
        C12817p pVar = this.f26891c;
        if (pVar != null) {
            Context context = this.f26889a.getContext();
            List<String> e = C14131q4.m2404e(pVar.m5216f().m5423b());
            String e2 = pVar.m5217e();
            String h = pVar.m5214h();
            String b = pVar.m5216f().m5423b();
            C15149k.m383a((Object) e, Constants.VIDEO_TRACKING_URLS_KEY);
            C14191v.m2257a(context, MessageScanActivity.f11267i.m27484a(context, new SmsMessage(e2, h, b, e), str), null, 2, null);
        }
    }

    /* renamed from: c */
    public final boolean m7573c(int i) {
        return (i == 0 || 2 == i) && (C12754a.m5431a() || C12758e.m5412d());
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: d */
    public void mo7571d() {
        Context context = this.f26889a.getContext();
        Intent intent = new Intent(this.f26889a.getContext(), SettingsActivity.class);
        intent.putExtra("action", "focus_smsdialog");
        intent.addFlags(335544320);
        C14191v.m2257a(context, intent, null, 2, null);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: e */
    public boolean mo7570e() {
        C12817p pVar = this.f26891c;
        boolean z = false;
        if (pVar != null) {
            AdStatusController c = AdStatusController.m28827c();
            C15149k.m383a((Object) c, "AdStatusController.getInstance()");
            z = false;
            if (c.m28831a()) {
                z = false;
                if (pVar.m5214h().length() > 0) {
                    String a = pVar.m5224a();
                    z = false;
                    if (AdUtils.m28807b(!(a == null || a.length() == 0))) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: f */
    public void mo7569f() {
        m7581a(new C12003b());
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: g */
    public void mo7568g() {
        m7581a(new C12005d());
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: h */
    public void mo7567h() {
        Context context = this.f26889a.getContext();
        C14191v.m2257a(context, m7577b(context), null, 2, null);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: i */
    public void mo7566i() {
        m7581a(new C12004c());
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e
    /* renamed from: j */
    public void mo7565j() {
        C12755b f;
        Context context = this.f26889a.getContext();
        C12817p pVar = this.f26891c;
        C12810o.m5260a(context, (pVar == null || (f = pVar.m5216f()) == null) ? null : f.m5420d());
    }

    /* renamed from: k */
    public final void m7564k() {
        String str = null;
        if (C12810o.m5232m()) {
            C12817p pVar = this.f26891c;
            if (pVar != null) {
                str = pVar.m5219c();
            }
        } else {
            C12817p pVar2 = this.f26891c;
            if (pVar2 != null) {
                str = pVar2.m5214h();
            }
        }
        if (str != null) {
            AbstractC11999f fVar = this.f26890b;
            String a = C11522d.m9287a(":sms:", str);
            C15149k.m383a((Object) a, "BugleNotifications.build…                  target)");
            fVar.mo7606b(a);
        }
    }

    /* renamed from: l */
    public final AbstractC11994c m7563l() {
        return this.f26889a;
    }
}
