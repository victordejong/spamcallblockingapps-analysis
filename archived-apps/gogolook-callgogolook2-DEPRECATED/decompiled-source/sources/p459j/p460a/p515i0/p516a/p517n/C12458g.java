package p459j.p460a.p515i0.p516a.p517n;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.OnAdRequestToLoadCallback;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p515i0.p516a.p517n.C12441b;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� V2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0005VWXYZB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0002H\u0002J\u0018\u0010@\u001a\u00020>2\u0006\u0010?\u001a\u00020\u00022\u0006\u0010A\u001a\u00020BH\u0002J\u0010\u0010C\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0002H\u0002J\b\u0010D\u001a\u00020BH\u0016J\u0010\u0010E\u001a\u00020B2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010F\u001a\u00020>2\u0006\u0010?\u001a\u00020GH\u0002J\u0018\u0010H\u001a\u00020>2\u0006\u0010?\u001a\u00020\u00022\u0006\u0010A\u001a\u00020BH\u0016J\u0018\u0010I\u001a\u00020\u00022\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020BH\u0016J\u0006\u0010M\u001a\u00020>J\u0018\u0010N\u001a\u00020>2\u0006\u0010?\u001a\u00020\u00022\u0006\u0010O\u001a\u00020BH\u0002J\u0018\u0010P\u001a\u00020>2\u0006\u0010?\u001a\u00020\u00022\u0006\u0010O\u001a\u00020BH\u0002J\u0010\u0010Q\u001a\u00020>2\u0006\u0010R\u001a\u00020SH\u0002J\u0006\u0010T\u001a\u00020>J\u0006\u0010U\u001a\u00020>R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R(\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000f@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R4\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00152\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u000e\u00104\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u00105\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u00106\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R(\u00108\u001a\u0004\u0018\u0001072\b\u0010\b\u001a\u0004\u0018\u000107@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<¨\u0006["}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "adCallback", "Lgogolook/callgogolook2/ad/OnAdRequestToLoadCallback;", "(Lgogolook/callgogolook2/ad/OnAdRequestToLoadCallback;)V", "autoUpdateLayoutListener", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", C13032a.f29462d, "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$DbExpiredStatus;", "expiredStatus", "getExpiredStatus", "()Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$DbExpiredStatus;", "setExpiredStatus", "(Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$DbExpiredStatus;)V", "", "isDbPremium", "()Z", "setDbPremium", "(Z)V", "isNeedToShowAd", "", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$NumberItemInfo;", "numberItemInfoList", "getNumberItemInfoList", "()Ljava/util/List;", "setNumberItemInfoList", "(Ljava/util/List;)V", "onCtaClickListener", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnCtaClickListener;", "getOnCtaClickListener", "()Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnCtaClickListener;", "setOnCtaClickListener", "(Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnCtaClickListener;)V", "onInfoClickListener", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnInfoClickListener;", "getOnInfoClickListener", "()Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnInfoClickListener;", "setOnInfoClickListener", "(Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnInfoClickListener;)V", "onTipShowListener", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnTipShowListener;", "getOnTipShowListener", "()Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnTipShowListener;", "setOnTipShowListener", "(Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnTipShowListener;)V", "onUpdaterClickListener", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnUpdaterClickListener;", "getOnUpdaterClickListener", "()Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnUpdaterClickListener;", "setOnUpdaterClickListener", "(Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnUpdaterClickListener;)V", "shouldShowManualUpdateTip", "shouldShowPremiumTip", "updateCtaLayoutListener", "", "updateRule", "getUpdateRule", "()Ljava/lang/String;", "setUpdateRule", "(Ljava/lang/String;)V", "bindHeader", "", "holder", "bindItem", "position", "", "bindUpdater", "getItemCount", "getItemViewType", "loadAndShowAd", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionAdViewHolder;", "onBindViewHolder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "refreshIapStatus", "setCtaVisibility", "visibility", "setItemRightVisibility", "setUpdateSettingImg", "view", "Landroid/view/View;", "showPremiumTip", "showUpdateSettingTip", "Companion", "OnCtaClickListener", "OnInfoClickListener", "OnTipShowListener", "OnUpdaterClickListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i0.a.n.g */
/* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g.class */
public final class C12458g extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    public ViewTreeObserver.OnGlobalLayoutListener f28075a;

    /* renamed from: b */
    public ViewTreeObserver.OnGlobalLayoutListener f28076b;

    /* renamed from: c */
    public AbstractC12463e f28077c;

    /* renamed from: d */
    public AbstractC12460b f28078d;

    /* renamed from: e */
    public AbstractC12461c f28079e;

    /* renamed from: f */
    public AbstractC12462d f28080f;

    /* renamed from: g */
    public C12441b.C12443b f28081g;

    /* renamed from: h */
    public boolean f28082h;

    /* renamed from: i */
    public String f28083i;

    /* renamed from: j */
    public List<C12441b.C12444c> f28084j;

    /* renamed from: k */
    public boolean f28085k;

    /* renamed from: l */
    public boolean f28086l;

    /* renamed from: m */
    public boolean f28087m;

    /* renamed from: n */
    public final OnAdRequestToLoadCallback f28088n;

    /* renamed from: j.a.i0.a.n.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$a.class */
    public static final class C12459a {
        public C12459a() {
        }

        public /* synthetic */ C12459a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.i0.a.n.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$b.class */
    public interface AbstractC12460b {
        /* renamed from: a */
        void mo6087a(C12441b.C12444c cVar);
    }

    /* renamed from: j.a.i0.a.n.g$c */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$c.class */
    public interface AbstractC12461c {
        /* renamed from: b */
        void mo6086b(C12441b.C12444c cVar);
    }

    /* renamed from: j.a.i0.a.n.g$d */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$d.class */
    public interface AbstractC12462d {
        /* renamed from: a */
        void mo6085a(View view);

        /* renamed from: c */
        void mo6084c(View view);
    }

    /* renamed from: j.a.i0.a.n.g$e */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$e.class */
    public interface AbstractC12463e {
        /* renamed from: a */
        void mo6083a();

        /* renamed from: b */
        void mo6082b();

        /* renamed from: b */
        void mo6081b(View view);
    }

    /* renamed from: j.a.i0.a.n.g$f */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$f.class */
    public static final class View$OnClickListenerC12464f implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C12441b.C12444c f28090b;

        public View$OnClickListenerC12464f(C12441b.C12444c cVar, RecyclerView.ViewHolder viewHolder) {
            this.f28090b = cVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC12460b a = C12458g.this.m6114a();
            if (a != null) {
                a.mo6087a(this.f28090b);
            }
        }
    }

    /* renamed from: j.a.i0.a.n.g$g */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$g.class */
    public static final class View$OnClickListenerC12465g implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C12441b.C12444c f28092b;

        public View$OnClickListenerC12465g(C12441b.C12444c cVar, RecyclerView.ViewHolder viewHolder) {
            this.f28092b = cVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC12461c b = C12458g.this.m6099b();
            if (b != null) {
                b.mo6086b(this.f28092b);
            }
        }
    }

    /* renamed from: j.a.i0.a.n.g$h */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$h.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC12466h implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f28093a;

        /* renamed from: b */
        public final /* synthetic */ C12458g f28094b;

        public ViewTreeObserver$OnGlobalLayoutListenerC12466h(View view, C12458g gVar) {
            this.f28093a = view;
            this.f28094b = gVar;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (this.f28094b.f28085k) {
                AbstractC12462d c = this.f28094b.m6094c();
                if (c != null) {
                    TextView textView = (TextView) this.f28093a.findViewById(R$id.tvAutoUpdate);
                    C15149k.m383a((Object) textView, "tvAutoUpdate");
                    c.mo6084c(textView);
                }
                this.f28094b.f28085k = false;
            }
        }
    }

    /* renamed from: j.a.i0.a.n.g$i */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$i.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC12467i implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f28095a;

        /* renamed from: b */
        public final /* synthetic */ C12458g f28096b;

        public ViewTreeObserver$OnGlobalLayoutListenerC12467i(View view, C12458g gVar) {
            this.f28095a = view;
            this.f28096b = gVar;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (this.f28096b.f28086l) {
                AbstractC12462d c = this.f28096b.m6094c();
                if (c != null) {
                    TextView textView = (TextView) this.f28095a.findViewById(R$id.tvUpdateCta);
                    C15149k.m383a((Object) textView, "tvUpdateCta");
                    c.mo6085a(textView);
                }
                this.f28096b.f28086l = false;
            }
        }
    }

    /* renamed from: j.a.i0.a.n.g$j */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$j.class */
    public static final class View$OnClickListenerC12468j implements View.OnClickListener {
        public View$OnClickListenerC12468j() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC12463e d = C12458g.this.m6092d();
            if (d != null) {
                d.mo6083a();
            }
        }
    }

    /* renamed from: j.a.i0.a.n.g$k */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/g$k.class */
    public static final class View$OnClickListenerC12469k implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f28098a;

        /* renamed from: b */
        public final /* synthetic */ C12458g f28099b;

        public View$OnClickListenerC12469k(View view, C12458g gVar) {
            this.f28098a = view;
            this.f28099b = gVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f28099b.m6091e()) {
                AbstractC12463e d = this.f28099b.m6092d();
                if (d != null) {
                    ImageView imageView = (ImageView) this.f28098a.findViewById(R$id.ivAutoUpdateGo);
                    C15149k.m383a((Object) imageView, "ivAutoUpdateGo");
                    d.mo6081b(imageView);
                    return;
                }
                return;
            }
            AbstractC12463e d2 = this.f28099b.m6092d();
            if (d2 != null) {
                d2.mo6082b();
            }
        }
    }

    static {
        new C12459a(null);
    }

    public C12458g(OnAdRequestToLoadCallback onAdRequestToLoadCallback) {
        C15149k.m377b(onAdRequestToLoadCallback, "adCallback");
        this.f28088n = onAdRequestToLoadCallback;
        AdStatusController c = AdStatusController.m28827c();
        C15149k.m383a((Object) c, "AdStatusController.getInstance()");
        this.f28087m = c.m28831a();
    }

    /* renamed from: a */
    public final AbstractC12460b m6114a() {
        return this.f28078d;
    }

    /* renamed from: a */
    public final void m6113a(View view) {
        float f;
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone((ConstraintLayout) view.findViewById(R$id.clAutoUpdate));
        if (this.f28082h) {
            ((ImageView) view.findViewById(R$id.ivAutoUpdateGo)).setImageResource(2131231183);
            constraintSet.connect(R$id.tvAutoUpdate, 6, R$id.guidelineUpdate, 6);
            f = 6.0f;
        } else {
            ((ImageView) view.findViewById(R$id.ivAutoUpdateGo)).setImageResource(R$drawable.ic_go);
            f = 4.0f;
        }
        constraintSet.connect(R$id.tvAutoUpdate, 7, R$id.ivAutoUpdateGo, 6, C14217x3.m2201a(f));
        constraintSet.applyTo((ConstraintLayout) view.findViewById(R$id.clAutoUpdate));
    }

    /* renamed from: a */
    public final void m6112a(RecyclerView.ViewHolder viewHolder) {
        TextView textView = (TextView) viewHolder.itemView.findViewById(R$id.tvPremium);
        C15149k.m383a((Object) textView, "tvPremium");
        textView.setText(C14206w4.m2225a(this.f28082h ? R$string.db_protetion_protection : R$string.db_protection_basic));
    }

    /* renamed from: a */
    public final void m6111a(RecyclerView.ViewHolder viewHolder, int i) {
        C12441b.C12444c cVar;
        int i2 = i - 3;
        int i3 = i2;
        if (this.f28087m) {
            i3 = i2;
            if (i2 > 1) {
                i3 = i2 - 1;
            }
        }
        List<C12441b.C12444c> list = this.f28084j;
        if (list != null && (cVar = list.get(i3)) != null) {
            View view = viewHolder.itemView;
            ((ImageView) view.findViewById(R$id.ivNumberIcon)).setImageResource(cVar.m6153c());
            ((ImageView) view.findViewById(R$id.ivItemLeft)).setColorFilter(C14167t.m2315a(cVar.m6155a()));
            if (cVar.m6145k()) {
                ((ImageView) view.findViewById(R$id.ivItemRight)).setImageResource(cVar.m6143m() ? R$drawable.protection_item_bar_red : R$drawable.protection_item_bar_disable);
                ((TextView) view.findViewById(R$id.tvItemRight)).setTextColor(C14167t.m2315a(2131100117));
                ((TextView) view.findViewById(R$id.tvItemCountRight)).setTextColor(C14167t.m2315a(2131100117));
            } else {
                ((ImageView) view.findViewById(R$id.ivItemRight)).setImageResource(R$drawable.protection_item_bar);
                ((ImageView) view.findViewById(R$id.ivItemRight)).setColorFilter(C14167t.m2315a(cVar.m6155a()));
                ((TextView) view.findViewById(R$id.tvItemRight)).setTextColor(C14167t.m2312d());
                ((TextView) view.findViewById(R$id.tvItemCountRight)).setTextColor(C14167t.m2312d());
            }
            TextView textView = (TextView) view.findViewById(R$id.tvNumberTitle);
            C15149k.m383a((Object) textView, "tvNumberTitle");
            textView.setText(cVar.m6148h());
            TextView textView2 = (TextView) view.findViewById(R$id.tvItemLeft);
            C15149k.m383a((Object) textView2, "tvItemLeft");
            textView2.setText(cVar.m6151e());
            TextView textView3 = (TextView) view.findViewById(R$id.tvItemRight);
            C15149k.m383a((Object) textView3, "tvItemRight");
            textView3.setText(cVar.m6149g());
            TextView textView4 = (TextView) view.findViewById(R$id.tvItemCountLeft);
            C15149k.m383a((Object) textView4, "tvItemCountLeft");
            textView4.setText(cVar.m6152d());
            TextView textView5 = (TextView) view.findViewById(R$id.tvItemCountRight);
            C15149k.m383a((Object) textView5, "tvItemCountRight");
            textView5.setText(cVar.m6150f());
            TextView textView6 = (TextView) view.findViewById(R$id.tvCtaTitle);
            C15149k.m383a((Object) textView6, "tvCtaTitle");
            textView6.setText(cVar.m6154b());
            int i4 = 8;
            m6093c(viewHolder, cVar.m6144l() ? 0 : 8);
            if (cVar.m6146j()) {
                i4 = 0;
            }
            m6097b(viewHolder, i4);
            ((ConstraintLayout) view.findViewById(R$id.clCta)).setOnClickListener(new View$OnClickListenerC12464f(cVar, viewHolder));
            ((ImageView) view.findViewById(R$id.ivNumberInfo)).setOnClickListener(new View$OnClickListenerC12465g(cVar, viewHolder));
        }
    }

    /* renamed from: a */
    public final void m6110a(C12440a aVar) {
        OnAdRequestToLoadCallback onAdRequestToLoadCallback = this.f28088n;
        AdUnit adUnit = AdUnit.PROTECTION_PAGE;
        View view = aVar.itemView;
        C15149k.m383a((Object) view, "holder.itemView");
        CardView cardView = (CardView) view.findViewById(R$id.layout_ad_container);
        C15149k.m383a((Object) cardView, "holder.itemView.layout_ad_container");
        onAdRequestToLoadCallback.mo6135a(adUnit, cardView);
    }

    /* renamed from: a */
    public final void m6109a(C12441b.C12443b bVar) {
        this.f28081g = bVar;
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m6108a(AbstractC12460b bVar) {
        this.f28078d = bVar;
    }

    /* renamed from: a */
    public final void m6107a(AbstractC12461c cVar) {
        this.f28079e = cVar;
    }

    /* renamed from: a */
    public final void m6106a(AbstractC12462d dVar) {
        this.f28080f = dVar;
    }

    /* renamed from: a */
    public final void m6105a(AbstractC12463e eVar) {
        this.f28077c = eVar;
    }

    /* renamed from: a */
    public final void m6102a(String str) {
        this.f28083i = str;
        notifyItemChanged(1);
    }

    /* renamed from: a */
    public final void m6101a(List<C12441b.C12444c> list) {
        this.f28084j = list;
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m6100a(boolean z) {
        this.f28082h = z;
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public final AbstractC12461c m6099b() {
        return this.f28079e;
    }

    /* renamed from: b */
    public final void m6098b(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        C12441b.C12443b bVar = this.f28081g;
        if (bVar != null) {
            if (bVar.m6156b()) {
                TextView textView = (TextView) view.findViewById(R$id.tvStatus);
                C15149k.m383a((Object) textView, "tvStatus");
                textView.setText(C14206w4.m2225a((int) R$string.db_protection_status_risk));
                TextView textView2 = (TextView) view.findViewById(R$id.tvVersion);
                C15149k.m383a((Object) textView2, "tvVersion");
                textView2.setText(bVar.m6157a() ? C14206w4.m2225a((int) R$string.db_update_status_new) : C14206w4.m2225a((int) R$string.db_update_status_outdated));
                ((CardView) view.findViewById(R$id.cvUpdater)).setCardBackgroundColor(C14167t.m2315a(2131100078));
            } else {
                TextView textView3 = (TextView) view.findViewById(R$id.tvStatus);
                C15149k.m383a((Object) textView3, "tvStatus");
                textView3.setText(C14206w4.m2225a((int) R$string.db_protection_status_protecting));
                TextView textView4 = (TextView) view.findViewById(R$id.tvVersion);
                C15149k.m383a((Object) textView4, "tvVersion");
                textView4.setText(C14206w4.m2225a((int) R$string.db_update_status_up_to_date));
                ((CardView) view.findViewById(R$id.cvUpdater)).setCardBackgroundColor(C14167t.m2315a(2131100077));
            }
        }
        if (this.f28082h) {
            TextView textView5 = (TextView) view.findViewById(R$id.tvUpdateCta);
            C15149k.m383a((Object) textView5, "tvUpdateCta");
            textView5.setText(C14206w4.m2225a((int) R$string.db_manual_update_button_premium));
            TextView textView6 = (TextView) view.findViewById(R$id.tvAutoUpdate);
            C15149k.m383a((Object) textView6, "tvAutoUpdate");
            textView6.setText(this.f28083i);
            TextView textView7 = (TextView) view.findViewById(R$id.tvUpdateRule);
            C15149k.m383a((Object) textView7, "tvUpdateRule");
            textView7.setVisibility(0);
        } else {
            TextView textView8 = (TextView) view.findViewById(R$id.tvUpdateCta);
            C15149k.m383a((Object) textView8, "tvUpdateCta");
            textView8.setText(C14206w4.m2225a((int) R$string.db_manual_update_button_basic));
            TextView textView9 = (TextView) view.findViewById(R$id.tvAutoUpdate);
            C15149k.m383a((Object) textView9, "tvAutoUpdate");
            textView9.setText(C14206w4.m2225a((int) R$string.db_auto_update_iap_cta));
            TextView textView10 = (TextView) view.findViewById(R$id.tvUpdateRule);
            C15149k.m383a((Object) textView10, "tvUpdateRule");
            textView10.setVisibility(8);
        }
        C15149k.m383a((Object) view, "this");
        m6113a(view);
        if (this.f28075a == null) {
            this.f28075a = new ViewTreeObserver$OnGlobalLayoutListenerC12466h(view, this);
        } else {
            TextView textView11 = (TextView) view.findViewById(R$id.tvAutoUpdate);
            C15149k.m383a((Object) textView11, "tvAutoUpdate");
            textView11.getViewTreeObserver().removeOnGlobalLayoutListener(this.f28075a);
        }
        TextView textView12 = (TextView) view.findViewById(R$id.tvAutoUpdate);
        C15149k.m383a((Object) textView12, "tvAutoUpdate");
        textView12.getViewTreeObserver().addOnGlobalLayoutListener(this.f28075a);
        if (this.f28076b == null) {
            this.f28076b = new ViewTreeObserver$OnGlobalLayoutListenerC12467i(view, this);
        } else {
            TextView textView13 = (TextView) view.findViewById(R$id.tvUpdateCta);
            C15149k.m383a((Object) textView13, "tvUpdateCta");
            textView13.getViewTreeObserver().removeOnGlobalLayoutListener(this.f28076b);
        }
        TextView textView14 = (TextView) view.findViewById(R$id.tvUpdateCta);
        C15149k.m383a((Object) textView14, "tvUpdateCta");
        textView14.getViewTreeObserver().addOnGlobalLayoutListener(this.f28076b);
        ((TextView) view.findViewById(R$id.tvUpdateCta)).setOnClickListener(new View$OnClickListenerC12468j());
        ((ConstraintLayout) view.findViewById(R$id.clAutoUpdate)).setOnClickListener(new View$OnClickListenerC12469k(view, this));
    }

    /* renamed from: b */
    public final void m6097b(RecyclerView.ViewHolder viewHolder, int i) {
        View view = viewHolder.itemView;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(R$id.clCta);
        C15149k.m383a((Object) constraintLayout, "clCta");
        constraintLayout.setVisibility(i);
        View findViewById = view.findViewById(R$id.vNumberBg);
        C15149k.m383a((Object) findViewById, "vNumberBg");
        findViewById.setVisibility(i);
    }

    /* renamed from: c */
    public final AbstractC12462d m6094c() {
        return this.f28080f;
    }

    /* renamed from: c */
    public final void m6093c(RecyclerView.ViewHolder viewHolder, int i) {
        View view = viewHolder.itemView;
        ImageView imageView = (ImageView) view.findViewById(R$id.ivItemRight);
        C15149k.m383a((Object) imageView, "ivItemRight");
        imageView.setVisibility(i);
        TextView textView = (TextView) view.findViewById(R$id.tvItemRight);
        C15149k.m383a((Object) textView, "tvItemRight");
        textView.setVisibility(i);
        TextView textView2 = (TextView) view.findViewById(R$id.tvItemCountRight);
        C15149k.m383a((Object) textView2, "tvItemCountRight");
        textView2.setVisibility(i);
    }

    /* renamed from: d */
    public final AbstractC12463e m6092d() {
        return this.f28077c;
    }

    /* renamed from: e */
    public final boolean m6091e() {
        return this.f28082h;
    }

    /* renamed from: f */
    public final void m6090f() {
        AdStatusController c = AdStatusController.m28827c();
        C15149k.m383a((Object) c, "AdStatusController.getInstance()");
        boolean a = c.m28831a();
        if (this.f28087m != a) {
            this.f28087m = a;
            notifyDataSetChanged();
        }
    }

    /* renamed from: g */
    public final void m6089g() {
        this.f28085k = true;
        notifyItemChanged(1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<C12441b.C12444c> list = this.f28084j;
        return (list != null ? list.size() : 0) + 3 + (this.f28087m ? 1 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int i2;
        if (i == 0) {
            i2 = 0;
        } else if (i == 1) {
            i2 = 1;
        } else if (i != 2) {
            i2 = 3;
            if (i != 3) {
                if (i != 4) {
                    i2 = 3;
                } else {
                    i2 = 3;
                    if (this.f28087m) {
                        i2 = 4;
                    }
                }
            }
        } else {
            i2 = 2;
        }
        return i2;
    }

    /* renamed from: h */
    public final void m6088h() {
        this.f28086l = true;
        notifyItemChanged(1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(viewHolder, "holder");
        if (viewHolder instanceof C12453d) {
            m6112a(viewHolder);
        } else if (viewHolder instanceof C12473j) {
            m6098b(viewHolder);
        } else if (viewHolder instanceof C12454e) {
            m6111a(viewHolder, i);
        } else if (viewHolder instanceof C12440a) {
            m6110a((C12440a) viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        return i != 0 ? i != 1 ? i != 2 ? i != 4 ? new C12454e(viewGroup) : new C12440a(viewGroup) : new C12472i(viewGroup) : new C12473j(viewGroup) : new C12453d(viewGroup);
    }
}
