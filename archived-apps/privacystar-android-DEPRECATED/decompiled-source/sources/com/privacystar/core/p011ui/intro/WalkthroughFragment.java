package com.privacystar.core.p011ui.intro;

import android.app.Activity;
import android.os.Bundle;
import android.support.p001v4.text.HtmlCompat;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import com.jakewharton.rxbinding2.view.RxView;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.p011ui.walkthrough.OnSwipeTouchListener;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010\r\u001a\u00020\fH\u0014J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u0015H$J\b\u0010\u0016\u001a\u00020\u0015H\u0014J\b\u0010\u0017\u001a\u00020\fH\u0014J\b\u0010\u0018\u001a\u00020\nH\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010!\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\u001a2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0010\u0010#\u001a\u00020\f2\u0006\u0010$\u001a\u00020\u0015H\u0002J\b\u0010%\u001a\u00020\nH\u0016J\b\u0010&\u001a\u00020\fH\u0014J\u0010\u0010'\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u0015H\u0002J\u0010\u0010)\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u0015H\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006+"}, m254d2 = {"Lcom/privacystar/core/ui/intro/WalkthroughFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "dots", "", "Landroid/widget/ImageView;", "images", "", "canAutoTransition", "", "createDots", "", "finishWalkthrough", "fromHtml", "Landroid/text/Spanned;", FirebaseAnalytics.Param.SOURCE, "", "getEventPageKeyValue", "Lcom/privacystar/core/service/analytics/Event$WalkthroughSkipAction;", "getIndex", "", "getLayoutResId", "handleLink", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", Promotion.ACTION_VIEW, "selectDot", "selectedIndex", "shouldDisplay", "transitionWalkthrough", "updatePageContent", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "updateText", "selected", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.WalkthroughFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/WalkthroughFragment.class */
public abstract class WalkthroughFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private HashMap _$_findViewCache;
    private final int[] images = {C1566R.C1568drawable.ic_onboard_welcome, C1566R.C1568drawable.ic_spoofing_bell, C1566R.C1568drawable.ic_onboard_identify, C1566R.C1568drawable.ic_onboard_block, C1566R.C1568drawable.ic_onboard_lookup, C1566R.C1568drawable.ic_onboard_reporting, C1566R.C1568drawable.ic_onboard_permissions};
    private final List<ImageView> dots = new ArrayList();

    private final void createDots() {
        int length = this.images.length;
        int i = 0;
        while (i < length) {
            this.dots.add(new ImageView(getContext()));
            if (i == 0) {
                this.dots.get(i).setImageResource(C1566R.C1568drawable.walkthrough_selected_dot);
            } else {
                this.dots.get(i).setImageResource(C1566R.C1568drawable.walkthrough_unselected_dot);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            int dpToPx = DensityUtil.dpToPx(getContext(), 9);
            this.dots.get(i).setPadding(dpToPx, dpToPx, dpToPx, dpToPx);
            this.dots.get(i).setLayoutParams(layoutParams);
            ImageView imageView = this.dots.get(i);
            imageView.setTag("dot" + i);
            ImageView imageView2 = this.dots.get(i);
            StringBuilder sb = new StringBuilder();
            sb.append(getString(C1566R.string.con_desc_walkthrough_page));
            int i2 = i + 1;
            sb.append(i2);
            imageView2.setContentDescription(sb.toString());
            ((LinearLayout) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_holder)).addView(this.dots.get(i));
            i = i2;
        }
    }

    private final Spanned fromHtml(String str) {
        Spanned fromHtml = HtmlCompat.fromHtml(str, 0);
        Intrinsics.checkExpressionValueIsNotNull(fromHtml, "HtmlCompat.fromHtml(sour…at.FROM_HTML_MODE_LEGACY)");
        return fromHtml;
    }

    private final Event.WalkthroughSkipAction getEventPageKeyValue() {
        Event.WalkthroughSkipAction walkthroughSkipAction;
        switch (getIndex()) {
            case 0:
                walkthroughSkipAction = Event.WalkthroughSkipAction.WELCOME;
                break;
            case 1:
                walkthroughSkipAction = Event.WalkthroughSkipAction.IDENTIFY;
                break;
            case 2:
                walkthroughSkipAction = Event.WalkthroughSkipAction.BLOCKED;
                break;
            case 3:
                walkthroughSkipAction = Event.WalkthroughSkipAction.LOOKUP;
                break;
            case 4:
                walkthroughSkipAction = Event.WalkthroughSkipAction.REPORTING;
                break;
            default:
                walkthroughSkipAction = Event.WalkthroughSkipAction.INVALID;
                break;
        }
        return walkthroughSkipAction;
    }

    private final void selectDot(int i) {
        if (!PreferenceUtil.getHasFinishedOnboarding()) {
            ImageView walkthrough_dot_2 = (ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_2);
            Intrinsics.checkExpressionValueIsNotNull(walkthrough_dot_2, "walkthrough_dot_2");
            walkthrough_dot_2.setVisibility(8);
        }
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_0)).setImageResource(C1566R.C1568drawable.walkthrough_unselected_dot);
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_1)).setImageResource(C1566R.C1568drawable.walkthrough_unselected_dot);
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_2)).setImageResource(C1566R.C1568drawable.walkthrough_unselected_dot);
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_3)).setImageResource(C1566R.C1568drawable.walkthrough_unselected_dot);
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_4)).setImageResource(C1566R.C1568drawable.walkthrough_unselected_dot);
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_5)).setImageResource(C1566R.C1568drawable.walkthrough_unselected_dot);
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_6)).setImageResource(C1566R.C1568drawable.walkthrough_unselected_dot);
        switch (i) {
            case 0:
                ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_0)).setImageResource(C1566R.C1568drawable.walkthrough_selected_dot);
                return;
            case 1:
                ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_1)).setImageResource(C1566R.C1568drawable.walkthrough_selected_dot);
                return;
            case 2:
                ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_2)).setImageResource(C1566R.C1568drawable.walkthrough_selected_dot);
                return;
            case 3:
                ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_3)).setImageResource(C1566R.C1568drawable.walkthrough_selected_dot);
                return;
            case 4:
                ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_4)).setImageResource(C1566R.C1568drawable.walkthrough_selected_dot);
                return;
            case 5:
                ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_5)).setImageResource(C1566R.C1568drawable.walkthrough_selected_dot);
                return;
            case 6:
                ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_6)).setImageResource(C1566R.C1568drawable.walkthrough_selected_dot);
                return;
            default:
                return;
        }
    }

    private final void updatePageContent(int i) {
        selectDot(i);
        updateText(i);
    }

    private final void updateText(int i) {
        String[] stringArray = getResources().getStringArray(C1566R.array.onboarding_hints);
        String[] stringArray2 = getResources().getStringArray(C1566R.array.onboarding_titles);
        String[] stringArray3 = getResources().getStringArray(C1566R.array.onboarding_subtitles);
        String[] stringArray4 = getResources().getStringArray(C1566R.array.onboarding_links);
        int min = Math.min(stringArray2.length, stringArray3.length);
        if (i < 0 || i >= min) {
            Timber.m25w("Tried to get text from array at index [%d] which is out of bounds. (Length: [%d])", Integer.valueOf(i), Integer.valueOf(min));
            return;
        }
        TextView walkthrough_hint = (TextView) _$_findCachedViewById(C1566R.C1569id.walkthrough_hint);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_hint, "walkthrough_hint");
        walkthrough_hint.setText(stringArray[i]);
        TextView walkthrough_title = (TextView) _$_findCachedViewById(C1566R.C1569id.walkthrough_title);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_title, "walkthrough_title");
        walkthrough_title.setText(stringArray2[i]);
        TextView walkthrough_subtitle = (TextView) _$_findCachedViewById(C1566R.C1569id.walkthrough_subtitle);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_subtitle, "walkthrough_subtitle");
        walkthrough_subtitle.setText(stringArray3[i]);
        TextView walkthrough_subtitle_link = (TextView) _$_findCachedViewById(C1566R.C1569id.walkthrough_subtitle_link);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_subtitle_link, "walkthrough_subtitle_link");
        String str = stringArray4[i];
        Intrinsics.checkExpressionValueIsNotNull(str, "links[selected]");
        walkthrough_subtitle_link.setText(fromHtml(str));
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_icon)).setImageResource(this.images[i]);
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void finishWalkthrough() {
        PreferenceUtil.putWalkthroughCompleted(true);
        if (this.activity instanceof IntroFragment.IntroFragmentContainer) {
            Activity activity = this.activity;
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.intro.intro_core.IntroFragment.IntroFragmentContainer");
            }
            Class<? extends IntroActivity.IntroActivityContent> lastClassBeforePermissions = ((IntroFragment.IntroFragmentContainer) activity).getLastClassBeforePermissions();
            Intrinsics.checkExpressionValueIsNotNull(lastClassBeforePermissions, "container.lastClassBeforePermissions");
            if (Intrinsics.areEqual(lastClassBeforePermissions.getSuperclass(), WalkthroughFragment.class)) {
                PreferenceUtil.putHasShownInitialPermissionRequest(true);
            }
        }
        AnalyticsManager.INSTANCE.fire(new Event.WalkthroughSkippedEvent(getEventPageKeyValue()));
        transitionIntroFragment();
    }

    protected abstract int getIndex();

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.walkthrough_fragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleLink() {
        Timber.m31i("Walkthrough linked clicked with no handler implementation.", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(getLayoutResId(), viewGroup, false);
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ((FrameLayout) _$_findCachedViewById(C1566R.C1569id.walkthrough_skip_fl)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.WalkthroughFragment$onViewCreated$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WalkthroughFragment.this.finishWalkthrough();
            }
        });
        FrameLayout walkthrough_next_fl = (FrameLayout) _$_findCachedViewById(C1566R.C1569id.walkthrough_next_fl);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_next_fl, "walkthrough_next_fl");
        Observable<R> map = RxView.clicks(walkthrough_next_fl).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.clicks(this).map(VoidToUnit)");
        map.throttleFirst(2L, TimeUnit.SECONDS).subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.intro.WalkthroughFragment$onViewCreated$2
            public final void accept(Unit unit) {
                WalkthroughFragment.this.transitionWalkthrough();
            }
        });
        ((TextView) _$_findCachedViewById(C1566R.C1569id.walkthrough_subtitle_link)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.WalkthroughFragment$onViewCreated$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WalkthroughFragment.this.handleLink();
            }
        });
        TextView walkthrough_subtitle_link = (TextView) _$_findCachedViewById(C1566R.C1569id.walkthrough_subtitle_link);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_subtitle_link, "walkthrough_subtitle_link");
        walkthrough_subtitle_link.setMovementMethod(LinkMovementMethod.getInstance());
        final Activity activity = this.activity;
        view.setOnTouchListener(new OnSwipeTouchListener(activity) { // from class: com.privacystar.core.ui.intro.WalkthroughFragment$onViewCreated$4
            @Override // com.privacystar.core.p011ui.walkthrough.OnSwipeTouchListener
            public void onSwipeLeft() {
                WalkthroughFragment.this.transitionWalkthrough();
            }

            @Override // com.privacystar.core.p011ui.walkthrough.OnSwipeTouchListener
            public void onSwipeRight() {
                WalkthroughFragment.this.rewindIntroFragment();
            }
        });
        updatePageContent(getIndex());
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getWalkthroughCompleted();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void transitionWalkthrough() {
        Timber.m37d("Walkthrough next triggered but no extra handling required.", new Object[0]);
        transitionIntroFragment();
    }
}
