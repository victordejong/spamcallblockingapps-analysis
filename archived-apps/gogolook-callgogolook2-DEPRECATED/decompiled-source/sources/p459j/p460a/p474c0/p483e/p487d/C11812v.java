package p459j.p460a.p474c0.p483e.p487d;

import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$id;
import kotlin.Metadata;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0015\u001a\u00020\f2\b\b\u0001\u0010\u0016\u001a\u00020\u0005H\u0002R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0011\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0013\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u000e¨\u0006\u0018"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/UrlScanHistoryViewHolder;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "parent", "Landroid/view/ViewGroup;", "layoutResource", "", "(Landroid/view/ViewGroup;I)V", "descriptionTextView", "Landroid/widget/TextView;", "getDescriptionTextView", "()Landroid/widget/TextView;", "maliciousViewHolder", "Lgogolook/callgogolook2/messaging/scan/ui/UrlScanHistoryViewHolder$SubViewHolder;", "getMaliciousViewHolder", "()Lgogolook/callgogolook2/messaging/scan/ui/UrlScanHistoryViewHolder$SubViewHolder;", "safeViewHolder", "getSafeViewHolder", "suspiciousViewHolder", "getSuspiciousViewHolder", "unratedViewHolder", "getUnratedViewHolder", "getSubViewHolder", "idResource", "SubViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.v */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/v.class */
public final class C11812v extends C14666a {

    /* renamed from: a */
    public final TextView f26488a;

    /* renamed from: b */
    public final C11813a f26489b = m8254b(R$id.rl_malicious);

    /* renamed from: c */
    public final C11813a f26490c = m8254b(R$id.rl_suspicious);

    /* renamed from: d */
    public final C11813a f26491d = m8254b(R$id.rl_unrated);

    /* renamed from: e */
    public final C11813a f26492e = m8254b(R$id.rl_safe);

    /* renamed from: j.a.c0.e.d.v$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/v$a.class */
    public static final class C11813a {

        /* renamed from: a */
        public final IconFontTextView f26493a;

        /* renamed from: b */
        public final TextView f26494b;

        /* renamed from: c */
        public final TextView f26495c;

        public C11813a(IconFontTextView iconFontTextView, TextView textView, TextView textView2) {
            this.f26493a = iconFontTextView;
            this.f26494b = textView;
            this.f26495c = textView2;
        }

        public /* synthetic */ C11813a(IconFontTextView iconFontTextView, TextView textView, TextView textView2, int i, C15145g gVar) {
            this((i & 1) != 0 ? null : iconFontTextView, (i & 2) != 0 ? null : textView, (i & 4) != 0 ? null : textView2);
        }

        /* renamed from: a */
        public final TextView m8249a() {
            return this.f26495c;
        }

        /* renamed from: b */
        public final IconFontTextView m8248b() {
            return this.f26493a;
        }

        /* renamed from: c */
        public final TextView m8247c() {
            return this.f26494b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11812v(ViewGroup viewGroup, @LayoutRes int i) {
        super(viewGroup, i);
        C15149k.m377b(viewGroup, "parent");
        View findViewById = this.itemView.findViewById(R$id.tv_description);
        C15149k.m383a((Object) findViewById, "itemView.findViewById(R.id.tv_description)");
        this.f26488a = (TextView) findViewById;
    }

    /* renamed from: b */
    public final TextView m8255b() {
        return this.f26488a;
    }

    /* renamed from: b */
    public final C11813a m8254b(@IdRes int i) {
        RelativeLayout relativeLayout = (RelativeLayout) this.itemView.findViewById(i);
        return relativeLayout != null ? new C11813a((IconFontTextView) relativeLayout.findViewById(R$id.iftv_icon), (TextView) relativeLayout.findViewById(R$id.tv_title), (TextView) relativeLayout.findViewById(R$id.tv_count)) : new C11813a(null, null, null, 7, null);
    }

    /* renamed from: c */
    public final C11813a m8253c() {
        return this.f26489b;
    }

    /* renamed from: d */
    public final C11813a m8252d() {
        return this.f26492e;
    }

    /* renamed from: e */
    public final C11813a m8251e() {
        return this.f26490c;
    }

    /* renamed from: f */
    public final C11813a m8250f() {
        return this.f26491d;
    }
}
