package com.tmobile.services.nameid.p007ui.dialog_fragment;

import android.content.Context;
import android.text.Html;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.URLSpan;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.dialog_fragment.DialogInfo;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import com.tmobile.services.nameid.utility.ErrorMessage;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MataErrorInterpreter;
import com.tmobile.services.nameid.utility.MetroApiErrorInterpreter;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018�� I:\u0001IB\u0007¢\u0006\u0004\bG\u0010HJ\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\u000e\u001a\u00020��2\u0006\u0010\n\u001a\u00020\t2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020��2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\t¢\u0006\u0004\b\u0015\u0010\u0016J+\u0010\u0015\u001a\u00020��2\b\b\u0001\u0010\u0018\u001a\u00020\u00172\u0012\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001a0\u0019\"\u00020\u001a¢\u0006\u0004\b\u0015\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020��2\b\b\u0001\u0010\u001d\u001a\u00020\u0017¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010!\u001a\u00020��2\u0006\u0010 \u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\t¢\u0006\u0004\b!\u0010\u0016J+\u0010!\u001a\u00020��2\b\b\u0001\u0010\"\u001a\u00020\u00172\u0012\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001a0\u0019\"\u00020\u001a¢\u0006\u0004\b!\u0010\u001cJ\u0015\u0010!\u001a\u00020��2\u0006\u0010#\u001a\u00020\u001a¢\u0006\u0004\b!\u0010$J\u0015\u0010&\u001a\u00020\f2\u0006\u0010%\u001a\u00020\t¢\u0006\u0004\b&\u0010'J\u001b\u0010(\u001a\u00020��2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b(\u0010\u0011J\u001f\u0010*\u001a\u00020��2\u0006\u0010)\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\t¢\u0006\u0004\b*\u0010\u0016J+\u0010*\u001a\u00020��2\b\b\u0001\u0010+\u001a\u00020\u00172\u0012\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001a0\u0019\"\u00020\u001a¢\u0006\u0004\b*\u0010\u001cJ\u0015\u0010-\u001a\u00020��2\u0006\u0010,\u001a\u00020\t¢\u0006\u0004\b-\u0010.J\u001f\u00100\u001a\u00020��2\u0006\u0010/\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\t¢\u0006\u0004\b0\u0010\u0016J+\u00100\u001a\u00020��2\b\b\u0001\u00101\u001a\u00020\u00172\u0012\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001a0\u0019\"\u00020\u001a¢\u0006\u0004\b0\u0010\u001cJ\u0015\u00102\u001a\u00020\f2\u0006\u0010%\u001a\u00020\t¢\u0006\u0004\b2\u0010'R\u0016\u00105\u001a\u00020\u001a8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b3\u00104R\u001e\u00106\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u001e\u00108\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00107R\u0016\u0010:\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010<\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010>\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010;R\u0016\u0010?\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010A\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010@R\u001e\u0010B\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u00107R\u0018\u0010C\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010;R\u0016\u0010D\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010@R\u0018\u0010E\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010;R\u0016\u0010F\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010@¨\u0006J"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo;", "build", "()Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo;", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Landroidx/fragment/app/DialogFragment;", "buildAndShow", "(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/DialogFragment;", "", "show", "Lkotlin/Function0;", "", "action", "setCloseButton", "(ZLkotlin/Function0;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "setConfirmAction", "(Lkotlin/Function0;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "Landroid/text/Spanned;", "confirmSpanned", "isUrl", "setConfirmLabel", "(Landroid/text/Spanned;Z)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "", "confirmRes", "", "", "args", "(I[Ljava/lang/String;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "res", "setIcon", "(I)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "messageSpanned", "setMessage", "messRes", "messageString", "(Ljava/lang/String;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "resizable", "setMessageResizable", "(Z)V", "setSecondaryAction", "secondarySpanned", "setSecondaryLabel", "secondRes", "underline", "setSecondaryLabelUnderline", "(Z)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "titleSpanned", "setTitle", "titleRes", "setTitleResizable", "LOG_TAG$1", "Ljava/lang/String;", "LOG_TAG", "closeAction", "Lkotlin/Function0;", "confirmAction", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;", "confirmText", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;", "iconRes", "Ljava/lang/Integer;", "message", "resizableMessage", "Z", "resizableTitle", "secondaryAction", "secondaryText", "showCloseButton", "title", "underlineSecondary", "<init>", "()V", "Templates", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDDialogBuilder */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder.class */
public final class NameIDDialogBuilder {

    /* renamed from: m */
    public static final Templates f13943m = new Templates(null);
    @DrawableRes

    /* renamed from: a */
    private Integer f13944a;

    /* renamed from: b */
    private boolean f13945b;

    /* renamed from: c */
    private Function0<Unit> f13946c;

    /* renamed from: d */
    private DialogInfo.Text f13947d;

    /* renamed from: e */
    private boolean f13948e;

    /* renamed from: f */
    private DialogInfo.Text f13949f;

    /* renamed from: g */
    private boolean f13950g;

    /* renamed from: h */
    private DialogInfo.Text f13951h = new DialogInfo.Text.ResourceId(C1517R.string.general_confirm, null, 2, null);

    /* renamed from: i */
    private Function0<Unit> f13952i;

    /* renamed from: j */
    private DialogInfo.Text f13953j;

    /* renamed from: k */
    private Function0<Unit> f13954k;

    /* renamed from: l */
    private boolean f13955l;

    @Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\bB\u0010CJ\u001f\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u000e\u0010\u000fJ=\u0010\u0015\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u00102\b\b\u0001\u0010\u0012\u001a\u00020\u00102\b\b\u0001\u0010\u0013\u001a\u00020\u00102\b\b\u0001\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0010H\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ)\u0010\u001d\u001a\u00020\r2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010 \u001a\u00020\r2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b \u0010\u001eJ)\u0010\"\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u00102\b\b\u0001\u0010!\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\"\u0010#J\r\u0010$\u001a\u00020\r¢\u0006\u0004\b$\u0010%J%\u0010)\u001a\u00020\r2\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b)\u0010*J%\u0010-\u001a\u00020\r2\u0006\u0010,\u001a\u00020+2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b-\u0010.J\u0015\u0010/\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b/\u0010\u001aJ\u0015\u00100\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b0\u0010\u001aJ\u0015\u00103\u001a\u00020\r2\u0006\u00102\u001a\u000201¢\u0006\u0004\b3\u00104J\u001b\u00106\u001a\u00020\r2\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b6\u00107J\u001b\u00109\u001a\u00020\r2\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b9\u00107J\u001b\u0010;\u001a\u00020\r2\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b;\u00107J)\u0010=\u001a\u00020\r2\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b=\u0010\u001eJ\r\u0010>\u001a\u00020\r¢\u0006\u0004\b>\u0010%R\u0016\u0010?\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010A\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\bA\u0010@¨\u0006D"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder$Templates;", "Landroid/text/SpannableString;", "originalSpan", "Landroid/content/Context;", "context", "addUrlToSpan", "(Landroid/text/SpannableString;Landroid/content/Context;)Landroid/text/SpannableString;", "", "name", "number", "Lkotlin/Function0;", "", "onNeedContactPermission", "Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "getAddContact", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/Function0;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "", "title", "bodyStart", "bodyEnd", "buttonText", "getCallCareError", "(IIIILandroid/content/Context;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "getCallCareNumber", "()I", "getCallCareUpgrade", "(Landroid/content/Context;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "onUnsubscribeClicked", "onCancelClicked", "getEndSubscription", "(Lkotlin/Function0;Lkotlin/Function0;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "onEndTrialClicked", "getEndTrial", "body", "getGeneralErrorMessage", "(IILandroid/content/Context;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "getHangTightPendingSubscription", "()Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "Lcom/tmobile/services/nameid/utility/MataErrorInterpreter$MataAction;", "mataAction", "errorCode", "getMataErrorDialog", "(Lcom/tmobile/services/nameid/utility/MataErrorInterpreter$MataAction;Ljava/lang/String;Landroid/content/Context;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "Lcom/tmobile/services/nameid/utility/MetroApiErrorInterpreter$MetroApiAction;", "action", "getMetroApiErrorDialog", "(Lcom/tmobile/services/nameid/utility/MetroApiErrorInterpreter$MetroApiAction;Ljava/lang/String;Landroid/content/Context;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "getNoNetwork", "getProcessingError", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Presenter;", "presenter", "getScamConfirmation", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Presenter;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "contactPermission", "getSearchContactPermission", "(Lkotlin/Function0;)Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder;", "confirmAction", "getSearchInvalid", "onGotItClicked", "getTrialOptIn", "onStartTrialClicked", "getTrialOptOut", "getUnknownError", "GENERIC_DIALOG", "Ljava/lang/String;", "LOG_TAG", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDDialogBuilder$Templates */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogBuilder$Templates.class */
    public static final class Templates {
        private Templates() {
        }

        public /* synthetic */ Templates(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private final SpannableString m6143a(SpannableString spannableString, Context context) {
            List b;
            Pair M;
            String string = SubscriptionHelper.m5332B() ? context.getString(C1517R.string.account_my_sprint) : context.getString(C1517R.string.account_my_tmobile);
            Intrinsics.m1831d(string, "when {\n                S…my_tmobile)\n            }");
            String string2 = SubscriptionHelper.m5332B() ? context.getString(C1517R.string.account_my_sprint_url) : context.getString(C1517R.string.account_my_tmobile_url);
            Intrinsics.m1831d(string2, "when {\n                S…mobile_url)\n            }");
            b = CollectionsKt__CollectionsJVMKt.m2179b(string);
            M = StringsKt__StringsKt.m1461M(spannableString, b, 0, true, 2, null);
            if (M != null) {
                spannableString.setSpan(new URLSpan(string2), ((Number) M.m2484c()).intValue(), ((Number) M.m2484c()).intValue() + string.length(), 33);
            }
            return spannableString;
        }

        @StringRes
        /* renamed from: d */
        private final int m6140d() {
            return SubscriptionHelper.m5332B() ? C1517R.string.call_care_number_xp : C1517R.string.call_care_number;
        }

        @NotNull
        /* renamed from: b */
        public final NameIDDialogBuilder m6142b(@NotNull String name, @NotNull String number, @NotNull Function0<Unit> onNeedContactPermission) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(number, "number");
            Intrinsics.m1830e(onNeedContactPermission, "onNeedContactPermission");
            if (!(name.length() > 0)) {
                if (number.length() > 0) {
                    name = PhoneNumberHelper.m5412g(number, "");
                    Intrinsics.m1831d(name, "PhoneNumberHelper.getDisplayNumber(number, \"\")");
                } else {
                    name = "";
                }
            }
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.add_contact_dialog_title, name);
            nameIDDialogBuilder.m6154h(C1517R.string.add_contact_dialog_description, name);
            nameIDDialogBuilder.m6156f(C1517R.string.add_contact_dialog_confirm, new String[0]);
            nameIDDialogBuilder.m6148n(C1517R.string.add_contact_dialog_cancel, new String[0]);
            nameIDDialogBuilder.m6157e(onNeedContactPermission);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: c */
        public final NameIDDialogBuilder m6141c(@StringRes int i, @StringRes int i2, @StringRes int i3, @StringRes int i4, @NotNull Context context) {
            Intrinsics.m1830e(context, "context");
            String string = context.getString(m6140d());
            Intrinsics.m1831d(string, "context.getString(getCallCareNumber())");
            Spanned span = Html.fromHtml(context.getString(i2) + " <a href=\"tel:" + string + "\"> " + string + "</a> " + context.getString(i3));
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(i, new String[0]);
            Intrinsics.m1831d(span, "span");
            NameIDDialogBuilder.m6151k(nameIDDialogBuilder, span, false, 2, null);
            nameIDDialogBuilder.m6156f(i4, new String[0]);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: e */
        public final NameIDDialogBuilder m6139e(@NotNull Context context) {
            Intrinsics.m1830e(context, "context");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.my_account_call_care_upgrade_title, new String[0]);
            nameIDDialogBuilder.m6154h(SubscriptionHelper.m5332B() ? C1517R.string.my_account_call_care_upgrade_desc_xp : C1517R.string.my_account_call_care_upgrade_desc, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_got_it, new String[0]);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: f */
        public final NameIDDialogBuilder m6138f(@NotNull Function0<Unit> onUnsubscribeClicked, @NotNull Function0<Unit> onCancelClicked) {
            Intrinsics.m1830e(onUnsubscribeClicked, "onUnsubscribeClicked");
            Intrinsics.m1830e(onCancelClicked, "onCancelClicked");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6155g(C1517R.C1519drawable.ic_illustrations_question);
            nameIDDialogBuilder.m6146p(C1517R.string.account_downgrade_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.account_downgrade_desc, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.account_downgrade_confirm, new String[0]);
            nameIDDialogBuilder.m6148n(C1517R.string.account_downgrade_cancel, new String[0]);
            nameIDDialogBuilder.m6157e(onUnsubscribeClicked);
            nameIDDialogBuilder.m6149m(onCancelClicked);
            NameIDDialogBuilder.m6158d(nameIDDialogBuilder, true, null, 2, null);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: g */
        public final NameIDDialogBuilder m6137g(@NotNull Function0<Unit> onEndTrialClicked, @NotNull Function0<Unit> onCancelClicked) {
            Intrinsics.m1830e(onEndTrialClicked, "onEndTrialClicked");
            Intrinsics.m1830e(onCancelClicked, "onCancelClicked");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6155g(C1517R.C1519drawable.ic_illustrations_question);
            nameIDDialogBuilder.m6146p(C1517R.string.my_account_settings_end_trial_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.my_account_settings_end_trial_desc, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.my_account_settings_end_trial_confirm, new String[0]);
            nameIDDialogBuilder.m6148n(C1517R.string.my_account_settings_end_trial_cancel, new String[0]);
            nameIDDialogBuilder.m6157e(onEndTrialClicked);
            nameIDDialogBuilder.m6149m(onCancelClicked);
            nameIDDialogBuilder.m6159c(true, onCancelClicked);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: h */
        public final NameIDDialogBuilder m6136h(@StringRes int i, @StringRes int i2, @NotNull Context context) {
            Intrinsics.m1830e(context, "context");
            SpannableString spannableString = new SpannableString(context.getString(i2));
            m6143a(spannableString, context);
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(i, new String[0]);
            NameIDDialogBuilder.m6151k(nameIDDialogBuilder, spannableString, false, 2, null);
            nameIDDialogBuilder.m6156f(C1517R.string.general_ok, new String[0]);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: i */
        public final NameIDDialogBuilder m6135i() {
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.hang_tight_pending_modal_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.hang_tight_pending_modal_description, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_got_it, new String[0]);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: j */
        public final NameIDDialogBuilder m6134j(@NotNull MataErrorInterpreter.MataAction mataAction, @NotNull String errorCode, @NotNull Context context) {
            NameIDDialogBuilder nameIDDialogBuilder;
            Intrinsics.m1830e(mataAction, "mataAction");
            Intrinsics.m1830e(errorCode, "errorCode");
            Intrinsics.m1830e(context, "context");
            LogUtil.m5643d("Templates#", "getMataErrorDialog - mataAction = " + mataAction + " errorCode = " + errorCode);
            ErrorMessage j = MataErrorInterpreter.f14376j.m5564j(mataAction, errorCode);
            if (j instanceof ErrorMessage.General) {
                ErrorMessage.General general = (ErrorMessage.General) j;
                nameIDDialogBuilder = m6136h(general.m5726b(), general.m5727a(), context);
            } else if (j instanceof ErrorMessage.CallCare) {
                ErrorMessage.CallCare callCare = (ErrorMessage.CallCare) j;
                nameIDDialogBuilder = m6141c(callCare.m5728d(), callCare.m5730b(), callCare.m5731a(), callCare.m5729c(), context);
            } else {
                nameIDDialogBuilder = j instanceof ErrorMessage.ProcessingError ? m6131m(context) : m6131m(context);
            }
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: k */
        public final NameIDDialogBuilder m6133k(@NotNull MetroApiErrorInterpreter.MetroApiAction action, @NotNull String errorCode, @NotNull Context context) {
            NameIDDialogBuilder nameIDDialogBuilder;
            Intrinsics.m1830e(action, "action");
            Intrinsics.m1830e(errorCode, "errorCode");
            Intrinsics.m1830e(context, "context");
            LogUtil.m5643d("Templates#", "getMetroApiErrorDialog - action = " + action + " errorCode = " + errorCode);
            ErrorMessage a = MetroApiErrorInterpreter.f14391e.m5539a(action, errorCode);
            if (a instanceof ErrorMessage.General) {
                ErrorMessage.General general = (ErrorMessage.General) a;
                nameIDDialogBuilder = m6136h(general.m5726b(), general.m5727a(), context);
            } else if (a instanceof ErrorMessage.CallCare) {
                ErrorMessage.CallCare callCare = (ErrorMessage.CallCare) a;
                nameIDDialogBuilder = m6141c(callCare.m5728d(), callCare.m5730b(), callCare.m5731a(), callCare.m5729c(), context);
            } else {
                nameIDDialogBuilder = m6131m(context);
            }
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: l */
        public final NameIDDialogBuilder m6132l(@NotNull Context context) {
            Intrinsics.m1830e(context, "context");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.dialog_network_connection, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.dialog_network_connection_desc, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_settings, new String[0]);
            nameIDDialogBuilder.m6148n(C1517R.string.general_cancel, new String[0]);
            nameIDDialogBuilder.m6157e(new C1870x84744c3c(context));
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: m */
        public final NameIDDialogBuilder m6131m(@NotNull Context context) {
            Intrinsics.m1830e(context, "context");
            String string = SubscriptionHelper.m5332B() ? context.getString(C1517R.string.account_my_sprint_url) : context.getString(C1517R.string.account_my_tmobile_url);
            Intrinsics.m1831d(string, "when {\n                S…mobile_url)\n            }");
            String string2 = SubscriptionHelper.m5332B() ? context.getString(C1517R.string.account_my_sprint) : context.getString(C1517R.string.processing_error_my_tmobile);
            Intrinsics.m1831d(string2, "if (SubscriptionHelper.i…cessing_error_my_tmobile)");
            LogUtil.m5643d("Templates#getProcessingError", "My Carrier = " + string2 + "; url: " + string);
            Spanned span = Html.fromHtml(context.getString(C1517R.string.processing_error_desc) + " <a href=\"" + string + "\">" + string2 + "</a>.");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.my_account_error_network_header, new String[0]);
            Intrinsics.m1831d(span, "span");
            NameIDDialogBuilder.m6151k(nameIDDialogBuilder, span, false, 2, null);
            nameIDDialogBuilder.m6156f(C1517R.string.general_ok, new String[0]);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: n */
        public final NameIDDialogBuilder m6130n(@NotNull ScamBlock.Presenter presenter) {
            Intrinsics.m1830e(presenter, "presenter");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.scam_conf_dialog_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.scam_conf_dialog_description, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.scam_block_turn_off, new String[0]);
            nameIDDialogBuilder.m6148n(C1517R.string.scam_conf_dialog_cancel, new String[0]);
            nameIDDialogBuilder.m6157e(new C1871x3aba5708(presenter));
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: o */
        public final NameIDDialogBuilder m6129o(@NotNull Function0<Unit> contactPermission) {
            Intrinsics.m1830e(contactPermission, "contactPermission");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.search_pending_contact_modal_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.search_pending_contact_modal_description, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.search_lookup_allow_contact_access, new String[0]);
            nameIDDialogBuilder.m6157e(contactPermission);
            NameIDDialogBuilder.m6158d(nameIDDialogBuilder, true, null, 2, null);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: p */
        public final NameIDDialogBuilder m6128p(@NotNull Function0<Unit> confirmAction) {
            Intrinsics.m1830e(confirmAction, "confirmAction");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.search_invalid_number_dialog_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.search_invalid_number_dialog_subtitle, new String[0]);
            nameIDDialogBuilder.m6150l(true);
            nameIDDialogBuilder.m6157e(confirmAction);
            nameIDDialogBuilder.m6156f(C1517R.string.general_okay, new String[0]);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: q */
        public final NameIDDialogBuilder m6127q(@NotNull Function0<Unit> onGotItClicked) {
            Intrinsics.m1830e(onGotItClicked, "onGotItClicked");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.onboarding_options_trial_opt_in_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.onboarding_options_trial_opt_in_subtitle, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_got_it, new String[0]);
            nameIDDialogBuilder.m6157e(onGotItClicked);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: r */
        public final NameIDDialogBuilder m6126r(@NotNull Function0<Unit> onGotItClicked, @NotNull Function0<Unit> onStartTrialClicked) {
            Intrinsics.m1830e(onGotItClicked, "onGotItClicked");
            Intrinsics.m1830e(onStartTrialClicked, "onStartTrialClicked");
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.onboarding_options_trial_opt_out_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.onboarding_options_trial_opt_out_subtitle, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_got_it, new String[0]);
            nameIDDialogBuilder.m6148n(C1517R.string.onboarding_options_trial_opt_out_start_text, new String[0]);
            nameIDDialogBuilder.m6157e(onGotItClicked);
            nameIDDialogBuilder.m6149m(onStartTrialClicked);
            nameIDDialogBuilder.m6147o(false);
            return nameIDDialogBuilder;
        }

        @NotNull
        /* renamed from: s */
        public final NameIDDialogBuilder m6125s() {
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.unknown_error_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.unknown_error_desc, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_close, new String[0]);
            return nameIDDialogBuilder;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static /* synthetic */ NameIDDialogBuilder m6158d(NameIDDialogBuilder nameIDDialogBuilder, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        nameIDDialogBuilder.m6159c(z, function0);
        return nameIDDialogBuilder;
    }

    /* renamed from: k */
    public static /* synthetic */ NameIDDialogBuilder m6151k(NameIDDialogBuilder nameIDDialogBuilder, Spanned spanned, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        nameIDDialogBuilder.m6153i(spanned, z);
        return nameIDDialogBuilder;
    }

    @NotNull
    /* renamed from: a */
    public final DialogInfo m6161a() {
        return new DialogInfo(this.f13944a, this.f13947d, this.f13948e, this.f13949f, this.f13950g, this.f13951h, this.f13952i, this.f13953j, this.f13954k, this.f13945b, this.f13946c, this.f13955l);
    }

    @NotNull
    /* renamed from: b */
    public final DialogFragment m6160b(@NotNull FragmentManager fragmentManager) {
        Intrinsics.m1830e(fragmentManager, "fragmentManager");
        NameIDDialogFragment nameIDDialogFragment = new NameIDDialogFragment();
        nameIDDialogFragment.m6121L0(m6161a());
        if (!fragmentManager.isDestroyed() && !fragmentManager.isStateSaved()) {
            nameIDDialogFragment.show(fragmentManager, "generic_dialog");
        }
        return nameIDDialogFragment;
    }

    @NotNull
    /* renamed from: c */
    public final NameIDDialogBuilder m6159c(boolean z, @Nullable Function0<Unit> function0) {
        this.f13945b = z;
        this.f13946c = function0;
        return this;
    }

    @NotNull
    /* renamed from: e */
    public final NameIDDialogBuilder m6157e(@NotNull Function0<Unit> action) {
        Intrinsics.m1830e(action, "action");
        this.f13952i = action;
        return this;
    }

    @NotNull
    /* renamed from: f */
    public final NameIDDialogBuilder m6156f(@StringRes int i, @NotNull String... args) {
        Intrinsics.m1830e(args, "args");
        this.f13951h = new DialogInfo.Text.ResourceId(i, (String[]) Arrays.copyOf(args, args.length));
        return this;
    }

    @NotNull
    /* renamed from: g */
    public final NameIDDialogBuilder m6155g(@DrawableRes int i) {
        this.f13944a = Integer.valueOf(i);
        return this;
    }

    @NotNull
    /* renamed from: h */
    public final NameIDDialogBuilder m6154h(@StringRes int i, @NotNull String... args) {
        Intrinsics.m1830e(args, "args");
        this.f13949f = new DialogInfo.Text.ResourceId(i, (String[]) Arrays.copyOf(args, args.length));
        return this;
    }

    @NotNull
    /* renamed from: i */
    public final NameIDDialogBuilder m6153i(@NotNull Spanned messageSpanned, boolean z) {
        Intrinsics.m1830e(messageSpanned, "messageSpanned");
        this.f13949f = new DialogInfo.Text.Spanned(messageSpanned, z);
        return this;
    }

    @NotNull
    /* renamed from: j */
    public final NameIDDialogBuilder m6152j(@NotNull String messageString) {
        Intrinsics.m1830e(messageString, "messageString");
        this.f13949f = new DialogInfo.Text.StringConstant(messageString);
        return this;
    }

    /* renamed from: l */
    public final void m6150l(boolean z) {
        this.f13950g = z;
    }

    @NotNull
    /* renamed from: m */
    public final NameIDDialogBuilder m6149m(@NotNull Function0<Unit> action) {
        Intrinsics.m1830e(action, "action");
        this.f13954k = action;
        return this;
    }

    @NotNull
    /* renamed from: n */
    public final NameIDDialogBuilder m6148n(@StringRes int i, @NotNull String... args) {
        Intrinsics.m1830e(args, "args");
        this.f13953j = new DialogInfo.Text.ResourceId(i, (String[]) Arrays.copyOf(args, args.length));
        return this;
    }

    @NotNull
    /* renamed from: o */
    public final NameIDDialogBuilder m6147o(boolean z) {
        this.f13955l = z;
        return this;
    }

    @NotNull
    /* renamed from: p */
    public final NameIDDialogBuilder m6146p(@StringRes int i, @NotNull String... args) {
        Intrinsics.m1830e(args, "args");
        this.f13947d = new DialogInfo.Text.ResourceId(i, (String[]) Arrays.copyOf(args, args.length));
        return this;
    }
}
