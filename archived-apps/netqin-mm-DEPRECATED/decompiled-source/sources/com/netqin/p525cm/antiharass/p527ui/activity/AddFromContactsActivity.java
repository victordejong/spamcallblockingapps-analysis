package com.netqin.p525cm.antiharass.p527ui.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
import com.netqin.p525cm.p528db.model.SystemContacts;
import com.netqin.p525cm.utils.AsyncTask;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p442b.p445c.C6741c;
import p131c.p431l.p432a.p442b.p448f.p450b.C6770b;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6776a;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6778b;
import p131c.p431l.p432a.p468n.p469s.p472c.C6864a;
/* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity.class */
public class AddFromContactsActivity extends BaseActivity {

    /* renamed from: A */
    public List<Integer> f35282A;

    /* renamed from: B */
    public int f35283B;

    /* renamed from: C */
    public ArrayList<BlackWhiteListModel> f35284C;

    /* renamed from: D */
    public int f35285D;

    /* renamed from: H */
    public C9046k f35289H;

    /* renamed from: J */
    public C9045j f35291J;

    /* renamed from: L */
    public C9044i f35293L;

    /* renamed from: t */
    public LinearLayout f35294t;

    /* renamed from: u */
    public Button f35295u;

    /* renamed from: v */
    public Button f35296v;

    /* renamed from: w */
    public ListView f35297w;

    /* renamed from: x */
    public List<SystemContacts> f35298x;

    /* renamed from: y */
    public C6727b f35299y;

    /* renamed from: z */
    public C6770b f35300z;

    /* renamed from: E */
    public View.OnClickListener f35286E = new View$OnClickListenerC9037b();

    /* renamed from: F */
    public View.OnClickListener f35287F = new View$OnClickListenerC9038c();

    /* renamed from: G */
    public AdapterView.OnItemClickListener f35288G = new C9039d();

    /* renamed from: I */
    public boolean f35290I = false;

    /* renamed from: K */
    public Handler f35292K = new HandlerC9043h();

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$a.class */
    public class View$OnClickListenerC9036a implements View.OnClickListener {
        public View$OnClickListenerC9036a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AddFromContactsActivity.this.finish();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$b.class */
    public class View$OnClickListenerC9037b implements View.OnClickListener {
        public View$OnClickListenerC9037b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AddFromContactsActivity.this.setResult(0);
            AddFromContactsActivity.this.finish();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$c.class */
    public class View$OnClickListenerC9038c implements View.OnClickListener {
        public View$OnClickListenerC9038c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!AddFromContactsActivity.this.m3566s()) {
                AddFromContactsActivity.this.f35291J = new C9045j(AddFromContactsActivity.this, null);
                try {
                    AddFromContactsActivity.this.f35291J.m3194b(new Object[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$d.class */
    public class C9039d implements AdapterView.OnItemClickListener {
        public C9039d() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AddFromContactsActivity.this.m3589c(AddFromContactsActivity.this.m3570q());
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$e.class */
    public class DialogInterface$OnKeyListenerC9040e implements DialogInterface.OnKeyListener {
        public DialogInterface$OnKeyListenerC9040e() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            boolean z = false;
            if (i == 4) {
                AddFromContactsActivity.this.setResult(0);
                AddFromContactsActivity.this.finish();
                z = true;
            }
            return z;
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$f */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$f.class */
    public class DialogInterface$OnClickListenerC9041f implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9041f() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                AddFromContactsActivity.this.f35293L = new C9044i(AddFromContactsActivity.this, null);
                AddFromContactsActivity.this.f35293L.m3194b(new Object[0]);
                dialogInterface.dismiss();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$g */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$g.class */
    public class DialogInterface$OnClickListenerC9042g implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9042g() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$h */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$h.class */
    public class HandlerC9043h extends Handler {
        public HandlerC9043h() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.arg1;
            if (i == 1) {
                AddFromContactsActivity.this.m3587d(1);
            } else if (i == 0) {
                AddFromContactsActivity.this.m3587d(0);
            } else if (i == 10) {
                AddFromContactsActivity.this.f35293L = new C9044i(AddFromContactsActivity.this, null);
                try {
                    AddFromContactsActivity.this.f35293L.m3194b(new Object[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$i */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$i.class */
    public class C9044i extends AsyncTask<Object, Object, Object> {

        /* renamed from: o */
        public DialogC6778b f35309o;

        /* renamed from: p */
        public List<String> f35310p;

        public C9044i() {
            this.f35309o = new DialogC6778b(AddFromContactsActivity.this);
        }

        public /* synthetic */ C9044i(AddFromContactsActivity addFromContactsActivity, View$OnClickListenerC9036a aVar) {
            this();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: a */
        public Object mo3198a(Object... objArr) {
            AddFromContactsActivity.this.f35284C = new ArrayList();
            this.f35310p = AddFromContactsActivity.this.m3576n();
            return objArr;
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3193c() {
            this.f35309o.setCancelable(false);
            this.f35309o.show();
            super.mo3193c();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3191c(Object obj) {
            AddFromContactsActivity.this.f35293L = null;
            if (AddFromContactsActivity.this.f35627s) {
                this.f35309o.dismiss();
                List<String> list = this.f35310p;
                if (list == null || list.size() <= 0) {
                    C6741c.m19914a(AddFromContactsActivity.this.f35626r, "com.netqin.antiharass.refresh");
                    Intent intent = new Intent();
                    if (AddFromContactsActivity.this.f35285D == 1) {
                        intent.setClass(AddFromContactsActivity.this.f35626r, BlackListActivity.class);
                        AddFromContactsActivity.this.startActivity(intent);
                    } else {
                        intent.putExtra("WhichWayToAdd", 2);
                        intent.putParcelableArrayListExtra("sign_extra_name", AddFromContactsActivity.this.f35284C);
                        AddFromContactsActivity.this.setResult(-1, intent);
                    }
                    AddFromContactsActivity.this.finish();
                } else {
                    Intent intent2 = new Intent();
                    if (AddFromContactsActivity.this.f35285D == 1) {
                        intent2.setClass(AddFromContactsActivity.this.f35626r, BlackListActivity.class);
                        AddFromContactsActivity.this.startActivity(intent2);
                    } else {
                        intent2.putExtra("WhichWayToAdd", 2);
                        intent2.putParcelableArrayListExtra("sign_extra_name", AddFromContactsActivity.this.f35284C);
                        intent2.putStringArrayListExtra("namelist", (ArrayList) this.f35310p);
                        AddFromContactsActivity.this.setResult(-1, intent2);
                    }
                    AddFromContactsActivity.this.finish();
                }
                super.mo3191c((C9044i) obj);
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$j */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$j.class */
    public class C9045j extends AsyncTask<Object, Object, Object> {
        public C9045j() {
        }

        public /* synthetic */ C9045j(AddFromContactsActivity addFromContactsActivity, View$OnClickListenerC9036a aVar) {
            this();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: a */
        public Object mo3198a(Object... objArr) {
            AddFromContactsActivity.this.f35284C = new ArrayList();
            if (!AddFromContactsActivity.this.m3574o()) {
                Message message = new Message();
                message.arg1 = 10;
                AddFromContactsActivity.this.f35292K.sendMessage(message);
            }
            return objArr;
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3193c() {
            super.mo3193c();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3191c(Object obj) {
            super.mo3191c((C9045j) obj);
            AddFromContactsActivity.this.f35291J = null;
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromContactsActivity$k */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromContactsActivity$k.class */
    public class C9046k extends AsyncTask<Object, Object, Object> {

        /* renamed from: o */
        public DialogC6778b f35313o;

        public C9046k() {
        }

        public /* synthetic */ C9046k(AddFromContactsActivity addFromContactsActivity, View$OnClickListenerC9036a aVar) {
            this();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: a */
        public Object mo3198a(Object... objArr) {
            AddFromContactsActivity.this.m3572p();
            return objArr;
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3193c() {
            DialogC6778b bVar = new DialogC6778b(AddFromContactsActivity.this);
            this.f35313o = bVar;
            bVar.show();
            super.mo3193c();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3191c(Object obj) {
            AddFromContactsActivity.this.f35289H = null;
            if (AddFromContactsActivity.this.f35627s) {
                this.f35313o.dismiss();
                if (AddFromContactsActivity.this.f35298x == null || AddFromContactsActivity.this.f35298x.size() <= 0) {
                    AddFromContactsActivity.this.f35294t.setVisibility(8);
                    AddFromContactsActivity.this.f35295u.setVisibility(8);
                    AddFromContactsActivity.this.f35296v.setVisibility(8);
                } else {
                    AddFromContactsActivity.this.f35300z = new C6770b(AddFromContactsActivity.this.f35626r, AddFromContactsActivity.this.f35298x);
                    AddFromContactsActivity.this.f35295u.setVisibility(0);
                    AddFromContactsActivity.this.f35296v.setVisibility(0);
                    AddFromContactsActivity.this.f35294t.setVisibility(0);
                    AddFromContactsActivity.this.f35297w.setAdapter((ListAdapter) AddFromContactsActivity.this.f35300z);
                }
                super.mo3191c((C9046k) obj);
            }
        }
    }

    public AddFromContactsActivity() {
        new DialogInterface$OnKeyListenerC9040e();
    }

    /* renamed from: c */
    public final void m3589c(int i) {
        boolean z;
        String string = getString(2131558494);
        if (i > 0) {
            z = true;
            string = string + " (" + i + ")";
        } else {
            z = false;
        }
        this.f35295u.setEnabled(z);
        this.f35295u.setClickable(z);
        this.f35295u.setText(string);
    }

    /* renamed from: d */
    public void m3587d(int i) {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        if (1 == i) {
            aVar.m19829b(getString(2131558443));
            aVar.m19834a(getString(2131558444));
        } else if (i == 0) {
            aVar.m19829b(getString(2131558449));
            aVar.m19834a(getString(2131558450));
        }
        aVar.m19836a(2131558513, new DialogInterface$OnClickListenerC9041f());
        aVar.m19830b(2131558496, new DialogInterface$OnClickListenerC9042g());
        aVar.m19838a().show();
    }

    /* renamed from: n */
    public List<String> m3576n() {
        ArrayList arrayList = new ArrayList();
        try {
            m3568r();
            HashMap hashMap = new HashMap();
            int size = this.f35282A.size();
            hashMap.clear();
            for (int i = 0; i < size; i++) {
                SystemContacts systemContacts = (SystemContacts) this.f35297w.getItemAtPosition(this.f35282A.get(i).intValue());
                if (systemContacts != null) {
                    String address = systemContacts.getAddress();
                    String b = C6864a.m19519b(address);
                    BlackWhiteListModel blackWhiteListModel = new BlackWhiteListModel();
                    if (!hashMap.containsKey(b)) {
                        hashMap.put(b, address);
                        blackWhiteListModel.setName(systemContacts.getName());
                        blackWhiteListModel.setAddress(address);
                        blackWhiteListModel.setType(this.f35283B);
                        if (C6741c.m19913a(blackWhiteListModel, this.f35283B, this.f35299y)) {
                            arrayList.add(TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getAddress() : blackWhiteListModel.getName());
                        }
                        this.f35299y.m19965a(blackWhiteListModel);
                        this.f35284C.add(blackWhiteListModel);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: o */
    public final boolean m3574o() {
        try {
            ArrayList arrayList = new ArrayList();
            m3568r();
            HashMap hashMap = new HashMap();
            int size = this.f35282A.size();
            hashMap.clear();
            BlackWhiteListModel blackWhiteListModel = new BlackWhiteListModel();
            for (int i = 0; i < size; i++) {
                SystemContacts systemContacts = (SystemContacts) this.f35297w.getItemAtPosition(this.f35282A.get(i).intValue());
                if (systemContacts != null) {
                    String address = systemContacts.getAddress();
                    String b = C6864a.m19519b(address);
                    if (!hashMap.containsKey(b)) {
                        hashMap.put(b, address);
                        blackWhiteListModel.setName(systemContacts.getName());
                        blackWhiteListModel.setAddress(address);
                        blackWhiteListModel.setType(this.f35283B);
                        if (C6741c.m19911b(blackWhiteListModel, this.f35283B, this.f35299y)) {
                            arrayList.add(TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getAddress() : blackWhiteListModel.getName());
                            this.f35290I = true;
                        }
                    }
                }
            }
            if (!this.f35290I) {
                return false;
            }
            Message message = new Message();
            message.arg1 = blackWhiteListModel.getType();
            this.f35292K.sendMessage(message);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427372);
        m3565t();
        this.f35299y = C6727b.m19968a(this.f35626r);
        this.f35282A = new ArrayList();
        this.f35283B = getIntent().getIntExtra("black_white_list_type", 1);
        this.f35285D = getIntent().getIntExtra("block_call_history", 0);
        C9046k kVar = new C9046k(this, null);
        this.f35289H = kVar;
        try {
            kVar.m3194b(this.f35298x);
        } catch (Exception e) {
            e.printStackTrace();
        }
        m3564u();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        List<SystemContacts> list = this.f35298x;
        if (list != null) {
            list.clear();
            this.f35298x = null;
        }
    }

    /* renamed from: p */
    public final void m3572p() {
        if (this.f35298x == null) {
            this.f35298x = this.f35299y.m19947d();
        }
    }

    /* renamed from: q */
    public final int m3570q() {
        int i = 0;
        for (int i2 = 0; i2 < this.f35297w.getCount(); i2++) {
            i = i;
            if (this.f35297w.isItemChecked(i2)) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: r */
    public final int m3568r() {
        this.f35282A.clear();
        int count = this.f35297w.getCount();
        for (int i = 0; i < count; i++) {
            if (this.f35297w.isItemChecked(i)) {
                this.f35282A.add(Integer.valueOf(i));
            }
        }
        return this.f35282A.size();
    }

    /* renamed from: s */
    public final boolean m3566s() {
        return m3570q() == 0;
    }

    /* renamed from: t */
    public final void m3565t() {
        ((TextView) findViewById(2131230784)).setText(2131558447);
        ((FrameLayout) findViewById(2131231075)).setOnClickListener(new View$OnClickListenerC9036a());
    }

    /* renamed from: u */
    public final void m3564u() {
        this.f35294t = (LinearLayout) findViewById(2131230900);
        this.f35295u = (Button) findViewById(2131230858);
        this.f35296v = (Button) findViewById(2131230859);
        this.f35297w = (ListView) findViewById(2131231038);
        this.f35296v.setOnClickListener(this.f35286E);
        m3589c(0);
        this.f35295u.setOnClickListener(this.f35287F);
        this.f35297w.setChoiceMode(2);
        this.f35297w.setOnItemClickListener(this.f35288G);
    }
}
