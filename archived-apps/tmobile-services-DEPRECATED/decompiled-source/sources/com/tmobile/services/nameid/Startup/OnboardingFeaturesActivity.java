package com.tmobile.services.nameid.Startup;

import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.carousel.NameIDCarouselIndicator;
import com.tmobile.services.nameid.p007ui.carousel.NameIDCarouselPageChangeListener;
import com.tmobile.services.nameid.p007ui.carousel.NameIDCarouselPagerAdapter;
import com.tmobile.services.nameid.p007ui.dialog_fragment.CustomInfoDialogFragment;
import com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010\u0010J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcom/tmobile/services/nameid/Startup/OnboardingFeaturesActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "", "lastPage", "", "formatActionButton", "(Z)V", "", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment;", "getCarouselFragments", "()Ljava/util/List;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "setFullScreen", "()V", "", "LOG_TAG", "Ljava/lang/String;", "Lcom/tmobile/services/nameid/ui/NameIDButton;", "actionButton", "Lcom/tmobile/services/nameid/ui/NameIDButton;", "Lcom/tmobile/services/nameid/Startup/FlowController;", "flowController", "Lcom/tmobile/services/nameid/Startup/FlowController;", "", "layoutResId", "I", "Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator;", "tabIndicator", "Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator;", "Landroidx/viewpager/widget/ViewPager;", "viewPager", "Landroidx/viewpager/widget/ViewPager;", "<init>", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/OnboardingFeaturesActivity.class */
public final class OnboardingFeaturesActivity extends AppCompatActivity {

    /* renamed from: h */
    private ViewPager f12977h;

    /* renamed from: i */
    private NameIDCarouselIndicator f12978i;

    /* renamed from: j */
    private NameIDButton f12979j;

    /* renamed from: f */
    private final String f12975f = "OnboardingFeatures";

    /* renamed from: g */
    private final int f12976g = C1517R.layout.activity_onboarding_features;

    /* renamed from: k */
    private final FlowController f12980k = new FlowController(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public final void m7204k(boolean z) {
        if (z) {
            NameIDButton nameIDButton = this.f12979j;
            if (nameIDButton != null) {
                nameIDButton.setText(C1517R.string.general_enthusiastic_got_it);
                NameIDButton nameIDButton2 = this.f12979j;
                if (nameIDButton2 != null) {
                    nameIDButton2.setBackgroundColor(getResources().getColor(17170445));
                    NameIDButton nameIDButton3 = this.f12979j;
                    if (nameIDButton3 != null) {
                        nameIDButton3.setTextColor(ContextCompat.m19675d(this, C1517R.C1518color.magenta_or_royal_purple));
                    } else {
                        Intrinsics.m1814u("actionButton");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("actionButton");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("actionButton");
                throw null;
            }
        } else if (!z) {
            NameIDButton nameIDButton4 = this.f12979j;
            if (nameIDButton4 != null) {
                nameIDButton4.setText(C1517R.string.onboarding_carousel_skip_text);
                NameIDButton nameIDButton5 = this.f12979j;
                if (nameIDButton5 != null) {
                    nameIDButton5.setBackgroundColor(getResources().getColor(17170445));
                    NameIDButton nameIDButton6 = this.f12979j;
                    if (nameIDButton6 != null) {
                        nameIDButton6.setTextColor(getResources().getColor(C1517R.C1518color.white_or_black));
                    } else {
                        Intrinsics.m1814u("actionButton");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("actionButton");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("actionButton");
                throw null;
            }
        }
    }

    /* renamed from: l */
    private final List<FeatureDisplayFragment> m7203l() {
        List<FeatureDisplayFragment> k;
        k = CollectionsKt__CollectionsKt.m2170k(new FeatureDisplayFragment.ScamShield(), new FeatureDisplayFragment.ScamId(), new FeatureDisplayFragment.NumberChange());
        if (BuildUtils.m5851c() && !SubscriptionHelper.m5332B()) {
            k.add(2, new FeatureDisplayFragment.ProxyDigits());
        }
        if (!SubscriptionHelper.m5309s(null)) {
            k.add(1, new FeatureDisplayFragment.CallerId(!SubscriptionHelper.m5313o(null)));
        }
        return k;
    }

    /* renamed from: m */
    private final void m7202m() {
        Window window = getWindow();
        Intrinsics.m1831d(window, "window");
        View decorView = window.getDecorView();
        Intrinsics.m1831d(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        if (Build.VERSION.SDK_INT >= 21) {
            String str = BuildUtils.m5850d() ? "#ffffff" : "#000000";
            Window window2 = getWindow();
            Intrinsics.m1831d(window2, "window");
            window2.setStatusBarColor(Color.parseColor(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5643d(this.f12975f, "Creating OnboardingFeaturesActivity");
        setContentView(this.f12976g);
        View findViewById = findViewById(C1517R.C1520id.view_pager);
        Intrinsics.m1831d(findViewById, "findViewById(R.id.view_pager)");
        this.f12977h = (ViewPager) findViewById;
        View findViewById2 = findViewById(C1517R.C1520id.tab_indicators);
        Intrinsics.m1831d(findViewById2, "findViewById(R.id.tab_indicators)");
        this.f12978i = (NameIDCarouselIndicator) findViewById2;
        View findViewById3 = findViewById(C1517R.C1520id.action_button);
        Intrinsics.m1831d(findViewById3, "findViewById(R.id.action_button)");
        this.f12979j = (NameIDButton) findViewById3;
        final List<FeatureDisplayFragment> l = m7203l();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.m1831d(supportFragmentManager, "supportFragmentManager");
        NameIDCarouselPagerAdapter nameIDCarouselPagerAdapter = new NameIDCarouselPagerAdapter(supportFragmentManager, l);
        final NameIDCarouselIndicator nameIDCarouselIndicator = this.f12978i;
        if (nameIDCarouselIndicator != null) {
            NameIDCarouselPageChangeListener onboardingFeaturesActivity$onCreate$pageChangeListener$1 = new NameIDCarouselPageChangeListener(nameIDCarouselIndicator) { // from class: com.tmobile.services.nameid.Startup.OnboardingFeaturesActivity$onCreate$pageChangeListener$1
                @Override // com.tmobile.services.nameid.p007ui.carousel.NameIDCarouselPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageSelected(int i) {
                    int h;
                    super.onPageSelected(i);
                    h = CollectionsKt__CollectionsKt.m2173h(l);
                    if (i == h) {
                        OnboardingFeaturesActivity.this.m7204k(true);
                    } else {
                        OnboardingFeaturesActivity.this.m7204k(false);
                    }
                }
            };
            NameIDButton nameIDButton = this.f12979j;
            if (nameIDButton != null) {
                nameIDButton.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Startup.OnboardingFeaturesActivity$onCreate$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        FlowController flowController;
                        PreferenceUtils.m5386k("pref_shown_onboarding_features", true);
                        flowController = OnboardingFeaturesActivity.this.f12980k;
                        flowController.m7223e();
                    }
                });
                ViewPager viewPager = this.f12977h;
                if (viewPager != null) {
                    viewPager.setAdapter(nameIDCarouselPagerAdapter);
                    ViewPager viewPager2 = this.f12977h;
                    if (viewPager2 != null) {
                        viewPager2.m16512c(onboardingFeaturesActivity$onCreate$pageChangeListener$1);
                        NameIDCarouselIndicator nameIDCarouselIndicator2 = this.f12978i;
                        if (nameIDCarouselIndicator2 != null) {
                            ViewPager viewPager3 = this.f12977h;
                            if (viewPager3 != null) {
                                nameIDCarouselIndicator2.setupWithViewPager(viewPager3);
                                NameIDCarouselIndicator nameIDCarouselIndicator3 = this.f12978i;
                                if (nameIDCarouselIndicator3 != null) {
                                    ViewPager viewPager4 = this.f12977h;
                                    if (viewPager4 != null) {
                                        nameIDCarouselIndicator3.m6189d(viewPager4.getCurrentItem());
                                        m7204k(false);
                                        m7202m();
                                        boolean b = PreferenceUtils.m5395b("PREF_HAS_SHOWN_SCAM_SHIELD_UPGRADE", false);
                                        String str = this.f12975f;
                                        LogUtil.m5643d(str, "has shown Scam Freedom intro? " + b);
                                        if (!b) {
                                            PreferenceUtils.m5386k("PREF_HAS_SHOWN_SCAM_SHIELD_UPGRADE", true);
                                            LogUtil.m5643d(this.f12975f, "Showing Scam Shield upgrade modal");
                                            CustomInfoDialogFragment.Companion companion = CustomInfoDialogFragment.f13921i;
                                            FragmentManager supportFragmentManager2 = getSupportFragmentManager();
                                            Intrinsics.m1831d(supportFragmentManager2, "supportFragmentManager");
                                            companion.m6179a(supportFragmentManager2, C1517R.layout.modal_app_upgrade, OnboardingFeaturesActivity$onCreate$2.f12982f);
                                            return;
                                        }
                                        return;
                                    }
                                    Intrinsics.m1814u("viewPager");
                                    throw null;
                                }
                                Intrinsics.m1814u("tabIndicator");
                                throw null;
                            }
                            Intrinsics.m1814u("viewPager");
                            throw null;
                        }
                        Intrinsics.m1814u("tabIndicator");
                        throw null;
                    }
                    Intrinsics.m1814u("viewPager");
                    throw null;
                }
                Intrinsics.m1814u("viewPager");
                throw null;
            }
            Intrinsics.m1814u("actionButton");
            throw null;
        }
        Intrinsics.m1814u("tabIndicator");
        throw null;
    }
}
