package com.netqin.p525cm.antiharass.p527ui.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
import com.netqin.p525cm.p528db.model.BlockedCallsModel;
import com.netqin.p525cm.utils.AsyncTask;
import com.netqin.p525cm.utils.NQSPFManager;
import java.util.List;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p442b.p445c.C6741c;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6776a;
import p131c.p431l.p432a.p468n.C6843d;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6851j;
import p131c.p431l.p432a.p468n.C6855n;
import p131c.p431l.p432a.p468n.C6859q;
/* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity.class */
public class BlockCallLogHistoryActivity extends BaseActivity {

    /* renamed from: A */
    public C9080j f35367A;

    /* renamed from: B */
    public C9081k f35368B;

    /* renamed from: E */
    public Context f35371E;

    /* renamed from: F */
    public EditText f35372F;

    /* renamed from: G */
    public EditText f35373G;

    /* renamed from: H */
    public TextView f35374H;

    /* renamed from: J */
    public LinearLayout f35376J;

    /* renamed from: L */
    public DialogC6776a f35378L;

    /* renamed from: t */
    public ListView f35379t;

    /* renamed from: u */
    public TextView f35380u;

    /* renamed from: v */
    public LinearLayout f35381v;

    /* renamed from: w */
    public LinearLayout f35382w;

    /* renamed from: x */
    public List<BlockedCallsModel> f35383x;

    /* renamed from: y */
    public C9078i f35384y;

    /* renamed from: z */
    public C6727b f35385z;

    /* renamed from: C */
    public boolean f35369C = false;

    /* renamed from: D */
    public boolean f35370D = false;

    /* renamed from: I */
    public boolean f35375I = false;

    /* renamed from: K */
    public AdapterView.OnItemClickListener f35377K = new C9066a();

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$a.class */
    public class C9066a implements AdapterView.OnItemClickListener {
        public C9066a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            BlockCallLogHistoryActivity.this.m3514c(i);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$b.class */
    public class View$OnClickListenerC9067b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlockedCallsModel f35387a;

        public View$OnClickListenerC9067b(BlockedCallsModel blockedCallsModel) {
            this.f35387a = blockedCallsModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C6741c.m19912a(this.f35387a.getAddress(), BlockCallLogHistoryActivity.this.f35625q);
            BlockCallLogHistoryActivity.this.f35378L.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$c.class */
    public class View$OnClickListenerC9068c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlockedCallsModel f35389a;

        public View$OnClickListenerC9068c(BlockedCallsModel blockedCallsModel) {
            this.f35389a = blockedCallsModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlockCallLogHistoryActivity.this.m3518a(this.f35389a);
            BlockCallLogHistoryActivity.this.f35378L.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$d.class */
    public class View$OnClickListenerC9069d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlockedCallsModel f35391a;

        /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$d$a */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$d$a.class */
        public class DialogInterface$OnClickListenerC9070a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9070a(View$OnClickListenerC9069d dVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$d$b */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$d$b.class */
        public class DialogInterface$OnClickListenerC9071b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9071b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (BlockCallLogHistoryActivity.this.f35385z.m19973a(View$OnClickListenerC9069d.this.f35391a.getId()) >= 0) {
                    BlockCallLogHistoryActivity.this.m3498p();
                } else {
                    C6850i.m19580a("删除拦截记录失败，address:" + View$OnClickListenerC9069d.this.f35391a.getAddress());
                }
                dialogInterface.dismiss();
            }
        }

        public View$OnClickListenerC9069d(BlockedCallsModel blockedCallsModel) {
            this.f35391a = blockedCallsModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C6843d.m19605a(BlockCallLogHistoryActivity.this.f35625q, 2131558518, 2131558451, 2131558496, 2131558513, new DialogInterface$OnClickListenerC9070a(this), new DialogInterface$OnClickListenerC9071b());
            BlockCallLogHistoryActivity.this.f35378L.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$e.class */
    public class DialogInterface$OnClickListenerC9072e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlockedCallsModel f35394a;

        /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$e$a */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$e$a.class */
        public class DialogInterface$OnClickListenerC9073a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9073a(DialogInterface$OnClickListenerC9072e eVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$e$b */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$e$b.class */
        public class DialogInterface$OnClickListenerC9074b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9074b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    BlockCallLogHistoryActivity.this.f35385z.m19963a(DialogInterface$OnClickListenerC9072e.this.f35394a.getAddress());
                    String trim = BlockCallLogHistoryActivity.this.f35372F.getText().toString().trim();
                    String str = trim;
                    if (TextUtils.isEmpty(trim.replaceAll(" ", ""))) {
                        str = DialogInterface$OnClickListenerC9072e.this.f35394a.getAddress();
                    }
                    BlockCallLogHistoryActivity.this.m3517a(DialogInterface$OnClickListenerC9072e.this.f35394a, str);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                dialogInterface.dismiss();
            }
        }

        public DialogInterface$OnClickListenerC9072e(BlockedCallsModel blockedCallsModel) {
            this.f35394a = blockedCallsModel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (BlockCallLogHistoryActivity.this.f35385z.m19937f(this.f35394a.getAddress())) {
                C6843d.m19605a(BlockCallLogHistoryActivity.this.f35625q, 2131558443, 2131558444, 2131558496, 2131558513, new DialogInterface$OnClickListenerC9073a(this), new DialogInterface$OnClickListenerC9074b());
                return;
            }
            String trim = BlockCallLogHistoryActivity.this.f35372F.getText().toString().trim();
            String str = trim;
            if (TextUtils.isEmpty(trim.replaceAll(" ", ""))) {
                str = this.f35394a.getAddress();
            }
            BlockCallLogHistoryActivity.this.m3517a(this.f35394a, str);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$f */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$f.class */
    public class DialogInterface$OnClickListenerC9075f implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9075f() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$g */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$g.class */
    public class DialogInterface$OnClickListenerC9076g implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9076g() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                new C9082l(BlockCallLogHistoryActivity.this, null).m3194b((Object[]) new Integer[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$h */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$h.class */
    public class DialogInterface$OnClickListenerC9077h implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9077h() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$i */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$i.class */
    public class C9078i extends BaseAdapter {

        /* renamed from: a */
        public Context f35400a;

        /* renamed from: b */
        public List<BlockedCallsModel> f35401b;

        /* renamed from: c */
        public C6727b f35402c;

        /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$i$a */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$i$a.class */
        public class C9079a {

            /* renamed from: a */
            public ImageView f35404a;

            /* renamed from: b */
            public TextView f35405b;

            /* renamed from: c */
            public TextView f35406c;

            /* renamed from: d */
            public TextView f35407d;

            /* renamed from: e */
            public TextView f35408e;

            /* renamed from: f */
            public TextView f35409f;

            public C9079a(C9078i iVar) {
            }

            public /* synthetic */ C9079a(C9078i iVar, C9066a aVar) {
                this(iVar);
            }
        }

        public C9078i(Context context, List<BlockedCallsModel> list) {
            this.f35400a = context;
            this.f35401b = list;
            this.f35402c = C6727b.m19968a(context);
        }

        /* renamed from: a */
        public final String m3493a(int i) {
            return i == 0 ? this.f35400a.getString(2131558462) : "";
        }

        /* renamed from: a */
        public final void m3492a(ImageView imageView, int i) {
            if (i == 0) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(4);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f35401b.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f35401b.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C9079a aVar;
            if (view == null) {
                view = LayoutInflater.from(this.f35400a).inflate(2131427377, (ViewGroup) null);
                aVar = new C9079a(this, null);
                aVar.f35404a = (ImageView) view.findViewById(2131231000);
                aVar.f35405b = (TextView) view.findViewById(2131231218);
                aVar.f35406c = (TextView) view.findViewById(2131231220);
                aVar.f35407d = (TextView) view.findViewById(2131231215);
                aVar.f35409f = (TextView) view.findViewById(2131231219);
                aVar.f35408e = (TextView) view.findViewById(2131231216);
                view.setTag(aVar);
            } else {
                aVar = (C9079a) view.getTag();
            }
            BlockedCallsModel blockedCallsModel = this.f35401b.get(i);
            m3492a(aVar.f35404a, blockedCallsModel.getRead());
            if (!TextUtils.isEmpty(blockedCallsModel.getName())) {
                aVar.f35405b.setText(blockedCallsModel.getName());
            } else {
                aVar.f35405b.setText(blockedCallsModel.getAddress());
            }
            aVar.f35407d.setText(this.f35402c.m19938f(blockedCallsModel.getBlockMode()));
            aVar.f35406c.setText(m3493a(blockedCallsModel.getType()));
            aVar.f35409f.setText(C6843d.m19606a(blockedCallsModel.getDate()));
            aVar.f35408e.setText(C6843d.m19603a(this.f35400a, blockedCallsModel.getDate()));
            return view;
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$j */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$j.class */
    public class C9080j extends AsyncTask<Object, Object, Object> {
        public C9080j() {
        }

        public /* synthetic */ C9080j(BlockCallLogHistoryActivity blockCallLogHistoryActivity, C9066a aVar) {
            this();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: a */
        public Object mo3198a(Object... objArr) {
            try {
                BlockCallLogHistoryActivity.this.f35383x = BlockCallLogHistoryActivity.this.f35385z.m19959b();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return objArr;
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3193c() {
            super.mo3193c();
            if (BlockCallLogHistoryActivity.this.m3500o() > 0 && !BlockCallLogHistoryActivity.this.f35369C && !BlockCallLogHistoryActivity.this.f35370D) {
                BlockCallLogHistoryActivity.this.f35369C = false;
                BlockCallLogHistoryActivity.this.f35370D = false;
            }
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3191c(Object obj) {
            super.mo3191c((C9080j) obj);
            BlockCallLogHistoryActivity blockCallLogHistoryActivity = BlockCallLogHistoryActivity.this;
            if (blockCallLogHistoryActivity.f35627s) {
                if (blockCallLogHistoryActivity.f35383x != null) {
                    BlockCallLogHistoryActivity blockCallLogHistoryActivity2 = BlockCallLogHistoryActivity.this;
                    BlockCallLogHistoryActivity blockCallLogHistoryActivity3 = BlockCallLogHistoryActivity.this;
                    blockCallLogHistoryActivity2.f35384y = new C9078i(blockCallLogHistoryActivity3.f35371E, BlockCallLogHistoryActivity.this.f35383x);
                    BlockCallLogHistoryActivity.this.f35382w.setVisibility(0);
                    BlockCallLogHistoryActivity.this.f35381v.setVisibility(8);
                    BlockCallLogHistoryActivity.this.f35379t.setAdapter((ListAdapter) BlockCallLogHistoryActivity.this.f35384y);
                } else {
                    BlockCallLogHistoryActivity.this.f35382w.setVisibility(8);
                    BlockCallLogHistoryActivity.this.f35381v.setVisibility(0);
                }
                BlockCallLogHistoryActivity.this.f35367A = null;
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$k */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$k.class */
    public class C9081k extends BroadcastReceiver {
        public C9081k() {
        }

        public /* synthetic */ C9081k(BlockCallLogHistoryActivity blockCallLogHistoryActivity, C9066a aVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.netqin.antiharass.refresh".equals(intent.getAction()) || "com.netqin.antiharass.insert".equals(intent.getAction()) || "com.netqin.antiharass.delete".equals(intent.getAction())) {
                BlockCallLogHistoryActivity.this.f35369C = true;
                BlockCallLogHistoryActivity.this.m3498p();
                C6850i.m19579a(null, "mIsNeedRefreshData:" + BlockCallLogHistoryActivity.this.f35369C);
            }
            if ("com.netqin.antiharass.refresh_view".equals(intent.getAction()) && BlockCallLogHistoryActivity.this.f35383x != null) {
                for (int i = 0; i < BlockCallLogHistoryActivity.this.f35383x.size(); i++) {
                    ((BlockedCallsModel) BlockCallLogHistoryActivity.this.f35383x.get(i)).setClick(false);
                }
                if (BlockCallLogHistoryActivity.this.f35384y != null) {
                    BlockCallLogHistoryActivity.this.f35384y.notifyDataSetChanged();
                }
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockCallLogHistoryActivity$l */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockCallLogHistoryActivity$l.class */
    public class C9082l extends AsyncTask<Integer, Object, Integer> {
        public C9082l() {
        }

        public /* synthetic */ C9082l(BlockCallLogHistoryActivity blockCallLogHistoryActivity, C9066a aVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Integer mo3198a(Integer... numArr) {
            int i;
            try {
                i = BlockCallLogHistoryActivity.this.f35385z.m19976a();
            } catch (Exception e) {
                e.printStackTrace();
                i = -1;
            }
            return Integer.valueOf(i);
        }

        /* renamed from: a */
        public void mo3191c(Integer num) {
            super.mo3191c((C9082l) num);
            if (BlockCallLogHistoryActivity.this.f35627s) {
                C6855n.m19555a();
                BlockCallLogHistoryActivity.this.sendBroadcast(new Intent("com.netqin.antiharass.refresh_tab"));
                BlockCallLogHistoryActivity.this.m3498p();
            }
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3193c() {
            super.mo3193c();
            C6855n.m19553a(BlockCallLogHistoryActivity.this.f35625q, false);
        }
    }

    /* renamed from: a */
    public void m3518a(BlockedCallsModel blockedCallsModel) {
        String name = !TextUtils.isEmpty(blockedCallsModel.getName()) ? blockedCallsModel.getName() : blockedCallsModel.getAddress();
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19829b(getString(2131558443));
        View inflate = LayoutInflater.from(this).inflate(2131427385, (ViewGroup) null);
        EditText editText = (EditText) inflate.findViewById(2131231044);
        this.f35372F = editText;
        editText.setText(name);
        C6843d.m19599a(this.f35372F);
        this.f35373G = (EditText) inflate.findViewById(2131231088);
        TextView textView = (TextView) inflate.findViewById(2131231089);
        this.f35374H = textView;
        textView.setText(2131558460);
        this.f35373G.setText(blockedCallsModel.getAddress());
        aVar.m19835a(inflate);
        aVar.m19836a(2131558513, new DialogInterface$OnClickListenerC9072e(blockedCallsModel));
        aVar.m19830b(2131558496, new DialogInterface$OnClickListenerC9075f());
        aVar.m19838a().show();
    }

    /* renamed from: a */
    public final boolean m3517a(BlockedCallsModel blockedCallsModel, String str) {
        boolean z = false;
        try {
            BlackWhiteListModel blackWhiteListModel = new BlackWhiteListModel();
            blackWhiteListModel.setAddress(blockedCallsModel.getAddress());
            blackWhiteListModel.setId(blockedCallsModel.getId());
            blackWhiteListModel.setName(str);
            blackWhiteListModel.setRead(0);
            blackWhiteListModel.setType(1);
            z = this.f35385z.m19965a(blackWhiteListModel);
            if (z) {
                C6741c.m19914a(this.f35371E, "com.netqin.antiharass.refresh");
                C6859q.m19550a((Context) this.f35625q, 2131558445, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
            C6850i.m19579a("BlockCallLogHistoryActivity", "添加黑名单失败，address:" + blockedCallsModel.getAddress());
        }
        return z;
    }

    /* renamed from: c */
    public final void m3514c(int i) {
        BlockedCallsModel blockedCallsModel = this.f35383x.get(i);
        long id = blockedCallsModel.getId();
        if (blockedCallsModel.getRead() == 0) {
            this.f35385z.m19974a(1, id);
            blockedCallsModel.setRead(1);
            C6741c.m19914a(this.f35371E, "com.netqin.antiharass.refresh_tab");
        }
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19829b(TextUtils.isEmpty(blockedCallsModel.getName()) ? blockedCallsModel.getAddress() : blockedCallsModel.getName());
        View inflate = LayoutInflater.from(this.f35371E).inflate(2131427378, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131230866);
        TextView textView2 = (TextView) inflate.findViewById(2131230813);
        TextView textView3 = (TextView) inflate.findViewById(2131230916);
        if (this.f35385z.m19945d(blockedCallsModel.getAddress())) {
            textView2.setVisibility(8);
        }
        textView.setOnClickListener(new View$OnClickListenerC9067b(blockedCallsModel));
        textView2.setOnClickListener(new View$OnClickListenerC9068c(blockedCallsModel));
        textView3.setOnClickListener(new View$OnClickListenerC9069d(blockedCallsModel));
        this.f35384y.notifyDataSetChanged();
        aVar.m19835a(inflate);
        DialogC6776a a = aVar.m19838a();
        this.f35378L = a;
        a.show();
    }

    /* renamed from: n */
    public LinearLayout m3502n() {
        return this.f35376J;
    }

    /* renamed from: o */
    public final int m3500o() {
        return this.f35385z.m19919u();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C6850i.m19579a("BlockCallLogHistoryActivity", "BlockCallLogHistoryActivity onCreate");
        setContentView(2131427376);
        this.f35371E = this;
        this.f35385z = C6727b.m19968a(getApplicationContext());
        m3496r();
        m3498p();
        m3497q();
        this.f35375I = true;
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m3494t();
        C6850i.m19579a("BlockCallLogHistoryActivity", "BlockCallLogHistoryActivity onDestroy");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.f35370D = true;
        super.onPause();
        C6850i.m19579a("BlockCallLogHistoryActivity", "BlockCallLogHistoryActivity onPause");
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        C6850i.m19579a("BlockCallLogHistoryActivity", "BlockCallLogHistoryActivity onResume");
        if (this.f35375I) {
            NQSPFManager.m3184a(this.f35371E).f35744c.m19573a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_model, 0);
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        C6850i.m19579a("BlockCallLogHistoryActivity", "BlockCallLogHistoryActivity onStart");
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        C6850i.m19579a("BlockCallLogHistoryActivity", "BlockCallLogHistoryActivity onStop");
    }

    /* renamed from: p */
    public void m3498p() {
        if (this.f35367A == null) {
            C9080j jVar = new C9080j(this, null);
            this.f35367A = jVar;
            try {
                jVar.m3194b(this.f35383x);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: q */
    public final void m3497q() {
        this.f35368B = new C9081k(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.netqin.antiharass.delete");
        intentFilter.addAction("com.netqin.antiharass.insert");
        intentFilter.addAction("com.netqin.antiharass.refresh");
        intentFilter.addAction("com.netqin.antiharass.refresh_view");
        registerReceiver(this.f35368B, intentFilter);
    }

    /* renamed from: r */
    public final void m3496r() {
        this.f35382w = (LinearLayout) findViewById(2131230841);
        this.f35380u = (TextView) findViewById(2131231225);
        this.f35379t = (ListView) findViewById(2131231036);
        this.f35381v = (LinearLayout) findViewById(2131231016);
        this.f35380u.setText(2131558464);
        this.f35379t.setOnItemClickListener(this.f35377K);
        this.f35376J = (LinearLayout) findViewById(2131230792);
    }

    /* renamed from: s */
    public void m3495s() {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19831b(2131558518);
        aVar.m19837a(2131558461);
        aVar.m19836a(2131558513, new DialogInterface$OnClickListenerC9076g());
        aVar.m19830b(2131558496, new DialogInterface$OnClickListenerC9077h());
        aVar.m19838a().show();
    }

    /* renamed from: t */
    public final void m3494t() {
        unregisterReceiver(this.f35368B);
    }
}
