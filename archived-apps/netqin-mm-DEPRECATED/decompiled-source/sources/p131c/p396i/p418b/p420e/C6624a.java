package p131c.p396i.p418b.p420e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.android.volley.TimeoutError;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.gson.JsonParseException;
import com.library.p518ad.AdUpdateJobService;
import com.library.p518ad.AdUpdateService;
import com.library.remoteconfig.data.RemoteConfigReq;
import com.library.remoteconfig.data.RemoteConfigResp;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p352w.C6070g;
import p131c.p161d.p354f.C6111e;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p399f.p401b.AbstractC6527a;
import p131c.p396i.p397a.p399f.p401b.C6534e;
import p131c.p396i.p397a.p405h.C6552e;
import p131c.p396i.p397a.p417j.C6614a;
import p131c.p396i.p397a.p417j.C6617d;
import p131c.p396i.p397a.p417j.C6618e;
import p131c.p396i.p418b.AbstractC6621c;
import p131c.p396i.p418b.C6619a;
/* renamed from: c.i.b.e.a */
/* loaded from: classes2-dex2jar.jar:c/i/b/e/a.class */
public class C6624a {

    /* renamed from: a */
    public final C6619a f20444a;

    /* renamed from: b */
    public final Context f20445b;

    /* renamed from: d */
    public long f20447d;

    /* renamed from: i */
    public boolean f20452i;

    /* renamed from: c */
    public String f20446c = "remote_config.json";

    /* renamed from: e */
    public long f20448e = 10800000;

    /* renamed from: f */
    public long f20449f = 600000;

    /* renamed from: g */
    public long f20450g = 10800000;

    /* renamed from: h */
    public int f20451h = 0;

    /* renamed from: j */
    public ArrayList<AbstractC6621c> f20453j = new ArrayList<>();

    /* renamed from: k */
    public AbstractC6527a<RemoteConfigResp> f20454k = new C6625a();

    /* renamed from: l */
    public BroadcastReceiver f20455l = new C6628c();

    /* renamed from: c.i.b.e.a$a */
    /* loaded from: classes2-dex2jar.jar:c/i/b/e/a$a.class */
    public class C6625a extends AbstractC6527a<RemoteConfigResp> {

        /* renamed from: c.i.b.e.a$a$a */
        /* loaded from: classes2-dex2jar.jar:c/i/b/e/a$a$a.class */
        public class HandlerC6626a extends Handler {
            public HandlerC6626a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                C6624a.this.m20287c();
            }
        }

        public C6625a() {
        }

        /* renamed from: a */
        public void onResponse(RemoteConfigResp remoteConfigResp) {
            try {
                C6624a.this.f20452i = false;
                if (C6624a.this.f20444a != null) {
                    C6624a.this.f20444a.m20317a(remoteConfigResp.config);
                }
                String str = "远程配置从 服务器读取 CALL_RETRY:" + C6624a.this.f20444a.m20321a("CALL_RETRY");
                String str2 = "远程配置从 服务器读取 config:" + remoteConfigResp.configToString();
                if (C6489a.m20717c()) {
                    C6624a.this.m20288b(remoteConfigResp);
                    C6624a.this.m20302a(C6624a.this.m20293b(remoteConfigResp.update));
                    C6618e.m20324d("remote_config").m20326b("remote_config_new_user", false);
                    C6618e.m20324d("remote_config").m20331a("remote_last_version", C6617d.m20351b());
                    C6624a.this.m20275j();
                }
            } catch (Exception e) {
                e.toString();
            }
        }

        @Override // p131c.p396i.p397a.p399f.p401b.AbstractC6527a, p131c.p396i.p397a.p399f.p401b.AbstractC6530c
        public void onError(Exception exc) {
            super.onError(exc);
            C6624a.this.f20452i = false;
            if (C6624a.m20284d(C6624a.this) <= C6624a.this.f20444a.m20320a("retry", 2)) {
                long j = C6624a.this.f20451h * 1 * 60000;
                new HandlerC6626a().sendEmptyMessageDelayed(0, j);
                String str = "远程配置请求重试，第" + C6624a.this.f20451h + "次，延时 :" + j;
            } else {
                C6624a.this.f20451h = 0;
                String str2 = "远程配置请求重试次数结束，并添加下次定时:" + C6624a.this.f20450g;
                C6624a aVar = C6624a.this;
                aVar.m20302a(aVar.m20293b(aVar.f20450g));
            }
            if (!C6614a.m20369a()) {
                C6624a.this.m20304a(C6552e.f20331a.intValue());
            } else if (exc instanceof TimeoutError) {
                C6624a.this.m20304a(C6552e.f20332b.intValue());
            } else {
                C6624a.this.m20304a(C6552e.f20333c.intValue());
            }
        }
    }

    /* renamed from: c.i.b.e.a$b */
    /* loaded from: classes2-dex2jar.jar:c/i/b/e/a$b.class */
    public class C6627b implements OnCompleteListener<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ C6070g f20458a;

        public C6627b(C6070g gVar) {
            this.f20458a = gVar;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        /* renamed from: a */
        public void mo8619a(Task<Boolean> task) {
            if (task.mo8601e()) {
                String b = this.f20458a.m22138b("ADSDK_comProp");
                if (!TextUtils.isEmpty(b)) {
                    try {
                        C6624a.this.f20454k.onResponse((RemoteConfigResp) new C6111e().m21979a(b, (Class<Object>) RemoteConfigResp.class));
                    } catch (JsonParseException e) {
                        e.printStackTrace();
                        C6534e.m20564a(C6624a.this.f20445b).m20563a(new RemoteConfigReq(), RemoteConfigResp.class, C6624a.this.f20454k, toString());
                    }
                } else {
                    C6534e.m20564a(C6624a.this.f20445b).m20563a(new RemoteConfigReq(), RemoteConfigResp.class, C6624a.this.f20454k, toString());
                }
            }
        }
    }

    /* renamed from: c.i.b.e.a$c */
    /* loaded from: classes2-dex2jar.jar:c/i/b/e/a$c.class */
    public class C6628c extends BroadcastReceiver {
        public C6628c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (C6614a.m20369a()) {
                C6624a.this.m20273l();
                C6624a.this.m20287c();
            }
        }
    }

    public C6624a(Context context, C6619a aVar) {
        this.f20445b = context;
        this.f20444a = aVar;
    }

    /* renamed from: d */
    public static /* synthetic */ int m20284d(C6624a aVar) {
        int i = aVar.f20451h + 1;
        aVar.f20451h = i;
        return i;
    }

    /* renamed from: a */
    public void m20305a() {
        RemoteConfigResp b = m20294b();
        if (b == null || !m20296a(b)) {
            m20287c();
        }
    }

    /* renamed from: a */
    public final void m20304a(int i) {
        ArrayList<AbstractC6621c> arrayList = this.f20453j;
        if (arrayList != null) {
            Iterator it = ((ArrayList) arrayList.clone()).iterator();
            while (it.hasNext()) {
                AbstractC6621c cVar = (AbstractC6621c) it.next();
                cVar.mo20310a(i);
                cVar.mo5334a(3, false);
            }
        }
    }

    /* renamed from: a */
    public final void m20303a(int i, boolean z) {
        ArrayList<AbstractC6621c> arrayList = this.f20453j;
        if (arrayList != null) {
            Iterator it = ((ArrayList) arrayList.clone()).iterator();
            while (it.hasNext()) {
                ((AbstractC6621c) it.next()).mo5334a(i, z);
            }
        }
    }

    /* renamed from: a */
    public final void m20302a(long j) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            z = AdUpdateJobService.m5338a(C6489a.m20718b(), j, 2);
        } else {
            String str = "系统版本 " + Build.VERSION.SDK_INT + " 低于6.0,使用Alarm";
            z = false;
        }
        if (!z) {
            AdUpdateService.m5333a(C6489a.m20718b(), j, 2);
        }
    }

    /* renamed from: a */
    public void m20295a(String str) {
        this.f20446c = str;
    }

    /* renamed from: a */
    public boolean m20301a(AbstractC6621c cVar) {
        ArrayList<AbstractC6621c> arrayList = this.f20453j;
        return arrayList != null && !arrayList.contains(cVar) && this.f20453j.add(cVar);
    }

    /* renamed from: a */
    public final boolean m20296a(RemoteConfigResp remoteConfigResp) {
        String str;
        if (this.f20447d == 0) {
            this.f20447d = C6618e.m20324d("remote_config").m20328b("update");
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.f20447d;
        boolean z = false;
        if (currentTimeMillis < j) {
            str = "时间异常";
        } else if (currentTimeMillis - j > remoteConfigResp.update) {
            str = "超出有效期";
        } else {
            z = true;
            str = "";
        }
        if (!z) {
            String str2 = "失效:（" + str + ")";
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m20293b(long r6) {
        /*
            r5 = this;
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000d
            r0 = r5
            long r0 = r0.f20448e
            r8 = r0
        L_0x000d:
            r0 = r5
            long r0 = r0.f20449f
            r6 = r0
            r0 = r8
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001a
            r0 = r6
            return r0
        L_0x001a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p396i.p418b.p420e.C6624a.m20293b(long):long");
    }

    /* renamed from: b */
    public RemoteConfigResp m20294b() {
        String c;
        RemoteConfigResp remoteConfigResp = null;
        try {
            m20277h();
            c = C6618e.m20324d("remote_config").m20325c("remote_config");
        } catch (Exception e) {
            Log.getStackTraceString(e);
        }
        if (TextUtils.isEmpty(c)) {
            return null;
        }
        remoteConfigResp = (RemoteConfigResp) new C6111e().m21979a(c, (Class<Object>) RemoteConfigResp.class);
        return remoteConfigResp;
    }

    /* renamed from: b */
    public void m20288b(RemoteConfigResp remoteConfigResp) {
        C6618e.m20324d("remote_config").m20330a("remote_config", new C6111e().m21984a(remoteConfigResp));
        C6618e.m20324d("remote_config").m20331a("update", System.currentTimeMillis());
    }

    /* renamed from: b */
    public boolean m20292b(AbstractC6621c cVar) {
        ArrayList<AbstractC6621c> arrayList = this.f20453j;
        return arrayList != null && arrayList.remove(cVar);
    }

    /* renamed from: c */
    public void m20287c() {
        m20276i();
        if (!this.f20452i) {
            if (!C6614a.m20369a()) {
                m20274k();
                m20304a(C6552e.f20331a.intValue());
                return;
            }
            this.f20452i = true;
            if (!C5128c.m24477a(C6489a.m20718b()).isEmpty()) {
                try {
                    Class.forName("c.d.e.w.g");
                    C6070g g = C6070g.m22132g();
                    if (g != null) {
                        g.m22153a(C6489a.f20208e);
                        g.m22136c().mo8615a(new C6627b(g));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: d */
    public RemoteConfigResp m20285d() {
        String str = "远程配置从本地文件中读取:" + this.f20446c;
        m20279g();
        try {
            return (RemoteConfigResp) new C6111e().m21988a((Reader) new InputStreamReader(this.f20445b.getAssets().open(this.f20446c)), (Class<Object>) RemoteConfigResp.class);
        } catch (Exception e) {
            String str2 = "远程配置从本地文件中读取失败:/assets/" + this.f20446c;
            return null;
        }
    }

    /* renamed from: e */
    public void m20283e() {
        try {
            RemoteConfigResp b = !m20281f() ? m20294b() : null;
            if (b == null) {
                b = m20285d();
                if (b != null) {
                    m20288b(b);
                }
                m20287c();
            } else if (!m20296a(b)) {
                m20287c();
            } else {
                m20302a(m20293b(b.update));
                m20303a(2, true);
            }
            if (b != null && b.config != null) {
                this.f20450g = b.update;
                this.f20444a.m20317a(b.config);
            }
        } catch (Exception e) {
            Log.getStackTraceString(e);
        }
    }

    /* renamed from: f */
    public final boolean m20281f() {
        long b = C6618e.m20324d("remote_config").m20328b("remote_last_version");
        String str = "记录版本:" + b;
        String str2 = "当前版本:" + C6617d.m20351b();
        return b != ((long) C6617d.m20351b());
    }

    /* renamed from: g */
    public final void m20279g() {
        ArrayList<AbstractC6621c> arrayList = this.f20453j;
        if (arrayList != null) {
            Iterator it = ((ArrayList) arrayList.clone()).iterator();
            while (it.hasNext()) {
                ((AbstractC6621c) it.next()).mo20308c();
            }
        }
    }

    /* renamed from: h */
    public final void m20277h() {
        ArrayList<AbstractC6621c> arrayList = this.f20453j;
        if (arrayList != null) {
            Iterator it = ((ArrayList) arrayList.clone()).iterator();
            while (it.hasNext()) {
                ((AbstractC6621c) it.next()).mo20309b();
            }
        }
    }

    /* renamed from: i */
    public final void m20276i() {
        ArrayList<AbstractC6621c> arrayList = this.f20453j;
        if (arrayList != null) {
            Iterator it = ((ArrayList) arrayList.clone()).iterator();
            while (it.hasNext()) {
                ((AbstractC6621c) it.next()).mo20307d();
            }
        }
    }

    /* renamed from: j */
    public final void m20275j() {
        ArrayList<AbstractC6621c> arrayList = this.f20453j;
        if (arrayList != null) {
            Iterator it = ((ArrayList) arrayList.clone()).iterator();
            while (it.hasNext()) {
                AbstractC6621c cVar = (AbstractC6621c) it.next();
                cVar.mo20035a();
                cVar.mo5334a(3, true);
            }
        }
    }

    /* renamed from: k */
    public final void m20274k() {
        C6489a.m20718b().registerReceiver(this.f20455l, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    /* renamed from: l */
    public final void m20273l() {
        C6489a.m20718b().unregisterReceiver(this.f20455l);
    }
}
