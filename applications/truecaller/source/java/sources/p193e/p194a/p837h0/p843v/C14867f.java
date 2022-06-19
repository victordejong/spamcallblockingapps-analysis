package p193e.p194a.p837h0.p843v;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.AbstractC19132z;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import p193e.p194a.p837h0.AbstractC14832g;
import p193e.p194a.p837h0.AbstractC14834i;
import p193e.p194a.p837h0.AbstractC14854r;
import s1.z.c.l;
/* renamed from: e.a.h0.v.f */
/* loaded from: classes9-dex2jar.jar:e/a/h0/v/f.class */
public class C14867f extends AbstractC14832g implements AbstractC14871j {
    @Inject

    /* renamed from: b */
    public AbstractC14869h f42486b;

    /* renamed from: c */
    public RecyclerView f42487c;

    /* renamed from: d */
    public View f42488d;

    /* renamed from: e */
    public C14863e f42489e;

    @Override // p193e.p194a.p837h0.p843v.AbstractC14871j
    /* renamed from: Be */
    public void mo19505Be() {
        C19045j0.m14194v(this.f42488d, true, true);
        C19045j0.m14194v(this.f42487c, false, true);
    }

    @Override // p193e.p194a.p837h0.p843v.AbstractC14871j
    /* renamed from: Cj */
    public void mo19504Cj() {
        C19045j0.m14194v(this.f42488d, false, true);
        C19045j0.m14194v(this.f42487c, true, true);
    }

    @Override // p193e.p194a.p837h0.p843v.AbstractC14871j
    /* renamed from: Rn */
    public void mo19503Rn() {
        this.f42489e.notifyDataSetChanged();
    }

    @Override // p193e.p194a.p837h0.p843v.AbstractC14871j
    /* renamed from: jz */
    public void mo19502jz(String str) {
        g$a g_a = new g$a(getContext());
        g_a.f70854a.f156f = str;
        g_a.m3660i(2131887941, new DialogInterface.OnClickListener() { // from class: e.a.h0.v.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C14867f.this.f42486b.mo19509Ij();
            }
        });
        g_a.m3662g(2131887903, null);
        g_a.m3652q();
    }

    public void onCreate(Bundle bundle) {
        C14867f.super.onCreate(bundle);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getContext().getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC19870l mo12119z1 = mo10154s.mo12119z1();
        Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
        AbstractC19132z mo12720G6 = mo10154s.mo12720G6();
        Objects.requireNonNull(mo12720G6, "Cannot return null from a non-@Nullable component method");
        AbstractC19854f<AbstractC14854r> mo12693I5 = mo10154s.mo12693I5();
        Objects.requireNonNull(mo12693I5, "Cannot return null from a non-@Nullable component method");
        AbstractC8621z mo12296m = mo10154s.mo12296m();
        Objects.requireNonNull(mo12296m, "Cannot return null from a non-@Nullable component method");
        AbstractC19223c0 mo12349i = mo10154s.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        AbstractC19462a mo12776C4 = mo10154s.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        C14870i c14870i = new C14870i(mo12119z1, mo12720G6, mo12693I5, mo12296m, mo12349i, mo12776C4);
        this.f42486b = c14870i;
        C14863e c14863e = new C14863e(c14870i);
        this.f42489e = c14863e;
        c14863e.f38359a = new AbstractC13209t.AbstractC13210a() { // from class: e.a.h0.v.a
            @Override // p193e.p194a.p682e.p699c2.AbstractC13209t.AbstractC13210a
            /* renamed from: a */
            public final void mo10041a(int i, long j) {
                C14867f.this.f42486b.mo19506n(i);
            }
        };
        setHasOptionsMenu(true);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_blocked_list, viewGroup, false);
    }

    public void onDestroy() {
        C14867f.super.onDestroy();
        this.f42486b.mo9806c();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            PV pv = this.f42486b.f57683a;
            if (pv == 0) {
                return true;
            }
            ((AbstractC14834i) pv).mo19610d0();
            return true;
        }
        return C14867f.super.onOptionsItemSelected(menuItem);
    }

    public void onResume() {
        C14867f.super.onResume();
        this.f42486b.onResume();
    }

    @Override // p193e.p194a.p837h0.AbstractC14832g
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f42488d = view.findViewById(C2752R.C2754id.empty_view);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131365382);
        this.f42487c = recyclerView;
        recyclerView.setItemAnimator(null);
        this.f42487c.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f42487c.setAdapter(this.f42489e);
        m19612OA(C2752R.string.BlockListMy);
        this.f42486b.mo9029Y0(this);
    }

    @Override // p193e.p194a.p837h0.p843v.AbstractC14871j
    /* renamed from: wi */
    public void mo19501wi(String str, String str2) {
        Context requireContext = requireContext();
        SourceType sourceType = SourceType.SpammersList;
        l.e(requireContext, AnalyticsConstants.CONTEXT);
        l.e(sourceType, "source");
        Intent intent = new Intent(requireContext, DetailsViewActivity.class);
        intent.putExtra("ARG_TC_ID", (String) null);
        intent.putExtra("NAME", str);
        intent.putExtra("NORMALIZED_NUMBER", (String) null);
        intent.putExtra("RAW_NUMBER", str2);
        intent.putExtra("COUNTRY_CODE", (String) null);
        intent.putExtra("ARG_SOURCE_TYPE", sourceType.ordinal());
        intent.putExtra("SHOULD_SAVE", true);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", true);
        intent.putExtra("SEARCH_TYPE", 10);
        Context requireContext2 = requireContext();
        l.e(requireContext2, AnalyticsConstants.CONTEXT);
        l.e(intent, "intentWithExtras");
        requireContext2.startActivity(intent);
    }
}
