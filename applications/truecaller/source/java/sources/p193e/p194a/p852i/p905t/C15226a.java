package p193e.p194a.p852i.p905t;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.ads.provider.holders.AdHolderType;
import com.truecaller.log.AssertionUtil;
import e.a.i.f0.m.a;
import e.a.i.f0.m.b;
import e.a.i.f0.m.c;
import e.a.i.f0.m.f;
import e.a.i.f0.m.h;
import e.m.d.y.n;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p682e.AbstractC13274l0;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.AbstractC15211m;
import p193e.p194a.p852i.p853a.C14978f;
import p193e.p194a.p852i.p855b.C14988a;
import p193e.p194a.p852i.p855b.C14991c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import p193e.p194a.p852i.p896f0.p902n.C15187d;
import s1.z.c.l;
/* renamed from: e.a.i.t.a */
/* loaded from: classes2-dex2jar.jar:e/a/i/t/a.class */
public class C15226a extends AbstractC13274l0 implements AbstractC15211m {

    /* renamed from: b */
    public final AbstractC15191g f43339b;

    /* renamed from: c */
    public AbstractC15228b f43340c;

    /* renamed from: d */
    public final AbstractC15231e f43341d;

    /* renamed from: e.a.i.t.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/t/a$a.class */
    public static class C15227a extends RecyclerView.AbstractC0313c0 {
        public C15227a(View view) {
            super(view);
        }
    }

    public C15226a(RecyclerView.AbstractC0317g abstractC0317g, AbstractC15191g abstractC15191g, AbstractC15228b abstractC15228b, AbstractC15231e abstractC15231e) {
        super(abstractC0317g);
        this.f43339b = abstractC15191g;
        this.f43340c = abstractC15228b == null ? new C15229c() : abstractC15228b;
        this.f43341d = abstractC15231e == null ? new C15236h() : abstractC15231e;
    }

    @Override // p193e.p194a.p682e.AbstractC13274l0
    /* renamed from: e */
    public int mo19036e(int i) {
        return this.f43340c.mo19032c(i);
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: ed */
    public void mo10117ed(int i) {
    }

    @Override // p193e.p194a.p682e.AbstractC13274l0, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f43340c.mo19033b(super.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        if (!hasStableIds()) {
            return -1L;
        }
        return this.f43340c.mo19030e(i) ? (-1000000) - this.f43340c.mo19034a(i) : this.f38578a.getItemId(m19035i(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        if (this.f43340c.mo19030e(i)) {
            c mo19022e = this.f43341d.mo19022e(this.f43340c.mo19034a(i));
            if (mo19022e == null) {
                return this.f43341d.mo19019h() ? C2752R.C2754id.view_type_placeholder_ad : C2752R.C2754id.view_type_none_ad;
            } else if (AdHolderType.NATIVE_AD == mo19022e.getType()) {
                return C2752R.C2754id.view_type_native_app_install_ad;
            } else {
                if (AdHolderType.BANNER_AD == mo19022e.getType()) {
                    return C2752R.C2754id.view_type_banner_ad;
                }
                if (AdHolderType.HOUSE_AD == mo19022e.getType()) {
                    return C2752R.C2754id.view_type_house_ad;
                }
                if (mo19022e.getType() == AdHolderType.CUSTOM_AD && (mo19022e instanceof c) && C14991c.f42775a.contains(((NativeCustomFormatAd) ((b) mo19022e).b).getCustomFormatId())) {
                    return C2752R.C2754id.view_type_native_custom_ad;
                }
                StringBuilder m8728C = C22128a.m8728C("Ad type ");
                m8728C.append(mo19022e.m19060a());
                m8728C.append(" not supported");
                throw new IllegalStateException(m8728C.toString());
            }
        }
        return this.f38578a.getItemViewType(m19035i(i));
    }

    @Override // p193e.p194a.p682e.AbstractC13274l0
    /* renamed from: h */
    public boolean mo10100h(int i) {
        return i == 2131366871 || i == 2131366872 || i == 2131366838 || i == 2131366854 || i == 2131366877 || i == 2131366874;
    }

    /* renamed from: i */
    public int m19035i(int i) {
        return this.f43340c.mo19031d(i);
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    public void onAdLoaded() {
        notifyDataSetChanged();
    }

    @Override // p193e.p194a.p682e.AbstractC13274l0, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.f38578a.onAttachedToRecyclerView(recyclerView);
        this.f43341d.mo19020g(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == 2131366871) {
            h mo19022e = this.f43341d.mo19022e(this.f43340c.mo19034a(i));
            if (mo19022e == null) {
                AssertionUtil.OnlyInDebug.fail("Prefetcher returned null for existing ad");
            } else {
                n.n((NativeAdView) abstractC0313c0.itemView, mo19022e.e(), ((b) mo19022e).c, false);
            }
        } else if (itemViewType == 2131366872) {
            c mo19022e2 = this.f43341d.mo19022e(this.f43340c.mo19034a(i));
            if (mo19022e2 == null) {
                AssertionUtil.OnlyInDebug.fail("Prefetcher returned null for existing ad");
            } else {
                n.o((C14988a) abstractC0313c0.itemView, C14991c.m19311a(mo19022e2), ((b) mo19022e2).c.f43214d, false);
            }
        } else if (itemViewType == 2131366838) {
            ViewGroup viewGroup = (ViewGroup) abstractC0313c0.itemView;
            a mo19022e3 = this.f43341d.mo19022e(this.f43340c.mo19034a(i));
            if (mo19022e3 == null) {
                AssertionUtil.OnlyInDebug.fail("Prefetcher returned null for existing ad");
                return;
            }
            AdManagerAdView adManagerAdView = (AdManagerAdView) ((b) mo19022e3).b;
            viewGroup.removeAllViews();
            ViewParent parent = adManagerAdView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(adManagerAdView);
            }
            viewGroup.addView(adManagerAdView);
        } else if (itemViewType != 2131366854) {
            if (itemViewType == 2131366874 || itemViewType == 2131366877) {
                return;
            }
            this.f38578a.onBindViewHolder(abstractC0313c0, this.f43340c.mo19031d(i));
        } else {
            f mo19022e4 = this.f43341d.mo19022e(this.f43340c.mo19034a(i));
            if (mo19022e4 == null) {
                AssertionUtil.OnlyInDebug.fail("Prefetcher returned null for existing ad");
            } else {
                n.p((C14978f) abstractC0313c0.itemView, (C15187d) ((b) mo19022e4).b, ((b) mo19022e4).c.f43214d);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i, List list) {
        if (mo10100h(getItemViewType(i))) {
            onBindViewHolder(abstractC0313c0, i);
        } else {
            this.f38578a.onBindViewHolder(abstractC0313c0, m19035i(i), list);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (i == 2131366871) {
            return new C15227a(n.p0(this.f43339b, context));
        }
        if (i == 2131366872) {
            return new C15227a(n.o0(this.f43339b, context));
        }
        if (i == 2131366854) {
            return new C15227a(n.y(context, this.f43339b));
        }
        if (i == 2131366838) {
            AbstractC15191g abstractC15191g = this.f43339b;
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(abstractC15191g, "adType");
            View inflate = LayoutInflater.from(context).inflate(abstractC15191g.getBannerLayout(), viewGroup, false);
            l.d(inflate, "LayoutInflater.from(cont…nerLayout, parent, false)");
            return new C15227a(inflate);
        } else if (i == 2131366877) {
            return new C15227a(n.z(context, this.f43339b, viewGroup));
        } else {
            if (i != 2131366874) {
                return this.f38578a.onCreateViewHolder(viewGroup, i);
            }
            AbstractC15191g abstractC15191g2 = this.f43339b;
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(abstractC15191g2, "adType");
            View inflate2 = LayoutInflater.from(context).inflate(abstractC15191g2.getEmptyLayout(), viewGroup, false);
            l.d(inflate2, "LayoutInflater.from(cont…ptyLayout, parent, false)");
            return new C15227a(inflate2);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13274l0, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.f38578a.onDetachedFromRecyclerView(recyclerView);
        this.f43341d.mo19018i(this);
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: xe */
    public void mo10116xe(AbstractC15183d abstractC15183d, int i) {
    }
}
