package com.privacystar.core.p011ui.intro.verification;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.TextInputLayout;
import android.support.p004v7.widget.CardView;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.p011ui.intro.verification.NumberVerification;
import com.privacystar.core.p011ui.widgets.PSSnackBars;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.NumbersUtil;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.sequences.SequencesKt;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0019\u001a\u00020\u0006H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0014J\b\u0010\u001e\u001a\u00020\u0006H\u0016J\b\u0010\u001f\u001a\u00020\u001bH\u0002J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"H\u0002J&\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0010\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020\u0006H\u0016J\u0010\u0010-\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020\"H\u0016J\u0018\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006H\u0016J\b\u00102\u001a\u00020\u0006H\u0016J\u0010\u00103\u001a\u00020\u001b2\u0006\u00104\u001a\u00020\u0006H\u0016J\b\u00105\u001a\u00020\u001bH\u0016J\u0010\u00106\u001a\u00020\u001b2\u0006\u00104\u001a\u00020\u0006H\u0016J\b\u00107\u001a\u00020\u001bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n��R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.¢\u0006\u0002\n��¨\u00068"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/NumberVerificationFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "Lcom/privacystar/core/ui/intro/verification/NumberVerification$View;", "()V", "denyInput", "", "explanatoryImage", "Landroid/widget/ImageView;", "numberField", "Landroid/widget/EditText;", "presenter", "Lcom/privacystar/core/ui/intro/verification/NumberVerificationPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/intro/verification/NumberVerificationPresenter;", "presenter$delegate", "Lkotlin/Lazy;", "sendCv", "Landroid/support/v7/widget/CardView;", "snackbarLocation", "Landroid/support/design/widget/CoordinatorLayout;", "textInputLayout", "Landroid/support/design/widget/TextInputLayout;", "validationError", "Landroid/widget/TextView;", "canAutoTransition", "clearTextField", "", "getLayoutResId", "", "handlesBackButton", "hideKeyboard", "numberOfDigits", "text", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "setInputEnabled", "enabled", "setNumberFieldText", "deviceNumber", "setupNumberFieldAndClickListeners", "shouldLimitPhoneNumberInput", "shouldTriggerNextOnKeyboard", "shouldDisplay", "showImage", "visible", "showValidationErrorAsSnackbar", "showValidationErrorAsText", "transition", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.NumberVerificationFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/NumberVerificationFragment.class */
public final class NumberVerificationFragment extends IntroFragment implements IntroActivity.IntroActivityContent, NumberVerification.View {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NumberVerificationFragment.class), "presenter", "getPresenter()Lcom/privacystar/core/ui/intro/verification/NumberVerificationPresenter;"))};
    private HashMap _$_findViewCache;
    private boolean denyInput;
    private ImageView explanatoryImage;
    private EditText numberField;
    private final Lazy presenter$delegate = LazyKt.lazy(new NumberVerificationFragment$presenter$2(this));
    private CardView sendCv;
    private CoordinatorLayout snackbarLocation;
    private TextInputLayout textInputLayout;
    private TextView validationError;

    @NotNull
    public static final /* synthetic */ EditText access$getNumberField$p(NumberVerificationFragment numberVerificationFragment) {
        EditText editText = numberVerificationFragment.numberField;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberField");
        }
        return editText;
    }

    @NotNull
    public static final /* synthetic */ TextInputLayout access$getTextInputLayout$p(NumberVerificationFragment numberVerificationFragment) {
        TextInputLayout textInputLayout = numberVerificationFragment.textInputLayout;
        if (textInputLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textInputLayout");
        }
        return textInputLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NumberVerificationPresenter getPresenter() {
        Lazy lazy = this.presenter$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (NumberVerificationPresenter) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideKeyboard() {
        Activity activity;
        View currentFocus;
        IBinder windowToken;
        Activity activity2 = this.activity;
        InputMethodManager inputMethodManager = (InputMethodManager) (activity2 != null ? activity2.getSystemService("input_method") : null);
        if (inputMethodManager != null && (activity = this.activity) != null && (currentFocus = activity.getCurrentFocus()) != null && (windowToken = currentFocus.getWindowToken()) != null) {
            inputMethodManager.hideSoftInputFromWindow(windowToken, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int numberOfDigits(String str) {
        return SequencesKt.sumOfInt(SequencesKt.map(Regex.findAll$default(new Regex("\\d+"), str, 0, 2, null), NumberVerificationFragment$numberOfDigits$1.INSTANCE));
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
        return getPresenter().canAutoTransition();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.View
    public void clearTextField() {
        Timber.m37d("Phone number validation failed. Clearing input field.", new Object[0]);
        EditText editText = this.numberField;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberField");
        }
        editText.getText().clear();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.number_verification_fragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return getPresenter().handlesBackButton();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        EditText editText = (EditText) view.findViewById(C1566R.C1569id.phone_number_et);
        Intrinsics.checkExpressionValueIsNotNull(editText, "view.phone_number_et");
        this.numberField = editText;
        TextView textView = (TextView) view.findViewById(C1566R.C1569id.phone_number_validation_error_tv);
        Intrinsics.checkExpressionValueIsNotNull(textView, "view.phone_number_validation_error_tv");
        this.validationError = textView;
        ImageView imageView = (ImageView) view.findViewById(C1566R.C1569id.number_verification_image_iv);
        Intrinsics.checkExpressionValueIsNotNull(imageView, "view.number_verification_image_iv");
        this.explanatoryImage = imageView;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view.findViewById(C1566R.C1569id.phone_number_validation_snackbar_location);
        Intrinsics.checkExpressionValueIsNotNull(coordinatorLayout, "view.phone_number_validation_snackbar_location");
        this.snackbarLocation = coordinatorLayout;
        CardView cardView = (CardView) view.findViewById(C1566R.C1569id.number_verification_send_cv);
        Intrinsics.checkExpressionValueIsNotNull(cardView, "view.number_verification_send_cv");
        this.sendCv = cardView;
        TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(C1566R.C1569id.number_verification_input_layout);
        Intrinsics.checkExpressionValueIsNotNull(textInputLayout, "view.number_verification_input_layout");
        this.textInputLayout = textInputLayout;
        getPresenter().viewCreated();
        return view;
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.View
    public void setInputEnabled(boolean z) {
        EditText editText = this.numberField;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberField");
        }
        editText.setFocusable(z);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.View
    public void setNumberFieldText(@NotNull String deviceNumber) {
        Intrinsics.checkParameterIsNotNull(deviceNumber, "deviceNumber");
        EditText editText = this.numberField;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberField");
        }
        editText.setText(NumbersUtil.getDisplayNumber(deviceNumber));
        EditText editText2 = this.numberField;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberField");
        }
        editText2.requestFocus();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.View
    public void setupNumberFieldAndClickListeners(final boolean z, boolean z2) {
        CardView cardView = this.sendCv;
        if (cardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendCv");
        }
        cardView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.verification.NumberVerificationFragment$setupNumberFieldAndClickListeners$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NumberVerificationPresenter presenter;
                Timber.m37d("Send Code button clicked.", new Object[0]);
                NumberVerificationFragment.this.hideKeyboard();
                String replace = new Regex("[^0-9]").replace(NumberVerificationFragment.access$getNumberField$p(NumberVerificationFragment.this).getText().toString(), "");
                presenter = NumberVerificationFragment.this.getPresenter();
                presenter.onSendCodeButtonClick(replace);
            }
        });
        EditText editText = this.numberField;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberField");
        }
        editText.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.verification.NumberVerificationFragment$setupNumberFieldAndClickListeners$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NumberVerificationPresenter presenter;
                presenter = NumberVerificationFragment.this.getPresenter();
                presenter.phoneNumberLineClicked();
            }
        });
        editText.addTextChangedListener(new PhoneNumberFormattingTextWatcher() { // from class: com.privacystar.core.ui.intro.verification.NumberVerificationFragment$setupNumberFieldAndClickListeners$$inlined$with$lambda$2
            @Override // android.telephony.PhoneNumberFormattingTextWatcher, android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                int numberOfDigits;
                super.afterTextChanged(editable);
                NumberVerificationFragment numberVerificationFragment = NumberVerificationFragment.this;
                numberOfDigits = NumberVerificationFragment.this.numberOfDigits(String.valueOf(editable));
                numberVerificationFragment.denyInput = numberOfDigits > 10;
            }
        });
        if (z) {
            editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.privacystar.core.ui.intro.verification.NumberVerificationFragment$setupNumberFieldAndClickListeners$$inlined$with$lambda$3
                @Override // android.text.InputFilter
                public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                    boolean z3;
                    z3 = NumberVerificationFragment.this.denyInput;
                    return z3 ? "" : null;
                }
            }, new InputFilter.LengthFilter(15)});
        }
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.privacystar.core.ui.intro.verification.NumberVerificationFragment$setupNumberFieldAndClickListeners$$inlined$with$lambda$4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z3) {
                if (z3) {
                    NumberVerificationFragment.access$getTextInputLayout$p(NumberVerificationFragment.this).setHint(NumberVerificationFragment.this.getString(C1566R.string.number_verification_phone_number_input_layout_hint));
                } else {
                    NumberVerificationFragment.access$getTextInputLayout$p(NumberVerificationFragment.this).setHint(NumberVerificationFragment.this.getString(C1566R.string.number_verification_phone_number_hint));
                }
            }
        });
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.privacystar.core.ui.intro.verification.NumberVerificationFragment$setupNumberFieldAndClickListeners$$inlined$with$lambda$5
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean z3;
                switch (i) {
                    case 5:
                    case 6:
                        NumberVerificationFragment.this.hideKeyboard();
                        z3 = true;
                        break;
                    default:
                        z3 = false;
                        break;
                }
                return z3;
            }
        });
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        Context context = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        return context.getResources().getBoolean(C1566R.bool.calleryd_enabled) && !PreferenceUtil.getIsNumberVerified() && !PreferenceUtil.getIsNumberVerifying() && !PreferenceUtil.getIsNumberVerificationSkipped();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.View
    public void showImage(boolean z) {
        ImageView imageView = this.explanatoryImage;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("explanatoryImage");
        }
        imageView.setVisibility(z ? 0 : 8);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.View
    public void showValidationErrorAsSnackbar() {
        Timber.m37d("Setting validation error text as Snackbar", new Object[0]);
        PSSnackBars pSSnackBars = PSSnackBars.INSTANCE;
        CoordinatorLayout coordinatorLayout = this.snackbarLocation;
        if (coordinatorLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snackbarLocation");
        }
        CoordinatorLayout coordinatorLayout2 = coordinatorLayout;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        PSSnackBars.getTopToBottomNoActionSnack$default(pSSnackBars, coordinatorLayout2, context, C1566R.string.number_verification_error, true, false, 16, null).show();
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.View
    public void showValidationErrorAsText(boolean z) {
        int i = 0;
        Timber.m37d("Setting validation error text to: [%sVISIBLE].", z ? "" : "IN");
        TextView textView = this.validationError;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("validationError");
        }
        if (!z) {
            i = 4;
        }
        textView.setVisibility(i);
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.View
    public void transition() {
        Timber.m37d("Transitioning to next view.", new Object[0]);
        transitionIntroFragment();
    }
}
