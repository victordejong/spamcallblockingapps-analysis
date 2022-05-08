package p459j.p460a.p533l;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.base.Joiner;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.iap.p076ui.IapActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.ToggleButton;
import java.util.List;
import java.util.Map;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p533l.p535o.C12998a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14130q3;
import p459j.p460a.p582w0.C14136r3;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p613z0.p617p.C14666a;
import p459j.p618b.p619a.p620a.p621a.AbstractC14693c;
/* renamed from: j.a.l.e */
/* loaded from: classes2-dex2jar.jar:j/a/l/e.class */
public class C12875e extends AbstractC14693c<RecyclerView.ViewHolder> {

    /* renamed from: d */
    public Context f29122d;

    /* renamed from: e */
    public List<Map<EnumC12874d, String>> f29123e;

    /* renamed from: i */
    public C12895f f29127i;

    /* renamed from: j */
    public Map<EnumC12874d, String> f29128j;

    /* renamed from: k */
    public Map<EnumC12874d, String> f29129k;

    /* renamed from: f */
    public int f29124f = 0;

    /* renamed from: g */
    public ProgressBar f29125g = null;

    /* renamed from: h */
    public TextView f29126h = null;

    /* renamed from: l */
    public boolean f29130l = true;

    /* renamed from: m */
    public int f29131m = 0;

    /* renamed from: n */
    public int f29132n = 0;

    /* renamed from: o */
    public int f29133o = 0;

    /* renamed from: p */
    public int f29134p = 0;

    /* renamed from: q */
    public boolean f29135q = false;

    /* renamed from: r */
    public View.OnClickListener f29136r = new View$OnClickListenerC12876a();

    /* renamed from: s */
    public View.OnClickListener f29137s = new View$OnClickListenerC12877b(this);

    /* renamed from: j.a.l.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$a.class */
    public class View$OnClickListenerC12876a implements View.OnClickListener {
        public View$OnClickListenerC12876a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!C14063l4.m2701A()) {
                C12875e.this.f29127i.m5025k0();
                return;
            }
            ToggleButton toggleButton = view instanceof ToggleButton ? (ToggleButton) view : (ToggleButton) view.findViewById(R$id.tb_enable);
            if (toggleButton != null) {
                toggleButton.m25829g();
            }
        }
    }

    /* renamed from: j.a.l.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$b.class */
    public class View$OnClickListenerC12877b implements View.OnClickListener {
        public View$OnClickListenerC12877b(C12875e eVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ToggleButton toggleButton = view instanceof ToggleButton ? (ToggleButton) view : (ToggleButton) view.findViewById(R$id.tb_enable);
            if (toggleButton != null) {
                toggleButton.m25829g();
            }
        }
    }

    /* renamed from: j.a.l.e$c */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$c.class */
    public class View$OnClickListenerC12878c implements View.OnClickListener {
        public View$OnClickListenerC12878c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14063l4.m2666d();
            C12875e.this.f29124f = 0;
            C12875e.this.notifyDataSetChanged();
        }
    }

    /* renamed from: j.a.l.e$d */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$d.class */
    public class View$OnClickListenerC12879d implements View.OnClickListener {
        public View$OnClickListenerC12879d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14289m.m1899a((Integer) 11, (Integer) null);
            C14191v.m2259a(C12875e.this.f29122d, IapActivity.m28109a(C12875e.this.f29122d, "spam_hammer", null, null));
        }
    }

    /* renamed from: j.a.l.e$e */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$e.class */
    public class C12880e implements ToggleButton.AbstractC5295f {

        /* renamed from: a */
        public final /* synthetic */ C12894r f29141a;

        /* renamed from: b */
        public final /* synthetic */ String f29142b;

        public C12880e(C12894r rVar, String str) {
            this.f29141a = rVar;
            this.f29142b = str;
        }

        @Override // gogolook.callgogolook2.view.ToggleButton.AbstractC5295f
        /* renamed from: a */
        public void mo4082a(View view, boolean z) {
            Map map = (Map) view.getTag();
            this.f29141a.f29187d.setVisibility(8);
            if (z) {
                C12875e.this.f29127i.m5025k0();
                this.f29141a.f29188e.setVisibility(8);
                map.put(EnumC12874d.SWITCH, String.valueOf(1));
                map.put(EnumC12874d.RANGE, String.valueOf(3));
                int r = C14063l4.m2647r();
                this.f29141a.f29186c.setText(r > 0 ? C12875e.this.m5100a(this.f29142b, r) : this.f29142b);
            } else {
                this.f29141a.f29186c.setText(this.f29142b);
                C12875e.this.f29127i.m5030i0();
                map.put(EnumC12874d.SWITCH, String.valueOf(0));
            }
            C14289m.m1899a((Integer) 3, Integer.valueOf(this.f29141a.f29190g.m25831e() ? 1 : 0));
        }
    }

    /* renamed from: j.a.l.e$f */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$f.class */
    public class C12881f implements ToggleButton.AbstractC5295f {

        /* renamed from: a */
        public final /* synthetic */ C12894r f29144a;

        public C12881f(C12894r rVar) {
            this.f29144a = rVar;
        }

        @Override // gogolook.callgogolook2.view.ToggleButton.AbstractC5295f
        /* renamed from: a */
        public void mo4082a(View view, boolean z) {
            Map map = (Map) view.getTag();
            if (z) {
                C12875e.this.f29127i.m5022l0();
                map.put(EnumC12874d.SWITCH, String.valueOf(1));
                map.put(EnumC12874d.RANGE, String.valueOf(3));
                this.f29144a.f29188e.setVisibility(8);
            } else {
                C12875e.this.f29127i.m5028j0();
                map.put(EnumC12874d.SWITCH, String.valueOf(0));
                this.f29144a.f29188e.setVisibility(0);
                this.f29144a.f29188e.setImageResource(R$drawable.block_setting_moreinfo);
            }
            C12875e eVar = C12875e.this;
            eVar.m5106a(this.f29144a.f29189f, eVar.f29129k);
            C14289m.m1899a((Integer) 4, Integer.valueOf(this.f29144a.f29190g.m25831e() ? 1 : 0));
        }
    }

    /* renamed from: j.a.l.e$g */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$g.class */
    public class C12882g implements ToggleButton.AbstractC5295f {

        /* renamed from: a */
        public final /* synthetic */ Map f29146a;

        /* renamed from: b */
        public final /* synthetic */ C12894r f29147b;

        public C12882g(Map map, C12894r rVar) {
            this.f29146a = map;
            this.f29147b = rVar;
        }

        @Override // gogolook.callgogolook2.view.ToggleButton.AbstractC5295f
        /* renamed from: a */
        public void mo4082a(View view, boolean z) {
            Map map = (Map) view.getTag();
            C12875e.this.f29127i.m5071a(Integer.valueOf((String) this.f29146a.get(EnumC12874d.TYPE)).intValue(), z);
            map.put(EnumC12874d.SWITCH, String.valueOf(z ? 1 : 0));
            if (z) {
                map.put(EnumC12874d.RANGE, String.valueOf(3));
            }
            C12875e.this.m5106a(this.f29147b.f29189f, this.f29146a);
            C14289m.m1899a((Integer) 6, Integer.valueOf(this.f29147b.f29190g.m25831e() ? 1 : 0));
        }
    }

    /* renamed from: j.a.l.e$h */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$h.class */
    public class C12883h implements ToggleButton.AbstractC5295f {

        /* renamed from: a */
        public final /* synthetic */ Map f29149a;

        /* renamed from: b */
        public final /* synthetic */ C12894r f29150b;

        public C12883h(Map map, C12894r rVar) {
            this.f29149a = map;
            this.f29150b = rVar;
        }

        @Override // gogolook.callgogolook2.view.ToggleButton.AbstractC5295f
        /* renamed from: a */
        public void mo4082a(View view, boolean z) {
            Map map = (Map) view.getTag();
            C12875e.this.f29127i.m5071a(Integer.valueOf((String) this.f29149a.get(EnumC12874d.TYPE)).intValue(), z);
            map.put(EnumC12874d.SWITCH, String.valueOf(z ? 1 : 0));
            if (z) {
                map.put(EnumC12874d.RANGE, String.valueOf(3));
                this.f29150b.f29188e.setVisibility(8);
            } else {
                this.f29150b.f29188e.setVisibility(0);
                this.f29150b.f29188e.setImageResource(R$drawable.block_setting_moreinfo);
            }
            C12875e.this.m5106a(this.f29150b.f29189f, this.f29149a);
            C14289m.m1899a((Integer) 5, Integer.valueOf(this.f29150b.f29190g.m25831e() ? 1 : 0));
        }
    }

    /* renamed from: j.a.l.e$i */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$i.class */
    public class C12884i extends AbstractC6377c {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6377c f29152a;

        public C12884i(AbstractC6377c cVar) {
            this.f29152a = cVar;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1446a() {
            m5088d();
            AbstractC6377c cVar = this.f29152a;
            if (cVar != null) {
                cVar.mo1446a();
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1445a(int i) {
            if (C12875e.this.f29125g != null) {
                C12875e.this.f29130l = false;
                C12875e.this.f29131m = i;
                m5087e();
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1444a(C6429b bVar) {
            m5088d();
            AbstractC6377c cVar = this.f29152a;
            if (cVar != null) {
                cVar.mo1444a(bVar);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: b */
        public void mo1443b() {
            C12875e.this.f29124f = 0;
            C12875e.this.notifyDataSetChanged();
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: c */
        public void mo1442c() {
            if (C12875e.this.f29125g != null) {
                C12875e.this.f29130l = false;
                C12875e.this.f29131m = 0;
                m5087e();
            }
        }

        /* renamed from: d */
        public final void m5088d() {
            C12875e.this.f29124f = 0;
            if (C12875e.this.f29125g != null) {
                C12875e.this.f29130l = false;
                C12875e.this.f29131m = 0;
                m5087e();
            }
            C12875e.this.notifyDataSetChanged();
        }

        /* renamed from: e */
        public final void m5087e() {
            C12875e.this.f29125g.setIndeterminate(C12875e.this.f29130l);
            C12875e.this.f29125g.setProgress(C12875e.this.f29131m);
            TextView textView = C12875e.this.f29126h;
            textView.setText(C12875e.this.f29131m + "%");
        }
    }

    /* renamed from: j.a.l.e$j */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$j.class */
    public class C12885j extends C14666a {
        public C12885j(C12875e eVar, ViewGroup viewGroup) {
            super(viewGroup, R$layout.blocklist_divider);
        }
    }

    /* renamed from: j.a.l.e$k */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$k.class */
    public static class C12886k extends C14130q3 {
        @Override // p459j.p460a.p582w0.C14056l
        /* renamed from: a */
        public boolean mo2712a(View view, RecyclerView recyclerView) {
            C12875e eVar = (C12875e) recyclerView.getAdapter();
            if (eVar == null) {
                return true;
            }
            int itemViewType = eVar.getItemViewType(recyclerView.getChildAdapterPosition(view));
            return (itemViewType == 3 || itemViewType == 5 || itemViewType == 6) ? false : true;
        }
    }

    /* renamed from: j.a.l.e$l */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$l.class */
    public class C12887l extends C14666a {

        /* renamed from: a */
        public TextView f29154a = (TextView) this.itemView.findViewById(R$id.db_status);

        /* renamed from: b */
        public ProgressBar f29155b = (ProgressBar) this.itemView.findViewById(R$id.pgb_db_download);

        /* renamed from: c */
        public TextView f29156c = (TextView) this.itemView.findViewById(R$id.text_db_download);

        /* renamed from: d */
        public Button f29157d = (Button) this.itemView.findViewById(R$id.btn_cancel);

        public C12887l(C12875e eVar, ViewGroup viewGroup) {
            super(viewGroup, R$layout.mp_block_download_listitem);
        }
    }

    /* renamed from: j.a.l.e$m */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$m.class */
    public static class C12888m extends RecyclerView.ViewHolder {
        public C12888m(ViewGroup viewGroup) {
            super(m5086a(viewGroup.getContext()));
        }

        /* renamed from: a */
        public static View m5086a(Context context) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setBackgroundColor(ContextCompat.getColor(context, 2131099961));
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            return linearLayout;
        }
    }

    /* renamed from: j.a.l.e$n */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$n.class */
    public class C12889n extends C14666a {

        /* renamed from: a */
        public TextView f29158a = (TextView) this.itemView.findViewById(R$id.tv_primary);

        /* renamed from: b */
        public TextView f29159b = (TextView) this.itemView.findViewById(R$id.tv_notify);

        /* renamed from: c */
        public ImageView f29160c = (ImageView) this.itemView.findViewById(R$id.iv_notify);

        /* renamed from: d */
        public TextView f29161d = (TextView) this.itemView.findViewById(R$id.tv_secondary);

        /* renamed from: e */
        public TextView f29162e = (TextView) this.itemView.findViewById(R$id.tv_view_history);

        public C12889n(C12875e eVar, ViewGroup viewGroup) {
            super(viewGroup, R$layout.mp_block_more_listitem);
        }
    }

    /* renamed from: j.a.l.e$o */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$o.class */
    public class C12890o extends C14666a {

        /* renamed from: a */
        public TextView f29163a = (TextView) this.itemView.findViewById(R$id.tv_primary);

        /* renamed from: b */
        public TextView f29164b = (TextView) this.itemView.findViewById(R$id.tv_secondary);

        /* renamed from: c */
        public TextView f29165c = (TextView) this.itemView.findViewById(R$id.tv_confirm);

        public C12890o(C12875e eVar, ViewGroup viewGroup) {
            super(viewGroup, R$layout.mp_block_promote_iap_listitem);
            TextView textView = (TextView) this.itemView.findViewById(R$id.tv_title);
        }
    }

    /* renamed from: j.a.l.e$p */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$p.class */
    public class C12891p extends C14666a {

        /* renamed from: a */
        public Map<EnumC12874d, String> f29166a;

        /* renamed from: b */
        public String f29167b;

        /* renamed from: c */
        public String f29168c;

        /* renamed from: d */
        public String f29169d;

        /* renamed from: n */
        public C11086o f29179n;

        /* renamed from: e */
        public MetaphorBadgeLayout f29170e = (MetaphorBadgeLayout) this.itemView.findViewById(R$id.mbl_metaphor);

        /* renamed from: f */
        public RoundImageView f29171f = this.f29170e.m25911b();

        /* renamed from: g */
        public ImageView f29172g = this.f29170e.m25913a();

        /* renamed from: h */
        public TextView f29173h = (TextView) this.itemView.findViewById(R$id.line_primary);

        /* renamed from: i */
        public View f29174i = this.itemView.findViewById(R$id.line_secondary);

        /* renamed from: l */
        public View f29177l = this.itemView.findViewById(R$id.line_secondary_waiting);

        /* renamed from: j */
        public TextView f29175j = (TextView) this.itemView.findViewById(R$id.line_secondary_number);

        /* renamed from: k */
        public TextView f29176k = (TextView) this.itemView.findViewById(R$id.line_secondary_telecom);

        /* renamed from: m */
        public TextView f29178m = (TextView) this.itemView.findViewById(R$id.line_tertiary);

        /* renamed from: j.a.l.e$p$a */
        /* loaded from: classes2-dex2jar.jar:j/a/l/e$p$a.class */
        public class C12892a extends C11086o {
            public C12892a(C12875e eVar) {
            }

            @Override // p459j.p460a.p461a0.C11040b
            /* renamed from: b */
            public void mo1836b(String str, NumberInfo numberInfo) {
                if (TextUtils.equals(str, C12891p.this.f29167b)) {
                    boolean z = !TextUtils.isEmpty(str) && C14093n4.m2569f(str);
                    RowInfo a = RowInfo.m28249a(str, C12891p.this.f29169d, numberInfo);
                    String c = (a.m28224h().type != RowInfo.Primary.Type.NUMBER || !z) ? a.m28224h().name : a.m28238c();
                    String c2 = (a.m28223i().type != RowInfo.Secondary.Type.NUMBER || !z) ? TextUtils.isEmpty(a.m28223i().name) ? "" : a.m28223i().name : a.m28238c();
                    String S = numberInfo.m28377S();
                    C12891p.this.f29172g.setVisibility(8);
                    C12891p.this.f29173h.setTextColor(Color.parseColor("#111111"));
                    C12891p.this.f29173h.setCompoundDrawablesWithIntrinsicBounds(0, 0, numberInfo.whoscall.favored ? R$drawable.call_favorite_green_icon : 0, 0);
                    if (a != null) {
                        C12891p pVar = C12891p.this;
                        CallUtils.m26576a(pVar.f29171f, pVar.f29172g, a, pVar.f29168c, CallUtils.EnumC4993l.MAIN_BLOCK_FRAGMENT);
                        if (a.m28224h().isRed) {
                            C12891p.this.f29173h.setTextColor(Color.parseColor("#e6393f"));
                        }
                    }
                    C12891p.this.f29173h.setText(c);
                    if (!TextUtils.isEmpty(c2) || !TextUtils.isEmpty(S)) {
                        C12891p.this.f29175j.setText(c2);
                        C12891p.this.f29175j.setVisibility(TextUtils.isEmpty(c2) ? 8 : 0);
                        C12891p.this.f29176k.setText(S);
                        C12891p.this.f29176k.setVisibility((z || TextUtils.isEmpty(S)) ? 8 : 0);
                        C12891p.this.f29176k.setCompoundDrawablesWithIntrinsicBounds((TextUtils.isEmpty(c2) || TextUtils.isEmpty(S)) ? 0 : R$drawable.vertical_divider, 0, 0, 0);
                    } else {
                        C12891p.this.f29174i.setVisibility(8);
                    }
                    if (C12875e.this.f29127i.m5037f(C14108o4.m2474l(str))) {
                        C12891p.this.f29178m.setText(R$string.block_list_doublelist);
                        C12891p pVar2 = C12891p.this;
                        pVar2.f29178m.setTextColor(C12875e.this.f29134p);
                    } else {
                        C12891p pVar3 = C12891p.this;
                        C12875e.this.m5106a(pVar3.f29178m, pVar3.f29166a);
                    }
                    C12891p.this.f29178m.setVisibility(0);
                    C12891p.this.f29177l.setVisibility(8);
                }
            }
        }

        public C12891p(ViewGroup viewGroup) {
            super(viewGroup, R$layout.mp_block_rule_listitem);
            this.f29179n = new C12892a(C12875e.this);
        }

        /* renamed from: a */
        public void m5084a(String str) {
            this.f29168c = str;
        }

        /* renamed from: a */
        public void m5083a(Map<EnumC12874d, String> map) {
            this.f29166a = map;
        }

        /* renamed from: b */
        public void m5081b(String str) {
            this.f29169d = str;
        }

        /* renamed from: c */
        public void m5079c(String str) {
            this.f29167b = str;
        }
    }

    /* renamed from: j.a.l.e$q */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$q.class */
    public class C12893q extends C14666a {

        /* renamed from: a */
        public TextView f29182a = (TextView) this.itemView.findViewById(R$id.tv_notify);

        /* renamed from: b */
        public TextView f29183b = (TextView) this.itemView.findViewById(R$id.tv_secondary);

        public C12893q(C12875e eVar, ViewGroup viewGroup) {
            super(viewGroup, R$layout.mp_block_section_listitem);
            TextView textView = (TextView) this.itemView.findViewById(R$id.tv_primary);
        }
    }

    /* renamed from: j.a.l.e$r */
    /* loaded from: classes2-dex2jar.jar:j/a/l/e$r.class */
    public class C12894r extends C14666a {

        /* renamed from: a */
        public LinearLayout f29184a = (LinearLayout) this.itemView.findViewById(R$id.view_bg);

        /* renamed from: b */
        public TextView f29185b = (TextView) this.itemView.findViewById(R$id.tv_title);

        /* renamed from: c */
        public TextView f29186c = (TextView) this.itemView.findViewById(R$id.tv_primary);

        /* renamed from: f */
        public TextView f29189f = (TextView) this.itemView.findViewById(R$id.tv_secondary);

        /* renamed from: d */
        public TextView f29187d = (TextView) this.itemView.findViewById(R$id.tv_notify);

        /* renamed from: e */
        public ImageView f29188e = (ImageView) this.itemView.findViewById(R$id.iv_notify);

        /* renamed from: g */
        public ToggleButton f29190g = (ToggleButton) this.itemView.findViewById(R$id.tb_enable);

        public C12894r(C12875e eVar, ViewGroup viewGroup) {
            super(viewGroup, R$layout.mp_block_toggle_listitem);
        }
    }

    public C12875e(C12895f fVar, List<Map<EnumC12874d, String>> list) {
        this.f29127i = fVar;
        this.f29122d = fVar.getActivity();
        this.f29123e = list;
        m5108a(fVar.getActivity());
    }

    /* renamed from: a */
    public final SpannableString m5100a(String str, int i) {
        return C14136r3.m2388a(str, String.valueOf(i), new ForegroundColorSpan(C14167t.m2314b()), new AbsoluteSizeSpan(13, true));
    }

    /* renamed from: a */
    public Map<EnumC12874d, String> m5109a() {
        return this.f29128j;
    }

    /* renamed from: a */
    public final void m5108a(Context context) {
        this.f29135q = C14017g4.m2835A();
        this.f29132n = ContextCompat.getColor(context, 2131099765);
        this.f29133o = ContextCompat.getColor(context, 2131099768);
        this.f29134p = ContextCompat.getColor(context, 2131099767);
    }

    /* renamed from: a */
    public final void m5107a(TextView textView, List<String> list) {
        textView.setText(list.isEmpty() ? this.f29122d.getString(R$string.blocklist_db_unactivated) : Joiner.m31135on(UserProfile.CARD_CATE_SEPARATOR).join(list));
        textView.setTextColor(list.isEmpty() ? this.f29133o : this.f29132n);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ac  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5106a(@androidx.annotation.NonNull android.widget.TextView r4, @androidx.annotation.NonNull java.util.Map<p459j.p460a.p533l.EnumC12874d, java.lang.String> r5) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p533l.C12875e.m5106a(android.widget.TextView, java.util.Map):void");
    }

    /* renamed from: a */
    public void m5099a(List<Map<EnumC12874d, String>> list) {
        this.f29123e = list;
    }

    /* renamed from: a */
    public final void m5098a(boolean z, AbstractC6377c cVar) {
        C12884i iVar = new C12884i(cVar);
        if (C14063l4.m2684a(iVar)) {
            this.f29124f = 1;
        } else if (!z || !C14217x3.m2137h(this.f29122d)) {
            this.f29124f = 0;
        } else {
            this.f29124f = 1;
            C14063l4.m2677a(true, (AbstractC6377c) iVar);
        }
    }

    @Override // p459j.p618b.p619a.p620a.p621a.AbstractC14693c
    /* renamed from: a */
    public boolean mo842a(int i) {
        return 3 != getItemViewType(i);
    }

    /* renamed from: b */
    public void m5095b(boolean z, AbstractC6377c cVar) {
        if (!C14063l4.m2701A() || C14063l4.m2644u()) {
            m5098a(z, cVar);
        } else {
            this.f29124f = 0;
        }
        notifyDataSetChanged();
    }

    @Nullable
    public Object getItem(int i) {
        return (i < 0 || i >= this.f29123e.size()) ? null : this.f29123e.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f29123e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int itemCount = getItemCount();
        if (i < 0 || i >= itemCount) {
            return -1;
        }
        if (i == itemCount - 1) {
            return 5;
        }
        int intValue = Integer.valueOf(this.f29123e.get(i).get(EnumC12874d.TYPE)).intValue();
        if (-1 == intValue || -3 == intValue || 9 == intValue || 15 == intValue || 12 == intValue || 11 == intValue || 13 == intValue) {
            return 1;
        }
        if (-2 == intValue) {
            return 3;
        }
        int i2 = 7;
        if (8 == intValue) {
            if (C14073m.m2624d()) {
                i2 = this.f29124f == 1 ? 4 : 0;
            }
            return i2;
        } else if (4 == intValue || 7 == intValue || 5 == intValue) {
            return 0;
        } else {
            return 14 == intValue ? 6 : 2;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        int itemViewType = getItemViewType(i);
        int i2 = 4;
        int i3 = 0;
        int i4 = 0;
        if (1 == itemViewType) {
            int intValue = Integer.valueOf(this.f29123e.get(i).get(EnumC12874d.TYPE)).intValue();
            C12889n nVar = (C12889n) viewHolder;
            if (-1 == intValue) {
                int a = C13915b3.m3066a("block_history_count", 0);
                boolean z = a > 0;
                nVar.f29158a.setText((!this.f29135q || !z) ? this.f29122d.getString(R$string.block_blockhistory) : this.f29122d.getString(R$string.new_block_amount, String.valueOf(a)));
                nVar.f29159b.setVisibility(8);
                nVar.f29160c.setVisibility(z ? 0 : 8);
                String b = C13915b3.m3056b("block_history_newest_time", "");
                String a2 = C14092n3.m2584a("block_history_newest_name", "");
                nVar.f29161d.setText(this.f29122d.getString(R$string.newest_block_time, b, a2));
                nVar.f29161d.setVisibility((!this.f29135q || !z || TextUtils.isEmpty(b) || TextUtils.isEmpty(a2)) ? 8 : 0);
                TextView textView = nVar.f29162e;
                if (!this.f29135q) {
                    i2 = 8;
                } else if (z) {
                    i2 = 0;
                }
                textView.setVisibility(i2);
            } else if (-3 == intValue) {
                nVar.f29158a.setText(R$string.blocklist_smart_exception_title);
                int X = this.f29127i.m5075X();
                if (X != 0) {
                    nVar.f29159b.setVisibility(0);
                    nVar.f29159b.setText(String.valueOf(X));
                } else {
                    nVar.f29159b.setVisibility(8);
                }
                nVar.f29161d.setVisibility(8);
                nVar.f29160c.setVisibility(8);
                nVar.f29162e.setVisibility(8);
            } else if (9 == intValue) {
                nVar.f29158a.setText(R$string.kr_lawbanner_title);
                nVar.f29159b.setVisibility(8);
                nVar.f29160c.setVisibility(8);
                nVar.f29161d.setVisibility(8);
                nVar.f29162e.setVisibility(8);
            } else if (15 == intValue) {
                nVar.f29158a.setText(R$string.kr_lawbanner_title_2);
                nVar.f29159b.setVisibility(8);
                nVar.f29160c.setVisibility(8);
                nVar.f29161d.setVisibility(8);
                nVar.f29162e.setVisibility(8);
            } else if (11 == intValue) {
                nVar.f29158a.setText(R$string.blocklist_menu_telecom);
                nVar.f29159b.setVisibility(8);
                nVar.f29160c.setVisibility(8);
                nVar.f29161d.setVisibility(0);
                m5107a(nVar.f29161d, C12998a.m4832k().m4842e());
                nVar.f29162e.setVisibility(8);
            } else if (12 == intValue) {
                nVar.f29158a.setText(R$string.blocklist_menu_bank);
                nVar.f29159b.setVisibility(8);
                nVar.f29160c.setVisibility(8);
                nVar.f29161d.setVisibility(0);
                m5107a(nVar.f29161d, C12998a.m4832k().m4848b());
                nVar.f29162e.setVisibility(8);
            } else if (13 == intValue) {
                nVar.f29158a.setVisibility(0);
                nVar.f29159b.setVisibility(8);
                nVar.f29160c.setVisibility(8);
                nVar.f29158a.setText(R$string.blocklist_menu_different_ddd);
                nVar.f29161d.setVisibility(0);
                m5107a(nVar.f29161d, C12944k.m4948c());
                nVar.f29162e.setVisibility(8);
            }
        } else if (3 == itemViewType) {
            C12893q qVar = (C12893q) viewHolder;
            qVar.itemView.setClickable(false);
            int itemCount = (getItemCount() - i) - 2;
            qVar.f29182a.setText(String.valueOf(itemCount));
            TextView textView2 = qVar.f29183b;
            if (itemCount > 0) {
                i4 = 8;
            }
            textView2.setVisibility(i4);
        } else if (5 == itemViewType) {
            viewHolder.itemView.setBackgroundColor(3 == getItemViewType(i - 1) ? Color.parseColor("#f8f8f8") : ViewCompat.MEASURED_SIZE_MASK);
            viewHolder.itemView.getLayoutParams().width = this.f29122d.getResources().getDisplayMetrics().widthPixels;
            viewHolder.itemView.getLayoutParams().height = C14217x3.m2201a(78.0f);
        } else if (4 == itemViewType) {
            C12887l lVar = (C12887l) viewHolder;
            if (C14063l4.m2644u()) {
                lVar.f29154a.setText(R$string.blocklist_hklist_update_title);
            } else {
                lVar.f29154a.setText(R$string.blocklist_hklist_fail_title);
            }
            this.f29125g = lVar.f29155b;
            this.f29125g.setIndeterminate(this.f29130l);
            this.f29125g.setProgress(this.f29131m);
            this.f29126h = lVar.f29156c;
            TextView textView3 = this.f29126h;
            textView3.setText(this.f29131m + "%");
            lVar.f29157d.setOnClickListener(new View$OnClickListenerC12878c());
        } else if (7 == itemViewType) {
            C12890o oVar = (C12890o) viewHolder;
            oVar.f29163a.setText(R$string.premiumsubscribe_premiumversion_d_v2);
            oVar.f29164b.setText(R$string.spam_hammer_description_v2);
            oVar.f29165c.setOnClickListener(new View$OnClickListenerC12879d());
        } else if (itemViewType == 0) {
            Map<EnumC12874d, String> map = this.f29123e.get(i);
            int intValue2 = Integer.valueOf(map.get(EnumC12874d.TYPE)).intValue();
            int intValue3 = Integer.valueOf(map.get(EnumC12874d.SWITCH)).intValue();
            C12894r rVar = (C12894r) viewHolder;
            rVar.f29184a.setBackground(ContextCompat.getDrawable(this.f29122d, R$drawable.list_selector_block));
            rVar.f29185b.setVisibility(8);
            if (8 == intValue2) {
                this.f29128j = map;
                rVar.f29184a.setBackgroundColor(ContextCompat.getColor(this.f29122d, 2131099960));
                rVar.f29185b.setText(R$string.whoscall_premium_label);
                TextView textView4 = rVar.f29185b;
                if (!C14073m.m2623e()) {
                    i3 = 8;
                }
                textView4.setVisibility(i3);
                String string = this.f29122d.getString(R$string.premiumsubscribe_premiumversion_d_v2);
                rVar.f29188e.setVisibility(8);
                rVar.f29187d.setVisibility(8);
                if (intValue3 != 1 || !C14063l4.m2701A()) {
                    rVar.f29190g.m25835c();
                    rVar.f29186c.setText(string);
                } else {
                    rVar.f29190g.m25833d();
                    int r = C14063l4.m2647r();
                    rVar.f29186c.setText(r > 0 ? m5100a(string, r) : string);
                }
                rVar.f29189f.setText(R$string.spam_hammer_description_v2);
                rVar.f29189f.setTextColor(this.f29133o);
                rVar.f29190g.setTag(this.f29128j);
                rVar.f29190g.setOnClickListener(this.f29136r);
                rVar.f29190g.m25839a(new C12880e(rVar, string));
            } else if (4 == intValue2) {
                this.f29129k = map;
                rVar.f29187d.setVisibility(8);
                rVar.f29186c.setText(R$string.block_private);
                if (intValue3 == 1) {
                    rVar.f29190g.m25833d();
                    rVar.f29188e.setVisibility(8);
                } else {
                    rVar.f29190g.m25835c();
                    rVar.f29188e.setVisibility(0);
                    rVar.f29188e.setImageResource(R$drawable.block_setting_moreinfo);
                }
                m5106a(rVar.f29189f, this.f29129k);
                rVar.f29190g.setTag(this.f29129k);
                rVar.f29190g.setOnClickListener(this.f29137s);
                rVar.f29190g.m25839a(new C12881f(rVar));
            } else if (5 == intValue2) {
                rVar.f29184a.setBackgroundColor(ContextCompat.getColor(this.f29122d, 2131099960));
                rVar.f29187d.setVisibility(8);
                rVar.f29188e.setVisibility(8);
                rVar.f29186c.setText(R$string.block_internation);
                if (intValue3 == 1) {
                    rVar.f29190g.m25833d();
                } else {
                    rVar.f29190g.m25835c();
                }
                m5106a(rVar.f29189f, map);
                rVar.f29190g.setTag(map);
                rVar.f29190g.setOnClickListener(this.f29137s);
                rVar.f29190g.m25839a(new C12882g(map, rVar));
            } else if (7 == intValue2) {
                rVar.f29187d.setVisibility(8);
                rVar.f29188e.setVisibility(8);
                rVar.f29186c.setText(R$string.block_outofcontact);
                if (intValue3 == 1) {
                    rVar.f29190g.m25833d();
                    rVar.f29188e.setVisibility(8);
                } else {
                    rVar.f29190g.m25835c();
                    rVar.f29188e.setVisibility(0);
                    rVar.f29188e.setImageResource(R$drawable.block_setting_moreinfo);
                }
                m5106a(rVar.f29189f, map);
                rVar.f29190g.setTag(map);
                rVar.f29190g.setOnClickListener(this.f29137s);
                rVar.f29190g.m25839a(new C12883h(map, rVar));
            }
        } else if (2 == itemViewType) {
            C12891p pVar = (C12891p) viewHolder;
            Map<EnumC12874d, String> map2 = this.f29123e.get(i);
            int intValue4 = Integer.valueOf(map2.get(EnumC12874d.TYPE)).intValue();
            String str = null;
            if (1 == intValue4) {
                String str2 = map2.get(EnumC12874d.NUMBER);
                String c = C14217x3.m2155c(this.f29122d, str2);
                pVar.f29172g.setVisibility(8);
                if (TextUtils.isEmpty(c)) {
                    pVar.f29171f.setImageResource(C13909c.m3071b().m3077v().m3069a());
                } else {
                    str = C14217x3.m2146e(this.f29122d, str2);
                    CallUtils.m26576a(pVar.f29171f, pVar.f29172g, (RowInfo) null, c, CallUtils.EnumC4993l.MAIN_BLOCK_FRAGMENT);
                }
                pVar.m5079c(str2);
                pVar.m5084a(c);
                pVar.m5081b(str);
                pVar.m5083a(map2);
                pVar.f29173h.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
                pVar.f29173h.setText(str2);
                pVar.f29174i.setVisibility(0);
                pVar.f29177l.setVisibility(0);
                pVar.f29175j.setVisibility(8);
                pVar.f29176k.setVisibility(8);
                pVar.f29178m.setVisibility(8);
                C11052i.m10328e().m10340a(str2, pVar.f29179n, 0, EnumC11047e.CallLog);
                return;
            }
            pVar.m5079c((String) null);
            pVar.m5084a((String) null);
            pVar.m5081b((String) null);
            pVar.m5083a((Map<EnumC12874d, String>) null);
            pVar.f29172g.setVisibility(8);
            pVar.f29173h.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            if (2 == intValue4) {
                pVar.f29173h.setText(this.f29122d.getString(R$string.block_startswith, map2.get(EnumC12874d.E164)));
                pVar.f29174i.setVisibility(8);
                pVar.f29171f.setImageResource(R$drawable.metaphor_ndp_number);
            } else if (3 == intValue4) {
                pVar.f29173h.setText(this.f29122d.getString(R$string.block_keyword, map2.get(EnumC12874d.E164)));
                pVar.f29174i.setVisibility(8);
                pVar.f29171f.setImageResource(R$drawable.metaphor_ndp_wording);
            } else {
                pVar.f29173h.setText((CharSequence) null);
                pVar.f29171f.setImageResource(C13909c.m3071b().m3077v().m3069a());
                pVar.f29174i.setVisibility(0);
                pVar.f29177l.setVisibility(8);
                pVar.f29175j.setVisibility(0);
                pVar.f29175j.setText(map2.get(EnumC12874d.E164));
                pVar.f29176k.setVisibility(8);
            }
            pVar.f29178m.setVisibility(0);
            m5106a(pVar.f29178m, map2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return 1 == i ? new C12889n(this, viewGroup) : 3 == i ? new C12893q(this, viewGroup) : 5 == i ? new C12888m(viewGroup) : i == 0 ? new C12894r(this, viewGroup) : 4 == i ? new C12887l(this, viewGroup) : 7 == i ? new C12890o(this, viewGroup) : 2 == i ? new C12891p(viewGroup) : new C12885j(this, viewGroup);
    }
}
