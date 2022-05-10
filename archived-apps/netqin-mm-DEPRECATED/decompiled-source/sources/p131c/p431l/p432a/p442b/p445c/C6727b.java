package p131c.p431l.p432a.p442b.p445c;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import com.mopub.mobileads.VastIconXmlManager;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
import com.netqin.p525cm.p528db.model.BlockedCallsModel;
import com.netqin.p525cm.p528db.model.SystemContacts;
import com.netqin.p525cm.utils.NQSPFManager;
import com.squareup.picasso.Dispatcher;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p131c.p431l.p432a.p442b.p443a.AbstractC6724a;
import p131c.p431l.p432a.p442b.p447e.C6762a;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6776a;
import p131c.p431l.p432a.p456f.p457c.C6804b;
import p131c.p431l.p432a.p456f.p457c.C6805c;
import p131c.p431l.p432a.p461i.p462e.C6825a;
import p131c.p431l.p432a.p461i.p462e.C6827b;
import p131c.p431l.p432a.p461i.p462e.C6828c;
import p131c.p431l.p432a.p468n.C6843d;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6851j;
import p131c.p431l.p432a.p468n.C6853l;
import p131c.p431l.p432a.p468n.p469s.p473d.p474b.C6866a;
import p131c.p431l.p432a.p468n.p469s.p473d.p474b.C6867b;
import p131c.p431l.p432a.p475o.p476a.C6868a;
import p131c.p431l.p432a.p475o.p476a.C6869b;
import p131c.p431l.p478c.C6871a;
/* renamed from: c.l.a.b.c.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b.class */
public class C6727b {

    /* renamed from: i */
    public static C6727b f20748i;

    /* renamed from: a */
    public C6851j<NQSPFManager.EnumAntiHarass> f20749a;

    /* renamed from: b */
    public Context f20750b;

    /* renamed from: c */
    public C6804b f20751c;

    /* renamed from: d */
    public C6828c f20752d;

    /* renamed from: e */
    public C6805c f20753e;

    /* renamed from: f */
    public C6825a f20754f;

    /* renamed from: g */
    public C6866a f20755g;

    /* renamed from: h */
    public C6867b f20756h;

    /* renamed from: c.l.a.b.c.b$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$a.class */
    public class DialogInterface$OnClickListenerC6728a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f20757a;

        /* renamed from: c.l.a.b.c.b$a$a */
        /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$a$a.class */
        public class DialogInterface$OnClickListenerC6729a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC6729a(DialogInterface$OnClickListenerC6728a aVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        public DialogInterface$OnClickListenerC6728a(C6727b bVar, Activity activity) {
            this.f20757a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            try {
                if (this.f20757a.getPackageManager().getLaunchIntentForPackage("com.netqin.ps") != null) {
                    C6843d.m19591c(this.f20757a, "com.netqin.ps");
                } else {
                    C6843d.m19605a(this.f20757a, 2131558518, 2131558475, 2131558496, 2131558513, null, new DialogInterface$OnClickListenerC6729a(this));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: c.l.a.b.c.b$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$b.class */
    public class DialogInterface$OnClickListenerC6730b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC6730b(C6727b bVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: c.l.a.b.c.b$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$c.class */
    public class DialogInterface$OnClickListenerC6731c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f20758a;

        /* renamed from: c.l.a.b.c.b$c$a */
        /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$c$a.class */
        public class DialogInterface$OnClickListenerC6732a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC6732a(DialogInterface$OnClickListenerC6731c cVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        public DialogInterface$OnClickListenerC6731c(C6727b bVar, Activity activity) {
            this.f20758a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C6871a.m19507a("Ad Clicks", "Customized Ad Click", "Vault");
            if (C6843d.m19592c(this.f20758a)) {
                C6850i.m19579a("AntiHarassHandler", "已经安装Google Play");
                C6843d.m19600a(this.f20758a, "com.netqin.ps", "https://play.google.com/store/apps/details?id=com.netqin.ps&referrer=utm_source%3DCB%26utm_medium%3DButton", "&referrer=utm_source%3DCB%26utm_medium%3DButton");
            } else {
                C6850i.m19579a("AntiHarassHandler", "没有安装Google Play");
                C6843d.m19605a(this.f20758a, 2131558518, 2131558597, -1, 2131558513, null, new DialogInterface$OnClickListenerC6732a(this));
            }
            dialogInterface.dismiss();
        }
    }

    /* renamed from: c.l.a.b.c.b$d */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$d.class */
    public class DialogInterface$OnClickListenerC6733d implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC6733d(C6727b bVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: c.l.a.b.c.b$e */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$e.class */
    public class DialogInterface$OnClickListenerC6734e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f20759a;

        /* renamed from: c.l.a.b.c.b$e$a */
        /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$e$a.class */
        public class DialogInterface$OnClickListenerC6735a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC6735a(DialogInterface$OnClickListenerC6734e eVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        public DialogInterface$OnClickListenerC6734e(C6727b bVar, Activity activity) {
            this.f20759a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C6871a.m19507a("Ad Clicks", "Customized Ad Click", "Vault");
            if (C6843d.m19592c(this.f20759a)) {
                C6850i.m19579a("AntiHarassHandler", "已经安装Google Play");
                C6843d.m19600a(this.f20759a, "com.netqin.ps", "https://play.google.com/store/apps/details?id=com.netqin.ps&referrer=utm_source%3DCB%26utm_medium%3DButton", "&referrer=utm_source%3DCB%26utm_medium%3DButton");
            } else {
                C6850i.m19579a("AntiHarassHandler", "没有安装Google Play");
                C6843d.m19605a(this.f20759a, 2131558518, 2131558597, -1, 2131558513, null, new DialogInterface$OnClickListenerC6735a(this));
            }
            dialogInterface.dismiss();
        }
    }

    /* renamed from: c.l.a.b.c.b$f */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$f.class */
    public class DialogInterface$OnClickListenerC6736f implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC6736f(C6727b bVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: c.l.a.b.c.b$g */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$g.class */
    public class DialogInterface$OnClickListenerC6737g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f20760a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC6724a f20761b;

        public DialogInterface$OnClickListenerC6737g(Activity activity, AbstractC6724a aVar) {
            this.f20760a = activity;
            this.f20761b = aVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C6727b.this.m19970a(this.f20760a, this.f20761b);
            C6871a.m19507a("Ad Clicks", "Customized Ad Click", "Vault");
            dialogInterface.dismiss();
        }
    }

    /* renamed from: c.l.a.b.c.b$h */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$h.class */
    public class DialogInterface$OnClickListenerC6738h implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f20763a;

        /* renamed from: b */
        public final /* synthetic */ Activity f20764b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC6724a f20765c;

        /* renamed from: d */
        public final /* synthetic */ RelativeLayout f20766d;

        /* renamed from: e */
        public final /* synthetic */ View f20767e;

        public DialogInterface$OnClickListenerC6738h(EditText editText, Activity activity, AbstractC6724a aVar, RelativeLayout relativeLayout, View view) {
            this.f20763a = editText;
            this.f20764b = activity;
            this.f20765c = aVar;
            this.f20766d = relativeLayout;
            this.f20767e = view;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (C6727b.this.m19934g(this.f20763a.getText().toString().trim())) {
                try {
                    new C6762a(this.f20764b, this.f20765c).m3194b((Object[]) new Void[0]);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                dialogInterface.dismiss();
                return;
            }
            this.f20766d.setVisibility(0);
            this.f20767e.setBackgroundColor(Color.parseColor("#f44336"));
        }
    }

    /* renamed from: c.l.a.b.c.b$i */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$i.class */
    public class DialogInterface$OnClickListenerC6739i implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC6739i(C6727b bVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: c.l.a.b.c.b$j */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/b$j.class */
    public class DialogInterface$OnClickListenerC6740j implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC6740j(C6727b bVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    public C6727b(Context context) {
        this.f20750b = context;
        this.f20751c = C6804b.m19749a(context);
        this.f20752d = C6828c.m19649b(this.f20750b);
        this.f20753e = C6805c.m19736a(this.f20750b);
        this.f20754f = C6825a.m19661b(this.f20750b);
        this.f20755g = new C6866a(this.f20750b);
        this.f20756h = new C6867b(this.f20750b);
        this.f20749a = NQSPFManager.m3184a(this.f20750b).f35744c;
    }

    /* renamed from: a */
    public static C6727b m19968a(Context context) {
        C6727b bVar;
        synchronized (C6727b.class) {
            try {
                if (f20748i == null) {
                    f20748i = new C6727b(context);
                }
                bVar = f20748i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    /* renamed from: y */
    public static void m19915y() {
        f20748i = null;
    }

    /* renamed from: a */
    public int m19976a() {
        try {
            return this.f20753e.m19732d();
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return -1;
        }
    }

    /* renamed from: a */
    public int m19974a(int i, long j) {
        try {
            return this.f20753e.m19738a(i, j);
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return -1;
        }
    }

    /* renamed from: a */
    public int m19973a(long j) {
        try {
            return this.f20753e.m19737a(j);
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return -1;
        }
    }

    /* renamed from: a */
    public int m19963a(String str) {
        int i;
        try {
            i = this.f20751c.m19747a(str);
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            i = -1;
        }
        return i;
    }

    /* renamed from: a */
    public long m19972a(long j, String str, String str2, int i) {
        try {
            return this.f20751c.m19750a(j, str, i, str2);
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return -1L;
        }
    }

    /* renamed from: a */
    public long m19964a(BlockedCallsModel blockedCallsModel) {
        try {
            return this.f20753e.m19734a(blockedCallsModel);
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return -1L;
        }
    }

    /* renamed from: a */
    public List<BlackWhiteListModel> m19975a(int i) {
        try {
            return this.f20751c.m19751a(i);
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return new ArrayList();
        }
    }

    /* renamed from: a */
    public List<BlackWhiteListModel> m19961a(List<BlackWhiteListModel> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (BlackWhiteListModel blackWhiteListModel : list) {
            if (TextUtils.isEmpty(blackWhiteListModel.getName())) {
                arrayList2.add(blackWhiteListModel);
            } else {
                arrayList.add(blackWhiteListModel);
            }
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    /* renamed from: a */
    public final void m19971a(Activity activity) {
        C6850i.m19579a("AntiHarassHandler", "未安装最新版VAult");
        C6871a.m19507a("Ad Impressions", "Customized Ad Show", "Vault");
        if (m19928l()) {
            DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(activity);
            aVar.m19831b(2131558605);
            aVar.m19835a(LayoutInflater.from(activity).inflate(2131427399, (ViewGroup) null));
            aVar.m19830b(2131558496, new DialogInterface$OnClickListenerC6730b(this));
            aVar.m19836a(2131558608, new DialogInterface$OnClickListenerC6731c(this, activity));
            aVar.m19838a().show();
            return;
        }
        C6843d.m19605a(activity, 2131558606, 2131558641, 2131558496, 2131558608, new DialogInterface$OnClickListenerC6733d(this), new DialogInterface$OnClickListenerC6734e(this, activity));
    }

    /* renamed from: a */
    public final void m19970a(Activity activity, AbstractC6724a aVar) {
        DialogC6776a.C6777a aVar2 = new DialogC6776a.C6777a(activity);
        aVar2.m19829b(activity.getString(2131558607));
        View inflate = LayoutInflater.from(activity).inflate(2131427400, (ViewGroup) null);
        EditText editText = (EditText) inflate.findViewById(2131231102);
        View findViewById = inflate.findViewById(2131231104);
        aVar2.m19835a(inflate);
        aVar2.m19836a(2131558513, new DialogInterface$OnClickListenerC6738h(editText, activity, aVar, (RelativeLayout) inflate.findViewById(2131231103), findViewById));
        aVar2.m19830b(2131558496, new DialogInterface$OnClickListenerC6739i(this));
        aVar2.m19832a(false);
        DialogC6776a a = aVar2.m19838a();
        a.m19841a().setTextSize(C6843d.m19607a());
        a.show();
    }

    /* renamed from: a */
    public void m19969a(Activity activity, boolean z, AbstractC6724a aVar) {
        if (m19927m()) {
            C6850i.m19579a("AntiHarassHandler", "已经安装最新版VAult");
            if (m19920t()) {
                m19956b(activity, z, aVar);
                return;
            }
            return;
        }
        m19971a(activity);
    }

    /* renamed from: a */
    public void m19960a(boolean z) {
        this.f20749a.m19566b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.has_score_showed, Boolean.valueOf(z));
    }

    /* renamed from: a */
    public boolean m19965a(BlackWhiteListModel blackWhiteListModel) {
        if (blackWhiteListModel == null) {
            return false;
        }
        if (1 == blackWhiteListModel.getType()) {
            if (m19945d(blackWhiteListModel.getAddress())) {
                m19963a(blackWhiteListModel.getAddress());
            }
        } else if (m19937f(blackWhiteListModel.getAddress())) {
            m19963a(blackWhiteListModel.getAddress());
        }
        String str = "";
        if (TextUtils.isEmpty(blackWhiteListModel.getName())) {
            str = m19955b(blackWhiteListModel.getAddress());
            str = "";
        } else {
            str = blackWhiteListModel.getName();
        }
        if (TextUtils.isEmpty(str)) {
        }
        return m19962a(blackWhiteListModel.getAddress(), str, blackWhiteListModel.getType());
    }

    /* renamed from: a */
    public final boolean m19962a(String str, String str2, int i) {
        boolean z = false;
        try {
            if (this.f20751c.m19746a(str2, str, i) > 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: b */
    public int m19958b(int i) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            Cursor b = this.f20751c.m19745b(i);
            if (b != null) {
                cursor2 = b;
                cursor = b;
                int count = b.getCount();
                if (b != null) {
                    b.close();
                }
                return count;
            } else if (b == null) {
                return 0;
            } else {
                b.close();
                return 0;
            }
        } catch (Exception e) {
            if (cursor == null) {
                return 0;
            }
            cursor.close();
            return 0;
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* renamed from: b */
    public String m19955b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return this.f20756h.m19511a(str);
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: b */
    public List<BlockedCallsModel> m19959b() {
        try {
            return m19944d(this.f20753e.m19731e());
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return null;
        }
    }

    /* renamed from: b */
    public void m19957b(Activity activity) {
        C6843d.m19605a(activity, 2131558606, 2131558603, 2131558496, 2131558596, new DialogInterface$OnClickListenerC6740j(this), new DialogInterface$OnClickListenerC6728a(this, activity));
    }

    /* renamed from: b */
    public final void m19956b(Activity activity, boolean z, AbstractC6724a aVar) {
        if (activity != null) {
            C6850i.m19579a("AntiHarassHandler", "正在显示Vault迁移Dialog");
            C6871a.m19507a("Ad Impressions", "Customized Ad Show", "Vault");
            m19948c(true);
            m19953b(true);
            if (z) {
                C6843d.m19605a(activity, 2131558606, 2131558601, 2131558496, 2131558602, new DialogInterface$OnClickListenerC6736f(this), new DialogInterface$OnClickListenerC6737g(activity, aVar));
            } else {
                m19970a(activity, aVar);
            }
        }
    }

    /* renamed from: b */
    public final void m19953b(boolean z) {
        this.f20749a.m19566b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.is_migrate_showed, Boolean.valueOf(z));
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public final boolean m19954b(List<C6827b> list) {
        Uri uri = C6868a.f21061a;
        ContentValues[] contentValuesArr = new ContentValues[list.size()];
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ContentValues contentValues = new ContentValues();
            C6827b bVar = list.get(i);
            contentValues.put("name", bVar.f21006a);
            contentValues.put("phonenumber", bVar.f21007b);
            contentValues.put("type", Integer.valueOf(m19941e(bVar.f21008c)));
            contentValues.put(VastIconXmlManager.DURATION, Integer.valueOf(bVar.f21012g));
            contentValues.put("time", Long.valueOf(bVar.f21010e));
            contentValues.put(Dispatcher.NetworkBroadcastReceiver.EXTRA_AIRPLANE_STATE, (Integer) (-1));
            contentValues.put("read", Integer.valueOf(bVar.f21009d));
            contentValuesArr[i] = contentValues;
        }
        if (this.f20750b.getContentResolver().bulkInsert(uri, contentValuesArr) == 0) {
            try {
                this.f20754f.m19663b();
                for (C6827b bVar2 : list) {
                    this.f20754f.m19665a(bVar2.f21016k);
                }
                this.f20754f.m19657f();
                this.f20754f.m19660c();
                C6850i.m19579a("AntiHarassHandler", "迁移通话记录成功，迁移了：" + size + "条数据!");
                return true;
            } catch (Throwable th) {
                this.f20754f.m19660c();
                throw th;
            }
        } else {
            C6850i.m19579a("AntiHarassHandler", "迁移通话记录失败");
            return false;
        }
    }

    /* renamed from: c */
    public final int m19951c(int i) {
        if (i == 2) {
            i = 1;
        } else if (i == 3) {
            i = 2;
        } else if (i == 4) {
            i = 3;
        }
        return i;
    }

    /* renamed from: c */
    public final int m19950c(String str) {
        try {
            return this.f20751c.m19740d(str);
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return -1;
        }
    }

    /* renamed from: c */
    public Cursor m19952c() {
        return this.f20755g.m19514a();
    }

    /* renamed from: c */
    public void m19948c(boolean z) {
        this.f20749a.m19566b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.is_migrate_showing, Boolean.valueOf(z));
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public final boolean m19949c(List<C6827b> list) {
        Uri uri = C6869b.f21062a;
        int size = list.size();
        ContentValues[] contentValuesArr = new ContentValues[size];
        for (int i = 0; i < size; i++) {
            ContentValues contentValues = new ContentValues();
            C6827b bVar = list.get(i);
            contentValues.put("groupid", (Integer) 5);
            contentValues.put("callhandle", Integer.valueOf(m19951c(bVar.f21015j)));
            contentValues.put("sms_reply", bVar.f21013h);
            contentValues.put("name", bVar.f21006a);
            contentValues.put("phonenumber", bVar.f21007b);
            contentValues.put("photo_id", Integer.valueOf(bVar.f21011f));
            contentValuesArr[i] = contentValues;
        }
        if (this.f20750b.getContentResolver().bulkInsert(uri, contentValuesArr) == 0) {
            try {
                this.f20752d.m19651b();
                for (C6827b bVar2 : list) {
                    this.f20752d.m19653a(5, bVar2.f21016k);
                }
                this.f20752d.m19642h();
                this.f20752d.m19646d();
                C6850i.m19579a("AntiHarassHandler", "迁移私密联系人成功，迁移了：" + size + "条数据!");
                return true;
            } catch (Throwable th) {
                this.f20752d.m19646d();
                throw th;
            }
        } else {
            C6850i.m19579a("AntiHarassHandler", "迁移私密联系人失败");
            return false;
        }
    }

    /* renamed from: d */
    public int m19946d(int i) {
        try {
            return this.f20753e.m19739a(i);
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return -1;
        }
    }

    /* renamed from: d */
    public List<SystemContacts> m19947d() {
        Cursor cursor;
        Throwable th;
        ArrayList arrayList = new ArrayList();
        try {
            cursor = m19939f();
            try {
                HashMap hashMap = new HashMap();
                if (cursor == null) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return arrayList;
                }
                if (cursor.getCount() > 0) {
                    while (cursor.moveToNext()) {
                        String string = cursor.getString(cursor.getColumnIndex("data1"));
                        String string2 = cursor.getString(cursor.getColumnIndex("display_name"));
                        String string3 = cursor.getString(cursor.getColumnIndex("sort_key"));
                        String string4 = cursor.getString(cursor.getColumnIndex("_id"));
                        if (!hashMap.containsKey(string)) {
                            SystemContacts systemContacts = new SystemContacts();
                            systemContacts.setAddress(string);
                            systemContacts.setName(string2);
                            systemContacts.setSortKey(string3);
                            systemContacts.setPinyinUpperKey(C6853l.m19561a(string3));
                            systemContacts.setId(Long.valueOf(string4).longValue());
                            arrayList.add(systemContacts);
                            hashMap.put(string, string);
                        }
                    }
                }
                hashMap.clear();
                if (cursor != null) {
                    cursor.close();
                }
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public final List<BlockedCallsModel> m19944d(List<BlockedCallsModel> list) {
        String str;
        try {
            try {
                this.f20751c.m19754a();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (list == null) {
                this.f20751c.m19753b();
                return null;
            }
            for (BlockedCallsModel blockedCallsModel : list) {
                String address = blockedCallsModel.getAddress();
                try {
                    str = this.f20751c.m19744b(address);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    str = null;
                }
                if (!TextUtils.isEmpty(str) && !address.equals(str)) {
                    blockedCallsModel.setName(str);
                }
            }
            this.f20751c.m19752c();
            this.f20751c.m19753b();
            return list;
        } catch (Throwable th) {
            this.f20751c.m19753b();
            throw th;
        }
    }

    /* renamed from: d */
    public void m19943d(boolean z) {
        this.f20749a.m19566b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_is_more_migrate_showed, Boolean.valueOf(z));
    }

    /* renamed from: d */
    public boolean m19945d(String str) {
        boolean z = true;
        if (m19950c(str) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public int m19942e() {
        try {
            return this.f20755g.m19513b();
        } catch (Exception e) {
            try {
                return this.f20751c.m19741d();
            } catch (Exception e2) {
                return -1;
            }
        }
    }

    /* renamed from: e */
    public final int m19941e(int i) {
        if (i == 1 || i == 2 || i == 3) {
            return i;
        }
        return 3;
    }

    /* renamed from: e */
    public boolean m19940e(String str) {
        return this.f20756h.m19510b(str);
    }

    /* renamed from: f */
    public Cursor m19939f() {
        try {
            return this.f20756h.m19512a();
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return null;
        }
    }

    /* renamed from: f */
    public String m19938f(int i) {
        int i2 = 2131558453;
        if (i != 0) {
            i2 = i != 1 ? i != 2 ? i != 3 ? i != 4 ? 2131558453 : 2131558462 : 2131558472 : 2131558442 : 2131558441;
        }
        return this.f20750b.getString(i2);
    }

    /* renamed from: f */
    public boolean m19937f(String str) {
        return m19950c(str) == 0;
    }

    /* renamed from: g */
    public int m19936g() {
        try {
            return this.f20753e.m19729g();
        } catch (Exception e) {
            return 0;
        }
    }

    /* renamed from: g */
    public int m19935g(int i) {
        int i2;
        try {
            i2 = this.f20751c.m19743c(i);
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: g */
    public final boolean m19934g(String str) {
        boolean b = this.f20752d.m19648b(str);
        C6850i.m19579a("AntiHarassHandler", b ? "私密空间密码正确!" : "私密空间密码错误!");
        return b;
    }

    /* renamed from: h */
    public int m19933h() {
        return this.f20749a.m19573a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_model, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        if (m19940e(r4) != false) goto L_0x001d;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m19932h(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            int r0 = r0.m19950c(r1)     // Catch: Exception -> 0x0022
            r6 = r0
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x001d
            r0 = r6
            if (r0 == 0) goto L_0x001d
            r0 = r3
            r1 = r4
            boolean r0 = r0.m19940e(r1)     // Catch: Exception -> 0x0022
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x002c
        L_0x001d:
            r0 = 0
            r5 = r0
            goto L_0x002c
        L_0x0022:
            r4 = move-exception
            java.lang.String r0 = "AntiHarassHandler"
            r1 = r4
            java.lang.String r1 = r1.toString()
            p131c.p431l.p432a.p468n.C6850i.m19577b(r0, r1)
        L_0x002c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p442b.p445c.C6727b.m19932h(java.lang.String):boolean");
    }

    /* renamed from: i */
    public int m19931i() {
        int a = this.f20749a.m19569a("44016RunTimes", 0);
        C6850i.m19579a("AntiHarassHandler", "首页已经显示过的次数：" + a);
        return a;
    }

    /* renamed from: j */
    public boolean m19930j() {
        boolean booleanValue = this.f20749a.m19571a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.has_score_showed, (Boolean) false).booleanValue();
        C6850i.m19579a("AntiHarassHandler", booleanValue ? "已经显示过打分Dialog！" : "未显示过打分Dialog");
        return booleanValue;
    }

    /* renamed from: k */
    public boolean m19929k() {
        return this.f20749a.m19571a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call, (Boolean) true).booleanValue();
    }

    /* renamed from: l */
    public final boolean m19928l() {
        return this.f20749a.m19569a("44016RunTimes", -1) <= 0;
    }

    /* renamed from: m */
    public final boolean m19927m() {
        boolean z = C6843d.m19594b(this.f20750b, "com.netqin.ps") && C6843d.m19597a("com.netqin.ps", this.f20750b) >= 57;
        C6850i.m19579a("AntiHarassHandler", z ? "已经安装了最新版Vault！" : "未安装最新版Vault");
        return z;
    }

    /* renamed from: n */
    public boolean m19926n() {
        boolean booleanValue = this.f20749a.m19571a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.is_migrate_showing, (Boolean) false).booleanValue();
        C6850i.m19579a("AntiHarassHandler", booleanValue ? "正在显示Vault迁移Dialog！" : "没有正在显示迁移Dialog");
        return booleanValue;
    }

    /* renamed from: o */
    public boolean m19925o() {
        return this.f20749a.m19569a("RunTimes", -1) <= 0;
    }

    /* renamed from: p */
    public boolean m19924p() {
        return this.f20749a.m19571a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call_notification, (Boolean) true).booleanValue();
    }

    /* renamed from: q */
    public final boolean m19923q() {
        boolean z = C6825a.m19656g() && this.f20754f.m19658e() > 0;
        C6850i.m19579a("AntiHarassHandler", z ? "需要迁移通话记录!" : "不需要迁移通话记录!");
        return z;
    }

    /* renamed from: r */
    public final boolean m19922r() {
        C6828c cVar;
        boolean z = C6828c.m19641i() && (cVar = this.f20752d) != null && cVar.m19644f() > 0;
        C6850i.m19579a("AntiHarassHandler", z ? "需要迁移联系人!" : "不需要迁移联系人!");
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0057 A[Catch: Exception -> 0x00a8, TRY_LEAVE, TryCatch #0 {Exception -> 0x00a8, blocks: (B:3:0x0002, B:5:0x000b, B:10:0x0050, B:12:0x0057, B:15:0x008f), top: B:24:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a2  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m19921s() {
        /*
            r3 = this;
            r0 = 0
            r4 = r0
            r0 = r3
            boolean r0 = r0.m19922r()     // Catch: Exception -> 0x00a8
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x004d
            r0 = r3
            c.l.a.i.e.c r0 = r0.f20752d     // Catch: Exception -> 0x00a8
            java.util.List r0 = r0.m19645e()     // Catch: Exception -> 0x00a8
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x00a8
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: Exception -> 0x00a8
            r0 = r7
            java.lang.String r1 = "私密通讯录个数："
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00a8
            r0 = r7
            r1 = r6
            int r1 = r1.size()     // Catch: Exception -> 0x00a8
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00a8
            java.lang.String r0 = "AntiHarassHandler"
            r1 = r7
            java.lang.String r1 = r1.toString()     // Catch: Exception -> 0x00a8
            p131c.p431l.p432a.p468n.C6850i.m19579a(r0, r1)     // Catch: Exception -> 0x00a8
            r0 = r3
            r1 = r6
            boolean r0 = r0.m19949c(r1)     // Catch: Exception -> 0x00a8
            if (r0 == 0) goto L_0x0047
            goto L_0x004d
        L_0x0047:
            r0 = 0
            r8 = r0
            goto L_0x0050
        L_0x004d:
            r0 = 1
            r8 = r0
        L_0x0050:
            r0 = r3
            boolean r0 = r0.m19923q()     // Catch: Exception -> 0x00a8
            if (r0 == 0) goto L_0x00a2
            r0 = r3
            c.l.a.i.e.a r0 = r0.f20754f     // Catch: Exception -> 0x00a8
            java.util.List r0 = r0.m19659d()     // Catch: Exception -> 0x00a8
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x00a8
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: Exception -> 0x00a8
            r0 = r7
            java.lang.String r1 = "私密通话记录个数："
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00a8
            r0 = r7
            r1 = r6
            int r1 = r1.size()     // Catch: Exception -> 0x00a8
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00a8
            java.lang.String r0 = "AntiHarassHandler"
            r1 = r7
            java.lang.String r1 = r1.toString()     // Catch: Exception -> 0x00a8
            p131c.p431l.p432a.p468n.C6850i.m19579a(r0, r1)     // Catch: Exception -> 0x00a8
            r0 = r4
            r5 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00b1
            r0 = r3
            r1 = r6
            boolean r0 = r0.m19954b(r1)     // Catch: Exception -> 0x00a8
            r8 = r0
            r0 = r4
            r5 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00b1
            r0 = 1
            r5 = r0
            goto L_0x00b1
        L_0x00a2:
            r0 = r8
            r5 = r0
            goto L_0x00b1
        L_0x00a8:
            r7 = move-exception
            r0 = r7
            r0.printStackTrace()
            r0 = r4
            r5 = r0
        L_0x00b1:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p442b.p445c.C6727b.m19921s():boolean");
    }

    /* renamed from: t */
    public boolean m19920t() {
        return false;
    }

    /* renamed from: u */
    public int m19919u() {
        try {
            return this.f20753e.m19729g();
        } catch (Exception e) {
            C6850i.m19577b("AntiHarassHandler", e.toString());
            return -1;
        }
    }

    /* renamed from: v */
    public void m19918v() {
        this.f20749a.m19565b("RunTimes", 2);
    }

    /* renamed from: w */
    public void m19917w() {
        C6851j<NQSPFManager.EnumAntiHarass> jVar = this.f20749a;
        jVar.m19565b("44016RunTimes", jVar.m19569a("44016RunTimes", 0) + 1);
    }

    /* renamed from: x */
    public int m19916x() {
        try {
            return this.f20753e.m19728h();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}
