package com.tmobile.services.nameid.utility;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerDetailsData;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.model.activity.ActivityDisplayable;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDProgressDialog;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import de.hdodenhof.circleimageview.CircleImageView;
import io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip;
import io.reactivex.Observer;
import io.realm.OrderedRealmCollectionImpl;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.Sort;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import kotlin.jvm.functions.Function0;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/WidgetUtils.class */
public class WidgetUtils {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.utility.WidgetUtils$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/WidgetUtils$1.class */
    public static /* synthetic */ class C19121 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14466a;

        /* renamed from: b */
        static final /* synthetic */ int[] f14467b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallerSetting.Action.values().length];
            f14467b = iArr;
            try {
                iArr[CallerSetting.Action.APPROVED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14467b[CallerSetting.Action.VOICEMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14467b[CallerSetting.Action.BLOCKED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[ActivityItem.Type.values().length];
            f14466a = iArr2;
            try {
                iArr2[ActivityItem.Type.BLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14466a[ActivityItem.Type.VOICEMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f14466a[ActivityItem.Type.APPROVED.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/WidgetUtils$ActivityCallerInfo.class */
    public static class ActivityCallerInfo {
        @Nonnull

        /* renamed from: a */
        private String f14468a = "";
        @Nonnull

        /* renamed from: b */
        private String f14469b = "";

        /* renamed from: c */
        private boolean f14470c;

        /* renamed from: d */
        private boolean f14471d;
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/WidgetUtils$CallerInfo.class */
    public static class CallerInfo {
        @Nonnull

        /* renamed from: d */
        private String f14475d;
        @Nonnull

        /* renamed from: f */
        private boolean f14477f;
        @Nonnull

        /* renamed from: a */
        private String f14472a = "";
        @Nonnull

        /* renamed from: b */
        private String f14473b = "";
        @Nonnull

        /* renamed from: c */
        private String f14474c = "";
        @Nonnull

        /* renamed from: e */
        private String f14476e = "";
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/WidgetUtils$DialogClickListener.class */
    public interface DialogClickListener {
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/WidgetUtils$GenericViewHolder.class */
    public static class GenericViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        private TextView f14478a;

        /* renamed from: b */
        private TextView f14479b;

        /* renamed from: c */
        private TextView f14480c;

        /* renamed from: d */
        private CircleImageView f14481d;

        /* renamed from: e */
        private ImageView f14482e;

        /* renamed from: f */
        private ImageView f14483f;

        /* renamed from: g */
        private ImageView f14484g;

        /* renamed from: h */
        private TextView f14485h;

        /* renamed from: i */
        private ImageButton f14486i;

        /* renamed from: j */
        private View f14487j;

        public GenericViewHolder(View view, @Nullable final RecyclerViewClickListener recyclerViewClickListener) {
            super(view);
            this.f14478a = (TextView) view.findViewById(C1517R.C1520id.text_view_recent_list_item_name);
            this.f14479b = (TextView) view.findViewById(C1517R.C1520id.text_view_recent_list_item_type);
            m5178n((TextView) view.findViewById(C1517R.C1520id.text_view_recent_list_item_time));
            this.f14481d = (CircleImageView) view.findViewById(C1517R.C1520id.image_recent_list_item_icon);
            m5180l((ImageView) view.findViewById(C1517R.C1520id.image_recent_list_item_type));
            m5176p((ImageView) view.findViewById(C1517R.C1520id.image_recent_list_item_unread));
            this.f14484g = (ImageView) view.findViewById(C1517R.C1520id.activity_list_initials_background);
            this.f14485h = (TextView) view.findViewById(C1517R.C1520id.activity_list_initials_text_view);
            m5179m((ImageButton) view.findViewById(C1517R.C1520id.recent_item_more_button));
            m5175q(view.findViewById(C1517R.C1520id.recent_item_white_overlay));
            if (recyclerViewClickListener != null) {
                this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.utility.f2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        WidgetUtils.GenericViewHolder.this.m5181k(recyclerViewClickListener, view2);
                    }
                });
            }
        }

        /* renamed from: f */
        public ImageView m5186f() {
            return this.f14482e;
        }

        /* renamed from: g */
        public ImageButton m5185g() {
            return this.f14486i;
        }

        /* renamed from: h */
        public TextView m5184h() {
            return this.f14480c;
        }

        /* renamed from: i */
        public ImageView m5183i() {
            return this.f14483f;
        }

        /* renamed from: j */
        public View m5182j() {
            return this.f14487j;
        }

        /* renamed from: k */
        public /* synthetic */ void m5181k(RecyclerViewClickListener recyclerViewClickListener, View view) {
            recyclerViewClickListener.mo5380a(getLayoutPosition());
        }

        /* renamed from: l */
        public void m5180l(ImageView imageView) {
            this.f14482e = imageView;
        }

        /* renamed from: m */
        public void m5179m(ImageButton imageButton) {
            this.f14486i = imageButton;
        }

        /* renamed from: n */
        public void m5178n(TextView textView) {
            this.f14480c = textView;
        }

        /* renamed from: o */
        public void m5177o(boolean z) {
        }

        /* renamed from: p */
        public void m5176p(ImageView imageView) {
            this.f14483f = imageView;
        }

        /* renamed from: q */
        public void m5175q(View view) {
            this.f14487j = view;
        }
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/WidgetUtils$SubscribeFromDialogListener.class */
    public interface SubscribeFromDialogListener {
        /* renamed from: a */
        void mo5174a();
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/WidgetUtils$URLSpanNoUnderline.class */
    private static class URLSpanNoUnderline extends URLSpan {
        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
        }
    }

    private WidgetUtils() {
        throw new IllegalAccessError("This is a utility class, it does not need to be created.");
    }

    /* renamed from: A */
    public static void m5272A(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(str));
            activity.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            LogUtil.m5641f("WidgetUtils#goToLearnMoreLink", "Could not find Activity to handle a webpage.", e);
        }
    }

    /* renamed from: B */
    private static boolean m5271B(@Nullable Caller caller) {
        return caller != null && caller.getNumberAsInput().contains("0000000000");
    }

    /* renamed from: C */
    public static boolean m5270C(@Nullable String str) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        if (str.replaceAll("\\D", "").length() > 127) {
            z = true;
        }
        return z;
    }

    /* renamed from: D */
    public static boolean m5269D(@Nullable CallerDetailsData callerDetailsData, boolean z) {
        if (callerDetailsData == null) {
            return z;
        }
        return m5268E(callerDetailsData.getE164Number()) && !z;
    }

    /* renamed from: E */
    public static boolean m5268E(@Nullable String str) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        if (str.replaceAll("\\D", "").length() < 4) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H */
    public static /* synthetic */ void m5265H(Context context, FragmentManager fragmentManager, UserPreference userPreference, Observer observer, Dialog dialog, View view) {
        if (!m5241c0(context, fragmentManager)) {
            ApiWrapper.m6785c(userPreference, observer);
        }
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public static /* synthetic */ void m5263J(final UserPreference userPreference, Context context, Dialog dialog, View view) {
        Realm G0 = Realm.m3064G0();
        try {
            if (userPreference instanceof MessageUserPreference) {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.h2
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        ((MessageUserPreference) UserPreference.this).deleteFromRealm();
                    }
                });
            } else if (userPreference instanceof CallerSetting) {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.g2
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        ((CallerSetting) UserPreference.this).deleteFromRealm();
                    }
                });
            }
            MainApplication.m7540P(context.getString(m5228j(CallerSetting.Action.BLOCKED, false)));
            if (G0 != null) {
                G0.close();
            }
            dialog.dismiss();
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

    /* renamed from: P */
    public static void m5257P(Context context, String str) {
        LogUtil.m5643d("WidgetUtils#", "Validate link - openExternalWebpage - " + str);
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(str));
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            LogUtil.m5641f("AboutFragment#openExternalWebpage", "Could not find Activity to handle a webpage.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q */
    public static void m5256Q(boolean z, boolean z2) {
        if (z) {
            PreferenceUtils.m5386k("PREF_NOTIFICATION_BLOCK_LIST_BLOCKED", true);
        }
        if (z2) {
            PreferenceUtils.m5386k("PREF_NOTIFICATION_MESSAGE_BLOCKED", true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0086, code lost:
        if (r9 == false) goto L_0x0089;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0093, code lost:
        if (r9 != false) goto L_0x0096;
     */
    /* renamed from: R */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5255R(@javax.annotation.Nullable com.tmobile.services.nameid.model.Caller r3, int r4, @javax.annotation.Nullable com.tmobile.services.nameid.model.Contact r5) {
        /*
            r0 = 1
            r6 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0013
            r0 = r3
            boolean r0 = r0.isScammer()
            if (r0 == 0) goto L_0x0013
            r0 = 1
            r7 = r0
            goto L_0x0016
        L_0x0013:
            r0 = 0
            r7 = r0
        L_0x0016:
            r0 = r3
            if (r0 == 0) goto L_0x0027
            r0 = r3
            boolean r0 = r0.isPrivate()
            if (r0 == 0) goto L_0x0027
            r0 = 1
            r8 = r0
            goto L_0x002a
        L_0x0027:
            r0 = 0
            r8 = r0
        L_0x002a:
            r0 = r4
            com.tmobile.services.nameid.model.activity.ActivityItem$Type r1 = com.tmobile.services.nameid.model.activity.ActivityItem.Type.BLOCKED
            int r1 = r1.getValue()
            if (r0 != r1) goto L_0x0039
            r0 = 1
            r4 = r0
            goto L_0x003b
        L_0x0039:
            r0 = 0
            r4 = r0
        L_0x003b:
            r0 = r5
            if (r0 == 0) goto L_0x0045
            r0 = 1
            r9 = r0
            goto L_0x0048
        L_0x0045:
            r0 = 0
            r9 = r0
        L_0x0048:
            r0 = r3
            if (r0 == 0) goto L_0x0059
            r0 = r3
            boolean r0 = r0.hasDisplayCategory()
            if (r0 == 0) goto L_0x0059
            r0 = 1
            r10 = r0
            goto L_0x005c
        L_0x0059:
            r0 = 0
            r10 = r0
        L_0x005c:
            r0 = r3
            if (r0 == 0) goto L_0x006d
            r0 = r3
            boolean r0 = r0.hasCallerName()
            if (r0 == 0) goto L_0x006d
            r0 = 1
            r11 = r0
            goto L_0x0070
        L_0x006d:
            r0 = 0
            r11 = r0
        L_0x0070:
            r0 = r6
            r12 = r0
            r0 = r8
            if (r0 != 0) goto L_0x00ae
            r0 = r7
            if (r0 == 0) goto L_0x0089
            r0 = r4
            if (r0 == 0) goto L_0x0089
            r0 = r6
            r12 = r0
            r0 = r9
            if (r0 != 0) goto L_0x00ae
        L_0x0089:
            r0 = r7
            if (r0 == 0) goto L_0x0096
            r0 = r6
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x00ae
        L_0x0096:
            r0 = r10
            if (r0 == 0) goto L_0x00ab
            r0 = r9
            if (r0 != 0) goto L_0x00ab
            r0 = r11
            if (r0 != 0) goto L_0x00ab
            r0 = r6
            r12 = r0
            goto L_0x00ae
        L_0x00ab:
            r0 = 0
            r12 = r0
        L_0x00ae:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.WidgetUtils.m5255R(com.tmobile.services.nameid.model.Caller, int, com.tmobile.services.nameid.model.Contact):boolean");
    }

    /* renamed from: S */
    public static boolean m5254S(@Nullable Contact contact) {
        return (contact == null || contact.getUri() == null || contact.getUri().isEmpty()) ? false : true;
    }

    /* renamed from: T */
    public static boolean m5253T(@Nullable Contact contact) {
        boolean z = true;
        boolean z2 = (contact == null || contact.getUri() == null || contact.getUri().isEmpty()) ? false : true;
        if (!((contact == null || contact.getName() == null || contact.getName().isEmpty()) ? false : true) || z2) {
            z = false;
        }
        return z;
    }

    /* renamed from: U */
    public static void m5252U(final Context context, final UserPreference userPreference, final Observer<UserPreferenceStatus> observer) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context, C1517R.style.FullScreenDialog);
        final FragmentManager fragmentManager = null;
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(C1517R.layout.block_list_dialog_layout, (ViewGroup) null);
        builder.mo9811n(inflate);
        final AlertDialog a = builder.mo9823a();
        Window window = a.getWindow();
        if (window != null) {
            m5209z(window);
        }
        TextView textView = (TextView) inflate.findViewById(C1517R.C1520id.block_list_dialog_title);
        String e164Number = userPreference.getE164Number();
        Caller caller = userPreference.getCaller();
        if (caller != null) {
            e164Number = caller.getNumberAsInput();
        }
        textView.setText(context.getString(C1517R.string.activity_manage_dialog_title, PhoneNumberHelper.m5412g(e164Number, "")));
        Button button = (Button) inflate.findViewById(C1517R.C1520id.block_list_dialog_add);
        Button button2 = (Button) inflate.findViewById(C1517R.C1520id.block_list_dialog_remove);
        if (context instanceof AppCompatActivity) {
            fragmentManager = ((AppCompatActivity) context).getSupportFragmentManager();
        }
        if (fragmentManager != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.utility.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WidgetUtils.m5265H(context, fragmentManager, userPreference, observer, a, view);
                }
            });
        } else {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.utility.i2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.dismiss();
                }
            });
        }
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.utility.l2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WidgetUtils.m5263J(UserPreference.this, context, a, view);
            }
        });
        a.show();
    }

    @Nullable
    /* renamed from: V */
    public static SimpleTooltip m5251V(@LayoutRes int i, @IdRes int i2, View view, SimpleTooltip.OnDismissListener onDismissListener, @Nullable Context context) {
        if (context == null) {
            return null;
        }
        SimpleTooltip.Builder builder = new SimpleTooltip.Builder(context);
        builder.m4565H(i);
        builder.m4567F(view);
        builder.m4564I(false);
        builder.m4563J(onDismissListener);
        SimpleTooltip G = builder.m4566G();
        TextView textView = (TextView) G.m4604N(i2);
        if (textView != null) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
        G.m4601Q();
        return G;
    }

    /* renamed from: W */
    public static void m5250W(final AppCompatActivity appCompatActivity) {
        NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
        nameIDDialogBuilder.m6146p(C1517R.string.memory_full_error_title, new String[0]);
        nameIDDialogBuilder.m6154h(C1517R.string.memory_full_error_desc, new String[0]);
        nameIDDialogBuilder.m6156f(C1517R.string.general_close, new String[0]);
        nameIDDialogBuilder.m6157e(new Function0() { // from class: com.tmobile.services.nameid.utility.m2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AppCompatActivity.this.finish();
            }
        });
        nameIDDialogBuilder.m6160b(appCompatActivity.getSupportFragmentManager());
    }

    /* renamed from: X */
    public static void m5249X(FragmentManager fragmentManager) {
        if (!PreferenceUtils.m5395b("PREF_HAS_SHOWN_ENABLE_SCAM_BLOCK_DIALOG", false) && !SubscriptionHelper.m5311q()) {
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.enable_notification_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.scam_enable_notification_subtitle, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_ok, new String[0]);
            nameIDDialogBuilder.m6148n(C1517R.string.general_cancel, new String[0]);
            nameIDDialogBuilder.m6157e(C1928d2.f14517f);
            nameIDDialogBuilder.m6160b(fragmentManager);
            PreferenceUtils.m5386k("PREF_HAS_SHOWN_ENABLE_SCAM_BLOCK_DIALOG", true);
        }
    }

    @Nullable
    /* renamed from: Y */
    public static SimpleTooltip m5248Y(@StringRes int i, View view, SimpleTooltip.OnDismissListener onDismissListener, @Nullable Context context) {
        if (context == null) {
            return null;
        }
        SimpleTooltip.Builder builder = new SimpleTooltip.Builder(context);
        builder.m4567F(view);
        builder.m4562K(i);
        builder.m4564I(false);
        builder.m4563J(onDismissListener);
        SimpleTooltip G = builder.m4566G();
        G.m4601Q();
        return G;
    }

    /* renamed from: Z */
    public static void m5247Z(@Nullable FragmentManager fragmentManager) {
        if (fragmentManager != null) {
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.manage_invalid_number_dialog_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.manage_invalid_number_dialog_message, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_ok, new String[0]);
            nameIDDialogBuilder.m6160b(fragmentManager);
        }
    }

    /* renamed from: a */
    public static void m5246a(@Nullable ActivityDisplayable activityDisplayable, GenericViewHolder genericViewHolder) {
        if (activityDisplayable != null) {
            Context l = MainApplication.m7528l();
            if (l == null) {
                LogUtil.m5631p("WidgetUtils#bindActivityDisplayable", "Failed to get main app context.");
                return;
            }
            Contact e = ContactLookup.m5824d().m5823e(activityDisplayable.getE164Number());
            genericViewHolder.f14479b.setTextColor(genericViewHolder.f14479b.getContext().getResources().getColor(C1517R.C1518color.grey_3));
            SubscriptionHelper.m5325c();
            String primaryDisplayInfo = activityDisplayable.getPrimaryDisplayInfo(l);
            String secondaryDisplayInfo = activityDisplayable.getSecondaryDisplayInfo(l);
            boolean z = true;
            boolean z2 = activityDisplayable.getDisplayNumber("").length() < 4 && !activityDisplayable.isScammer();
            genericViewHolder.m5177o(z2);
            if (z2) {
                primaryDisplayInfo = l.getString(C1517R.string.caller_name_unknown);
                secondaryDisplayInfo = "";
            }
            if (activityDisplayable.shouldHighlight()) {
                if (!activityDisplayable.isScammer() || !activityDisplayable.hasContact()) {
                    z = false;
                }
                if (z) {
                    genericViewHolder.f14478a.setTextColor(genericViewHolder.f14478a.getResources().getColor(C1517R.C1518color.black_3));
                    genericViewHolder.f14479b.setTextColor(genericViewHolder.f14478a.getResources().getColor(2131034197));
                } else {
                    genericViewHolder.f14478a.setTextColor(genericViewHolder.f14478a.getResources().getColor(2131034197));
                    genericViewHolder.f14479b.setTextColor(genericViewHolder.f14478a.getResources().getColor(C1517R.C1518color.black_3));
                }
            } else {
                genericViewHolder.f14478a.setTextColor(genericViewHolder.f14478a.getResources().getColor(C1517R.C1518color.black_3));
                genericViewHolder.f14479b.setTextColor(genericViewHolder.f14478a.getResources().getColor(C1517R.C1518color.black_3));
            }
            genericViewHolder.f14478a.setText(primaryDisplayInfo);
            genericViewHolder.f14479b.setText(secondaryDisplayInfo);
            boolean S = m5254S(e);
            String name = e != null ? e.getName() : "";
            String str = name;
            if (name == null) {
                str = "";
            }
            String b = StringParsingUtils.m5338b(str);
            if (S) {
                try {
                    genericViewHolder.f14481d.setImageBitmap(MediaStore.Images.Media.getBitmap(genericViewHolder.f14481d.getContext().getContentResolver(), Uri.parse(e.getUri())));
                } catch (Exception e2) {
                    LogUtil.m5641f("WidgetUtils#bindActivityDisplayable", "error getting contact uri", e2);
                }
                genericViewHolder.f14481d.setVisibility(0);
                genericViewHolder.f14484g.setVisibility(4);
                genericViewHolder.f14485h.setVisibility(4);
            } else if (!m5253T(e) || b.isEmpty()) {
                genericViewHolder.f14481d.setImageResource(m5220o(activityDisplayable.isScammer(), activityDisplayable.shouldHighlight()));
                genericViewHolder.f14481d.setVisibility(0);
                genericViewHolder.f14484g.setVisibility(4);
                genericViewHolder.f14485h.setVisibility(4);
            } else {
                genericViewHolder.f14481d.setVisibility(4);
                genericViewHolder.f14484g.setVisibility(0);
                if (activityDisplayable.shouldHighlight()) {
                    genericViewHolder.f14484g.setColorFilter(ContextCompat.m19675d(l, C1517R.C1518color.magenta_or_royal_purple));
                } else {
                    genericViewHolder.f14484g.setColorFilter(ContextCompat.m19675d(l, C1517R.C1518color.grey1));
                }
                genericViewHolder.f14485h.setVisibility(0);
                genericViewHolder.f14485h.setText(b);
            }
            if (S) {
                genericViewHolder.f14481d.setContentDescription(genericViewHolder.f14481d.getContext().getString(C1517R.string.con_desc_contact_image));
            } else {
                genericViewHolder.f14481d.setContentDescription(m5221n(genericViewHolder.f14481d.getContext(), genericViewHolder.f14481d.getContext().getString(activityDisplayable.getCategoryRes()), activityDisplayable.getDisplayName()));
            }
            if (genericViewHolder.f14478a != null && genericViewHolder.f14478a.getText().equals("")) {
                LogUtil.m5631p("WidgetUtils#bindActivityDisplayable", "name/number is empty! - CallerID: " + activityDisplayable.getId());
            }
        }
    }

    /* renamed from: a0 */
    public static DialogFragment m5245a0(FragmentManager fragmentManager, @StringRes int i, boolean z) {
        return NameIDProgressDialog.f13974l.m6115a(fragmentManager, i, z);
    }

    /* renamed from: b */
    public static void m5244b(ActivityItem activityItem, GenericViewHolder genericViewHolder) {
        m5246a(activityItem, genericViewHolder);
        genericViewHolder.m5184h().setText(DateUtils.m5790e(activityItem.getDate(), genericViewHolder.m5184h().getContext()));
        ActivityItem.Type fromValue = ActivityItem.Type.fromValue(activityItem.getType());
        genericViewHolder.m5186f().setImageDrawable(m5226k(MainApplication.m7528l(), fromValue, activityItem.shouldHighlight()));
        if (activityItem.shouldHighlight()) {
            genericViewHolder.m5186f().setColorFilter(ContextCompat.m19675d(genericViewHolder.m5186f().getContext(), 2131034197), PorterDuff.Mode.SRC_ATOP);
        } else {
            genericViewHolder.m5186f().setColorFilter(ContextCompat.m19675d(genericViewHolder.m5186f().getContext(), C1517R.C1518color.grey_12), PorterDuff.Mode.SRC_ATOP);
        }
        genericViewHolder.m5186f().setContentDescription(m5211x(genericViewHolder.m5186f().getContext(), fromValue));
        if (activityItem.isUnread()) {
            genericViewHolder.m5183i().setVisibility(0);
        } else {
            genericViewHolder.m5183i().setVisibility(4);
        }
    }

    /* renamed from: b0 */
    public static void m5243b0(FragmentManager fragmentManager) {
        NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
        nameIDDialogBuilder.m6146p(C1517R.string.metro_reduced_pending_subscription_dialog_title, new String[0]);
        nameIDDialogBuilder.m6154h(C1517R.string.metro_reduced_pending_subscription_dialog_subtitle, new String[0]);
        nameIDDialogBuilder.m6156f(C1517R.string.general_ok, new String[0]);
        nameIDDialogBuilder.m6160b(fragmentManager);
    }

    /* renamed from: c */
    public static void m5242c(@Nonnull String str, int i, @Nullable Caller caller, GenericViewHolder genericViewHolder) {
        m5240d(str, i, caller, genericViewHolder, false);
    }

    /* renamed from: c0 */
    public static boolean m5241c0(Context context, FragmentManager fragmentManager) {
        return m5239d0(context, fragmentManager, false);
    }

    /* renamed from: d */
    public static void m5240d(@Nonnull String str, int i, @Nullable Caller caller, GenericViewHolder genericViewHolder, boolean z) {
        if (caller != null) {
            LogUtil.m5643d("WidgetUtils#bindCaller", "Caller= " + caller.toString());
        }
        Context l = MainApplication.m7528l();
        if (l == null) {
            LogUtil.m5631p("WidgetUtils#bindCaller", "Failed to get main app context.");
            return;
        }
        Contact e = ContactLookup.m5824d().m5823e(str);
        genericViewHolder.f14479b.setTextColor(genericViewHolder.f14479b.getContext().getResources().getColor(C1517R.C1518color.grey_3));
        CallerInfo l2 = m5224l(caller, e, genericViewHolder.f14479b.getContext(), SubscriptionHelper.m5325c(), z);
        ActivityCallerInfo r = m5217r(l2, caller, i, e, l);
        if (r.f14470c) {
            genericViewHolder.f14479b.setTextColor(genericViewHolder.f14479b.getContext().getResources().getColor(2131034197));
        }
        genericViewHolder.m5177o(r.f14471d);
        if (m5255R(caller, i, e)) {
            genericViewHolder.f14478a.setTextColor(genericViewHolder.f14478a.getResources().getColor(2131034197));
        } else {
            genericViewHolder.f14478a.setTextColor(genericViewHolder.f14478a.getResources().getColor(C1517R.C1518color.black_3));
        }
        if (caller == null || !caller.isPrivate()) {
            genericViewHolder.f14478a.setText(r.f14468a);
            genericViewHolder.f14479b.setText(r.f14469b);
        } else {
            genericViewHolder.f14479b.setText("");
            if (l != null) {
                genericViewHolder.f14478a.setText(C1517R.string.private_caller_name);
            }
        }
        boolean S = m5254S(e);
        if (S) {
            try {
                genericViewHolder.f14481d.setImageBitmap(MediaStore.Images.Media.getBitmap(genericViewHolder.f14481d.getContext().getContentResolver(), Uri.parse(e.getUri())));
            } catch (Exception e2) {
                LogUtil.m5641f("onBindViewHolder", "error getting contact uri", e2);
            }
            genericViewHolder.f14481d.setVisibility(0);
            genericViewHolder.f14484g.setVisibility(4);
            genericViewHolder.f14485h.setVisibility(4);
        } else if (!m5253T(e) || StringParsingUtils.m5338b(l2.f14472a).isEmpty()) {
            if (caller != null) {
                genericViewHolder.f14481d.setImageResource(m5220o(caller.isScammer(), false));
            } else {
                genericViewHolder.f14481d.setImageResource(C1517R.C1519drawable.caller_unknown);
            }
            genericViewHolder.f14481d.setVisibility(0);
            genericViewHolder.f14484g.setVisibility(4);
            genericViewHolder.f14485h.setVisibility(4);
        } else {
            genericViewHolder.f14481d.setVisibility(4);
            genericViewHolder.f14484g.setVisibility(0);
            genericViewHolder.f14485h.setVisibility(0);
            genericViewHolder.f14485h.setText(StringParsingUtils.m5338b(l2.f14472a));
        }
        if (S) {
            genericViewHolder.f14481d.setContentDescription(genericViewHolder.f14481d.getContext().getString(C1517R.string.con_desc_contact_image));
        } else if (caller != null) {
            genericViewHolder.f14481d.setContentDescription(m5221n(genericViewHolder.f14481d.getContext(), genericViewHolder.f14481d.getContext().getString(caller.getDisplayCategory()), caller.getDisplayName()));
        } else {
            genericViewHolder.f14481d.setContentDescription(m5221n(genericViewHolder.f14481d.getContext(), "", ""));
        }
        if (genericViewHolder.f14478a != null && genericViewHolder.f14478a.getText().equals("")) {
            if (caller != null) {
                LogUtil.m5631p("WidgetUtils#bindCaller", "name/number is empty! - CallerID: " + caller.getId());
                return;
            }
            LogUtil.m5631p("WidgetUtils#bindCaller", "name/number is empty! - CallerID: null");
        }
    }

    /* renamed from: d0 */
    public static boolean m5239d0(Context context, FragmentManager fragmentManager, boolean z) {
        if (z && !NetworkChecks.f14407b.m5481b(context)) {
            NameIDDialogBuilder.f13943m.m6132l(context).m6160b(fragmentManager);
            return true;
        } else if (NetworkChecks.f14407b.m5480c(context)) {
            return false;
        } else {
            NameIDDialogBuilder.f13943m.m6132l(context).m6160b(fragmentManager);
            return true;
        }
    }

    /* renamed from: e */
    public static void m5238e(EventSummaryItem eventSummaryItem, GenericViewHolder genericViewHolder) {
        m5246a(eventSummaryItem, genericViewHolder);
        genericViewHolder.m5184h().setText(DateUtils.m5790e(eventSummaryItem.getTimeStamp(), genericViewHolder.m5184h().getContext()));
        genericViewHolder.m5186f().setImageResource(m5213v(eventSummaryItem));
        genericViewHolder.m5186f().setContentDescription(m5214u(genericViewHolder.m5186f().getContext(), eventSummaryItem));
        genericViewHolder.m5183i().setVisibility(4);
        String charSequence = genericViewHolder.f14478a.getText().toString();
        genericViewHolder.f14478a.setContentDescription(charSequence);
        int messageQuantity = eventSummaryItem.getMessageQuantity();
        if (messageQuantity > 1) {
            genericViewHolder.f14478a.setText(charSequence + " (" + messageQuantity + ")");
        }
        genericViewHolder.f14479b.setText(PhoneNumberHelper.m5412g(eventSummaryItem.getE164Number(), Locale.getDefault().getCountry()));
    }

    /* renamed from: e0 */
    public static void m5237e0(final AppCompatActivity appCompatActivity) {
        NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
        nameIDDialogBuilder.m6146p(C1517R.string.dialog_report_failed_title, new String[0]);
        nameIDDialogBuilder.m6154h(C1517R.string.dialog_report_failed_subtitle, new String[0]);
        nameIDDialogBuilder.m6156f(C1517R.string.general_close, new String[0]);
        nameIDDialogBuilder.m6157e(new Function0() { // from class: com.tmobile.services.nameid.utility.k2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AppCompatActivity.this.finish();
            }
        });
        nameIDDialogBuilder.m6160b(appCompatActivity.getSupportFragmentManager());
    }

    /* renamed from: f */
    public static boolean m5236f() {
        boolean b = PreferenceUtils.m5395b("PREF_HAS_CONSUMED_DISCOVER_BANNER", false);
        long d = PreferenceUtils.m5393d("PREF_COUNT_APP_OPEN_SINCE_SCAM_SHIELD");
        boolean z = false;
        if (!b) {
            z = false;
            if (d == 3) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: f0 */
    public static void m5235f0(FragmentActivity fragmentActivity, FragmentManager fragmentManager, @Nullable SubscribeFromDialogListener subscribeFromDialogListener, @Nullable MainActivity.Tabs tabs) {
        m5233g0(fragmentActivity, fragmentManager, subscribeFromDialogListener, false, tabs);
    }

    /* renamed from: g */
    public static void m5234g(FragmentActivity fragmentActivity) {
        List<Fragment> fragments = fragmentActivity.getSupportFragmentManager().getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment instanceof DialogFragment) {
                    ((DialogFragment) fragment).dismissAllowingStateLoss();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
        if (r16 != false) goto L_0x006d;
     */
    /* renamed from: g0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void m5233g0(androidx.fragment.app.FragmentActivity r8, androidx.fragment.app.FragmentManager r9, @javax.annotation.Nullable com.tmobile.services.nameid.utility.WidgetUtils.SubscribeFromDialogListener r10, boolean r11, @javax.annotation.Nullable com.tmobile.services.nameid.MainActivity.Tabs r12) {
        /*
            io.realm.Realm r0 = io.realm.Realm.m3064G0()
            r13 = r0
            r0 = r13
            java.lang.Class<com.tmobile.services.nameid.model.TmoUserStatus> r1 = com.tmobile.services.nameid.model.TmoUserStatus.class
            io.realm.RealmQuery r0 = r0.m3053Q0(r1)     // Catch: all -> 0x00a7
            java.lang.Object r0 = r0.m2916G()     // Catch: all -> 0x00a7
            com.tmobile.services.nameid.model.TmoUserStatus r0 = (com.tmobile.services.nameid.model.TmoUserStatus) r0     // Catch: all -> 0x00a7
            r14 = r0
            r0 = 1
            r15 = r0
            r0 = r14
            if (r0 == 0) goto L_0x002b
            r0 = r14
            boolean r0 = r0.isEligible()     // Catch: all -> 0x00a7
            if (r0 == 0) goto L_0x002b
            r0 = 1
            r16 = r0
            goto L_0x002e
        L_0x002b:
            r0 = 0
            r16 = r0
        L_0x002e:
            r0 = r14
            com.tmobile.services.nameid.utility.SubscriptionHelper$State r0 = com.tmobile.services.nameid.utility.SubscriptionHelper.m5324d(r0)     // Catch: all -> 0x00a7
            r17 = r0
            r0 = r14
            if (r0 == 0) goto L_0x006a
            r0 = r14
            java.lang.String r0 = r0.getStatusText()     // Catch: all -> 0x00a7
            if (r0 == 0) goto L_0x006a
            r0 = r14
            java.lang.String r0 = r0.getStatusText()     // Catch: all -> 0x00a7
            com.tmobile.services.nameid.model.TmoUserStatus$SubscriptionStatus r0 = com.tmobile.services.nameid.model.TmoUserStatus.SubscriptionStatus.fromStatusText(r0)     // Catch: all -> 0x00a7
            com.tmobile.services.nameid.model.TmoUserStatus$SubscriptionStatus r1 = com.tmobile.services.nameid.model.TmoUserStatus.SubscriptionStatus.NOT_FOUND     // Catch: all -> 0x00a7
            if (r0 != r1) goto L_0x0064
            r0 = r14
            boolean r0 = com.tmobile.services.nameid.utility.SubscriptionHelper.m5321g(r0)     // Catch: all -> 0x00a7
            r18 = r0
            r0 = r18
            if (r0 != 0) goto L_0x0064
            r0 = r16
            if (r0 == 0) goto L_0x0064
            goto L_0x0067
        L_0x0064:
            r0 = 0
            r15 = r0
        L_0x0067:
            goto L_0x006d
        L_0x006a:
            r0 = 0
            r15 = r0
        L_0x006d:
            r0 = r13
            if (r0 == 0) goto L_0x0077
            r0 = r13
            r0.close()
        L_0x0077:
            r0 = r16
            if (r0 != 0) goto L_0x008a
            boolean r0 = com.tmobile.services.nameid.utility.BuildUtils.m5851c()
            if (r0 == 0) goto L_0x008a
            r0 = r8
            com.tmobile.services.nameid.MainActivity r0 = (com.tmobile.services.nameid.MainActivity) r0
            r0.m7634J()
            return
        L_0x008a:
            r0 = r17
            boolean r0 = com.tmobile.services.nameid.utility.SubscriptionHelper.m5312p(r0)
            if (r0 == 0) goto L_0x0097
            r0 = r8
            m5229i0(r0)
            return
        L_0x0097:
            com.tmobile.services.nameid.ui.dialog_fragment.NameIDSubscribeDialog$Companion r0 = com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDSubscribeDialog.f13982s
            r1 = r8
            r2 = r9
            r3 = r11
            r4 = r15
            r5 = r12
            r6 = r10
            androidx.fragment.app.DialogFragment r0 = r0.m6106a(r1, r2, r3, r4, r5, r6)
            return
        L_0x00a7:
            r9 = move-exception
            r0 = r9
            throw r0     // Catch: all -> 0x00aa
        L_0x00aa:
            r8 = move-exception
            r0 = r13
            if (r0 == 0) goto L_0x00be
            r0 = r13
            r0.close()     // Catch: all -> 0x00b8
            goto L_0x00be
        L_0x00b8:
            r10 = move-exception
            r0 = r9
            r1 = r10
            r0.addSuppressed(r1)
        L_0x00be:
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.WidgetUtils.m5233g0(androidx.fragment.app.FragmentActivity, androidx.fragment.app.FragmentManager, com.tmobile.services.nameid.utility.WidgetUtils$SubscribeFromDialogListener, boolean, com.tmobile.services.nameid.MainActivity$Tabs):void");
    }

    /* renamed from: h */
    public static CallerDetailsData m5232h(String str) {
        String d = PhoneNumberHelper.m5415d(str.replace("+", ""));
        Caller caller = null;
        try {
            Realm G0 = Realm.m3064G0();
            RealmQuery Q0 = G0.m3053Q0(Caller.class);
            Q0.m2898d("e164Number", d);
            Iterator it = Q0.m2918E().m3089s("date", Sort.DESCENDING).iterator();
            while (it.hasNext()) {
                caller = (Caller) it.next();
                if (caller != null && caller.getNameNoContact() != null) {
                    break;
                }
            }
            RealmQuery Q02 = G0.m3053Q0(ActivityItem.class);
            Q02.m2898d("e164Number", d);
            OrderedRealmCollectionImpl s = Q02.m2918E().m3089s("date", Sort.DESCENDING);
            if (s != null && !s.isEmpty()) {
                ActivityItem activityItem = (ActivityItem) s.m3098e();
                if (caller == null || !activityItem.getDate().before(caller.getDate())) {
                    if (G0 != null) {
                        G0.close();
                    }
                    return activityItem;
                }
                if (G0 != null) {
                    G0.close();
                }
                return caller;
            }
            if (G0 != null) {
                G0.close();
            }
            return caller;
        } catch (Exception e) {
            LogUtil.m5641f("WidgetUtils#", "Error retrieving Caller from Realm: " + e.getMessage(), e);
            return null;
        }
    }

    /* renamed from: h0 */
    public static void m5231h0(FragmentActivity fragmentActivity, FragmentManager fragmentManager, @Nullable SubscribeFromDialogListener subscribeFromDialogListener, @Nullable MainActivity.Tabs tabs) {
        m5233g0(fragmentActivity, fragmentManager, subscribeFromDialogListener, true, tabs);
    }

    @Nonnull
    /* renamed from: i */
    public static String m5230i(String str) {
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(Caller.class);
            Q0.m2882t("e164Number", PhoneNumberHelper.m5415d(str));
            Q0.m2905R("name", "");
            Iterator it = Q0.m2918E().m3089s("date", Sort.DESCENDING).iterator();
            while (it.hasNext()) {
                Caller caller = (Caller) it.next();
                if (caller != null && !caller.getName().equals("")) {
                    String displayName = caller.getDisplayName();
                    if (G0 != null) {
                        G0.close();
                    }
                    return displayName;
                }
            }
            if (G0 == null) {
                return "";
            }
            G0.close();
            return "";
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

    /* renamed from: i0 */
    public static void m5229i0(@Nullable Activity activity) {
        SubscriptionHelper.State c = SubscriptionHelper.m5325c();
        if (activity instanceof MainActivity) {
            final MainActivity mainActivity = (MainActivity) activity;
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            if (c == SubscriptionHelper.State.ERROR_PREMIUM) {
                nameIDDialogBuilder.m6146p(C1517R.string.subscribe_nameid_fail_dialog_title, new String[0]);
                nameIDDialogBuilder.m6154h(C1517R.string.subscribe_nameid_fail_dialog_subtitle, new String[0]);
            } else if (c == SubscriptionHelper.State.ERROR_REDUCED_METRO) {
                nameIDDialogBuilder.m6146p(C1517R.string.subscribe_metro_reduced_fail_dialog_title, new String[0]);
                nameIDDialogBuilder.m6154h(C1517R.string.subscribe_nameid_fail_dialog_subtitle, new String[0]);
            } else if (c == SubscriptionHelper.State.ERROR_TRIAL) {
                nameIDDialogBuilder.m6146p(C1517R.string.account_trial_check_fail_dialog_title, new String[0]);
                nameIDDialogBuilder.m6154h(C1517R.string.account_trial_check_fail_dialog_subtitle, new String[0]);
            } else {
                return;
            }
            nameIDDialogBuilder.m6156f(C1517R.string.subscribe_nameid_fail_dialog_my_account, new String[0]);
            nameIDDialogBuilder.m6148n(C1517R.string.general_close, new String[0]);
            nameIDDialogBuilder.m6157e(new Function0() { // from class: com.tmobile.services.nameid.utility.n2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MainActivity.this.m7634J();
                }
            });
            nameIDDialogBuilder.m6160b(mainActivity.getSupportFragmentManager());
        }
    }

    /* renamed from: j */
    public static int m5228j(CallerSetting.Action action, boolean z) {
        int i;
        if (action != CallerSetting.Action.NONE) {
            if (z) {
                int i2 = C19121.f14467b[action.ordinal()];
                if (i2 == 1) {
                    i = C1517R.string.activity_toast_approved;
                } else if (i2 == 2) {
                    i = C1517R.string.activity_toast_voicemail;
                } else if (i2 == 3) {
                    i = C1517R.string.activity_toast_blocked;
                }
            } else {
                int i3 = C19121.f14467b[action.ordinal()];
                if (i3 == 1) {
                    i = C1517R.string.activity_toast_remove_approved;
                } else if (i3 == 2) {
                    i = C1517R.string.activity_toast_remove_voicemail;
                } else if (i3 == 3) {
                    i = C1517R.string.activity_toast_remove_blocked;
                }
            }
            return i;
        }
        i = C1517R.string.general_empty_string;
        return i;
    }

    /* renamed from: j0 */
    public static void m5227j0(@Nullable FragmentManager fragmentManager) {
        if (fragmentManager != null) {
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.subscribe_subscription_latency_notice_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.subscribe_subscription_latency_notice_subtitle, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_got_it, new String[0]);
            nameIDDialogBuilder.m6160b(fragmentManager);
        }
    }

    /* renamed from: k */
    public static Drawable m5226k(Context context, ActivityItem.Type type, boolean z) {
        int i = C19121.f14466a[type.ordinal()];
        return context.getDrawable(i != 1 ? i != 2 ? i != 3 ? C1517R.C1519drawable.ic_activity_received : C1517R.C1519drawable.ic_activity_allow : C1517R.C1519drawable.ic_activity_vm : C1517R.C1519drawable.ic_activity_block);
    }

    /* renamed from: k0 */
    public static void m5225k0(@Nullable FragmentManager fragmentManager) {
        if (fragmentManager != null) {
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.subscribe_trial_latency_notice_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.subscribe_trial_latency_notice_subtitle, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_ok, new String[0]);
            nameIDDialogBuilder.m6160b(fragmentManager);
        }
    }

    @Nonnull
    /* renamed from: l */
    public static CallerInfo m5224l(@Nullable CallerDetailsData callerDetailsData, @Nullable Contact contact, Context context, SubscriptionHelper.State state, boolean z) {
        boolean z2;
        CallerDetailsData callerDetailsData2;
        String str;
        String str2;
        String str3;
        CallerInfo callerInfo = new CallerInfo();
        String str4 = "";
        if (contact == null || contact.getName() == null) {
            z2 = false;
            callerDetailsData2 = callerDetailsData;
            if (callerDetailsData != null) {
                if (!z) {
                    callerDetailsData2 = m5232h(callerDetailsData.getE164Number());
                    z2 = false;
                    callerDetailsData2 = callerDetailsData2;
                    if (callerDetailsData2 != null) {
                        str = callerDetailsData2.getDisplayName();
                        z2 = false;
                    }
                } else {
                    str = m5212w(callerDetailsData);
                    z2 = false;
                    callerDetailsData2 = callerDetailsData;
                }
            }
            str = "";
        } else {
            z2 = true;
            z2 = true;
            callerDetailsData2 = callerDetailsData;
            if (!contact.getName().isEmpty()) {
                str = contact.getName();
                callerDetailsData2 = callerDetailsData;
            }
            str = "";
        }
        if (callerDetailsData2 != null) {
            str3 = callerDetailsData2.isEmail() ? callerDetailsData2.getE164Number().toLowerCase() : callerDetailsData2.getDisplayNumber(null);
            str4 = callerDetailsData2.getCategory() != CategorySetting.BucketId.NONE.getValue() ? callerDetailsData2.getDisplayCategory(context) : "";
            if (callerDetailsData2.getE164Number().replace("+", "").length() < 4) {
                str2 = context.getString(C1517R.string.caller_name_unknown);
                str3 = "";
            } else {
                str2 = "";
            }
        } else {
            str2 = "";
            str3 = str2;
        }
        callerInfo.f14477f = z2;
        callerInfo.f14472a = str;
        callerInfo.f14474c = str4;
        callerInfo.f14473b = str3;
        callerInfo.f14475d = m5210y(context, state);
        callerInfo.f14476e = str2;
        return callerInfo;
    }

    /* renamed from: l0 */
    public static void m5223l0(FragmentManager fragmentManager, final boolean z, final boolean z2) {
        boolean z3 = z && !PreferenceUtils.m5395b("PREF_NOTIFICATION_BLOCK_LIST_BLOCKED", false) && !PreferenceUtils.m5395b("PREF_HAS_SHOWN_ENABLE_CALL_BLOCK_DIALOG", false);
        boolean z4 = z2 && !PreferenceUtils.m5395b("PREF_NOTIFICATION_MESSAGE_BLOCKED", false) && !PreferenceUtils.m5395b("PREF_HAS_SHOWN_ENABLE_MESSAGE_BLOCK_DIALOG", false);
        if ((z3 || z4) && !SubscriptionHelper.m5311q() && SubscriptionHelper.m5315m(SubscriptionHelper.m5325c())) {
            if (z3) {
                PreferenceUtils.m5386k("PREF_HAS_SHOWN_ENABLE_CALL_BLOCK_DIALOG", true);
            }
            if (z4) {
                PreferenceUtils.m5386k("PREF_HAS_SHOWN_ENABLE_MESSAGE_BLOCK_DIALOG", true);
            }
            NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
            nameIDDialogBuilder.m6146p(C1517R.string.enable_notification_title, new String[0]);
            nameIDDialogBuilder.m6154h(C1517R.string.blocked_enable_notification_subtitle, new String[0]);
            nameIDDialogBuilder.m6156f(C1517R.string.general_ok, new String[0]);
            nameIDDialogBuilder.m6148n(C1517R.string.general_cancel, new String[0]);
            nameIDDialogBuilder.m6157e(new Function0() { // from class: com.tmobile.services.nameid.utility.e2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return WidgetUtils.m5256Q(z, z2);
                }
            });
            nameIDDialogBuilder.m6160b(fragmentManager);
        }
    }

    @Nonnull
    /* renamed from: m */
    public static String m5222m(String str) {
        Caller p = m5219p(str);
        return p != null ? p.getId() : "";
    }

    /* renamed from: n */
    public static String m5221n(Context context, @Nullable String str, @Nullable String str2) {
        return context.getString(("scam likely".equalsIgnoreCase(str) || "scam likely".equalsIgnoreCase(str2)) ? C1517R.string.con_desc_contact_scammer : C1517R.string.con_desc_contact_unknown);
    }

    @DrawableRes
    /* renamed from: o */
    public static int m5220o(boolean z, boolean z2) {
        return z ? C1517R.C1519drawable.caller_exclamation_inverted : z2 ? C1517R.C1519drawable.caller_unknown_inverted_highlighted : C1517R.C1519drawable.caller_unknown_inverted;
    }

    @Nullable
    /* renamed from: p */
    public static Caller m5219p(String str) {
        Caller caller;
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(Caller.class);
            Q0.m2882t("e164Number", str);
            OrderedRealmCollectionImpl s = Q0.m2918E().m3089s("date", Sort.DESCENDING);
            if (!s.isEmpty() && (caller = (Caller) s.get(0)) != null) {
                Caller copy = caller.copy();
                if (G0 != null) {
                    G0.close();
                }
                return copy;
            } else if (G0 == null) {
                return null;
            } else {
                G0.close();
                return null;
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

    @Nonnull
    /* renamed from: q */
    public static ActivityCallerInfo m5218q(CallerInfo callerInfo) {
        ActivityCallerInfo activityCallerInfo = new ActivityCallerInfo();
        if (!callerInfo.f14474c.isEmpty()) {
            if (!callerInfo.f14472a.isEmpty()) {
                activityCallerInfo.f14468a = callerInfo.f14472a;
                activityCallerInfo.f14469b = callerInfo.f14474c;
            } else {
                activityCallerInfo.f14468a = callerInfo.f14474c;
                activityCallerInfo.f14469b = callerInfo.f14473b;
            }
        } else if (!callerInfo.f14472a.isEmpty()) {
            activityCallerInfo.f14468a = callerInfo.f14472a;
            activityCallerInfo.f14469b = callerInfo.f14473b;
        } else if (!callerInfo.f14476e.isEmpty()) {
            activityCallerInfo.f14468a = callerInfo.f14476e;
            activityCallerInfo.f14469b = "";
            activityCallerInfo.f14471d = true;
        } else {
            activityCallerInfo.f14468a = callerInfo.f14473b;
            activityCallerInfo.f14469b = "";
        }
        return activityCallerInfo;
    }

    @Nonnull
    /* renamed from: r */
    public static ActivityCallerInfo m5217r(CallerInfo callerInfo, @Nullable Caller caller, int i, @Nullable Contact contact, Context context) {
        boolean z = true;
        boolean z2 = i == ActivityItem.Type.BLOCKED.getValue();
        if (caller == null || !caller.isScammer()) {
            z = false;
        }
        return (!z || !m5271B(caller)) ? (!z || !z2) ? m5218q(callerInfo) : m5216s(caller, contact, context) : m5215t(caller, context);
    }

    @Nonnull
    /* renamed from: s */
    public static ActivityCallerInfo m5216s(Caller caller, @Nullable Contact contact, Context context) {
        ActivityCallerInfo activityCallerInfo = new ActivityCallerInfo();
        String name = contact != null ? contact.getName() : null;
        name = caller.getDisplayNumber("");
        activityCallerInfo.f14468a = context.getString(C1517R.string.category_name_scam_likely);
        if (name == null) {
        }
        activityCallerInfo.f14469b = name;
        return activityCallerInfo;
    }

    /* renamed from: t */
    private static ActivityCallerInfo m5215t(Caller caller, Context context) {
        return m5216s(caller, null, context);
    }

    /* renamed from: u */
    public static String m5214u(Context context, EventSummaryItem eventSummaryItem) {
        int i;
        int i2;
        if (eventSummaryItem.getDisposition() == 1) {
            i2 = eventSummaryItem.getMessageCountBlocked();
            i = i2 == 1 ? C1517R.string.con_desc_blocked_message : C1517R.string.con_desc_blocked_messages;
        } else {
            i2 = eventSummaryItem.getMessageCountReceived();
            i = i2 == 1 ? C1517R.string.con_desc_incoming_message : C1517R.string.con_desc_incoming_messages;
        }
        String string = context.getString(i);
        return i2 + " " + string;
    }

    @DrawableRes
    /* renamed from: v */
    public static int m5213v(EventSummaryItem eventSummaryItem) {
        return eventSummaryItem.getDisposition() != 1 ? C1517R.C1519drawable.ic_activity_msg_received : C1517R.C1519drawable.ic_activity_msg_block;
    }

    /* renamed from: w */
    public static String m5212w(CallerDetailsData callerDetailsData) {
        return callerDetailsData.getDisplayName();
    }

    /* renamed from: x */
    public static String m5211x(Context context, ActivityItem.Type type) {
        int i = C19121.f14466a[type.ordinal()];
        return context.getString(i != 1 ? i != 2 ? C1517R.string.con_desc_call_action_incoming : C1517R.string.con_desc_call_action_shield : C1517R.string.con_desc_call_action_blocked);
    }

    @Nonnull
    /* renamed from: y */
    public static String m5210y(Context context, SubscriptionHelper.State state) {
        return (state == SubscriptionHelper.State.PREMIUM || state == SubscriptionHelper.State.TRIAL) ? "" : SubscriptionHelper.m5310r(state) ? context.getString(C1517R.string.call_details_name_upgrade_pending) : state != SubscriptionHelper.State.REDUCED_METRO ? context.getString(C1517R.string.call_details_name_upgrade) : context.getString(C1517R.string.call_details_name_upgrade_BLK);
    }

    /* renamed from: z */
    public static void m5209z(Window window) {
        if (window != null) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(window.getAttributes());
            layoutParams.width = -1;
            layoutParams.height = -2;
            layoutParams.gravity = 80;
            layoutParams.gravity = 80;
            window.setAttributes(layoutParams);
        }
    }
}
