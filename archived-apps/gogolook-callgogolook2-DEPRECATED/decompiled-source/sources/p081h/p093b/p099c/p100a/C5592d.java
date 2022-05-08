package p081h.p093b.p099c.p100a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.util.Rfc822Tokenizer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import androidx.core.view.MarginLayoutParamsCompat;
import com.android.p018ex.chips.R$color;
import com.android.p018ex.chips.R$dimen;
import com.android.p018ex.chips.R$drawable;
import com.android.p018ex.chips.R$id;
import com.android.p018ex.chips.R$layout;
import com.android.p018ex.chips.R$string;
import p081h.p093b.p099c.p100a.C5600f;
/* renamed from: h.b.c.a.d */
/* loaded from: classes-dex2jar.jar:h/b/c/a/d.class */
public class C5592d {

    /* renamed from: a */
    public final LayoutInflater f13974a;

    /* renamed from: b */
    public final Context f13975b;

    /* renamed from: c */
    public AbstractC5596d f13976c;

    /* renamed from: d */
    public C5600f.AbstractC5603c f13977d;

    /* renamed from: e */
    public int f13978e;

    /* renamed from: h.b.c.a.d$a */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/d$a.class */
    public class View$OnClickListenerC5593a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ StateListDrawable f13979a;

        public View$OnClickListenerC5593a(StateListDrawable stateListDrawable) {
            this.f13979a = stateListDrawable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f13979a.getCurrent() != null) {
                C5592d.this.f13976c.mo25060a();
            }
        }
    }

    /* renamed from: h.b.c.a.d$b */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/d$b.class */
    public static /* synthetic */ class C5594b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13981a = new int[EnumC5595c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f13981a[EnumC5595c.BASE_RECIPIENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13981a[EnumC5595c.RECIPIENT_ALTERNATES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13981a[EnumC5595c.SINGLE_RECIPIENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: h.b.c.a.d$c */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/d$c.class */
    public enum EnumC5595c {
        BASE_RECIPIENT,
        RECIPIENT_ALTERNATES,
        SINGLE_RECIPIENT
    }

    /* renamed from: h.b.c.a.d$d */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/d$d.class */
    public interface AbstractC5596d {
        /* renamed from: a */
        void mo25060a();
    }

    /* renamed from: h.b.c.a.d$e */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/d$e.class */
    public class C5597e {

        /* renamed from: a */
        public final TextView f13986a;

        /* renamed from: b */
        public final TextView f13987b;

        /* renamed from: c */
        public final TextView f13988c;

        /* renamed from: d */
        public final ImageView f13989d;

        /* renamed from: e */
        public final ImageView f13990e;

        /* renamed from: f */
        public final View f13991f;

        /* renamed from: g */
        public final View f13992g;

        public C5597e(C5592d dVar, View view) {
            this.f13986a = (TextView) view.findViewById(dVar.m25062e());
            this.f13987b = (TextView) view.findViewById(dVar.m25065c());
            this.f13988c = (TextView) view.findViewById(dVar.m25063d());
            this.f13989d = (ImageView) view.findViewById(dVar.m25061f());
            this.f13990e = (ImageView) view.findViewById(dVar.m25066b());
            this.f13991f = view.findViewById(R$id.chip_autocomplete_top_divider);
            this.f13992g = view.findViewById(R$id.chip_autocomplete_bottom_divider);
        }
    }

    public C5592d(LayoutInflater layoutInflater, Context context) {
        this.f13974a = layoutInflater;
        this.f13975b = context;
        this.f13978e = context.getResources().getDimensionPixelOffset(R$dimen.chip_wrapper_start_padding);
    }

    /* renamed from: a */
    public static boolean m25068a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    @DrawableRes
    /* renamed from: a */
    public int m25077a() {
        return R$drawable.ic_contact_picture;
    }

    @LayoutRes
    /* renamed from: a */
    public int mo7951a(EnumC5595c cVar) {
        int i = C5594b.f13981a[cVar.ordinal()];
        return i != 1 ? i != 2 ? R$layout.chips_recipient_dropdown_item : R$layout.chips_recipient_dropdown_item : R$layout.chips_autocomplete_recipient_dropdown_item;
    }

    /* renamed from: a */
    public View m25075a(View view, ViewGroup viewGroup, EnumC5595c cVar) {
        int b = mo7945b(cVar);
        int i = C5594b.f13981a[cVar.ordinal()];
        int i2 = b;
        if (i != 1) {
            i2 = b;
            if (i != 2) {
                i2 = i != 3 ? b : mo7951a(cVar);
            }
        }
        if (view == null) {
            view = this.f13974a.inflate(i2, viewGroup, false);
        }
        return view;
    }

    /* renamed from: a */
    public View m25074a(View view, ViewGroup viewGroup, C5607h hVar, int i, EnumC5595c cVar, String str) {
        return mo7952a(view, viewGroup, hVar, i, cVar, str, null);
    }

    /* renamed from: a */
    public View mo7952a(View view, ViewGroup viewGroup, C5607h hVar, int i, EnumC5595c cVar, String str, StateListDrawable stateListDrawable) {
        CharSequence charSequence;
        String str2;
        int i2 = 0;
        boolean z = true;
        CharSequence[] a = m25067a(str, hVar.m25023g(), hVar.m25027c());
        CharSequence charSequence2 = a[0];
        CharSequence charSequence3 = a[1];
        CharSequence a2 = m25070a(hVar);
        View a3 = m25075a(view, viewGroup, cVar);
        C5597e eVar = new C5597e(this, a3);
        int i3 = C5594b.f13981a[cVar.ordinal()];
        if (i3 == 1) {
            if (TextUtils.isEmpty(charSequence2) || TextUtils.equals(charSequence2, charSequence3)) {
                str2 = hVar.m25018l() ? null : charSequence3;
            } else {
                str2 = charSequence3;
                charSequence3 = charSequence2;
            }
            if (!hVar.m25018l()) {
                charSequence3 = null;
                z = false;
            }
            View view2 = eVar.f13991f;
            if (view2 != null) {
                if (i != 0) {
                    i2 = 8;
                }
                view2.setVisibility(i2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) eVar.f13991f.getLayoutParams(), this.f13978e);
            }
            View view3 = eVar.f13992g;
            if (view3 != null) {
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) view3.getLayoutParams(), this.f13978e);
            }
            charSequence = a2;
        } else if (i3 == 2) {
            charSequence3 = charSequence2;
            charSequence = a2;
            z = true;
            str2 = charSequence3;
            if (i != 0) {
                charSequence3 = null;
                z = false;
                charSequence = a2;
                str2 = charSequence3;
            }
        } else if (i3 != 3) {
            charSequence3 = charSequence2;
            charSequence = a2;
            z = true;
            str2 = charSequence3;
        } else {
            str2 = Rfc822Tokenizer.tokenize(hVar.m25027c())[0].getAddress();
            charSequence = null;
            charSequence3 = charSequence2;
            z = true;
        }
        m25069a(charSequence3, eVar.f13986a);
        m25069a(str2, eVar.f13987b);
        m25069a(charSequence, eVar.f13988c);
        mo7946a(z, hVar, eVar, cVar);
        m25076a(stateListDrawable, hVar.m25023g(), eVar.f13990e);
        return a3;
    }

    /* renamed from: a */
    public CharSequence m25070a(C5607h hVar) {
        return this.f13977d.mo25055a(this.f13975b.getResources(), hVar.m25025e(), hVar.m25026d()).toString().toUpperCase();
    }

    /* renamed from: a */
    public void m25076a(StateListDrawable stateListDrawable, String str, ImageView imageView) {
        if (imageView != null) {
            if (stateListDrawable == null) {
                imageView.setVisibility(8);
                return;
            }
            Resources resources = this.f13975b.getResources();
            imageView.setImageDrawable(stateListDrawable);
            imageView.setContentDescription(resources.getString(R$string.dropdown_delete_button_desc, str));
            if (this.f13976c != null) {
                imageView.setOnClickListener(new View$OnClickListenerC5593a(stateListDrawable));
            }
        }
    }

    /* renamed from: a */
    public void m25073a(AbstractC5596d dVar) {
        this.f13976c = dVar;
    }

    /* renamed from: a */
    public void m25071a(C5600f.AbstractC5603c cVar) {
        this.f13977d = cVar;
    }

    /* renamed from: a */
    public void m25069a(CharSequence charSequence, TextView textView) {
        if (textView != null) {
            if (charSequence != null) {
                textView.setText(charSequence);
                textView.setVisibility(0);
                return;
            }
            textView.setVisibility(8);
        }
    }

    /* renamed from: a */
    public void mo7946a(boolean z, C5607h hVar, C5597e eVar, EnumC5595c cVar) {
        ImageView imageView = eVar.f13989d;
        if (imageView != null) {
            if (z) {
                int i = C5594b.f13981a[cVar.ordinal()];
                if (i == 1) {
                    byte[] j = hVar.m25020j();
                    if (j == null || j.length <= 0) {
                        imageView.setImageResource(m25077a());
                    } else {
                        imageView.setImageBitmap(BitmapFactory.decodeByteArray(j, 0, j.length));
                    }
                } else if (i == 2) {
                    Uri k = hVar.m25019k();
                    if (k != null) {
                        imageView.setImageURI(k);
                    } else {
                        imageView.setImageResource(m25077a());
                    }
                }
                imageView.setVisibility(0);
                return;
            }
            imageView.setVisibility(8);
        }
    }

    /* renamed from: a */
    public CharSequence[] m25067a(@Nullable String str, String... strArr) {
        int indexOf;
        if (m25068a(str)) {
            return strArr;
        }
        CharSequence[] charSequenceArr = new CharSequence[strArr.length];
        boolean z = false;
        for (int i = 0; i < strArr.length; i++) {
            String str2 = strArr[i];
            if (str2 != null) {
                if (z || (indexOf = str2.toLowerCase().indexOf(str.toLowerCase())) == -1) {
                    charSequenceArr[i] = str2;
                } else {
                    SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(str2);
                    valueOf.setSpan(new ForegroundColorSpan(this.f13975b.getResources().getColor(R$color.chips_dropdown_text_highlighted)), indexOf, str.length() + indexOf, 33);
                    charSequenceArr[i] = valueOf;
                    z = true;
                }
            }
        }
        return charSequenceArr;
    }

    @IdRes
    /* renamed from: b */
    public int m25066b() {
        return 16908295;
    }

    @LayoutRes
    /* renamed from: b */
    public int mo7945b(EnumC5595c cVar) {
        int i = C5594b.f13981a[cVar.ordinal()];
        return i != 1 ? i != 2 ? R$layout.chips_recipient_dropdown_item : R$layout.chips_recipient_dropdown_item : R$layout.chips_autocomplete_recipient_dropdown_item;
    }

    @IdRes
    /* renamed from: c */
    public int m25065c() {
        return 16908308;
    }

    /* renamed from: c */
    public View m25064c(EnumC5595c cVar) {
        return this.f13974a.inflate(mo7945b(cVar), (ViewGroup) null);
    }

    @IdRes
    /* renamed from: d */
    public int m25063d() {
        return 16908309;
    }

    @IdRes
    /* renamed from: e */
    public int m25062e() {
        return 16908310;
    }

    @IdRes
    /* renamed from: f */
    public int m25061f() {
        return 16908294;
    }
}
