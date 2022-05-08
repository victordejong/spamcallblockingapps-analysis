package com.tmobile.services.nameid.Startup.options;

import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import com.tmobile.services.C1517R;
import com.tmobile.services.databinding.ActivityOnboardingOptionsBinding;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.Startup.FlowController;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.Constants;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MigrationHelper;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.functions.Consumer;
import io.realm.Realm;
import javax.annotation.Nullable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/options/OnboardingOptionsActivity.class */
public class OnboardingOptionsActivity extends AppCompatActivity {

    /* renamed from: f */
    private OnboardingOptionsPresenter f13017f;

    /* renamed from: g */
    private boolean f13018g;
    @Nullable

    /* renamed from: j */
    private DialogFragment f13021j;

    /* renamed from: h */
    private boolean f13019h = false;

    /* renamed from: i */
    private FlowController f13020i = new FlowController(this);

    /* renamed from: k */
    private DialogFragment f13022k = null;

    /* renamed from: k */
    private void m7188k() {
        DialogFragment dialogFragment = this.f13022k;
        if (dialogFragment != null && dialogFragment.isAdded() && this.f13022k.isVisible()) {
            try {
                this.f13022k.dismissAllowingStateLoss();
            } catch (Throwable th) {
                LogUtil.m5641f("OnboardingOptionsActivity#", "Error while trying to dismiss dialog.", th);
            }
        }
    }

    /* renamed from: l */
    private void m7187l() {
        DialogFragment dialogFragment = this.f13021j;
        if (dialogFragment != null && dialogFragment.isAdded()) {
            try {
                this.f13021j.dismissAllowingStateLoss();
            } catch (Exception e) {
                LogUtil.m5641f("OnboardingOptionsActivity#", "Attempted to dismiss dialog but error occurred: ", e);
            }
        }
    }

    /* renamed from: u */
    private void m7178u() {
        getWindow().getDecorView().setSystemUiVisibility(1280);
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(Color.parseColor(BuildUtils.m5850d() ? "#ffffff" : "#000000"));
        }
    }

    /* renamed from: i */
    public void m7190i() {
        if (this.f13019h) {
            LogUtil.m5643d("OnboardingOptionsActivity#", "User clicked 'start trial' but there's already a request in progress.");
            return;
        }
        DialogFragment dialogFragment = this.f13021j;
        if (dialogFragment == null || !dialogFragment.isVisible()) {
            this.f13021j = WidgetUtils.m5245a0(getSupportFragmentManager(), C1517R.string.progress_dialog_processing, true);
        }
        this.f13017f.m7172c(true);
        LogUtil.m5632o("OnboardingOptionsActivity#", "adding trial");
        MainApplication.m7553C("app_trial", new String[]{"result"}, new String[]{"accept_startup"});
        this.f13019h = true;
        TmoApiWrapper.m6646d0(this, TmoApiWrapper.AccountType.TRIAL, true, true, "OOBE", new Consumer() { // from class: com.tmobile.services.nameid.Startup.options.c
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                OnboardingOptionsActivity.this.m7185n((TmoUserStatus) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.Startup.options.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                OnboardingOptionsActivity.this.m7184o((Throwable) obj);
            }
        });
    }

    /* renamed from: j */
    public void m7189j() {
        if (this.f13018g) {
            m7190i();
            LogUtil.m5643d("OnboardingOptionsActivity#", "User clicked 'start trial'.");
            return;
        }
        LogUtil.m5631p("OnboardingOptionsActivity#beginTrialClicked", "should not be able to activate trial - showTrial is false. Going to next screen");
        m7186m();
    }

    /* renamed from: m */
    public void m7186m() {
        PreferenceUtils.m5386k("pref_shown_onboarding_options", true);
        PreferenceUtils.m5386k("pref_onboarding_options_was_last", true);
        LogUtil.m5632o("OnboardingOptionsActivity#", "Go to next screen");
        this.f13020i.m7223e();
        finish();
    }

    /* renamed from: n */
    public /* synthetic */ void m7185n(TmoUserStatus tmoUserStatus) throws Exception {
        LogUtil.m5643d("OnboardingOptionsActivity#", "Trial start from OOBE was successful.");
        PreferenceUtils.m5385l("PREF_TRIAL_OPT_IN_STATUS", Constants.TrialStatus.SUCCESS.getValue());
        m7187l();
        m7177v();
    }

    /* renamed from: o */
    public /* synthetic */ void m7184o(Throwable th) throws Exception {
        LogUtil.m5643d("OnboardingOptionsActivity#", "Trial start from OOBE was NOT successful.");
        m7187l();
        this.f13017f.m7170e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5632o("OnboardingOptionsActivity#onCreate", "created");
        ActivityOnboardingOptionsBinding activityOnboardingOptionsBinding = (ActivityOnboardingOptionsBinding) DataBindingUtil.m18675f(this, C1517R.layout.activity_onboarding_options);
        activityOnboardingOptionsBinding.m18626F(this);
        activityOnboardingOptionsBinding.f12600B.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Startup.options.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OnboardingOptionsActivity.this.m7183p(view);
            }
        });
        activityOnboardingOptionsBinding.f12599A.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Startup.options.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OnboardingOptionsActivity.this.m7182q(view);
            }
        });
        MigrationHelper.m5516p(this);
        LogUtil.m5632o("OnboardingOptionsActivity#", "Converting SQLite (Phase 1) blocklist to Realm (Phase 2)");
        Realm e = MigrationHelper.m5527e();
        if (e != null) {
            try {
                MigrationHelper.m5529c(this, e);
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        if (e != null) {
            e.close();
        }
        this.f13017f = new OnboardingOptionsPresenter(this);
        e = Realm.m3064G0();
        try {
            this.f13018g = this.f13017f.m7171d((TmoUserStatus) e.m3053Q0(TmoUserStatus.class).m2916G());
            LogUtil.m5643d("OnboardingOptionsActivity#onCreate", "Showing trial option?" + this.f13018g);
            if (e != null) {
                e.close();
            }
            if (!this.f13018g) {
                LogUtil.m5632o("OnboardingOptionsActivity#", "Can't show trial, skipping this page");
                m7186m();
            }
            m7178u();
            EventManager.m5725a(this, "Trial_Opt_In_Entered");
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        m7188k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        m7188k();
    }

    /* renamed from: p */
    public /* synthetic */ void m7183p(View view) {
        m7175x();
    }

    /* renamed from: q */
    public /* synthetic */ void m7182q(View view) {
        m7189j();
    }

    /* renamed from: r */
    public /* synthetic */ Unit m7181r() {
        LogUtil.m5643d("OnboardingOptionsActivity#", "User clicked 'got it' on the opt-in dialog.");
        m7188k();
        m7186m();
        return Unit.f20447a;
    }

    /* renamed from: s */
    public /* synthetic */ Unit m7180s() {
        LogUtil.m5643d("OnboardingOptionsActivity#", "User clicked 'got it' on the opt-out dialog.");
        m7188k();
        this.f13017f.m7173b();
        return Unit.f20447a;
    }

    /* renamed from: t */
    public /* synthetic */ Unit m7179t() {
        LogUtil.m5643d("OnboardingOptionsActivity#", "User clicked 'start trial' on the opt-out dialog.");
        m7188k();
        m7190i();
        return Unit.f20447a;
    }

    /* renamed from: v */
    public void m7177v() {
        this.f13022k = NameIDDialogBuilder.f13943m.m6127q(new Function0() { // from class: com.tmobile.services.nameid.Startup.options.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return OnboardingOptionsActivity.this.m7181r();
            }
        }).m6160b(getSupportFragmentManager());
    }

    /* renamed from: w */
    public void m7176w() {
        this.f13022k = NameIDDialogBuilder.f13943m.m6126r(new Function0() { // from class: com.tmobile.services.nameid.Startup.options.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return OnboardingOptionsActivity.this.m7180s();
            }
        }, new Function0() { // from class: com.tmobile.services.nameid.Startup.options.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return OnboardingOptionsActivity.this.m7179t();
            }
        }).m6160b(getSupportFragmentManager());
    }

    /* renamed from: x */
    public void m7175x() {
        if (this.f13019h) {
            LogUtil.m5643d("OnboardingOptionsActivity#", "User clicked 'maybe later' but there's already a request in progress.");
            return;
        }
        LogUtil.m5643d("OnboardingOptionsActivity#", "User clicked 'maybe later'.");
        this.f13017f.m7174a();
    }
}
