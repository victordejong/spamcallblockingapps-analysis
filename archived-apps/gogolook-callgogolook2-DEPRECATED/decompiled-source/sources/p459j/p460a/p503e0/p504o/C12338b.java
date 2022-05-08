package p459j.p460a.p503e0.p504o;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.model.MarkerOptions;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p081h.p203i.p204a.p224e.p282l.AbstractC8866e;
import p081h.p203i.p204a.p224e.p282l.C8855b;
import p081h.p203i.p204a.p224e.p282l.C8856c;
import p081h.p203i.p204a.p224e.p282l.C8870i;
import p459j.p460a.p503e0.C12300f;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u001c2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\rH\u0002J\u0018\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J(\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0002¨\u0006\u001d"}, m815d2 = {"Lgogolook/callgogolook2/ndp/delegate/AddressViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "()V", "bindBusinessHoursLayout", "", TtmlNode.TAG_LAYOUT, "Landroid/view/ViewGroup;", "data", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$BusinessHourData;", "bindMapView", "mapView", "Lcom/google/android/gms/maps/MapView;", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$MapData;", "onBindViewHolder", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "setupBusinessHourExpandOrCollapse", "expandOrCollapse", "", "tvOpenHourDetail1", "Landroid/view/View;", "tvOpenHourDetail2", "ivExpand", "Landroid/widget/ImageView;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.o.b */
/* loaded from: classes3-dex2jar.jar:j/a/e0/o/b.class */
public final class C12338b implements AbstractC12392b<C14666a> {

    /* renamed from: j.a.e0.o.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/b$a.class */
    public static final class C12339a {
        public C12339a() {
        }

        public /* synthetic */ C12339a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.e0.o.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/b$b.class */
    public static final class View$OnClickListenerC12340b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C12300f.C12303c f27840b;

        /* renamed from: c */
        public final /* synthetic */ TextView f27841c;

        /* renamed from: d */
        public final /* synthetic */ TextView f27842d;

        /* renamed from: e */
        public final /* synthetic */ ImageView f27843e;

        public View$OnClickListenerC12340b(View view, C12300f.C12303c cVar, TextView textView, TextView textView2, ImageView imageView, TextView textView3, TextView textView4) {
            this.f27840b = cVar;
            this.f27841c = textView;
            this.f27842d = textView2;
            this.f27843e = imageView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12300f.C12303c cVar = this.f27840b;
            cVar.m6426a(!cVar.m6427a());
            C12338b bVar = C12338b.this;
            boolean a = this.f27840b.m6427a();
            TextView textView = this.f27841c;
            C15149k.m383a((Object) textView, "tvOpenHourDetail1");
            TextView textView2 = this.f27842d;
            C15149k.m383a((Object) textView2, "tvOpenHourDetail2");
            ImageView imageView = this.f27843e;
            C15149k.m383a((Object) imageView, "ivExpand");
            bVar.m6330a(a, textView, textView2, imageView);
        }
    }

    /* renamed from: j.a.e0.o.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/b$c.class */
    public static final class C12341c implements AbstractC8866e {

        /* renamed from: a */
        public final /* synthetic */ C12300f.C12309i f27844a;

        public C12341c(C12300f.C12309i iVar) {
            this.f27844a = iVar;
        }

        @Override // p081h.p203i.p204a.p224e.p282l.AbstractC8866e
        /* renamed from: a */
        public final void mo6329a(C8856c cVar) {
            if (cVar != null) {
                C8870i d = cVar.m16862d();
                if (d != null) {
                    d.m16851e(false);
                    d.m16855a(false);
                    d.m16854b(false);
                    d.m16853c(false);
                    d.m16852d(false);
                }
                MarkerOptions a = new MarkerOptions().m31713a(this.f27844a.m6414a()).m31711a(false);
                cVar.m16875a();
                cVar.m16873a(a);
                cVar.m16864b(C8855b.m16878a(this.f27844a.m6414a(), 13));
            }
        }
    }

    static {
        new C12339a(null);
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C14666a(viewGroup, R$layout.ndp_info_type_address_item);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0133, code lost:
        if (r0 != null) goto L_0x0158;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6334a(android.view.ViewGroup r13, p459j.p460a.p503e0.C12300f.C12303c r14) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p503e0.p504o.C12338b.m6334a(android.view.ViewGroup, j.a.e0.f$c):void");
    }

    /* renamed from: a */
    public final void m6333a(MapView mapView, C12300f.C12309i iVar) {
        mapView.m31768a((Bundle) null);
        mapView.m31767a(new C12341c(iVar));
        mapView.m31765c();
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (aVar2 instanceof C12300f.C12315o) {
            C12300f fVar = C12300f.f27753a;
            View a = aVar.m906a(R$id.layout_map);
            C12300f.C12315o oVar = (C12300f.C12315o) aVar2;
            AbstractC12391a aVar3 = oVar.m6403a().get(201);
            if (!(aVar3 instanceof C12300f.C12309i)) {
                aVar3 = null;
            }
            if (aVar3 != null) {
                m6333a((MapView) a, (C12300f.C12309i) aVar3);
                a.setVisibility(0);
            } else {
                a.setVisibility(8);
            }
            C12300f fVar2 = C12300f.f27753a;
            View a2 = aVar.m906a(R$id.layout_address);
            AbstractC12391a aVar4 = oVar.m6403a().get(200);
            if (!(aVar4 instanceof C12300f.C12302b)) {
                aVar4 = null;
            }
            if (aVar4 != null) {
                ((TextView) a2).setText(((C12300f.C12302b) aVar4).m6428a());
                a2.setVisibility(0);
            } else {
                a2.setVisibility(8);
            }
            C12300f fVar3 = C12300f.f27753a;
            View a3 = aVar.m906a(R$id.layout_service_area);
            AbstractC12391a aVar5 = oVar.m6403a().get(202);
            if (!(aVar5 instanceof C12300f.C12314n)) {
                aVar5 = null;
            }
            if (aVar5 != null) {
                ((TextView) a3).setText(((C12300f.C12314n) aVar5).m6404a());
                a3.setVisibility(0);
            } else {
                a3.setVisibility(8);
            }
            C12300f fVar4 = C12300f.f27753a;
            View a4 = aVar.m906a(R$id.layout_business);
            AbstractC12391a aVar6 = oVar.m6403a().get(203);
            if (!(aVar6 instanceof C12300f.C12303c)) {
                aVar6 = null;
            }
            if (aVar6 != null) {
                m6334a((ViewGroup) a4, (C12300f.C12303c) aVar6);
                a4.setVisibility(0);
                return;
            }
            a4.setVisibility(8);
        }
    }

    /* renamed from: a */
    public final void m6330a(boolean z, View view, View view2, ImageView imageView) {
        int i = z ? 0 : 8;
        view.setVisibility(i);
        view2.setVisibility(i);
        imageView.setImageResource(z ? R$drawable.ic_sorting_collapse : R$drawable.ic_sorting_expand);
    }
}
