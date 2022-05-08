package gogolook.callgogolook2.messaging.scan.p077ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelStore;
import com.mopub.common.Constants;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import gogolook.callgogolook2.util.control.VersionManager;
import kotlin.Metadata;
import p459j.p460a.p463b0.p464q.C11210y;
import p459j.p460a.p474c0.p483e.p484a.AbstractC11723a;
import p459j.p460a.p474c0.p483e.p484a.AbstractC11727d;
import p459j.p460a.p474c0.p483e.p484a.C11724b;
import p459j.p460a.p474c0.p483e.p484a.C11728e;
import p459j.p460a.p474c0.p483e.p485b.C11731b;
import p459j.p460a.p474c0.p483e.p485b.C11740f;
import p459j.p460a.p474c0.p483e.p487d.AbstractC11765h;
import p459j.p460a.p474c0.p483e.p487d.C11750a;
import p459j.p460a.p474c0.p483e.p487d.C11756d;
import p459j.p460a.p474c0.p483e.p487d.C11757e;
import p459j.p460a.p474c0.p483e.p487d.C11764g;
import p459j.p460a.p474c0.p483e.p487d.C11780p;
import p459j.p460a.p474c0.p483e.p487d.C11801t;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p539n.p540a.AbstractC13031b;
import p459j.p460a.p539n.p540a.C13030a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p572v0.AbstractC13701b;
import p459j.p460a.p572v0.C13687a;
import p459j.p460a.p572v0.p573c.AbstractC13717l;
import p459j.p460a.p572v0.p573c.C13718m;
import p459j.p460a.p572v0.p575e.C13727b;
import p459j.p460a.p582w0.C14191v;
import p626l.AbstractC14974f;
import p626l.C14976h;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� -2\u00020\u00012\u00020\u0002:\u0001-B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u0019H\u0016J\u0012\u0010\u001d\u001a\u00020\u00192\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0012\u0010 \u001a\u00020\u00192\b\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\b\u0010#\u001a\u00020\u0019H\u0014J\u0012\u0010$\u001a\u00020\u00192\b\u0010%\u001a\u0004\u0018\u00010\u001bH\u0002J\u0012\u0010&\u001a\u00020\u00192\b\u0010%\u001a\u0004\u0018\u00010\u001bH\u0002J\b\u0010'\u001a\u00020\u0017H\u0016J\u0010\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010+\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u001bH\u0002J\b\u0010,\u001a\u00020\u0019H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013¨\u0006."}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/MessageScanActivity;", "Lgogolook/callgogolook2/app/ActivityNavigator;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "dispatcherProvider", "Lgogolook/callgogolook2/coroutines/dispatcher/DispatcherProvider;", "smsScanRepository", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanRepository;", "smsUrlScanResultDataSource", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResultLocalDataSource;", "urlScanRemoteConfigDataSource", "Lgogolook/callgogolook2/urlscan/data/UrlScanRemoteConfigDataSource;", "urlScanRemoteDataSource", "Lgogolook/callgogolook2/urlscan/service/UrlScanRemoteDataSource;", "urlScanner", "Lgogolook/callgogolook2/urlscan/UrlScanner;", "viewModel", "Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;", "getViewModel", "()Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "checkAndHandleCloseAction", "", "doNavigation", "", "getCurrentFragment", "Landroidx/fragment/app/Fragment;", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "onResume", "pageTrackBackAction", "fragment", "pageTrackError", "shouldNavigate", "showErrorPage", "errorType", "Lgogolook/callgogolook2/messaging/scan/ui/Navigation$ErrorType;", "showPage", "showResultPage", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.messaging.scan.ui.MessageScanActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/scan/ui/MessageScanActivity.class */
public final class MessageScanActivity extends AppCompatActivity implements AbstractC12474a {

    /* renamed from: h */
    public static final /* synthetic */ AbstractC14906i[] f11266h;

    /* renamed from: i */
    public static final C4664b f11267i = new C4664b(null);

    /* renamed from: c */
    public final AbstractC13717l f11270c;

    /* renamed from: f */
    public final AbstractC11723a f11273f;

    /* renamed from: a */
    public final AbstractC13031b f11268a = new C13030a();

    /* renamed from: b */
    public final C13727b f11269b = new C13727b(0, 1, null);

    /* renamed from: d */
    public final AbstractC13701b f11271d = new C13687a(this.f11269b, this.f11268a);

    /* renamed from: e */
    public final AbstractC11727d f11272e = new C11728e();

    /* renamed from: g */
    public final AbstractC14974f f11274g = new ViewModelLazy(C15131a0.m419a(C11757e.class), new C4663a(this), new C4666d());

    /* renamed from: gogolook.callgogolook2.messaging.scan.ui.MessageScanActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/scan/ui/MessageScanActivity$a.class */
    public static final class C4663a extends AbstractC15150l implements AbstractC15107a<ViewModelStore> {

        /* renamed from: a */
        public final /* synthetic */ ComponentActivity f11275a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4663a(ComponentActivity componentActivity) {
            super(0);
            this.f11275a = componentActivity;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = this.f11275a.getViewModelStore();
            C15149k.m383a((Object) viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.scan.ui.MessageScanActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/scan/ui/MessageScanActivity$b.class */
    public static final class C4664b {
        public C4664b() {
        }

        public /* synthetic */ C4664b(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Intent m27484a(Context context, SmsMessage smsMessage, String str) {
            C15149k.m377b(context, "context");
            C15149k.m377b(smsMessage, "smsMessage");
            Bundle bundle = new Bundle();
            bundle.putParcelable("gogolook.callgogolook2.messaging.scan.ui.MESSAGE_SCAN", smsMessage);
            bundle.putString("gogolook.callgogolook2.messaging.scan.ui.FROM_SOURCE", str);
            Intent intent = new Intent(context, MessageScanActivity.class);
            intent.putExtras(bundle);
            return intent;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.scan.ui.MessageScanActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/scan/ui/MessageScanActivity$c.class */
    public static final class C4665c<T> implements Observer<T> {
        public C4665c() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            AbstractC11765h hVar = (AbstractC11765h) t;
            if (hVar instanceof AbstractC11765h.C11770e) {
                MessageScanActivity.this.m27487c(C11801t.f26461k.m8257a());
            } else if (hVar instanceof AbstractC11765h.C11769d) {
                MessageScanActivity.this.m27496I();
            } else if (hVar instanceof AbstractC11765h.C11767b) {
                MessageScanActivity.this.m27490a(((AbstractC11765h.C11767b) hVar).m8332a());
            } else if ((hVar instanceof AbstractC11765h.C11766a) && !MessageScanActivity.this.m27501D()) {
                MessageScanActivity.this.finish();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.scan.ui.MessageScanActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/scan/ui/MessageScanActivity$d.class */
    public static final class C4666d extends AbstractC15150l implements AbstractC15107a<C11764g> {
        public C4666d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11764g invoke() {
            return new C11764g(new C11740f(MessageScanActivity.this.f11273f, MessageScanActivity.this.f11268a.mo4756a()), new C11731b(MessageScanActivity.this.f11273f, MessageScanActivity.this.f11268a.mo4756a()), C11210y.f25159a.m10020b());
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(MessageScanActivity.class), "viewModel", "getViewModel()Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;");
        C15131a0.m412a(sVar);
        f11266h = new AbstractC14906i[]{sVar};
    }

    public MessageScanActivity() {
        C13640c d = C13640c.m3745d();
        C15149k.m383a((Object) d, "FirebaseRemoteConfigManager.getInstance()");
        this.f11270c = new C13718m(d);
        this.f11273f = new C11724b(this.f11271d, this.f11270c, this.f11272e);
    }

    /* renamed from: a */
    public static final Intent m27495a(Context context, SmsMessage smsMessage, String str) {
        return f11267i.m27484a(context, smsMessage, str);
    }

    /* renamed from: D */
    public final boolean m27501D() {
        String f = m27498G().m8347f();
        if (f == null) {
            return false;
        }
        switch (f.hashCode()) {
            case -675421485:
                if (!f.equals("default_notification_scan")) {
                    return false;
                }
                break;
            case -632146194:
                if (!f.equals("sms_dialog")) {
                    return false;
                }
                break;
            case -337959601:
                if (!f.equals("nondefault_notification_title")) {
                    return false;
                }
                break;
            case -149485402:
                if (!f.equals("nondefault_notification_scan")) {
                    return false;
                }
                break;
            case 1737360542:
                if (!f.equals("sms_dialog_url")) {
                    return false;
                }
                break;
            default:
                return false;
        }
        Intent a = MainActivity.f11058u.m27836a(this, "smslog", "sms_url_scan_page");
        a.addFlags(536903680);
        if (!C14191v.m2257a(this, a, null, 2, null)) {
            return false;
        }
        finish();
        return true;
    }

    /* renamed from: E */
    public void m27500E() {
        VersionManager.m26003a(this);
    }

    /* renamed from: F */
    public final Fragment m27499F() {
        return getSupportFragmentManager().findFragmentById(R$id.fragment_container_view);
    }

    /* renamed from: G */
    public final C11757e m27498G() {
        AbstractC14974f fVar = this.f11274g;
        AbstractC14906i iVar = f11266h[0];
        return (C11757e) fVar.getValue();
    }

    /* renamed from: H */
    public boolean m27497H() {
        return VersionManager.m25991e(4);
    }

    /* renamed from: I */
    public final void m27496I() {
        Fragment F = m27499F();
        Fragment fragment = F;
        if (!(F instanceof C11801t)) {
            fragment = null;
        }
        C11801t tVar = (C11801t) fragment;
        if (tVar != null) {
            tVar.m8268c(1);
        }
        m27487c(C11780p.f26427g.m8296a());
    }

    /* renamed from: a */
    public final void m27494a(Fragment fragment) {
        if (fragment instanceof C11801t) {
            ((C11801t) fragment).m8262e("back");
        } else if (fragment instanceof C11780p) {
            ((C11780p) fragment).m8297e("back");
        }
    }

    /* renamed from: a */
    public final void m27490a(AbstractC11765h.EnumC11768c cVar) {
        String str;
        int i = C11756d.f26367a[cVar.ordinal()];
        if (i == 1) {
            str = getString(R$string.error_code_client_v2);
        } else if (i == 2) {
            str = getString(R$string.error_code_nointernet);
        } else if (i == 3) {
            str = getString(R$string.error_code_timeout);
        } else {
            throw new C14976h();
        }
        m27489b(m27499F());
        C11750a.C11751a aVar = C11750a.f26363b;
        String string = getString(R$string.sp_error_bar);
        C15149k.m383a((Object) string, "getString(R.string.sp_error_bar)");
        C15149k.m383a((Object) str, "reason");
        m27487c(aVar.m8372a(string, str));
    }

    /* renamed from: b */
    public final void m27489b(Fragment fragment) {
        if (fragment instanceof C11801t) {
            ((C11801t) fragment).m8268c(0);
        } else {
            boolean z = fragment instanceof C11780p;
        }
    }

    /* renamed from: c */
    public final void m27487c(Fragment fragment) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        C15149k.m383a((Object) supportFragmentManager, "supportFragmentManager");
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        C15149k.m383a((Object) beginTransaction, "beginTransaction()");
        beginTransaction.setReorderingAllowed(true);
        beginTransaction.replace(R$id.fragment_container_view, fragment);
        beginTransaction.commitAllowingStateLoss();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m27494a(m27499F());
        if (!m27501D()) {
            super.onBackPressed();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_message_scan);
        m27498G().m8344i().observe(this, new C4665c());
        m27498G().m8368a(getIntent());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m27498G().m8368a(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (m27497H()) {
            m27500E();
        }
    }
}
