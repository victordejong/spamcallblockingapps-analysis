package p193e.p194a.p682e.p700d2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import e.m.d.y.n;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.FutureTask;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1221t.p1222a.p1224u.C20308c;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1224u.C20311f;
import p193e.p194a.p1221t.p1222a.p1224u.C20314i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001BQ\b\u0007\u0012\u0006\u0010(\u001a\u00020'\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010!\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0016\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b)\u0010*J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0019\u0010\u001b\u001a\u00020\u00168\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u0014R\u001b\u0010&\u001a\u0004\u0018\u00010!8\u0006@\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%¨\u0006+"}, d2 = {"Le/a/e/d2/o;", "Landroid/widget/FrameLayout;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Le/a/e/d2/h;", "listener", "setOnReactionPickListener", "(Le/a/e/d2/h;)V", "Landroid/widget/LinearLayout;", "a", "Landroid/widget/LinearLayout;", "emojiContainer", "", "", "e", "Ljava/util/List;", "emojiList", "g", "Ljava/lang/String;", "tipText", "", "d", "I", "getDefStyle", "()I", "defStyle", C22021b.f61237c, "Le/a/e/d2/h;", "reactionListener", "f", "pickedEmoji", "Landroid/util/AttributeSet;", AbstractC2405c.f7629a, "Landroid/util/AttributeSet;", "getAttrs", "()Landroid/util/AttributeSet;", "attrs", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.d2.o */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/o.class */
public final class C13238o extends FrameLayout {

    /* renamed from: a */
    public LinearLayout f38471a;

    /* renamed from: b */
    public AbstractC13231h f38472b;

    /* renamed from: c */
    public final AttributeSet f38473c = null;

    /* renamed from: d */
    public final int f38474d;

    /* renamed from: e */
    public List<String> f38475e;

    /* renamed from: f */
    public String f38476f;

    /* renamed from: g */
    public String f38477g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13238o(Context context, AttributeSet attributeSet, int i, List<String> list, String str, String str2) {
        super(context, null, i);
        Context context2;
        C20309d c20309d;
        int i2;
        C20311f c20311f;
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f38474d = i;
        this.f38475e = list;
        this.f38476f = str;
        this.f38477g = str2;
        LayoutInflater.from(getContext()).inflate(C2752R.layout.reaction_view, (ViewGroup) this, true);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        String str3 = this.f38477g;
        if (!(str3 == null || str3.length() == 0)) {
            TextView textView = (TextView) findViewById(C2752R.C2754id.tip_view);
            textView.setText(this.f38477g);
            textView.setVisibility(0);
        }
        View findViewById = findViewById(C2752R.C2754id.emojis_holder);
        l.d(findViewById, "findViewById(R.id.emojis_holder)");
        this.f38471a = (LinearLayout) findViewById;
        List<String> list2 = this.f38475e;
        if (list2 != null) {
            for (String str4 : list2) {
                l.e(str4, "value");
                if (!(str4.length() == 0)) {
                    FutureTask<C20311f> futureTask = C20314i.f57127a;
                    if (futureTask == null || (c20311f = futureTask.get()) == null) {
                        throw new IllegalStateException("Emoji data loader has not been set");
                    }
                    C20308c c20308c = c20311f.f57124a;
                    int i3 = 0;
                    do {
                        int codePointAt = str4.codePointAt(i3);
                        i3 += Character.charCount(codePointAt);
                        if (i3 >= str4.length()) {
                            c20309d = c20308c.f57117a.get(Integer.valueOf(codePointAt));
                            break;
                        }
                        c20308c = c20308c.f57118b.get(Integer.valueOf(codePointAt));
                    } while (c20308c != null);
                    c20309d = null;
                } else {
                    c20309d = null;
                }
                if (c20309d != null) {
                    Context context3 = getContext();
                    l.d(context3, AnalyticsConstants.CONTEXT);
                    i2 = n.D(c20309d, context3);
                } else {
                    i2 = 0;
                }
                if (i2 != 0) {
                    LinearLayout linearLayout = this.f38471a;
                    if (linearLayout == null) {
                        l.l("emojiContainer");
                        throw null;
                    }
                    View inflate = LayoutInflater.from(getContext()).inflate(C2752R.layout.reaction_emoji_item, (ViewGroup) this, false);
                    Objects.requireNonNull(inflate, "null cannot be cast to non-null type android.widget.ImageView");
                    ImageView imageView = (ImageView) inflate;
                    imageView.setImageResource(i2);
                    imageView.setSelected(l.a(this.f38476f, str4));
                    imageView.setOnClickListener(new View$OnClickListenerC13236m(this, i2, str4));
                    imageView.setTag(str4);
                    imageView.setScaleX(0.0f);
                    imageView.setScaleY(0.0f);
                    linearLayout.addView(imageView);
                }
            }
        }
        setAlpha(0.0f);
        l.d(getContext(), AnalyticsConstants.CONTEXT);
        setTranslationY(context2.getResources().getDimensionPixelSize(C2752R.dimen.reaction_picker_radius) * 2);
        setClipChildren(false);
        setClipToPadding(false);
    }

    public final AttributeSet getAttrs() {
        return this.f38473c;
    }

    public final int getDefStyle() {
        return this.f38474d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        animate().setDuration(150L).alpha(1.0f).translationY(0.0f).setInterpolator(new AccelerateInterpolator()).setListener(new C13237n(this)).start();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f38472b = null;
        LinearLayout linearLayout = this.f38471a;
        if (linearLayout == null) {
            l.l("emojiContainer");
            throw null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.f38471a;
            if (linearLayout2 == null) {
                l.l("emojiContainer");
                throw null;
            }
            linearLayout2.getChildAt(i).clearAnimation();
        }
        clearAnimation();
    }

    public final void setOnReactionPickListener(AbstractC13231h abstractC13231h) {
        l.e(abstractC13231h, "listener");
        this.f38472b = abstractC13231h;
    }
}
