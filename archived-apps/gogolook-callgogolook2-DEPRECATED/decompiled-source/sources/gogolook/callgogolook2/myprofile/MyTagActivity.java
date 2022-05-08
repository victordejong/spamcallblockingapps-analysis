package gogolook.callgogolook2.myprofile;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.myprofile.MyTagActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.realm.obj.note.NoteRealmObject;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
import gogolook.support.p080v7.widget.extension.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p459j.p460a.p501d0.EnumC12251b;
import p459j.p460a.p501d0.p502c.C12252a;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p541n0.C13182n;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13198r;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14079m1;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14317y1;
import p459j.p460a.p596x.C14376j;
import p459j.p618b.p619a.p620a.p621a.AbstractC14693c;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/MyTagActivity.class */
public class MyTagActivity extends WhoscallActivity {

    /* renamed from: e */
    public Context f11972e;

    /* renamed from: f */
    public LinearLayout f11973f;

    /* renamed from: g */
    public LinearLayout f11974g;

    /* renamed from: h */
    public RecyclerView f11975h;

    /* renamed from: i */
    public MenuItem f11976i;

    /* renamed from: j */
    public EditText f11977j;

    /* renamed from: k */
    public RelativeLayout f11978k;

    /* renamed from: l */
    public Map<String, Map<EnumC12251b, Object>> f11979l = null;

    /* renamed from: m */
    public Subscription f11980m = null;

    /* renamed from: gogolook.callgogolook2.myprofile.MyTagActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/MyTagActivity$a.class */
    public class C4855a implements Action1<Void> {

        /* renamed from: a */
        public final /* synthetic */ Map f11981a;

        /* renamed from: b */
        public final /* synthetic */ String f11982b;

        public C4855a(Map map, String str) {
            this.f11981a = map;
            this.f11982b = str;
        }

        /* renamed from: a */
        public void call(Void r5) {
            MyTagActivity.this.m26892a(this.f11981a, this.f11982b);
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.MyTagActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/MyTagActivity$b.class */
    public class C4856b implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ Map f11984a;

        /* renamed from: b */
        public final /* synthetic */ String f11985b;

        public C4856b(Map map, String str) {
            this.f11984a = map;
            this.f11985b = str;
        }

        /* renamed from: a */
        public void call(Throwable th) {
            C13973d4.m2952a(th);
            MyTagActivity.this.m26892a(this.f11984a, this.f11985b);
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.MyTagActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/MyTagActivity$c.class */
    public class C4857c implements Single.OnSubscribe<Void> {

        /* renamed from: a */
        public final /* synthetic */ String f11987a;

        /* renamed from: b */
        public final /* synthetic */ Map f11988b;

        public C4857c(String str, Map map) {
            this.f11987a = str;
            this.f11988b = map;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Void> singleSubscriber) {
            Map map;
            Map map2;
            if (MyTagActivity.this.f11979l != null) {
                MyTagActivity.this.f11979l.clear();
            }
            MyTagActivity.this.f11979l = new ConcurrentHashMap();
            List<TagRealmObject> a = C13198r.m4426a(C13193p.m4437a("_type", "_status"), C13193p.m4438a(0, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (a != null && !a.isEmpty()) {
                for (TagRealmObject tagRealmObject : a) {
                    Map map3 = (Map) MyTagActivity.this.f11979l.get(tagRealmObject.get_e164());
                    if (map3 == null) {
                        map2 = new HashMap();
                    } else {
                        map2 = map3;
                        if (tagRealmObject.get_updatetime() > ((Long) map3.get(EnumC12251b.UPDATE_TIME)).longValue()) {
                            map3.put(EnumC12251b.UPDATE_TIME, Long.valueOf(tagRealmObject.get_updatetime()));
                            map2 = map3;
                        }
                    }
                    map2.put(EnumC12251b.TAG, tagRealmObject.get_name());
                    map2.put(EnumC12251b.E164, tagRealmObject.get_e164());
                    map2.put(EnumC12251b.NUMBER, C14108o4.m2493a(tagRealmObject.get_e164(), true, false));
                    map2.put(EnumC12251b.NAME, C14217x3.m2146e(MyTagActivity.this, tagRealmObject.get_e164()));
                    map2.put(EnumC12251b.UPDATE_TIME, Long.valueOf(tagRealmObject.get_updatetime()));
                    MyTagActivity.this.f11979l.put(tagRealmObject.get_e164(), map2);
                }
            }
            List<NoteRealmObject> a2 = C13182n.m4456a(C13193p.m4437a("_status"), C13193p.m4438a(2), C13193p.m4439a(C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (a2 != null && !a2.isEmpty()) {
                for (NoteRealmObject noteRealmObject : a2) {
                    String str = noteRealmObject.get_e164();
                    String str2 = noteRealmObject.get_content();
                    long j = noteRealmObject.get_updatetime();
                    Map map4 = (Map) MyTagActivity.this.f11979l.get(str);
                    String e = C14217x3.m2146e(MyTagActivity.this.f11972e, str);
                    String str3 = e;
                    if (e == null) {
                        str3 = "";
                    }
                    if (map4 == null) {
                        map = new HashMap();
                    } else {
                        map = map4;
                        if (j > ((Long) map4.get(EnumC12251b.UPDATE_TIME)).longValue()) {
                            map4.put(EnumC12251b.UPDATE_TIME, Long.valueOf(j));
                            map = map4;
                        }
                    }
                    List list = (List) map.get(EnumC12251b.NOTE);
                    List list2 = list;
                    if (list == null) {
                        list2 = new ArrayList();
                    }
                    list2.add(str2);
                    map.put(EnumC12251b.NAME, str3);
                    map.put(EnumC12251b.UPDATE_TIME, Long.valueOf(j));
                    map.put(EnumC12251b.NOTE, list2);
                    map.put(EnumC12251b.E164, str);
                    map.put(EnumC12251b.NUMBER, C14108o4.m2473m(str));
                    MyTagActivity.this.f11979l.put(str, map);
                }
            }
            for (Map.Entry entry : MyTagActivity.this.f11979l.entrySet()) {
                if (entry != null) {
                    String lowerCase = ((Map) entry.getValue()).toString().toLowerCase(Locale.US);
                    if (lowerCase.contains(this.f11987a) || lowerCase.replace(" ", "").contains(this.f11987a)) {
                        this.f11988b.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.MyTagActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/MyTagActivity$d.class */
    public class C4858d implements AbstractC14693c.AbstractC14696c {
        public C4858d() {
        }

        @Override // p459j.p618b.p619a.p620a.p621a.AbstractC14693c.AbstractC14696c
        /* renamed from: a */
        public void mo835a(View view, int i) {
            Map<EnumC12251b, Object> item = ((C12252a) MyTagActivity.this.f11975h.getAdapter()).getItem(i);
            MyTagActivity.this.startActivity(NumberDetailActivity.m26858a(MyTagActivity.this.f11972e, item.get(EnumC12251b.NUMBER).toString(), item.get(EnumC12251b.E164).toString(), null, "FROM_Report"));
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.MyTagActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/MyTagActivity$e.class */
    public class C4859e implements TextWatcher {
        public C4859e() {
        }

        @Override // android.text.TextWatcher
        @TargetApi(11)
        public void afterTextChanged(Editable editable) {
            MyTagActivity myTagActivity = MyTagActivity.this;
            myTagActivity.m26889c(myTagActivity.f11977j.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.MyTagActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/MyTagActivity$f.class */
    public class RunnableC4860f implements Runnable {
        public RunnableC4860f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyTagActivity.this.f11977j.requestFocus();
            ((InputMethodManager) MyTagActivity.this.getSystemService("input_method")).showSoftInput(MyTagActivity.this.f11977j, 1);
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.MyTagActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/MyTagActivity$g.class */
    public class C4861g implements Action1<Object> {
        public C4861g() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C14317y1) {
                MyTagActivity.this.m26889c("");
            } else if (obj instanceof C14079m1) {
                MyTagActivity.this.m26889c("");
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.MyTagActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/MyTagActivity$h.class */
    public class C4862h implements Comparator<Map<EnumC12251b, Object>> {
        public C4862h(MyTagActivity myTagActivity) {
        }

        /* renamed from: a */
        public int compare(@NonNull Map<EnumC12251b, Object> map, @NonNull Map<EnumC12251b, Object> map2) {
            Long l = (Long) map.get(EnumC12251b.UPDATE_TIME);
            Long l2 = (Long) map2.get(EnumC12251b.UPDATE_TIME);
            long j = 0;
            long longValue = l2 != null ? l2.longValue() : 0L;
            if (l != null) {
                j = l.longValue();
            }
            return Long.compare(longValue, j);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m26897a(DialogInterface dialogInterface, int i) {
        finish();
    }

    /* renamed from: a */
    public final void m26892a(Map<String, Map<EnumC12251b, Object>> map, String str) {
        ArrayList<Map<EnumC12251b, Object>> arrayList = new ArrayList<>();
        if (map != null) {
            for (Map<EnumC12251b, Object> map2 : map.values()) {
                if (map2 != null) {
                    arrayList.add(map2);
                }
            }
        }
        Collections.sort(arrayList, new C4862h(this));
        C12252a aVar = (C12252a) this.f11975h.getAdapter();
        if (aVar == null) {
            aVar = new C12252a(this.f11972e);
            aVar.m6539a(arrayList, str);
            aVar.m841a(new C4858d());
            this.f11975h.setAdapter(aVar);
        } else {
            aVar.m6539a(arrayList, str);
            aVar.notifyDataSetChanged();
        }
        int i = 0;
        if (aVar.getItemCount() > 0) {
            this.f11978k.setVisibility(8);
            this.f11974g.setVisibility(0);
            this.f11973f.setVisibility(8);
        } else {
            this.f11978k.setVisibility(0);
            this.f11974g.setVisibility(8);
            this.f11973f.setVisibility(8);
        }
        if (aVar != null) {
            i = aVar.getItemCount();
        }
        C12484b i2 = m28683i();
        if (i2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(WhoscallActivity.m28686b(R$string.myprofile_item_mytag_title));
            sb.append(i > 0 ? " (" + i + ")" : "");
            i2.m6038b(sb.toString());
        }
        m26886p();
    }

    /* renamed from: c */
    public final void m26889c(String str) {
        String lowerCase = str.toLowerCase(Locale.US);
        HashMap hashMap = new HashMap();
        if (this.f11979l == null) {
            this.f11974g.setVisibility(8);
            this.f11973f.setVisibility(0);
        }
        Single.create(new C4857c(lowerCase, hashMap)).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4855a(hashMap, lowerCase), new C4856b(hashMap, lowerCase));
    }

    /* renamed from: o */
    public final void m26887o() {
        this.f11977j = (EditText) m28689a(this.f11976i.getItemId()).findViewById(R$id.et_search);
        this.f11977j.setText("");
        this.f11977j.setHint(this.f11972e.getString(R$string.mytag_search_hint));
        this.f11977j.setInputType(1);
        this.f11977j.addTextChangedListener(new C4859e());
        this.f11977j.post(new RunnableC4860f());
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C12484b i = m28683i();
        i.m6043a(true);
        i.m6032c(false);
        i.m6028d(true);
        i.m6038b(WhoscallActivity.m28686b(R$string.myprofile_item_mytag_title));
        this.f11972e = this;
        setContentView(R$layout.mytag_activity);
        this.f11973f = (LinearLayout) findViewById(R$id.ll_searching);
        this.f11974g = (LinearLayout) findViewById(R$id.ll_listview);
        this.f11975h = (RecyclerView) findViewById(R$id.rv_listview);
        this.f11975h.setLayoutManager(new LinearLayoutManager(this));
        this.f11978k = (RelativeLayout) findViewById(R$id.rl_empty);
        if (C14137r4.m2369i()) {
            m26889c("");
        } else {
            C14137r4.m2384a(this, C14376j.EnumC14379c.MyTag, null, null, false, true, new DialogInterface.OnClickListener() { // from class: j.a.d0.a
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    MyTagActivity.this.m26897a(dialogInterface, i2);
                }
            });
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R$menu.option_my_notetag, menu);
        this.f11976i = menu.findItem(R$id.menu_search);
        m28688a(this.f11976i.getItemId(), R$layout.collapsible_edittext);
        m26886p();
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            C14217x3.m2167b((Activity) this);
            return true;
        } else if (itemId != 2131362872) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            m26887o();
            m28683i().m6034c(menuItem);
            return true;
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        Subscription subscription = this.f11980m;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f11980m.unsubscribe();
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m26886p();
        Subscription subscription = this.f11980m;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f11980m.unsubscribe();
            this.f11980m = null;
        }
        this.f11980m = C14037j3.m2731a().mo2703a((Action1) new C4861g());
    }

    /* renamed from: p */
    public final void m26886p() {
        if (this.f11978k.isShown()) {
            MenuItem menuItem = this.f11976i;
            if (menuItem != null) {
                menuItem.setVisible(false);
                return;
            }
            return;
        }
        MenuItem menuItem2 = this.f11976i;
        if (menuItem2 != null) {
            menuItem2.setVisible(true);
        }
    }
}
