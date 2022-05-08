package gogolook.callgogolook2;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.criteo.publisher.model.C2041o;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.receiver.DeepLinkActivity;
import gogolook.callgogolook2.share.ShareActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.C12244d;
import p459j.p460a.EnumC12254e;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p538m0.C13020c;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p569u0.DialogC13661d;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14087n;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14188u2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14287l;
import p459j.p460a.p582w0.p590x4.C14312y;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.schedulers.Schedulers;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity.class */
public class NewsCenterActivity extends WhoscallActivity {

    /* renamed from: e */
    public Context f10462e;

    /* renamed from: f */
    public C12484b f10463f;

    /* renamed from: g */
    public C12244d f10464g;

    /* renamed from: h */
    public ArrayList<Map<EnumC12254e, String>> f10465h;

    /* renamed from: i */
    public Map<EnumC12254e, String> f10466i;

    /* renamed from: j */
    public ContentValues f10467j;

    /* renamed from: k */
    public Cursor f10468k;

    /* renamed from: l */
    public JSONObject f10469l;

    /* renamed from: m */
    public C4350k f10470m;

    /* renamed from: n */
    public MenuItem f10471n;

    /* renamed from: o */
    public MenuItem f10472o;

    /* renamed from: p */
    public ProgressBar f10473p;

    /* renamed from: q */
    public LinearLayout f10474q;

    /* renamed from: r */
    public int f10475r;

    /* renamed from: s */
    public int f10476s;

    /* renamed from: t */
    public int f10477t;

    /* renamed from: u */
    public boolean f10478u;

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$a.class */
    public class C4338a extends SingleSubscriber<EnumC4349j> {

        /* renamed from: a */
        public final /* synthetic */ boolean f10479a;

        /* renamed from: gogolook.callgogolook2.NewsCenterActivity$a$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$a$a.class */
        public class C4339a implements C12244d.AbstractC12248d {
            public C4339a() {
            }

            @Override // p459j.p460a.C12244d.AbstractC12248d
            /* renamed from: a */
            public void mo6540a(int i) {
                NewsCenterActivity.this.m28995d(i);
            }
        }

        public C4338a(boolean z) {
            this.f10479a = z;
        }

        /* renamed from: a */
        public void onSuccess(EnumC4349j jVar) {
            if (C14217x3.m2196a((Activity) NewsCenterActivity.this)) {
                NewsCenterActivity.this.getWindow().clearFlags(16);
                int i = C4348i.f10488a[jVar.ordinal()];
                boolean z = true;
                if (i != 1) {
                    if (i == 2 && NewsCenterActivity.this.f10464g != null) {
                        NewsCenterActivity.this.f10465h.clear();
                        NewsCenterActivity.this.f10464g.m6543a();
                        NewsCenterActivity.this.f10464g.notifyDataSetChanged();
                    }
                } else if (NewsCenterActivity.this.f10464g == null) {
                    NewsCenterActivity newsCenterActivity = NewsCenterActivity.this;
                    newsCenterActivity.f10464g = new C12244d(newsCenterActivity.f10462e, new C4339a());
                    NewsCenterActivity.this.f10464g.m6541a(NewsCenterActivity.this.f10465h);
                    NewsCenterActivity newsCenterActivity2 = NewsCenterActivity.this;
                    newsCenterActivity2.m29011a(newsCenterActivity2.f10464g);
                } else {
                    NewsCenterActivity.this.f10464g.m6541a(NewsCenterActivity.this.f10465h);
                    NewsCenterActivity.this.f10464g.notifyDataSetChanged();
                }
                if (!(NewsCenterActivity.this.f10472o == null || NewsCenterActivity.this.f10471n == null)) {
                    NewsCenterActivity.this.f10472o.setVisible(!NewsCenterActivity.this.f10465h.isEmpty());
                    MenuItem menuItem = NewsCenterActivity.this.f10471n;
                    if (NewsCenterActivity.this.f10465h.isEmpty() || NewsCenterActivity.this.f10477t <= 0) {
                        z = false;
                    }
                    menuItem.setVisible(z);
                    NewsCenterActivity.this.invalidateOptionsMenu();
                }
                NewsCenterActivity.this.f10474q.setVisibility(NewsCenterActivity.this.f10465h.size() > 0 ? 8 : 0);
                NewsCenterActivity.this.f10473p.setVisibility(8);
                NewsCenterActivity.this.m28983o();
                if (this.f10479a && NewsCenterActivity.this.f10478u) {
                    C14312y.m1616a(5, 0);
                }
            }
        }

        @Override // p660rx.SingleSubscriber
        public void onError(Throwable th) {
        }
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$b.class */
    public class CallableC4340b implements Callable<EnumC4349j> {
        public CallableC4340b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public EnumC4349j call() throws Exception {
            EnumC4349j jVar;
            if (!C14217x3.m2196a((Activity) NewsCenterActivity.this)) {
                return EnumC4349j.INTERRUPT;
            }
            NewsCenterActivity newsCenterActivity = NewsCenterActivity.this;
            newsCenterActivity.f10468k = newsCenterActivity.f10462e.getContentResolver().query(C13020c.f29447a, new String[]{"_json", "_read", "_repeat", "_createtime", "_pushid"}, null, null, "_createtime desc");
            NewsCenterActivity.this.f10478u = false;
            if (NewsCenterActivity.this.f10468k != null) {
                if (NewsCenterActivity.this.f10468k.moveToFirst()) {
                    NewsCenterActivity.this.f10465h.clear();
                    do {
                        try {
                            NewsCenterActivity.this.f10469l = new JSONObject(NewsCenterActivity.this.f10468k.getString(NewsCenterActivity.this.f10468k.getColumnIndex("_json")));
                        } catch (JSONException e) {
                            C14080m2.m2612a((Throwable) e);
                        }
                        try {
                            NewsCenterActivity.this.f10466i = new HashMap();
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.READ, String.valueOf(NewsCenterActivity.this.f10468k.getInt(NewsCenterActivity.this.f10468k.getColumnIndex("_read"))));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.TITLE, NewsCenterActivity.this.f10469l.getString("t"));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.CONTENT, NewsCenterActivity.this.f10469l.getString("c"));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.PUSHID, NewsCenterActivity.this.f10468k.getString(NewsCenterActivity.this.f10468k.getColumnIndex("_pushid")));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.IMAGE, NewsCenterActivity.this.f10469l.getString(TtmlNode.TAG_IMAGE));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.BUTTON_TEXT, NewsCenterActivity.this.f10469l.getString("button_text"));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.BUTTON_LINK, NewsCenterActivity.this.f10469l.getString("button_link"));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.GOTO, NewsCenterActivity.this.f10469l.getString("g"));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.CREATETIME, NewsCenterActivity.this.f10468k.getString(NewsCenterActivity.this.f10468k.getColumnIndex("_createtime")));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.REPEAT, String.valueOf(NewsCenterActivity.this.f10468k.getInt(NewsCenterActivity.this.f10468k.getColumnIndex("_repeat"))));
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.OUTSIDEWEBPAGE, NewsCenterActivity.this.f10469l.has(C2041o.f2249c) ? String.valueOf(NewsCenterActivity.this.f10469l.getInt(C2041o.f2249c)) : "0");
                            NewsCenterActivity.this.f10466i.put(EnumC12254e.FLEXIBLE_NOTI_MSG_NAME, NewsCenterActivity.this.f10469l.has("f_n") ? NewsCenterActivity.this.f10469l.getString("f_n") : "");
                            if (NewsCenterActivity.this.f10469l.has("n_t")) {
                                String string = NewsCenterActivity.this.f10469l.getString("n_t");
                                if (string.equalsIgnoreCase("1")) {
                                    NewsCenterActivity.this.f10478u = true;
                                }
                                NewsCenterActivity.this.f10466i.put(EnumC12254e.NEWS_TYPE, string);
                            } else {
                                NewsCenterActivity.this.f10466i.put(EnumC12254e.NEWS_TYPE, "0");
                            }
                            NewsCenterActivity.this.f10465h.add(NewsCenterActivity.this.f10466i);
                            if (NewsCenterActivity.this.f10468k.getInt(NewsCenterActivity.this.f10468k.getColumnIndex("_read")) != 1) {
                                NewsCenterActivity.m28978q(NewsCenterActivity.this);
                            }
                        } catch (JSONException e2) {
                            C14080m2.m2612a((Throwable) e2);
                        }
                    } while (NewsCenterActivity.this.f10468k.moveToNext());
                    jVar = EnumC4349j.HAS_DATA;
                } else {
                    jVar = EnumC4349j.NO_DATA;
                }
                NewsCenterActivity.this.f10468k.close();
            } else {
                jVar = EnumC4349j.NO_DATA;
            }
            return jVar;
        }
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$c.class */
    public class C4341c implements AdapterView.OnItemClickListener {
        public C4341c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            NewsCenterActivity.this.m28995d(i);
        }
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$d.class */
    public class C4342d implements AdapterView.OnItemLongClickListener {

        /* renamed from: gogolook.callgogolook2.NewsCenterActivity$d$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$d$a.class */
        public class DialogInterface$OnClickListenerC4343a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC4343a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                NewsCenterActivity newsCenterActivity = NewsCenterActivity.this;
                newsCenterActivity.m28998c(newsCenterActivity.f10476s);
            }
        }

        public C4342d() {
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            NewsCenterActivity.this.f10476s = i;
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(NewsCenterActivity.this.f10462e);
            fVar.m979b(WhoscallActivity.m28686b(R$string.notification_delete_title));
            fVar.m984a(WhoscallActivity.m28686b(R$string.confirm), new DialogInterface$OnClickListenerC4343a());
            fVar.m978b(WhoscallActivity.m28686b(R$string.cancel), (DialogInterface.OnClickListener) null);
            fVar.m977c(3);
            fVar.m983a(false);
            fVar.m982b();
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$e.class */
    public class DialogInterface$OnClickListenerC4344e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4344e(NewsCenterActivity newsCenterActivity) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$f.class */
    public class DialogInterface$OnClickListenerC4345f implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4345f() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            NewsCenterActivity.this.m28974t();
        }
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$g.class */
    public class DialogInterface$OnClickListenerC4346g implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4346g(NewsCenterActivity newsCenterActivity) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$h.class */
    public class DialogInterface$OnClickListenerC4347h implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4347h() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            NewsCenterActivity.this.m28981p();
        }
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$i.class */
    public static /* synthetic */ class C4348i {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10488a = new int[EnumC4349j.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f10488a[EnumC4349j.HAS_DATA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10488a[EnumC4349j.NO_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$j */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$j.class */
    public enum EnumC4349j {
        HAS_DATA,
        NO_DATA,
        INTERRUPT
    }

    /* renamed from: gogolook.callgogolook2.NewsCenterActivity$k */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/NewsCenterActivity$k.class */
    public class C4350k extends BroadcastReceiver {
        public C4350k() {
        }

        public /* synthetic */ C4350k(NewsCenterActivity newsCenterActivity, C4338a aVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("newscenter.listview.refresh")) {
                try {
                    NewsCenterActivity.this.m28975s();
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29012a(Context context, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2)) {
            Intent intent = new Intent(context, DeepLinkActivity.class);
            intent.setData(Uri.parse(str2));
            intent.putExtra("title", str);
            intent.putExtra("outside_page", (str3 == null || !str3.equals("1")) ? 0 : 1);
            intent.putExtra("source", 1);
            context.startActivity(intent);
        }
    }

    /* renamed from: q */
    public static /* synthetic */ int m28978q(NewsCenterActivity newsCenterActivity) {
        int i = newsCenterActivity.f10477t;
        newsCenterActivity.f10477t = i + 1;
        return i;
    }

    /* renamed from: a */
    public final void m29011a(BaseAdapter baseAdapter) {
        m28979q().setAdapter((ListAdapter) baseAdapter);
    }

    /* renamed from: a */
    public final void m29002a(String str, int i) {
        if (!C14217x3.m2160b(str) && str.equalsIgnoreCase("1")) {
            C14312y.m1616a(5, i);
        }
    }

    /* renamed from: a */
    public final void m29001a(boolean z) {
        if (C14217x3.m2196a((Activity) this)) {
            getWindow().setFlags(16, 16);
            this.f10473p.setVisibility(0);
            this.f10477t = 0;
            Single.fromCallable(new CallableC4340b()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4338a(z));
        }
    }

    /* renamed from: c */
    public final void m28998c(int i) {
        ArrayList<Map<EnumC12254e, String>> arrayList;
        if (this.f10462e != null && (arrayList = this.f10465h) != null && i < arrayList.size()) {
            m29002a(this.f10465h.get(i).get(EnumC12254e.NEWS_TYPE), 4);
            this.f10462e.getContentResolver().delete(C13020c.f29447a, "_createtime =?", new String[]{this.f10465h.get(i).get(EnumC12254e.CREATETIME)});
            m28975s();
        }
    }

    /* renamed from: d */
    public final void m28995d(int i) {
        try {
            this.f10475r = i;
            this.f10467j = new ContentValues();
            this.f10467j.put("_read", (Integer) 1);
            this.f10467j.put("_updatetime", String.valueOf(System.currentTimeMillis()));
            this.f10462e.getContentResolver().update(C13020c.f29447a, this.f10467j, "_createtime =?", new String[]{this.f10465h.get(this.f10475r).get(EnumC12254e.CREATETIME)});
            m28975s();
            this.f10475r = i;
            m29012a(this.f10462e, this.f10465h.get(i).get(EnumC12254e.TITLE), this.f10465h.get(i).get(EnumC12254e.GOTO), this.f10465h.get(i).get(EnumC12254e.OUTSIDEWEBPAGE));
            if (!C14217x3.m2160b(this.f10465h.get(i).get(EnumC12254e.FLEXIBLE_NOTI_MSG_NAME))) {
                C14287l.m1917a(6, this.f10465h.get(i).get(EnumC12254e.FLEXIBLE_NOTI_MSG_NAME));
            }
            m29002a(this.f10465h.get(i).get(EnumC12254e.NEWS_TYPE), 3);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: o */
    public final void m28983o() {
        List<StatusBarNotification> a = C14188u2.m2282a(this);
        if (!C14217x3.m2173a(a)) {
            for (StatusBarNotification statusBarNotification : a) {
                if (statusBarNotification.getId() != 1995) {
                    C14188u2.m2281a(this, statusBarNotification.getId());
                }
            }
            if (!C14217x3.m2173a(this.f10465h)) {
                ArrayList<String> arrayList = new ArrayList();
                Iterator<Map<EnumC12254e, String>> it = this.f10465h.iterator();
                while (it.hasNext()) {
                    Map<EnumC12254e, String> next = it.next();
                    if (next.containsKey(EnumC12254e.FLEXIBLE_NOTI_MSG_NAME) && !C14217x3.m2160b(next.get(EnumC12254e.FLEXIBLE_NOTI_MSG_NAME))) {
                        arrayList.add(next.get(EnumC12254e.FLEXIBLE_NOTI_MSG_NAME));
                    }
                }
                if (!C14217x3.m2173a(arrayList)) {
                    for (String str : arrayList) {
                        C14188u2.m2279a(this, str);
                    }
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            C14687h.m861a(this, WhoscallActivity.m28686b(R$string.questionnaire_submit_success), 1).m858c();
            this.f10467j = new ContentValues();
            this.f10467j.put("_repeat", (Integer) 1);
            this.f10467j.put("_updatetime", String.valueOf(System.currentTimeMillis()));
            this.f10462e.getContentResolver().update(C13020c.f29447a, this.f10467j, "_createtime =?", new String[]{this.f10465h.get(this.f10475r).get(EnumC12254e.CREATETIME)});
            m28975s();
        } else if (i2 == -2) {
            C14687h.m861a(this, WhoscallActivity.m28686b(R$string.questionnaire_submit_failed), 1).m858c();
        } else if (i2 == 0) {
            C14687h.m861a(this, WhoscallActivity.m28686b(R$string.questionnaire_exit), 1).m858c();
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m28977r();
        m28973u();
        m29001a(true);
        if (getIntent() == null) {
            return;
        }
        if (getIntent().getParcelableExtra("referral_uri") != null) {
            startActivity(ShareActivity.m26035a(this, (Uri) getIntent().getParcelableExtra("referral_uri")));
        } else if (getIntent().getParcelableExtra("in_app_dialog_uri") != null) {
            m28972v();
        }
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        getMenuInflater().inflate(R$menu.context_newscenter, contextMenu);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        ArrayList<Map<EnumC12254e, String>> arrayList = this.f10465h;
        boolean z = arrayList != null && !arrayList.isEmpty();
        this.f10471n = menu.add(0, 10001, 1, R$string.newscenter_action_read_all).setIcon(R$drawable.ic_read_all).setVisible(z).setEnabled(true);
        this.f10472o = menu.add(0, 10002, 2, R$string.newscenter_action_delete_all).setIcon(R$drawable.ic_close_all).setVisible(z).setEnabled(true);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        Cursor cursor = this.f10468k;
        if (cursor != null) {
            cursor.close();
        }
        unregisterReceiver(this.f10470m);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        setIntent(intent);
        m28972v();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 10001) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f10462e);
            fVar.m979b(WhoscallActivity.m28686b(R$string.newscenter_action_read_all));
            fVar.m984a(WhoscallActivity.m28686b(R$string.confirm), new DialogInterface$OnClickListenerC4345f());
            fVar.m978b(WhoscallActivity.m28686b(R$string.cancel), new DialogInterface$OnClickListenerC4344e(this));
            fVar.m977c(3);
            fVar.m983a(false);
            fVar.m982b();
        } else if (itemId == 10002) {
            DialogC14618f.C14624f fVar2 = new DialogC14618f.C14624f(this.f10462e);
            fVar2.m979b(WhoscallActivity.m28686b(R$string.newscenter_action_delete_all));
            fVar2.m984a(WhoscallActivity.m28686b(R$string.confirm), new DialogInterface$OnClickListenerC4347h());
            fVar2.m978b(WhoscallActivity.m28686b(R$string.cancel), new DialogInterface$OnClickListenerC4346g(this));
            fVar2.m977c(3);
            fVar2.m983a(false);
            fVar2.m982b();
        } else if (itemId == 16908332) {
            if (getIntent().getExtras() == null || !"notification".equals(getIntent().getExtras().getString("from"))) {
                onBackPressed();
            } else {
                Intent intent = new Intent(this, MainActivity.class);
                intent.setFlags(335544320);
                startActivity(intent);
                finish();
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* renamed from: p */
    public final void m28981p() {
        Context context = this.f10462e;
        if (context != null && this.f10465h != null) {
            context.getContentResolver().delete(C13020c.f29447a, null, null);
            if (this.f10478u) {
                C14312y.m1616a(5, 4);
            }
            m28975s();
        }
    }

    /* renamed from: q */
    public final ListView m28979q() {
        return (ListView) findViewById(16908298);
    }

    /* renamed from: r */
    public final void m28977r() {
        setContentView(R$layout.newscenter_activity);
        this.f10462e = this;
        this.f10465h = new ArrayList<>();
        this.f10463f = m28683i();
        this.f10463f.m6038b(WhoscallActivity.m28686b(R$string.newscenter));
        this.f10463f.m6043a(true);
        this.f10463f.m6032c(false);
        this.f10463f.m6028d(true);
        this.f10470m = new C4350k(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(100);
        intentFilter.addAction("newscenter.listview.refresh");
        C14087n.m2601a(this, this.f10470m, intentFilter);
        TextView textView = (TextView) findViewById(R$id.tv_empty_list);
        textView.setText(C14123p4.m2423c(textView.getText().toString()));
        this.f10473p = (ProgressBar) findViewById(R$id.pb_loading);
        this.f10474q = (LinearLayout) findViewById(16908292);
    }

    /* renamed from: s */
    public final void m28975s() {
        m29001a(false);
    }

    /* renamed from: t */
    public final void m28974t() {
        this.f10467j = new ContentValues();
        this.f10467j.put("_read", (Integer) 1);
        this.f10467j.put("_updatetime", String.valueOf(System.currentTimeMillis()));
        this.f10462e.getContentResolver().update(C13020c.f29447a, this.f10467j, null, null);
        m28975s();
    }

    /* renamed from: u */
    public final void m28973u() {
        m28979q().setEmptyView(findViewById(16908292));
        m28979q().setOnItemClickListener(new C4341c());
        m28979q().setOnItemLongClickListener(new C4342d());
    }

    /* renamed from: v */
    public final void m28972v() {
        if (getIntent() != null && getIntent().getParcelableExtra("in_app_dialog_uri") != null && C14217x3.m2196a((Activity) this)) {
            Uri uri = (Uri) getIntent().getParcelableExtra("in_app_dialog_uri");
            C13673f fVar = new C13673f();
            fVar.f30648b = uri.getQueryParameter("action");
            fVar.f30649c = uri.getQueryParameter("message_name");
            fVar.f30652f = uri.getQueryParameter("image_url");
            fVar.f30653g = uri.getQueryParameter("image_link");
            fVar.f30650d = uri.getQueryParameter("title");
            fVar.f30651e = uri.getQueryParameter("content");
            fVar.f30656j = new C13673f.C13676c();
            fVar.f30656j.f30676d = uri.getQueryParameter("button_positive_wording");
            fVar.f30656j.f30674b = uri.getQueryParameter("button_positive_link");
            fVar.f30656j.f30675c = TextUtils.isEmpty(uri.getQueryParameter("button_positive_close")) ? true : TextUtils.equals("true", uri.getQueryParameter("button_positive_close").toLowerCase());
            fVar.f30657k = new C13673f.C13675b();
            fVar.f30657k.f30676d = uri.getQueryParameter("button_negative_wording");
            fVar.f30657k.f30675c = true;
            DialogC13661d dVar = new DialogC13661d(this, fVar);
            if (!dVar.m3733b()) {
                dVar.show();
            }
        }
    }
}
