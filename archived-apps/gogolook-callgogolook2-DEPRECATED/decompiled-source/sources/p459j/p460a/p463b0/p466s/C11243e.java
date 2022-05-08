package p459j.p460a.p463b0.p466s;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.SystemClock;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.ads.AdError;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p531k0.C12860e;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p541n0.C13057d;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p613z0.DialogC14625g;
import p626l.C14989s;
import p660rx.functions.Action1;
/* renamed from: j.a.b0.s.e */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/e.class */
public class C11243e {

    /* renamed from: a */
    public static Dialog f25215a;

    /* renamed from: b */
    public static String f25216b;

    /* renamed from: c */
    public static String f25217c;

    /* renamed from: d */
    public static boolean f25218d = false;

    /* renamed from: e */
    public static final String[] f25219e = {"-", "❨", "❩", "〔", "〕", "【", "】", "﹝", "﹞", "〈", "〉", "﹙", "﹚", "《", "》", "（", "）", ")", "(", " "};

    /* renamed from: f */
    public static boolean f25220f;

    /* renamed from: j.a.b0.s.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$a.class */
    public static final class RunnableC11244a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f25221a;

        /* renamed from: b */
        public final /* synthetic */ int[] f25222b;

        public RunnableC11244a(View view, int[] iArr) {
            this.f25221a = view;
            this.f25222b = iArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = this.f25221a;
            if (view != null) {
                view.setX(this.f25222b[0]);
                View view2 = this.f25221a;
                view2.setY(this.f25222b[1] - view2.getMeasuredHeight());
            }
        }
    }

    /* renamed from: j.a.b0.s.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$b.class */
    public static final class View$OnClickListenerC11245b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f25223a;

        /* renamed from: b */
        public final /* synthetic */ String f25224b;

        /* renamed from: c */
        public final /* synthetic */ IconFontTextView f25225c;

        /* renamed from: d */
        public final /* synthetic */ String f25226d;

        /* renamed from: e */
        public final /* synthetic */ View f25227e;

        public View$OnClickListenerC11245b(View view, String str, IconFontTextView iconFontTextView, String str2, View view2) {
            this.f25223a = view;
            this.f25224b = str;
            this.f25225c = iconFontTextView;
            this.f25226d = str2;
            this.f25227e = view2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f25223a.equals(view)) {
                C14217x3.m2182a(MyApplication.m29013o(), this.f25224b, false, 16);
            } else if (this.f25225c.equals(view)) {
                Context o = MyApplication.m29013o();
                String str = this.f25226d;
                C12860e.m5132a(o, str, C11243e.m9941f(str), true, C11243e.class.getSimpleName(), (HandlerC12947l) null);
            } else if (this.f25227e.equals(view)) {
                Intent a = NumberDetailActivity.m26858a(MyApplication.m29013o(), C11243e.f25216b, this.f25226d, null, "FROM_CTC_DIALOG");
                a.setFlags(268435456);
                MyApplication.m29013o().startActivity(a);
            }
            C11243e.m9944e();
        }
    }

    /* renamed from: j.a.b0.s.e$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$c.class */
    public static final class C11246c extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ ImageView f25228d;

        /* renamed from: e */
        public final /* synthetic */ TextView f25229e;

        /* renamed from: f */
        public final /* synthetic */ RecycleSafeImageView f25230f;

        /* renamed from: g */
        public final /* synthetic */ TextView f25231g;

        /* renamed from: h */
        public final /* synthetic */ TextView f25232h;

        /* renamed from: i */
        public final /* synthetic */ TextView f25233i;

        /* renamed from: j */
        public final /* synthetic */ View f25234j;

        /* renamed from: k */
        public final /* synthetic */ IconFontTextView f25235k;

        /* renamed from: l */
        public final /* synthetic */ View f25236l;

        /* renamed from: j.a.b0.s.e$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$c$a.class */
        public class C11247a implements Action1<String> {

            /* renamed from: a */
            public final /* synthetic */ String f25237a;

            /* renamed from: b */
            public final /* synthetic */ NumberInfo f25238b;

            public C11247a(String str, NumberInfo numberInfo) {
                this.f25237a = str;
                this.f25238b = numberInfo;
            }

            /* JADX WARN: Code restructure failed: missing block: B:8:0x004a, code lost:
                if (android.text.TextUtils.equals(r0, r0) != false) goto L_0x002f;
             */
            /* JADX WARN: Removed duplicated region for block: B:25:0x00b1  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x0129  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x0130  */
            /* JADX WARN: Removed duplicated region for block: B:40:0x016d  */
            /* JADX WARN: Removed duplicated region for block: B:44:0x01bf  */
            /* JADX WARN: Removed duplicated region for block: B:53:0x023c  */
            /* JADX WARN: Removed duplicated region for block: B:54:0x0242  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void call(java.lang.String r7) {
                /*
                    Method dump skipped, instructions count: 630
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p466s.C11243e.C11246c.C11247a.call(java.lang.String):void");
            }
        }

        public C11246c(ImageView imageView, TextView textView, RecycleSafeImageView recycleSafeImageView, TextView textView2, TextView textView3, TextView textView4, View view, IconFontTextView iconFontTextView, View view2) {
            this.f25228d = imageView;
            this.f25229e = textView;
            this.f25230f = recycleSafeImageView;
            this.f25231g = textView2;
            this.f25232h = textView3;
            this.f25233i = textView4;
            this.f25234j = view;
            this.f25235k = iconFontTextView;
            this.f25236l = view2;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if ((TextUtils.isEmpty(C11243e.f25216b) || C11243e.f25216b.equals(str)) && numberInfo != null) {
                C14217x3.m2176a(str).subscribe(new C11247a(str, numberInfo), C14081m3.m2611a());
            }
        }
    }

    /* renamed from: j.a.b0.s.e$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$d.class */
    public static final class C11248d implements Animator.AnimatorListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f25240a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f25241b;

        public C11248d(TextView textView, ImageView imageView) {
            this.f25240a = textView;
            this.f25241b = imageView;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ImageView imageView;
            TextView textView;
            Float f = (Float) ((ValueAnimator) animator).getAnimatedValue();
            int i = 8;
            int i2 = 0;
            if (f.floatValue() == 1.0f && (textView = this.f25240a) != null) {
                if (!C11243e.f25218d) {
                    i2 = 4;
                }
                textView.setVisibility(i2);
                this.f25241b.setVisibility(8);
            } else if (f.floatValue() == 1.4f && (imageView = this.f25241b) != null) {
                if (C11243e.f25218d) {
                    i = 0;
                }
                imageView.setVisibility(i);
                this.f25240a.setVisibility(4);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: j.a.b0.s.e$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$e.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC11249e implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f25242a;

        public ViewTreeObserver$OnGlobalLayoutListenerC11249e(View view) {
            this.f25242a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Rect rect = new Rect();
            this.f25242a.getWindowVisibleDisplayFrame(rect);
            int height = this.f25242a.getRootView().getHeight();
            boolean unused = C11243e.f25220f = ((float) (height - rect.bottom)) > ((float) height) * 0.15f;
        }
    }

    /* renamed from: j.a.b0.s.e$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$f.class */
    public static final class View$OnClickListenerC11250f implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f25243a;

        /* renamed from: b */
        public final /* synthetic */ EditText f25244b;

        /* renamed from: c */
        public final /* synthetic */ EditText f25245c;

        /* renamed from: d */
        public final /* synthetic */ View f25246d;

        /* renamed from: e */
        public final /* synthetic */ ImageView f25247e;

        /* renamed from: f */
        public final /* synthetic */ View f25248f;

        /* renamed from: g */
        public final /* synthetic */ ImageView f25249g;

        public View$OnClickListenerC11250f(View view, EditText editText, EditText editText2, View view2, ImageView imageView, View view3, ImageView imageView2) {
            this.f25243a = view;
            this.f25244b = editText;
            this.f25245c = editText2;
            this.f25246d = view2;
            this.f25247e = imageView;
            this.f25248f = view3;
            this.f25249g = imageView2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f25243a.equals(view)) {
                String obj = this.f25244b.getText().toString();
                String obj2 = this.f25245c.getText().toString();
                if (obj.length() > 3 || obj2.startsWith("+")) {
                    obj = "";
                }
                C14217x3.m2182a(MyApplication.m29013o(), obj.concat(obj2), false, 16);
            } else if (this.f25246d.equals(view)) {
                if (C11243e.f25220f) {
                    C11243e.m9954b(this.f25244b, this.f25245c);
                    this.f25247e.setVisibility(8);
                    return;
                }
            } else if (this.f25248f.equals(view)) {
                if (C11243e.f25220f) {
                    C11243e.m9954b(this.f25244b, this.f25245c);
                    this.f25247e.setVisibility(8);
                    return;
                }
                C11243e.m9946d(this.f25245c);
                return;
            } else if (this.f25247e.equals(view)) {
                this.f25245c.setText(C11243e.f25217c);
                return;
            } else if (this.f25249g.equals(view)) {
                C11243e.m9949c(this.f25244b);
                return;
            } else if (this.f25244b.equals(view)) {
                if (!this.f25244b.isFocusable() && !this.f25244b.isFocusableInTouchMode()) {
                    C11243e.m9949c(this.f25244b);
                    return;
                }
                return;
            }
            C11243e.m9944e();
        }
    }

    /* renamed from: j.a.b0.s.e$g */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$g.class */
    public static final class View$OnFocusChangeListenerC11251g implements View.OnFocusChangeListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f25250a;

        /* renamed from: b */
        public final /* synthetic */ EditText f25251b;

        /* renamed from: c */
        public final /* synthetic */ View f25252c;

        /* renamed from: d */
        public final /* synthetic */ EditText f25253d;

        /* renamed from: e */
        public final /* synthetic */ View f25254e;

        /* renamed from: f */
        public final /* synthetic */ TextView f25255f;

        /* renamed from: g */
        public final /* synthetic */ ObjectAnimator f25256g;

        /* renamed from: h */
        public final /* synthetic */ ObjectAnimator f25257h;

        /* renamed from: i */
        public final /* synthetic */ ObjectAnimator f25258i;

        /* renamed from: j */
        public final /* synthetic */ ObjectAnimator f25259j;

        /* renamed from: k */
        public final /* synthetic */ ObjectAnimator f25260k;

        /* renamed from: l */
        public final /* synthetic */ ObjectAnimator f25261l;

        /* renamed from: m */
        public final /* synthetic */ ObjectAnimator f25262m;

        /* renamed from: n */
        public final /* synthetic */ ObjectAnimator f25263n;

        /* renamed from: o */
        public final /* synthetic */ ObjectAnimator f25264o;

        /* renamed from: p */
        public final /* synthetic */ ObjectAnimator f25265p;

        /* renamed from: q */
        public final /* synthetic */ ObjectAnimator f25266q;

        /* renamed from: r */
        public final /* synthetic */ ObjectAnimator f25267r;

        public View$OnFocusChangeListenerC11251g(TextView textView, EditText editText, View view, EditText editText2, View view2, TextView textView2, ObjectAnimator objectAnimator, ObjectAnimator objectAnimator2, ObjectAnimator objectAnimator3, ObjectAnimator objectAnimator4, ObjectAnimator objectAnimator5, ObjectAnimator objectAnimator6, ObjectAnimator objectAnimator7, ObjectAnimator objectAnimator8, ObjectAnimator objectAnimator9, ObjectAnimator objectAnimator10, ObjectAnimator objectAnimator11, ObjectAnimator objectAnimator12) {
            this.f25250a = textView;
            this.f25251b = editText;
            this.f25252c = view;
            this.f25253d = editText2;
            this.f25254e = view2;
            this.f25255f = textView2;
            this.f25256g = objectAnimator;
            this.f25257h = objectAnimator2;
            this.f25258i = objectAnimator3;
            this.f25259j = objectAnimator4;
            this.f25260k = objectAnimator5;
            this.f25261l = objectAnimator6;
            this.f25262m = objectAnimator7;
            this.f25263n = objectAnimator8;
            this.f25264o = objectAnimator9;
            this.f25265p = objectAnimator10;
            this.f25266q = objectAnimator11;
            this.f25267r = objectAnimator12;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            TextView textView = this.f25250a;
            textView.setPivotX(textView.getLeft());
            TextView textView2 = this.f25250a;
            textView2.setPivotY(textView2.getTop());
            this.f25251b.setPivotX(0.0f);
            this.f25252c.setPivotX(0.0f);
            this.f25253d.setPivotX(0.0f);
            this.f25254e.setPivotX(0.0f);
            TransitionDrawable transitionDrawable = (TransitionDrawable) this.f25254e.getBackground();
            TransitionDrawable transitionDrawable2 = (TransitionDrawable) this.f25252c.getBackground();
            if (z) {
                this.f25255f.setVisibility(4);
                this.f25256g.start();
                this.f25257h.start();
                this.f25258i.start();
                this.f25259j.start();
                this.f25260k.start();
                this.f25261l.start();
                this.f25262m.start();
                this.f25263n.start();
                this.f25264o.start();
                this.f25265p.start();
                this.f25266q.start();
                this.f25267r.start();
                transitionDrawable2.startTransition(500);
                transitionDrawable.startTransition(500);
                return;
            }
            this.f25256g.reverse();
            this.f25257h.reverse();
            this.f25258i.reverse();
            this.f25259j.reverse();
            this.f25260k.reverse();
            this.f25261l.reverse();
            this.f25262m.reverse();
            this.f25263n.reverse();
            this.f25264o.reverse();
            this.f25265p.reverse();
            this.f25266q.reverse();
            this.f25267r.reverse();
            transitionDrawable2.reverseTransition(500);
            transitionDrawable.reverseTransition(500);
        }
    }

    /* renamed from: j.a.b0.s.e$h */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$h.class */
    public static final class C11252h implements TextWatcher {

        /* renamed from: a */
        public final /* synthetic */ ImageView f25268a;

        public C11252h(ImageView imageView) {
            this.f25268a = imageView;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            boolean unused = C11243e.f25218d = !editable.toString().equals(C11243e.f25217c);
            this.f25268a.setVisibility(C11243e.f25218d ? 0 : 8);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: j.a.b0.s.e$i */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$i.class */
    public static final class C11253i extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ ImageView f25269d;

        /* renamed from: e */
        public final /* synthetic */ TextView f25270e;

        /* renamed from: f */
        public final /* synthetic */ RecycleSafeImageView f25271f;

        /* renamed from: g */
        public final /* synthetic */ EditText f25272g;

        /* renamed from: h */
        public final /* synthetic */ View f25273h;

        /* renamed from: i */
        public final /* synthetic */ View f25274i;

        /* renamed from: j */
        public final /* synthetic */ EditText f25275j;

        /* renamed from: k */
        public final /* synthetic */ View f25276k;

        /* renamed from: l */
        public final /* synthetic */ ImageView f25277l;

        /* renamed from: m */
        public final /* synthetic */ View f25278m;

        public C11253i(ImageView imageView, TextView textView, RecycleSafeImageView recycleSafeImageView, EditText editText, View view, View view2, EditText editText2, View view3, ImageView imageView2, View view4) {
            this.f25269d = imageView;
            this.f25270e = textView;
            this.f25271f = recycleSafeImageView;
            this.f25272g = editText;
            this.f25273h = view;
            this.f25274i = view2;
            this.f25275j = editText2;
            this.f25276k = view3;
            this.f25277l = imageView2;
            this.f25278m = view4;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            boolean z;
            String str2;
            if (!TextUtils.isEmpty(C11243e.f25216b) && C11243e.f25216b.equals(str) && numberInfo != null) {
                RowInfo a = RowInfo.m28249a(str, C14217x3.m2146e(MyApplication.m29013o(), str), numberInfo);
                String a2 = C14108o4.m2493a(str, true, false);
                String str3 = null;
                String b = C13915b3.m3056b("DDDSetting", (String) null);
                if (a != null) {
                    String str4 = a.m28224h().name;
                    String str5 = a.m28223i().name;
                    String str6 = str4;
                    if (TextUtils.equals(a2, str4)) {
                        str6 = null;
                    }
                    if (!TextUtils.isEmpty(str5) || TextUtils.equals(a2, str6)) {
                        a2 = str5;
                    }
                    this.f25269d.setVisibility(8);
                    this.f25270e.setTextColor(Color.parseColor("#111111"));
                    CallUtils.m26576a(this.f25271f, this.f25269d, a, (String) null, CallUtils.EnumC4993l.MAIN_CALL_LOG_FRAGMENT);
                    if (a.m28224h().isRed) {
                        this.f25270e.setTextColor(Color.parseColor("#e6393f"));
                    }
                    str3 = str6;
                } else {
                    a2 = null;
                }
                TextView textView = this.f25270e;
                String str7 = str3;
                if (TextUtils.isEmpty(str3)) {
                    str7 = MyApplication.m29013o().getString(R$string.ctc_noinfo);
                }
                textView.setText(str7);
                if (!TextUtils.isEmpty(a2)) {
                    String replace = a2.replace("-", "");
                    Matcher matcher = Pattern.compile("\\((\\d+)\\)").matcher(replace);
                    if (matcher.find()) {
                        String group = matcher.group(1);
                        String replaceAll = matcher.replaceAll("");
                        z = !TextUtils.isEmpty(b) && b.equals(group);
                        if (z) {
                            replace = replaceAll.trim();
                        } else {
                            replace = group + " " + replaceAll.trim();
                        }
                    } else {
                        z = !TextUtils.isEmpty(b);
                    }
                    String unused = C11243e.f25217c = replace;
                    str2 = replace;
                } else {
                    z = false;
                    str2 = a2;
                }
                C11261g a3 = C11263i.m9927b().m9928a(C14017g4.m2814j());
                this.f25272g.setFilters(new InputFilter[]{new InputFilter.LengthFilter(5)});
                this.f25272g.setText(z ? C14206w4.m2225a((int) R$string.ctc_ldc_local) : a3 != null ? a3.f25285a : C11263i.m9927b().m9926b(0));
                this.f25273h.setVisibility(0);
                this.f25273h.setBackgroundColor(CallUtils.m26582a(a, false));
                this.f25274i.setVisibility(0);
                this.f25275j.setVisibility(0);
                this.f25275j.setText(str2);
                this.f25272g.setVisibility(0);
                this.f25272g.setFocusable(false);
                this.f25276k.setVisibility(0);
                this.f25277l.setVisibility(0);
                if (C11243e.f25217c.startsWith("+")) {
                    this.f25272g.setText("");
                }
                this.f25278m.setVisibility(8);
            }
        }
    }

    /* renamed from: j.a.b0.s.e$j */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$j.class */
    public static final class DialogInterface$OnClickListenerC11254j implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f25279a;

        public DialogInterface$OnClickListenerC11254j(EditText editText) {
            this.f25279a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            boolean z = i == 4;
            int i2 = 5;
            boolean z2 = i == 5;
            EditText editText = this.f25279a;
            if (!z2) {
                i2 = 3;
            }
            editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i2)});
            this.f25279a.setFocusable(z);
            this.f25279a.setFocusableInTouchMode(z);
            this.f25279a.setText(!z ? !z2 ? C11263i.m9927b().m9926b(i) : C14206w4.m2225a((int) R$string.ctc_ldc_local) : "");
            if (z) {
                C11243e.m9946d(this.f25279a);
            }
        }
    }

    /* renamed from: j.a.b0.s.e$k */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$k.class */
    public static class C11255k {

        /* renamed from: a */
        public static volatile ClipboardManager.OnPrimaryClipChangedListener f25280a = new ClipboardManager$OnPrimaryClipChangedListenerC11256a();

        /* renamed from: j.a.b0.s.e$k$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/s/e$k$a.class */
        public static final class ClipboardManager$OnPrimaryClipChangedListenerC11256a implements ClipboardManager.OnPrimaryClipChangedListener {
            @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
            @SuppressLint({"NewApi"})
            public void onPrimaryClipChanged() {
                ClipboardManager clipboardManager = (ClipboardManager) MyApplication.m29013o().getSystemService("clipboard");
                if (clipboardManager == null || !C13915b3.m3059b("isCalloutDialogEnabled")) {
                    if (clipboardManager != null) {
                        clipboardManager.removePrimaryClipChangedListener(this);
                    }
                } else if (clipboardManager.hasPrimaryClip()) {
                    ClipData clipData = null;
                    try {
                        clipData = clipboardManager.getPrimaryClip();
                    } catch (Exception e) {
                        C14080m2.m2612a((Throwable) e);
                    }
                    if (clipData != null && clipData.getItemCount() > 0) {
                        String valueOf = String.valueOf(clipData.getItemAt(0).getText());
                        if (valueOf.length() >= 4 && valueOf.length() <= 20) {
                            String g = C11243e.m9940g(valueOf);
                            if (C14108o4.m2475k(C14108o4.m2474l(g))) {
                                if (C14017g4.m2835A()) {
                                    C11243e.m9938i(g);
                                } else {
                                    C11243e.m9939h(g);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m9959a(C11507b.C11508a aVar) {
        aVar.m9447a("isCalloutDialogEnabled", false);
        aVar.m9447a("isCalloutDialogHidden", true);
        return null;
    }

    /* renamed from: b */
    public static /* synthetic */ C14989s m9953b(C11507b.C11508a aVar) {
        aVar.m9447a("isCalloutDialogEnabled", false);
        aVar.m9447a("isCalloutDialogHidden", true);
        return null;
    }

    /* renamed from: b */
    public static void m9954b(EditText editText, EditText editText2) {
        InputMethodManager inputMethodManager = (InputMethodManager) MyApplication.m29013o().getSystemService("input_method");
        if (editText2.isFocusable()) {
            editText2.clearFocus();
        }
        if (editText.isFocusable()) {
            editText.clearFocus();
        }
        inputMethodManager.hideSoftInputFromWindow(editText2.getWindowToken(), 0);
    }

    /* renamed from: c */
    public static void m9949c(EditText editText) {
        DialogC14625g gVar = new DialogC14625g(MyApplication.m29013o(), R$layout.dialog_m_list_small);
        gVar.m968b(C11263i.m9927b().m9931a(), new DialogInterface$OnClickListenerC11254j(editText));
        gVar.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
        int[] iArr = new int[2];
        editText.getLocationOnScreen(iArr);
        View findViewById = gVar.findViewById(R$id.ll_content);
        gVar.setCanceledOnTouchOutside(true);
        gVar.setCancelable(true);
        gVar.show();
        findViewById.post(new RunnableC11244a(findViewById, iArr));
    }

    /* renamed from: d */
    public static void m9946d(EditText editText) {
        InputMethodManager inputMethodManager = (InputMethodManager) MyApplication.m29013o().getSystemService("input_method");
        editText.requestFocusFromTouch();
        MotionEvent obtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis() + 100, 0, 0.0f, 0.0f, 0);
        MotionEvent obtain2 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis() + 100, 1, 0.0f, 0.0f, 0);
        editText.onTouchEvent(obtain);
        editText.onTouchEvent(obtain2);
        editText.setSelection(editText.getText().length());
        inputMethodManager.showSoftInput(editText, 1);
    }

    /* renamed from: e */
    public static void m9944e() {
        Dialog dialog = f25215a;
        if (dialog != null && dialog.isShowing()) {
            try {
                f25215a.dismiss();
                C14289m.m1900a((Integer) 2);
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        f25215a = null;
        f25216b = null;
        f25217c = null;
    }

    /* renamed from: f */
    public static String m9941f(String str) {
        List<FavoriteListRealmObject> b = C13057d.m4679b(C13193p.m4437a("_e164"), C13193p.m4438a(str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
        String str2 = null;
        if (b != null) {
            str2 = null;
            if (!b.isEmpty()) {
                str2 = b.get(0).get_parentid();
            }
        }
        return str2;
    }

    /* renamed from: f */
    public static void m9942f() {
        ClipboardManager clipboardManager = (ClipboardManager) MyApplication.m29013o().getSystemService("clipboard");
        if (clipboardManager == null) {
            C13978e.f31386a.m9457a(C11237b.f25205a);
            return;
        }
        try {
            clipboardManager.removePrimaryClipChangedListener(C11255k.f25280a);
            if (C13915b3.m3059b("isCalloutDialogEnabled")) {
                clipboardManager.addPrimaryClipChangedListener(C11255k.f25280a);
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            C13978e.f31386a.m9457a(C11236a.f25204a);
        }
    }

    /* renamed from: g */
    public static String m9940g(String str) {
        String str2;
        String[] strArr = f25219e;
        int length = strArr.length;
        int i = 0;
        String str3 = str;
        while (true) {
            str2 = "";
            if (i >= length) {
                break;
            }
            str3 = str3.replace(strArr[i], "");
            i++;
        }
        if (str3.length() < 4) {
            return str3;
        }
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < str3.length(); i4++) {
            if (!Character.isDigit(str3.charAt(i4)) && str3.charAt(i4) != '+') {
                i2 = i2;
                str2 = str2;
                i3 = i3;
                if (i2 != -1) {
                    int i5 = i4 - i2;
                    str2 = str2;
                    i3 = i3;
                    if (i5 > i3) {
                        str2 = str2;
                        i3 = i3;
                        if (i5 > 4) {
                            str2 = str3.substring(i2, i4);
                            i3 = i5;
                        }
                    }
                    i2 = -1;
                }
            } else if (i2 == -1) {
                i2 = i4;
                str2 = str2;
                i3 = i3;
            } else {
                i2 = i2;
                str2 = str2;
                i3 = i3;
                if (i4 == str3.length() - 1) {
                    int i6 = i4 - i2;
                    i2 = i2;
                    str2 = str2;
                    i3 = i3;
                    if (i6 > i3) {
                        i2 = i2;
                        str2 = str2;
                        i3 = i3;
                        if (i6 > 4) {
                            str2 = str3.substring(i2, i4 + 1);
                            i3 = i6;
                            i2 = i2;
                        }
                    }
                }
            }
        }
        return C14108o4.m2474l(str2);
    }

    /* renamed from: h */
    public static void m9939h(String str) {
        View view;
        f25216b = str;
        String a = C14108o4.m2493a(str, true, false);
        Dialog dialog = f25215a;
        if (dialog != null) {
            view = dialog.findViewById(R$id.fl_root);
        } else {
            f25215a = new Dialog(MyApplication.m29013o(), 16973841);
            f25215a.requestWindowFeature(1);
            f25215a.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            f25215a.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
            f25215a.getWindow().setLayout(-1, -1);
            view = LayoutInflater.from(MyApplication.m29013o()).inflate(R$layout.copytocall_dialog, (ViewGroup) null);
            f25215a.setContentView(view);
        }
        RecycleSafeImageView recycleSafeImageView = (RecycleSafeImageView) view.findViewById(R$id.iv_metaphor);
        TextView textView = (TextView) view.findViewById(R$id.line_primary);
        TextView textView2 = (TextView) view.findViewById(R$id.line_secondary_number);
        TextView textView3 = (TextView) view.findViewById(R$id.line_tertiary);
        View findViewById = view.findViewById(R$id.line_secondary_waiting);
        TextView textView4 = (TextView) view.findViewById(R$id.line_openhour);
        ImageView imageView = (ImageView) view.findViewById(R$id.iv_card_spam_icon);
        View findViewById2 = view.findViewById(R$id.ll_callout_dialog_content);
        View findViewById3 = view.findViewById(R$id.ll_callout_dialog);
        View findViewById4 = view.findViewById(R$id.iv_popup_logo);
        View findViewById5 = view.findViewById(R$id.iftv_call);
        IconFontTextView iconFontTextView = (IconFontTextView) view.findViewById(R$id.iftv_favorite);
        View findViewById6 = view.findViewById(R$id.ll_copy_to_favorite_tip);
        View$OnClickListenerC11245b bVar = new View$OnClickListenerC11245b(findViewById5, a, iconFontTextView, str, findViewById2);
        view.setOnClickListener(bVar);
        findViewById5.setOnClickListener(bVar);
        iconFontTextView.setOnClickListener(bVar);
        findViewById2.setOnClickListener(bVar);
        findViewById.setVisibility(0);
        recycleSafeImageView.setImageResource(C13909c.m3071b().m3077v().m3069a());
        textView.setText(R$string.loading);
        textView4.setVisibility(8);
        textView2.setText(a);
        C11052i.m10328e().m10340a(str, new C11246c(imageView, textView, recycleSafeImageView, textView2, textView4, textView3, findViewById, iconFontTextView, findViewById6), C11052i.f24870g, EnumC11047e.Other);
        if (C13878a3.m3244a(f25215a)) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 400.0f, 0.0f);
            translateAnimation.setDuration(200L);
            findViewById3.startAnimation(translateAnimation);
            findViewById4.startAnimation(translateAnimation);
        }
    }

    /* renamed from: i */
    public static void m9938i(String str) {
        View view;
        f25216b = str;
        Dialog dialog = f25215a;
        if (dialog != null) {
            view = dialog.findViewById(R$id.fl_root);
        } else {
            f25215a = new Dialog(MyApplication.m29013o(), 16973841);
            f25215a.requestWindowFeature(1);
            f25215a.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            f25215a.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
            f25215a.getWindow().setLayout(-1, -1);
            view = LayoutInflater.from(MyApplication.m29013o()).inflate(R$layout.copytocall_dialog_br, (ViewGroup) null);
            f25215a.setContentView(view);
        }
        RecycleSafeImageView recycleSafeImageView = (RecycleSafeImageView) view.findViewById(R$id.iv_metaphor);
        TextView textView = (TextView) view.findViewById(R$id.line_primary);
        EditText editText = (EditText) view.findViewById(R$id.et_line_secondary_number);
        TextView textView2 = (TextView) view.findViewById(R$id.tv_edited_hint);
        View findViewById = view.findViewById(R$id.line_secondary_waiting);
        ImageView imageView = (ImageView) view.findViewById(R$id.iv_card_spam_icon);
        ImageView imageView2 = (ImageView) view.findViewById(R$id.iv_reset);
        View findViewById2 = view.findViewById(R$id.rl_callout_dialog);
        View findViewById3 = view.findViewById(R$id.iftv_call);
        View findViewById4 = view.findViewById(R$id.v_input_number_underline);
        View findViewById5 = view.findViewById(R$id.ll_number_ui_footer);
        View findViewById6 = view.findViewById(R$id.v_carrier_underline);
        EditText editText2 = (EditText) view.findViewById(R$id.et_line_secondary_carrier);
        ImageView imageView3 = (ImageView) view.findViewById(R$id.iv_arrow);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.SCALE_X, 1.0f, 0.8f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, View.SCALE_Y, 1.0f, 0.8f);
        ofFloat.setDuration(500L);
        ofFloat2.setDuration(500L);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(editText2, View.SCALE_X, 1.0f, 1.4f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(editText2, View.SCALE_Y, 1.0f, 1.4f);
        ofFloat3.setDuration(500L);
        ofFloat4.setDuration(500L);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(findViewById6, View.SCALE_X, 1.0f, 1.4f);
        ofFloat5.setDuration(500L);
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(editText, View.SCALE_X, 1.0f, 1.4f);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(editText, View.SCALE_Y, 1.0f, 1.4f);
        ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(editText, View.TRANSLATION_X, 0.0f, 70.0f);
        ofFloat6.setDuration(500L);
        ofFloat7.setDuration(500L);
        ofFloat8.setDuration(500L);
        ObjectAnimator ofFloat9 = ObjectAnimator.ofFloat(findViewById4, View.SCALE_X, 1.0f, 1.4f);
        ObjectAnimator ofFloat10 = ObjectAnimator.ofFloat(findViewById4, View.TRANSLATION_X, 0.0f, 70.0f);
        ofFloat9.setDuration(500L);
        ofFloat10.setDuration(500L);
        ObjectAnimator ofFloat11 = ObjectAnimator.ofFloat(imageView2, View.TRANSLATION_X, 0.0f, 70.0f);
        ofFloat11.setDuration(500L);
        ObjectAnimator ofFloat12 = ObjectAnimator.ofFloat(imageView3, View.TRANSLATION_X, 0.0f, 50.0f);
        ofFloat12.setDuration(500L);
        ofFloat9.addListener(new C11248d(textView2, imageView2));
        ViewTreeObserver$OnGlobalLayoutListenerC11249e eVar = new ViewTreeObserver$OnGlobalLayoutListenerC11249e(view);
        View$OnClickListenerC11250f fVar = new View$OnClickListenerC11250f(findViewById3, editText2, editText, view, imageView2, findViewById2, imageView3);
        View$OnFocusChangeListenerC11251g gVar = new View$OnFocusChangeListenerC11251g(textView, editText2, findViewById6, editText, findViewById4, textView2, ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6, ofFloat7, ofFloat9, ofFloat8, ofFloat10, ofFloat11, ofFloat12);
        C11252h hVar = new C11252h(imageView2);
        view.getViewTreeObserver().addOnGlobalLayoutListener(eVar);
        view.setOnClickListener(fVar);
        findViewById3.setOnClickListener(fVar);
        findViewById2.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        editText2.setOnClickListener(fVar);
        editText2.setOnFocusChangeListener(gVar);
        editText.setOnFocusChangeListener(gVar);
        editText.addTextChangedListener(hVar);
        findViewById.setVisibility(0);
        recycleSafeImageView.setImageResource(C13909c.m3071b().m3077v().m3069a());
        textView.setText(R$string.loading);
        editText.setVisibility(4);
        textView2.setVisibility(4);
        findViewById4.setVisibility(8);
        editText2.setVisibility(8);
        findViewById6.setVisibility(8);
        imageView2.setVisibility(8);
        findViewById5.setVisibility(8);
        imageView3.setVisibility(8);
        C11052i.m10328e().m10340a(str, new C11253i(imageView, textView, recycleSafeImageView, editText2, findViewById5, findViewById4, editText, findViewById6, imageView3, findViewById), C11052i.f24870g, EnumC11047e.Other);
        if (C13878a3.m3244a(f25215a)) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 400.0f, 0.0f);
            translateAnimation.setDuration(200L);
            findViewById2.startAnimation(translateAnimation);
            C14289m.m1900a((Integer) 1);
        }
    }
}
