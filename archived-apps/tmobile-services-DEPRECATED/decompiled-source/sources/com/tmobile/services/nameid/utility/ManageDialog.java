package com.tmobile.services.nameid.utility;

import android.app.Dialog;
import android.content.Context;
import android.text.Html;
import android.text.Spanned;
import android.view.View;
import android.widget.CompoundButton;
import androidx.annotation.IdRes;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.UserPreferenceItem;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.model.UserPreferenceUpdater;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.OneOrNoneCompoundButtonGroup;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.ManageDialog;
import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.realm.Realm;
import io.realm.RealmQuery;
import java.util.List;
import javax.annotation.Nullable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import retrofit2.HttpException;
import retrofit2.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog.class */
public class ManageDialog {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.utility.ManageDialog$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog$1.class */
    public static /* synthetic */ class C19071 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14333a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallerSetting.Action.values().length];
            f14333a = iArr;
            try {
                iArr[CallerSetting.Action.BLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14333a[CallerSetting.Action.VOICEMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14333a[CallerSetting.Action.APPROVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog$CallerSettingsButtonGroupListener.class */
    private static class CallerSettingsButtonGroupListener implements OneOrNoneCompoundButtonGroup.ButtonGroupListener {

        /* renamed from: a */
        UserPreferenceUpdater f14334a;

        /* renamed from: b */
        NameIDButton f14335b;

        /* renamed from: b */
        private CallerSetting.Action m5618b(@IdRes int i) {
            switch (i) {
                case C1517R.C1520id.manage_dialog_checkbox_allow /* 2131231286 */:
                    return CallerSetting.Action.APPROVED;
                case C1517R.C1520id.manage_dialog_checkbox_block_calls /* 2131231287 */:
                    return CallerSetting.Action.BLOCKED;
                case C1517R.C1520id.manage_dialog_checkbox_block_messages /* 2131231288 */:
                default:
                    return CallerSetting.Action.NONE;
                case C1517R.C1520id.manage_dialog_checkbox_voicemail /* 2131231289 */:
                    return CallerSetting.Action.VOICEMAIL;
            }
        }

        @Override // com.tmobile.services.nameid.p007ui.OneOrNoneCompoundButtonGroup.ButtonGroupListener
        /* renamed from: a */
        public void mo5619a(int i) {
            this.f14334a.updateCallUserPref(m5618b(i));
            if (this.f14334a.hasChanges()) {
                this.f14335b.setVisibility(0);
            } else {
                this.f14335b.setVisibility(4);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog$ManageButtonDebouncer.class */
    public interface ManageButtonDebouncer {
        /* renamed from: Y */
        void mo5617Y();

        /* renamed from: j0 */
        void mo5616j0();
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog$MessagePrefAddApiObserver.class */
    public static class MessagePrefAddApiObserver implements Observer<UserPreferenceStatus> {

        /* renamed from: f */
        private String f14336f;

        /* renamed from: g */
        private Context f14337g;

        /* renamed from: h */
        private int f14338h;

        /* renamed from: i */
        private int f14339i;

        /* renamed from: j */
        private Command f14340j;

        /* renamed from: k */
        private Command f14341k;

        public MessagePrefAddApiObserver(String str, int i, int i2, Context context) {
            this(str, i, context);
            this.f14339i = i2;
        }

        public MessagePrefAddApiObserver(String str, int i, Context context) {
            this.f14336f = "";
            this.f14340j = new EmptyCommand();
            this.f14341k = new EmptyCommand();
            this.f14336f = str;
            this.f14338h = i;
            this.f14337g = context;
        }

        /* renamed from: a */
        public void m5615a(int i) {
            Command command = this.f14341k;
            if (command != null) {
                command.execute();
            } else {
                LogUtil.m5631p("ManageDialog#MessagePrefAddApiObserver#onError", "Rollback command was null.");
            }
            ManageDialog.m5621j(this.f14337g, this.f14338h, this.f14339i, this.f14336f, ApiUtils.CommEventType.TEXT.getValue(), null, new Function0() { // from class: com.tmobile.services.nameid.utility.c0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ManageDialog.MessagePrefAddApiObserver.this.m5614b();
                }
            }, C1926d0.f14515f, i);
        }

        /* renamed from: b */
        public /* synthetic */ Unit m5614b() {
            Command command = this.f14340j;
            if (command != null) {
                command.execute();
                LogUtil.m5643d("ManageDialog#MessagePrefAddApiObserver#onError", "Retry executed.");
            } else {
                LogUtil.m5643d("ManageDialog#MessagePrefAddApiObserver#onError", "Retry command was null.");
            }
            return Unit.f20447a;
        }

        /* renamed from: d */
        public void onNext(@NonNull UserPreferenceStatus userPreferenceStatus) {
            FragmentManager f;
            int e;
            Context context;
            ApiUtils.m6827w0(userPreferenceStatus);
            List<UserPreferenceItem> successfulItems = userPreferenceStatus.getSuccessfulItems();
            if (successfulItems.isEmpty()) {
                LogUtil.m5631p("ManageDialog#onNext", "did not receive any successful items from user preferences response - returning");
                m5615a(0);
                return;
            }
            if (!(!PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false) || (e = ManageDialog.m5626e(CallerSetting.Action.NONE, CallerSetting.Action.fromValue(successfulItems.get(0).getDisposition()), successfulItems.get(0).getCommEvent())) == -1 || (context = this.f14337g) == null)) {
                ManageDialog.m5620k(e, context);
            }
            if (this.f14339i == MessageUserPreference.Action.BLOCKED.getValue() && (f = ManageDialog.m5625f(this.f14337g)) != null) {
                WidgetUtils.m5223l0(f, false, true);
            }
        }

        /* renamed from: e */
        public void m5611e(@Nullable Command command) {
            if (command != null) {
                this.f14340j = command;
            } else {
                this.f14340j = new EmptyCommand();
            }
        }

        /* renamed from: f */
        public void m5610f(@Nullable Command command) {
            if (command != null) {
                this.f14341k = command;
            } else {
                this.f14341k = new EmptyCommand();
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            LogUtil.m5641f("ManageDialog#MessagePrefAddApiObserver", "", th);
            m5615a(th instanceof HttpException ? ((HttpException) th).code() : 0);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog$MessagePrefChangeListener.class */
    private static class MessagePrefChangeListener implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: f */
        UserPreferenceUpdater f14342f;

        /* renamed from: g */
        NameIDButton f14343g;

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f14342f.updateMessageUserPref(z ? MessageUserPreference.Action.BLOCKED : MessageUserPreference.Action.NONE);
            if (this.f14342f.hasChanges()) {
                this.f14343g.setVisibility(0);
            } else {
                this.f14343g.setVisibility(4);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog$ResponseAddObserver.class */
    public static class ResponseAddObserver implements Observer<UserPreferenceStatus> {

        /* renamed from: f */
        private String f14344f;

        /* renamed from: g */
        private Context f14345g;

        /* renamed from: h */
        private int f14346h;

        /* renamed from: i */
        private boolean f14347i;

        /* renamed from: j */
        private ManageButtonDebouncer f14348j;

        public ResponseAddObserver(String str, int i, Context context) {
            this.f14344f = "";
            this.f14347i = false;
            this.f14348j = null;
            this.f14344f = str;
            this.f14346h = i;
            this.f14345g = context;
        }

        public ResponseAddObserver(String str, int i, ManageButtonDebouncer manageButtonDebouncer, Context context) {
            this(str, i, context);
            this.f14348j = manageButtonDebouncer;
        }

        /* renamed from: a */
        public void m5609a(int i) {
            Realm G0 = Realm.m3064G0();
            try {
                RealmQuery Q0 = G0.m3053Q0(CallerSetting.class);
                Q0.m2882t("e164Number", this.f14344f);
                CallerSetting callerSetting = (CallerSetting) Q0.m2916G();
                if (callerSetting != null) {
                    LogUtil.m5643d("ManageDialog#onError", "Found realm caller setting with setting of " + callerSetting.getAction());
                    final CallerSetting copy = callerSetting.copy();
                    if (G0 != null) {
                        G0.close();
                    }
                    PreferenceUtils.m5386k("PREF_RETRIED_USER_SETTING", false);
                    ManageDialog.m5621j(this.f14345g, this.f14346h, copy.getAction(), this.f14344f, copy.getCommEventType(), null, new Function0() { // from class: com.tmobile.services.nameid.utility.g0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ManageDialog.ResponseAddObserver.this.m5608b(copy);
                        }
                    }, new Function0() { // from class: com.tmobile.services.nameid.utility.f0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ManageDialog.ResponseAddObserver.this.m5607c();
                        }
                    }, i);
                    return;
                }
                LogUtil.m5643d("ManageDialog#onError", "Realm object was null");
                if (G0 != null) {
                    G0.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }

        /* renamed from: b */
        public /* synthetic */ Unit m5608b(CallerSetting callerSetting) {
            PreferenceUtils.m5386k("PREF_RETRIED_USER_SETTING", true);
            ApiWrapper.m6785c(callerSetting, new ResponseAddObserver(this.f14344f, this.f14346h, this.f14345g));
            return Unit.f20447a;
        }

        /* renamed from: c */
        public /* synthetic */ Unit m5607c() {
            Realm G0 = Realm.m3064G0();
            try {
                RealmQuery Q0 = G0.m3053Q0(CallerSetting.class);
                Q0.m2882t("e164Number", this.f14344f);
                final CallerSetting callerSetting = (CallerSetting) Q0.m2916G();
                if (callerSetting != null && !PreferenceUtils.m5395b("PREF_RETRIED_USER_SETTING", false)) {
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.e0
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            CallerSetting.this.deleteFromRealm();
                        }
                    });
                }
                if (G0 != null) {
                    G0.close();
                }
                return Unit.f20447a;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }

        /* renamed from: e */
        public void onNext(@NonNull UserPreferenceStatus userPreferenceStatus) {
            Context context;
            ManageButtonDebouncer manageButtonDebouncer = this.f14348j;
            if (manageButtonDebouncer != null) {
                manageButtonDebouncer.mo5616j0();
            }
            ApiUtils.m6823y0(userPreferenceStatus);
            List<UserPreferenceItem> successfulItems = userPreferenceStatus.getSuccessfulItems();
            if (successfulItems.isEmpty()) {
                LogUtil.m5631p("ManageDialog#onNext", "did not receive any successful items from user preferences response - returning");
                m5609a(0);
            } else if (PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false)) {
                int e = ManageDialog.m5626e(CallerSetting.Action.NONE, CallerSetting.Action.fromValue(successfulItems.get(0).getDisposition()), successfulItems.get(0).getCommEvent());
                if (!(e == -1 || (context = this.f14345g) == null)) {
                    ManageDialog.m5620k(e, context);
                }
                FragmentManager f = ManageDialog.m5625f(this.f14345g);
                if (this.f14347i && f != null) {
                    WidgetUtils.m5223l0(f, true, false);
                }
            }
        }

        /* renamed from: f */
        public void m5604f(boolean z) {
            this.f14347i = z;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            LogUtil.m5641f("ManageDialog##ResponseAddObserver", "", th);
            ManageButtonDebouncer manageButtonDebouncer = this.f14348j;
            if (manageButtonDebouncer != null) {
                manageButtonDebouncer.mo5616j0();
            }
            m5609a(th instanceof HttpException ? ((HttpException) th).code() : 0);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
            ManageButtonDebouncer manageButtonDebouncer = this.f14348j;
            if (manageButtonDebouncer != null) {
                manageButtonDebouncer.mo5617Y();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog$ResponseObserver.class */
    public static class ResponseObserver implements Observer<Response<Void>> {

        /* renamed from: f */
        private String f14349f;

        /* renamed from: g */
        private int f14350g;

        /* renamed from: h */
        private int f14351h;

        /* renamed from: i */
        private int f14352i;

        /* renamed from: j */
        private boolean f14353j;

        /* renamed from: k */
        private Context f14354k;

        /* renamed from: l */
        private ManageButtonDebouncer f14355l;

        public ResponseObserver(String str, int i, int i2, Context context) {
            this(str, i, context);
            this.f14351h = i2;
        }

        public ResponseObserver(String str, int i, Context context) {
            this.f14351h = -1;
            this.f14352i = MessageUserPreference.CommEventType.CALL.getValue();
            this.f14353j = false;
            this.f14355l = null;
            this.f14349f = str;
            this.f14350g = i;
            this.f14354k = context;
        }

        public ResponseObserver(String str, int i, ManageButtonDebouncer manageButtonDebouncer, Context context) {
            this(str, i, context);
            this.f14355l = manageButtonDebouncer;
        }

        /* renamed from: a */
        public /* synthetic */ void m5603a(CallerSetting callerSetting, Realm realm) {
            callerSetting.setAction(this.f14350g);
        }

        /* renamed from: b */
        public /* synthetic */ void m5602b(CallerSetting callerSetting, Realm realm) {
            callerSetting.setAction(this.f14350g);
        }

        /* renamed from: c */
        public /* synthetic */ Unit m5601c(CallerSetting callerSetting) {
            PreferenceUtils.m5386k("PREF_RETRIED_USER_SETTING", true);
            ApiWrapper.m6785c(callerSetting, new ResponseAddObserver(this.f14349f, this.f14350g, this.f14354k));
            return Unit.f20447a;
        }

        /* renamed from: d */
        public /* synthetic */ Unit m5600d() {
            Realm G0 = Realm.m3064G0();
            try {
                RealmQuery Q0 = G0.m3053Q0(CallerSetting.class);
                Q0.m2882t("e164Number", this.f14349f);
                final CallerSetting callerSetting = (CallerSetting) Q0.m2916G();
                if (callerSetting != null && !PreferenceUtils.m5395b("PREF_RETRIED_USER_SETTING", false)) {
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.j0
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            ManageDialog.ResponseObserver.this.m5603a(callerSetting, realm);
                        }
                    });
                }
                if (G0 != null) {
                    G0.close();
                }
                return Unit.f20447a;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }

        /* renamed from: e */
        public void onNext(@NonNull Response<Void> response) {
            Context context;
            LogUtil.m5632o("ManageDialog#", "Got success response for updating " + this.f14349f + " setting. No action to take");
            ManageButtonDebouncer manageButtonDebouncer = this.f14355l;
            if (manageButtonDebouncer != null) {
                manageButtonDebouncer.mo5616j0();
            }
            if (this.f14351h == -1) {
                Realm G0 = Realm.m3064G0();
                try {
                    RealmQuery Q0 = G0.m3053Q0(CallerSetting.class);
                    Q0.m2882t("e164Number", this.f14349f);
                    CallerSetting callerSetting = (CallerSetting) Q0.m2916G();
                    if (callerSetting != null) {
                        this.f14351h = callerSetting.getAction();
                        this.f14352i = callerSetting.getCommEventType();
                        if (G0 != null) {
                            G0.close();
                        }
                    } else if (G0 != null) {
                        G0.close();
                        return;
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (G0 != null) {
                            try {
                                G0.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            }
            if (PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false)) {
                int e = ManageDialog.m5626e(CallerSetting.Action.fromValue(this.f14350g), CallerSetting.Action.fromValue(this.f14351h), this.f14352i);
                if (!(e == -1 || (context = this.f14354k) == null)) {
                    ManageDialog.m5620k(e, context);
                }
                FragmentManager f = ManageDialog.m5625f(this.f14354k);
                if (this.f14353j && f != null) {
                    WidgetUtils.m5223l0(f, true, false);
                }
            }
        }

        /* renamed from: f */
        public void m5598f(boolean z) {
            this.f14353j = z;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            LogUtil.m5641f("ManageDialog##ResponseObserver", "", th);
            ManageButtonDebouncer manageButtonDebouncer = this.f14355l;
            if (manageButtonDebouncer != null) {
                manageButtonDebouncer.mo5616j0();
            }
            Realm G0 = Realm.m3064G0();
            try {
                RealmQuery Q0 = G0.m3053Q0(CallerSetting.class);
                Q0.m2882t("e164Number", this.f14349f);
                CallerSetting callerSetting = (CallerSetting) Q0.m2916G();
                PreferenceUtils.m5386k("PREF_RETRIED_USER_SETTING", false);
                if (callerSetting != null) {
                    final CallerSetting copy = callerSetting.copy();
                    if (G0 != null) {
                        G0.close();
                    }
                    int code = th instanceof HttpException ? ((HttpException) th).code() : 0;
                    if (code == 404) {
                        LogUtil.m5631p("ManageDialog#", "User Pref update/delete returned a 404. Purge PNB lists and resync from Neotron.");
                        AppCompatActivity appCompatActivity = (AppCompatActivity) MainApplication.m7527m();
                        if (appCompatActivity == null || appCompatActivity.isDestroyed()) {
                            LogUtil.m5631p("ManageDialog#showManageErrorDialog", "Cannot display modal - activity is destroyed");
                        } else {
                            NameIDDialogBuilder.f13943m.m6125s().m6160b(appCompatActivity.getSupportFragmentManager());
                        }
                        G0 = Realm.m3064G0();
                        try {
                            RealmQuery Q02 = G0.m3053Q0(CallerSetting.class);
                            Q02.m2882t("e164Number", this.f14349f);
                            final CallerSetting callerSetting2 = (CallerSetting) Q02.m2916G();
                            if (callerSetting2 != null && !PreferenceUtils.m5395b("PREF_RETRIED_USER_SETTING", false)) {
                                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.i0
                                    @Override // io.realm.Realm.Transaction
                                    /* renamed from: a */
                                    public final void mo3037a(Realm realm) {
                                        ManageDialog.ResponseObserver.this.m5602b(callerSetting2, realm);
                                    }
                                });
                            }
                            if (G0 != null) {
                                G0.close();
                            }
                            ApiUtils.m6865d0();
                        } finally {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    } else {
                        ManageDialog.m5621j(this.f14354k, this.f14350g, copy.getAction(), this.f14349f, copy.getCommEventType(), null, new Function0() { // from class: com.tmobile.services.nameid.utility.h0
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return ManageDialog.ResponseObserver.this.m5601c(copy);
                            }
                        }, new Function0() { // from class: com.tmobile.services.nameid.utility.k0
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return ManageDialog.ResponseObserver.this.m5600d();
                            }
                        }, code);
                    }
                } else if (G0 != null) {
                    G0.close();
                }
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
            ManageButtonDebouncer manageButtonDebouncer = this.f14355l;
            if (manageButtonDebouncer != null) {
                manageButtonDebouncer.mo5617Y();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog$UpdateButtonListener.class */
    private static class UpdateButtonListener implements View.OnClickListener {

        /* renamed from: f */
        private UserPreferenceUpdater f14356f;

        /* renamed from: g */
        private Command f14357g;

        /* renamed from: h */
        private Dialog f14358h;

        /* renamed from: i */
        private Context f14359i;

        /* renamed from: j */
        private AppCompatActivity f14360j;

        /* renamed from: a */
        private boolean m5597a(Context context) {
            FragmentManager f = ManageDialog.m5625f(context);
            boolean z = f != null && !WidgetUtils.m5241c0(context, f);
            if (!z) {
                LogUtil.m5632o("ManageDialog#UpdateButtonListener#", "Tried to apply action but there was no network. Showing network error dialog.");
            }
            return z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!this.f14356f.hasChanges() || SubscriptionHelper.m5328F()) {
                this.f14357g = this.f14356f.buildUserPrefChangeCommand();
                LogUtil.m5643d("ManageDialog#UpdateButtonListener#UpdateButtonListener#onClick", "built command: " + this.f14357g.toString());
                this.f14356f.logAnalytics();
                if (m5597a(this.f14359i)) {
                    this.f14357g.execute();
                    this.f14358h.dismiss();
                    return;
                }
                return;
            }
            WidgetUtils.m5235f0(this.f14360j, this.f14360j.getSupportFragmentManager(), null, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ManageDialog$UserPrefDeleteObserver.class */
    public static class UserPrefDeleteObserver implements Observer<Response<Void>> {

        /* renamed from: f */
        private final String f14361f;

        /* renamed from: g */
        private final int f14362g;

        /* renamed from: h */
        private final int f14363h;

        /* renamed from: i */
        private final Context f14364i;

        /* renamed from: j */
        private Command f14365j = new EmptyCommand();

        /* renamed from: k */
        private Command f14366k = new EmptyCommand();

        public UserPrefDeleteObserver(UserPreference userPreference, Context context) {
            this.f14361f = userPreference.getE164Number();
            this.f14362g = userPreference.getAction();
            this.f14363h = userPreference.getCommEventType();
            this.f14364i = context;
        }

        /* renamed from: a */
        public /* synthetic */ Unit m5596a() {
            Command command = this.f14365j;
            if (command != null) {
                command.execute();
                LogUtil.m5643d("ManageDialog#UserPrefDeleteObserver#onError", "Retry executed.");
            } else {
                LogUtil.m5643d("ManageDialog#UserPrefDeleteObserver#onError", "Retry command was null.");
            }
            return Unit.f20447a;
        }

        /* renamed from: c */
        public void onNext(@NonNull Response<Void> response) {
            int e;
            Context context;
            if (PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false) && (e = ManageDialog.m5626e(CallerSetting.Action.fromValue(this.f14362g), CallerSetting.Action.fromValue(-1), this.f14363h)) != -1 && (context = this.f14364i) != null) {
                ManageDialog.m5620k(e, context);
            }
        }

        /* renamed from: d */
        public void m5593d(@Nullable Command command) {
            if (command == null) {
                command = new EmptyCommand();
            }
            this.f14365j = command;
        }

        /* renamed from: e */
        public void m5592e(@Nullable Command command) {
            if (command == null) {
                command = new EmptyCommand();
            }
            this.f14366k = command;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            LogUtil.m5641f("ManageDialog#UserPrefDeleteObserver#onError", "", th);
            Command command = this.f14366k;
            if (command != null) {
                command.execute();
            } else {
                LogUtil.m5631p("ManageDialog#UserPrefDeleteObserver#onError", "Rollback command was null.");
            }
            ManageDialog.m5621j(this.f14364i, this.f14362g, -1, this.f14361f, ApiUtils.CommEventType.CALL.getValue(), null, new Function0() { // from class: com.tmobile.services.nameid.utility.m0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ManageDialog.UserPrefDeleteObserver.this.m5596a();
                }
            }, C1958l0.f14561f, th instanceof HttpException ? ((HttpException) th).code() : 0);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
        }
    }

    private ManageDialog() {
        throw new IllegalAccessError("This is a utility class. Just call the show() method instead.");
    }

    /* renamed from: c */
    private static void m5628c(Context context, int i, int i2, int i3, NameIDDialogBuilder nameIDDialogBuilder, @Nullable Function0<Unit> function0) {
        CallerSetting.Action fromValue = CallerSetting.Action.fromValue(i2);
        String string = context.getString(fromValue != CallerSetting.Action.NONE ? m5622i(fromValue, i3) : m5622i(CallerSetting.Action.fromValue(i), i3));
        String string2 = context.getString(m5624g());
        Spanned fromHtml = Html.fromHtml(context.getString(m5623h()) + " <a href=\"tel:" + string2 + "\"> " + string2 + "</a> " + context.getString(C1517R.string.call_care_error_end));
        CallerSetting.Action action = CallerSetting.Action.NONE;
        if (fromValue == action) {
            LogUtil.m5632o("ManageDialog#", "Showing manage error dialog, unable to remove number");
            nameIDDialogBuilder.m6146p(C1517R.string.manage_list_error_delete_header, new String[0]);
            nameIDDialogBuilder.m6153i(fromHtml, true);
        } else if (i == action.getValue()) {
            LogUtil.m5632o("ManageDialog#", "Showing manage error dialog, unable to add number to list");
            nameIDDialogBuilder.m6146p(C1517R.string.manage_list_error_add_header, string);
            nameIDDialogBuilder.m6153i(fromHtml, true);
        } else {
            LogUtil.m5632o("ManageDialog#", "Showing manage error dialog, unable to update number");
            nameIDDialogBuilder.m6146p(C1517R.string.manage_list_error_update_header, new String[0]);
            nameIDDialogBuilder.m6153i(fromHtml, true);
        }
        nameIDDialogBuilder.m6156f(C1517R.string.general_ok, new String[0]);
        if (function0 != null) {
            nameIDDialogBuilder.m6157e(function0);
        }
    }

    /* renamed from: d */
    private static void m5627d(Context context, NameIDDialogBuilder nameIDDialogBuilder, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02) {
        LogUtil.m5632o("ManageDialog#", "Showing manage error dialog, server error or unspecified error");
        nameIDDialogBuilder.m6146p(C1517R.string.manage_list_error_server_error_title, new String[0]);
        nameIDDialogBuilder.m6154h(C1517R.string.unknown_error_desc, new String[0]);
        nameIDDialogBuilder.m6156f(C1517R.string.general_retry, new String[0]);
        nameIDDialogBuilder.m6148n(C1517R.string.general_cancel, new String[0]);
        if (function0 != null) {
            nameIDDialogBuilder.m6157e(function0);
        }
        if (function02 != null) {
            nameIDDialogBuilder.m6149m(function02);
        }
    }

    @StringRes
    /* renamed from: e */
    static int m5626e(CallerSetting.Action action, CallerSetting.Action action2, int i) {
        int i2;
        if (action2 != CallerSetting.Action.NONE) {
            int i3 = C19071.f14333a[action2.ordinal()];
            if (i3 == 1) {
                i2 = i == MessageUserPreference.CommEventType.TEXT.getValue() ? C1517R.string.activity_toast_blocked_message : C1517R.string.activity_toast_blocked;
            } else if (i3 != 2) {
                if (i3 == 3) {
                    i2 = C1517R.string.activity_toast_approved;
                }
                i2 = -1;
            } else {
                i2 = C1517R.string.activity_toast_voicemail;
            }
        } else {
            int i4 = C19071.f14333a[action.ordinal()];
            if (i4 == 1) {
                i2 = i == MessageUserPreference.CommEventType.TEXT.getValue() ? C1517R.string.activity_toast_remove_blocked_message : C1517R.string.activity_toast_remove_blocked;
            } else if (i4 != 2) {
                if (i4 == 3) {
                    i2 = C1517R.string.activity_toast_remove_approved;
                }
                i2 = -1;
            } else {
                i2 = C1517R.string.activity_toast_remove_voicemail;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    /* renamed from: f */
    public static FragmentManager m5625f(Context context) {
        if (context == null || !(context instanceof AppCompatActivity)) {
            return null;
        }
        return ((AppCompatActivity) context).getSupportFragmentManager();
    }

    /* renamed from: g */
    private static int m5624g() {
        return SubscriptionHelper.m5332B() ? C1517R.string.call_care_number_xp : C1517R.string.call_care_number;
    }

    /* renamed from: h */
    private static int m5623h() {
        return SubscriptionHelper.m5332B() ? C1517R.string.call_care_error_start_short_xp : C1517R.string.call_care_error_start_short;
    }

    @StringRes
    /* renamed from: i */
    public static int m5622i(CallerSetting.Action action, int i) {
        int i2 = C19071.f14333a[action.ordinal()];
        if (i2 != 1) {
            return i2 != 2 ? i2 != 3 ? C1517R.string.general_empty_string : C1517R.string.manage_list_error_allow_type : C1517R.string.manage_list_error_voicemail_type;
        }
        return i == 2 ? C1517R.string.manage_list_error_message_block_type : C1517R.string.manage_list_error_block_type;
    }

    /* renamed from: j */
    public static void m5621j(Context context, int i, int i2, String str, int i3, @Nullable String str2, Function0<Unit> function0, @Nullable Function0<Unit> function02, int i4) {
        NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
        if (i4 == 403) {
            m5628c(context, i, i2, i3, nameIDDialogBuilder, function02);
        } else {
            m5627d(context, nameIDDialogBuilder, function0, function02);
        }
        if (str2 != null && !str2.isEmpty()) {
            nameIDDialogBuilder.m6152j(str2);
        }
        AppCompatActivity appCompatActivity = (AppCompatActivity) MainApplication.m7527m();
        if (appCompatActivity == null || appCompatActivity.isDestroyed()) {
            LogUtil.m5631p("ManageDialog#showManageErrorDialog", "Cannot display modal - activity is destroyed");
        } else {
            nameIDDialogBuilder.m6160b(appCompatActivity.getSupportFragmentManager());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static void m5620k(@StringRes int i, Context context) {
        MainApplication.m7540P(context.getString(i));
    }
}
