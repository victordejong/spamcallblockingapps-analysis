package p459j.p460a.p596x.p597k;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14978j;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� 82\b\u0012\u0004\u0012\u00020\u00020\u0001:\u000289B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u0017H\u0002J\u0010\u0010.\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0002H\u0002J\u0010\u0010/\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0002H\u0002J\u0010\u00100\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0002H\u0002J\b\u00101\u001a\u00020\u0017H\u0016J\u0010\u00102\u001a\u00020\u00172\u0006\u0010-\u001a\u00020\u0017H\u0016J\u0018\u00103\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u0017H\u0016J\u0018\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0017H\u0016R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R4\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00112\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R,\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u0004\u001a\u0004\u0018\u00010\u00178\u0006@FX\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cRD\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u001e2\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u001e@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R(\u0010$\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\b\"\u0004\b&\u0010\nR(\u0010'\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\b\"\u0004\b)\u0010\n¨\u0006:"}, m815d2 = {"Lgogolook/callgogolook2/intro/iap/IapPromoRecyclerViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "()V", C13032a.f29462d, "", MraidParser.MRAID_COMMAND_CLOSE, "getClose", "()Ljava/lang/String;", "setClose", "(Ljava/lang/String;)V", "ctaOnClickListener", "Lgogolook/callgogolook2/intro/iap/IapPromoRecyclerViewAdapter$CtaOnClickListener;", "getCtaOnClickListener", "()Lgogolook/callgogolook2/intro/iap/IapPromoRecyclerViewAdapter$CtaOnClickListener;", "setCtaOnClickListener", "(Lgogolook/callgogolook2/intro/iap/IapPromoRecyclerViewAdapter$CtaOnClickListener;)V", "", IapPlanRealmObject.FEATURES, "getFeatures", "()Ljava/util/List;", "setFeatures", "(Ljava/util/List;)V", "", "iconRes", "getIconRes", "()Ljava/lang/Integer;", "setIconRes", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "Lkotlin/Pair;", "pricing", "getPricing", "()Lkotlin/Pair;", "setPricing", "(Lkotlin/Pair;)V", "subtitle", "getSubtitle", "setSubtitle", "title", "getTitle", "setTitle", "bindFeature", "", "holder", "position", "bindHeader", "bindPricing", "bindSubtitle", "getItemCount", "getItemViewType", "onBindViewHolder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "Companion", "CtaOnClickListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.x.k.k */
/* loaded from: classes2-dex2jar.jar:j/a/x/k/k.class */
public final class C14401k extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    public AbstractC14403b f32235a;

    /* renamed from: b */
    public List<String> f32236b;

    /* renamed from: c */
    public C14978j<String, String> f32237c;
    @DrawableRes

    /* renamed from: d */
    public Integer f32238d;

    /* renamed from: e */
    public String f32239e;

    /* renamed from: f */
    public String f32240f;

    /* renamed from: g */
    public String f32241g;

    /* renamed from: j.a.x.k.k$a */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/k$a.class */
    public static final class C14402a {
        public C14402a() {
        }

        public /* synthetic */ C14402a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.x.k.k$b */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/k$b.class */
    public interface AbstractC14403b {
        /* renamed from: a */
        void mo1391a();
    }

    /* renamed from: j.a.x.k.k$c */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/k$c.class */
    public static final class View$OnClickListenerC14404c implements View.OnClickListener {
        public View$OnClickListenerC14404c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C15149k.m383a((Object) view, "it");
            view.setClickable(false);
            AbstractC14403b a = C14401k.this.m1403a();
            if (a != null) {
                a.mo1391a();
            }
        }
    }

    static {
        new C14402a(null);
    }

    /* renamed from: a */
    public final AbstractC14403b m1403a() {
        return this.f32235a;
    }

    /* renamed from: a */
    public final void m1402a(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        Integer num = this.f32238d;
        if (num != null) {
            ((ImageView) view.findViewById(R$id.ivIcon)).setImageResource(num.intValue());
        }
        String str = this.f32239e;
        if (str != null) {
            TextView textView = (TextView) view.findViewById(R$id.tvTitle);
            C15149k.m383a((Object) textView, "tvTitle");
            textView.setText(str);
        }
        String str2 = this.f32240f;
        if (str2 != null) {
            TextView textView2 = (TextView) view.findViewById(R$id.tvLeave);
            C15149k.m383a((Object) textView2, "tvLeave");
            textView2.setText(str2);
        }
        TextView textView3 = (TextView) view.findViewById(R$id.tvLeave);
        C15149k.m383a((Object) textView3, "this");
        textView3.setClickable(true);
        textView3.setOnClickListener(new View$OnClickListenerC14404c());
    }

    /* renamed from: a */
    public final void m1401a(RecyclerView.ViewHolder viewHolder, int i) {
        String str;
        int i2 = i - 5;
        List<String> list = this.f32236b;
        if (list != null && (str = list.get(i2)) != null) {
            boolean z = i2 % 2 == 0;
            View view = viewHolder.itemView;
            view.setBackground(z ? ContextCompat.getDrawable(MyApplication.m29013o(), R$drawable.iap_promo_v2_item_grey_bg) : new ColorDrawable(0));
            TextView textView = (TextView) view.findViewById(R$id.tvItemTitle);
            C15149k.m383a((Object) textView, "tvItemTitle");
            textView.setText(str);
        }
    }

    /* renamed from: a */
    public final void m1400a(AbstractC14403b bVar) {
        this.f32235a = bVar;
    }

    /* renamed from: a */
    public final void m1399a(Integer num) {
        this.f32238d = num;
        notifyItemChanged(0);
    }

    /* renamed from: a */
    public final void m1398a(String str) {
        this.f32240f = str;
        notifyItemChanged(0);
    }

    /* renamed from: a */
    public final void m1397a(List<String> list) {
        this.f32236b = list;
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m1396a(C14978j<String, String> jVar) {
        this.f32237c = jVar;
        notifyItemChanged(1);
    }

    /* renamed from: b */
    public final void m1395b(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        C14978j<String, String> jVar = this.f32237c;
        if (jVar != null) {
            TextView textView = (TextView) view.findViewById(R$id.tvDiscount);
            C15149k.m383a((Object) textView, "tvDiscount");
            textView.setText(jVar.m659c());
            String d = jVar.m658d();
            if (d != null) {
                if (!(d.length() > 0)) {
                    d = null;
                }
                if (d != null) {
                    TextView textView2 = (TextView) view.findViewById(R$id.tvYearlyPrice);
                    C15149k.m383a((Object) textView2, "tvYearlyPrice");
                    textView2.setText(d);
                    return;
                }
            }
            ((TextView) view.findViewById(R$id.tvYearlyPrice)).setVisibility(8);
        }
    }

    /* renamed from: b */
    public final void m1394b(String str) {
        this.f32241g = str;
        notifyItemChanged(3);
    }

    /* renamed from: c */
    public final void m1393c(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        String str = this.f32241g;
        if (str != null) {
            TextView textView = (TextView) view.findViewById(R$id.tvSubtitle);
            C15149k.m383a((Object) textView, "tvSubtitle");
            textView.setText(str);
        }
    }

    /* renamed from: c */
    public final void m1392c(String str) {
        this.f32239e = str;
        notifyItemChanged(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<String> list = this.f32236b;
        return (list != null ? list.size() : 0) + 7;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int i2 = 4;
        int i3 = 0;
        if (i == 0) {
            i2 = 0;
        } else if (i == 1) {
            i2 = 1;
        } else {
            if (i != 2) {
                if (i == 3) {
                    i2 = 3;
                } else if (i != 4) {
                    List<String> list = this.f32236b;
                    if (i != (list != null ? list.size() : 0) + 5) {
                        List<String> list2 = this.f32236b;
                        if (list2 != null) {
                            i3 = list2.size();
                        }
                        i2 = i == (i3 + 5) + 1 ? 6 : 5;
                    }
                }
            }
            i2 = 2;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(viewHolder, "holder");
        if (viewHolder instanceof C14398h) {
            m1402a(viewHolder);
        } else if (viewHolder instanceof C14400j) {
            m1395b(viewHolder);
        } else if (viewHolder instanceof C14406m) {
            m1393c(viewHolder);
        } else if (viewHolder instanceof C14389f) {
            m1401a(viewHolder, i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 6 ? new C14389f(viewGroup) : new C14405l(viewGroup) : new C14399i(viewGroup) : new C14406m(viewGroup) : new C14387d(viewGroup) : new C14400j(viewGroup) : new C14398h(viewGroup);
    }
}
