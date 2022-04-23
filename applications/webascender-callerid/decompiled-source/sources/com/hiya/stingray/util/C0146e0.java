package com.hiya.stingray.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.b;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.d;
import androidx.fragment.app.n;
import androidx.fragment.app.y;
import androidx.recyclerview.widget.RecyclerView;
import com.hiya.stingray.ui.common.SinglePanelFragmentActivity;
import com.hiya.stingray.ui.common.p;
import com.hiya.stingray.ui.setting.WebViewLinkFragment;
import java.util.ArrayList;
import java.util.List;
import kotlin.r;
import kotlin.w.b.l;
import kotlin.w.c.k;
import kotlin.z.c;
import r.a.a;
/* renamed from: com.hiya.stingray.util.e0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/e0.class */
public final class C0146e0 {

    /* renamed from: com.hiya.stingray.util.e0$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/e0$a.class */
    public static final class C0147a implements TextWatcher {

        /* renamed from: f */
        final /* synthetic */ l f307f;

        C0147a(l lVar) {
            this.f307f = lVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            this.f307f.invoke(String.valueOf(editable));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.util.e0$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/e0$b.class */
    public static final class DialogInterface$OnClickListenerC0148b implements DialogInterface.OnClickListener {

        /* renamed from: f */
        public static final DialogInterface$OnClickListenerC0148b f308f = new DialogInterface$OnClickListenerC0148b();

        DialogInterface$OnClickListenerC0148b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.hiya.stingray.util.e0$c */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/e0$c.class */
    public static final class C0149c extends ClickableSpan {

        /* renamed from: f */
        final /* synthetic */ l f309f;

        /* renamed from: g */
        final /* synthetic */ String f310g;

        C0149c(l lVar, String str) {
            this.f309f = lVar;
            this.f310g = str;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            k.g(view, "view");
            this.f309f.invoke(this.f310g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.util.e0$d */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/e0$d.class */
    public static final class View$OnClickListenerC0150d implements View.OnClickListener {

        /* renamed from: f */
        final /* synthetic */ Activity f311f;

        View$OnClickListenerC0150d(Activity activity) {
            this.f311f = activity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f311f.onBackPressed();
        }
    }

    /* renamed from: com.hiya.stingray.util.e0$e */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/e0$e.class */
    static final class View$OnClickListenerC0151e implements View.OnClickListener {

        /* renamed from: f */
        final /* synthetic */ Activity f312f;

        View$OnClickListenerC0151e(Activity activity) {
            this.f312f = activity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f312f.onBackPressed();
        }
    }

    /* renamed from: com.hiya.stingray.util.e0$f */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/e0$f.class */
    static final class RunnableC0152f implements Runnable {

        /* renamed from: f */
        final /* synthetic */ Activity f313f;

        /* renamed from: g */
        final /* synthetic */ View f314g;

        RunnableC0152f(Activity activity, View view) {
            this.f313f = activity;
            this.f314g = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Activity activity = this.f313f;
            Object systemService = null;
            systemService = activity != null ? activity.getSystemService("input_method") : null;
            if (!(systemService instanceof InputMethodManager)) {
            }
            InputMethodManager inputMethodManager = (InputMethodManager) systemService;
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(this.f314g, 1);
            }
        }
    }

    /* renamed from: A */
    public static final void m962A(View view, boolean z) {
        k.g(view, "$this$showOrInvisible");
        view.setVisibility(z ? 0 : 4);
    }

    /* renamed from: B */
    public static final boolean m961B(String str, Context context) {
        k.g(str, "phoneNumber");
        k.g(context, "context");
        String encode = Uri.encode(str);
        try {
            context.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + encode)));
            return true;
        } catch (Exception e) {
            a.e(e);
            return false;
        }
    }

    /* renamed from: C */
    public static final void m960C(RecyclerView recyclerView, RecyclerView.n nVar) {
        k.g(recyclerView, "$this$updateItemDecoration");
        k.g(nVar, "itemDecoration");
        RecyclerView.n n0 = recyclerView.getItemDecorationCount() > 0 ? recyclerView.n0(0) : null;
        if (n0 != null) {
            recyclerView.Z0(n0);
        }
        recyclerView.h(nVar);
    }

    /* renamed from: D */
    public static final void m959D(Activity activity, boolean z) {
        k.g(activity, "$this$updateStatusBarIconsColor");
        if (Build.VERSION.SDK_INT >= 23) {
            Window window = activity.getWindow();
            k.c(window, "window");
            View decorView = window.getDecorView();
            k.c(decorView, "window.decorView");
            int systemUiVisibility = decorView.getSystemUiVisibility();
            int i = 8192;
            if (!z) {
                i = -8193;
            }
            Window window2 = activity.getWindow();
            k.c(window2, "window");
            View decorView2 = window2.getDecorView();
            k.c(decorView2, "window.decorView");
            decorView2.setSystemUiVisibility(systemUiVisibility & i);
        }
    }

    /* renamed from: a */
    public static final void m958a(EditText editText, l<? super String, r> lVar) {
        k.g(editText, "$this$afterTextChanged");
        k.g(lVar, "afterTextChanged");
        editText.addTextChangedListener(new C0147a(lVar));
    }

    /* renamed from: b */
    public static final b.a m957b(b.a aVar, Integer num, Integer num2, boolean z) {
        k.g(aVar, "$this$defaultError");
        if (z) {
            aVar.p(num != null ? num.intValue() : 2131820780);
        }
        aVar.g(num2 != null ? num2.intValue() : 2131820779);
        aVar.d(true);
        aVar.m(2131821115, DialogInterface$OnClickListenerC0148b.f308f);
        k.c(aVar, "this\n            .apply …, _ -> dialog.dismiss() }");
        return aVar;
    }

    /* renamed from: c */
    public static /* synthetic */ b.a m956c(b.a aVar, Integer num, Integer num2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        m957b(aVar, num, num2, z);
        return aVar;
    }

    /* renamed from: d */
    public static final <T extends View> T m955d(View view, Class<T> cls) {
        k.g(view, "$this$findViewByClass");
        k.g(cls, "cls");
        if (cls.isInstance(view)) {
            return cls.cast(view);
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            k.c(childAt, "child");
            T t = (T) m955d(childAt, cls);
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    /* renamed from: e */
    public static final <T extends View> List<T> m954e(View view, Class<T> cls) {
        k.g(view, "$this$findViewsByClass");
        k.g(cls, "cls");
        ArrayList arrayList = new ArrayList();
        if (cls.isInstance(view)) {
            T cast = cls.cast(view);
            if (cast != null) {
                k.c(cast, "cls.cast(this)!!");
                arrayList.add(cast);
            } else {
                k.o();
                throw null;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                k.c(childAt, "child");
                arrayList.addAll(m954e(childAt, cls));
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public static final List<View> m953f(View view, String str) {
        k.g(view, "$this$findViewsWithTag");
        k.g(str, "tag");
        ArrayList arrayList = new ArrayList();
        if (k.b(view.getTag(), str)) {
            arrayList.add(view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                k.c(childAt, "child");
                arrayList.addAll(m953f(childAt, str));
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public static final int m952g(Context context, int i) {
        k.g(context, "$this$getColorCompat");
        return androidx.core.content.a.d(context, i);
    }

    /* renamed from: h */
    public static final p m951h(RecyclerView recyclerView) {
        k.g(recyclerView, "$this$localItemDecoration");
        Context context = recyclerView.getContext();
        Context context2 = recyclerView.getContext();
        k.c(context2, "context");
        p pVar = new p(context, (int) context2.getResources().getDimension(2131165418));
        pVar.e(true);
        return pVar;
    }

    /* renamed from: i */
    public static final void m950i(Activity activity, View view) {
        k.g(view, "view");
        Object systemService = null;
        systemService = activity != null ? activity.getSystemService("input_method") : null;
        if (!(systemService instanceof InputMethodManager)) {
        }
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* renamed from: j */
    public static final boolean m949j(View view, int i, int i2) {
        k.g(view, "$this$isTouchInView");
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i3 = iArr[0];
        int i4 = iArr[1];
        int width = view.getWidth();
        int height = view.getHeight();
        boolean z = false;
        if (i >= i3) {
            z = false;
            if (i <= i3 + width) {
                z = false;
                if (i2 >= i4) {
                    z = false;
                    if (i2 <= i4 + height) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: k */
    public static final void m948k(Context context, String str) {
        k.g(context, "$this$launchWebView");
        k.g(str, "url");
        context.startActivity(SinglePanelFragmentActivity.O(context, WebViewLinkFragment.f1(str), WebViewLinkFragment.class));
    }

    /* renamed from: l */
    public static final void m947l(TextView textView, c cVar, String str, int i, l<? super String, r> lVar) {
        k.g(textView, "textView");
        k.g(cVar, "range");
        k.g(str, "url");
        k.g(lVar, "callback");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textView.getText());
        spannableStringBuilder.setSpan(new C0149c(lVar, str), cVar.m().intValue(), cVar.g(), 0);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setLinksClickable(true);
        textView.setLinkTextColor(i);
        textView.setText(spannableStringBuilder);
    }

    /* renamed from: m */
    public static final void m946m(View view) {
        k.g(view, "view");
        view.sendAccessibilityEvent(8);
    }

    /* renamed from: n */
    public static final void m945n(AlertDialog alertDialog) {
        k.g(alertDialog, "$this$setButtonColorsForDialog");
        alertDialog.getButton(-2).setTextColor(androidx.core.content.a.d(alertDialog.getContext(), 2131099690));
        alertDialog.getButton(-1).setTextColor(androidx.core.content.a.d(alertDialog.getContext(), 2131099690));
    }

    /* renamed from: o */
    public static final void m944o(List<Integer> list, ViewGroup viewGroup) {
        k.g(list, "viewsOrder");
        k.g(viewGroup, "rootView");
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i >= 0) {
                int intValue = ((Number) obj).intValue();
                if (i != list.size() - 1) {
                    View findViewById = viewGroup.findViewById(intValue);
                    int intValue2 = list.get(i2).intValue();
                    if (findViewById != null) {
                        findViewById.setNextFocusDownId(intValue2);
                        findViewById.setNextFocusForwardId(intValue2);
                        findViewById.setNextFocusRightId(intValue2);
                        if (Build.VERSION.SDK_INT >= 22) {
                            findViewById.setAccessibilityTraversalBefore(intValue2);
                        }
                    }
                    i = i2;
                } else {
                    return;
                }
            } else {
                kotlin.s.k.p();
                throw null;
            }
        }
    }

    /* renamed from: p */
    public static final void m943p(Activity activity, int i) {
        k.g(activity, "$this$setStatusBarColor");
        Window window = activity.getWindow();
        int d = androidx.core.content.a.d(window.getContext(), i);
        if (d == androidx.core.content.a.d(window.getContext(), 17170445)) {
            window.clearFlags(Integer.MIN_VALUE);
            window.addFlags(67108864);
        } else {
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
        }
        k.c(window, "this");
        View decorView = window.getDecorView();
        k.c(decorView, "this.decorView");
        decorView.setFitsSystemWindows(true);
        window.setStatusBarColor(d);
    }

    /* renamed from: q */
    public static final void m942q(TextView textView, String str) {
        k.g(textView, "$this$setTextOrHide");
        if (com.google.common.base.r.b(str)) {
            textView.setVisibility(8);
            return;
        }
        textView.setText(str);
        textView.setVisibility(0);
    }

    /* renamed from: r */
    public static final void m941r(Toolbar toolbar, Activity activity, CharSequence charSequence, boolean z) {
        k.g(toolbar, "$this$setupWithBackButton");
        k.g(activity, "activity");
        k.g(charSequence, "title");
        Menu menu = toolbar.getMenu();
        if (menu != null) {
            menu.clear();
        }
        toolbar.setTitle(charSequence);
        toolbar.setNavigationIcon(z ? 2131230971 : 2131230970);
        toolbar.setNavigationContentDescription(2131821559);
        toolbar.setNavigationOnClickListener(new View$OnClickListenerC0150d(activity));
    }

    /* renamed from: s */
    public static /* synthetic */ void m940s(Toolbar toolbar, Activity activity, CharSequence charSequence, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        m941r(toolbar, activity, charSequence, z);
    }

    /* renamed from: t */
    public static final void m939t(Toolbar toolbar, Activity activity, CharSequence charSequence) {
        k.g(toolbar, "$this$setupWithCloseButton");
        k.g(activity, "activity");
        k.g(charSequence, "title");
        Menu menu = toolbar.getMenu();
        if (menu != null) {
            menu.clear();
        }
        toolbar.setTitle(charSequence);
        toolbar.setNavigationIcon(2131230993);
        toolbar.setNavigationContentDescription(2131820717);
        toolbar.setNavigationOnClickListener(new View$OnClickListenerC0151e(activity));
    }

    /* renamed from: u */
    public static final void m938u(Toolbar toolbar, CharSequence charSequence, int i) {
        k.g(toolbar, "$this$setupWithOptionsMenu");
        k.g(charSequence, "title");
        Menu menu = toolbar.getMenu();
        if (menu != null) {
            menu.clear();
        }
        toolbar.setTitle(charSequence);
        toolbar.x(i);
    }

    /* renamed from: v */
    public static final void m937v(Activity activity) {
        k.g(activity, "activity");
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setFlags(335544320);
        intent.setData(Uri.fromParts("package", activity.getPackageName(), null));
        activity.startActivity(intent);
    }

    /* renamed from: w */
    public static final void m936w(Fragment fragment, String str, d dVar) {
        k.g(fragment, "$this$showDialog");
        k.g(str, "tag");
        k.g(dVar, "dialogFragment");
        n childFragmentManager = fragment.getChildFragmentManager();
        y n = childFragmentManager.n();
        k.c(n, "it.beginTransaction()");
        Fragment j0 = childFragmentManager.j0(str);
        if (j0 != null) {
            n.q(j0);
        }
        n.g((String) null);
        dVar.o1(n, str);
    }

    /* renamed from: x */
    public static final void m935x(Activity activity, View view) {
        k.g(view, "view");
        Object systemService = null;
        systemService = activity != null ? activity.getSystemService("input_method") : null;
        if (!(systemService instanceof InputMethodManager)) {
        }
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(view, 1);
        }
    }

    /* renamed from: y */
    public static final void m934y(Activity activity, View view) {
        k.g(view, "view");
        view.postDelayed(new RunnableC0152f(activity, view), 100L);
    }

    /* renamed from: z */
    public static final void m933z(View view, boolean z) {
        k.g(view, "$this$showOrGone");
        view.setVisibility(z ? 0 : 8);
    }
}
