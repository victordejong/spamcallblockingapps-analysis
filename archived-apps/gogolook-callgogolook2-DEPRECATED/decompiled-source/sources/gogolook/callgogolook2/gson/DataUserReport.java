package gogolook.callgogolook2.gson;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p594z4.C14330b;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/DataUserReport.class */
public class DataUserReport {

    /* renamed from: NO */
    public static final int f10789NO = 0;
    public static final int NONE = -1;
    public static final String TAG = "DataUserReport";
    public static final int YES = 1;
    public String mE164;
    public Name mName;
    public String mRemoteNum;
    public Source mSource;
    public Spam mSpam;
    public long mUpdateTime;
    public long mInTime = -1;
    public long mInDurSec = -1;
    public Block mBlock = null;
    public String mRegion = C14017g4.m2810n();

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/DataUserReport$Block.class */
    public static class Block {
        public String data;

        public Block() {
            this.data = null;
        }

        /* renamed from: a */
        public static boolean m28450a(Block block) {
            return (block == null || block.data == null) ? false : true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/DataUserReport$Name.class */
    public static class Name {
        public String ask;
        public String cur;
        public String data;

        /* renamed from: yn */
        public int f10790yn;

        public Name() {
            this.f10790yn = -1;
        }

        /* renamed from: b */
        public static boolean m28445b(Name name) {
            return (name == null || (name.f10790yn == -1 && name.data == null)) ? false : true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/DataUserReport$Source.class */
    public enum Source {
        CALL,
        SMS,
        NDP,
        OTHER
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/DataUserReport$Spam.class */
    public static class Spam {
        public String ask;
        public int ccat;
        public String cur;
        public String data;

        /* renamed from: yn */
        public int f10791yn;

        public Spam() {
            this.f10791yn = -1;
            this.ccat = 0;
        }

        /* renamed from: b */
        public static boolean m28439b(Spam spam) {
            return (spam == null || (spam.f10791yn == -1 && spam.data == null)) ? false : true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/DataUserReport$UserReportRunnable.class */
    public class UserReportRunnable implements Runnable {
        public UserReportRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("e164", DataUserReport.this.mE164);
                jSONObject.put("remote_num", DataUserReport.this.mRemoteNum);
                jSONObject.put("region", DataUserReport.this.mRegion);
                jSONObject.put("in_time", DataUserReport.this.mInTime != -1 ? DataUserReport.this.mInTime : C14330b.m1551b().m1547b(DataUserReport.this.mE164));
                jSONObject.put("in_dur", DataUserReport.this.mInDurSec != -1 ? DataUserReport.this.mInDurSec : C14330b.m1551b().m1553a(DataUserReport.this.mE164));
                jSONObject.put("out_time", C14330b.m1551b().m1545d(DataUserReport.this.mE164));
                jSONObject.put("out_dur", C14330b.m1551b().m1546c(DataUserReport.this.mE164));
                jSONObject.put("sms_time", C14330b.m1551b().m1544e(DataUserReport.this.mE164));
                jSONObject.put(LogsGroupRealmObject.UPDATETIME, DataUserReport.this.mUpdateTime);
                JSONObject jSONObject2 = new JSONObject();
                if (Name.m28445b(DataUserReport.this.mName)) {
                    jSONObject2.put("name", new JSONObject(new Gson().m30985a(DataUserReport.this.mName, Name.class)));
                }
                if (Spam.m28439b(DataUserReport.this.mSpam)) {
                    jSONObject2.put("spam", new JSONObject(new Gson().m30985a(DataUserReport.this.mSpam, Spam.class)));
                }
                if (Block.m28450a(DataUserReport.this.mBlock)) {
                    jSONObject2.put("block", new JSONObject(new Gson().m30985a(DataUserReport.this.mBlock, Block.class)));
                }
                jSONObject.put("source", DataUserReport.this.mSource.toString());
                jSONObject.put("report", jSONObject2);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("User-Agent", C12378a.m6259e());
                jSONObject3.put("userid", C14217x3.m2118p());
                jSONObject3.put("accesstoken", C14217x3.m2170b());
                final C6341b bVar = new C6341b();
                bVar.f15765k = true;
                bVar.f15758d = jSONObject3.toString();
                bVar.f15757c = jSONObject.toString();
                bVar.f15756b = C12378a.EnumC12381c.POST.toString();
                bVar.f15755a = C12378a.f27904i + "/userreport/v2";
                bVar.f15760f = new AbstractC6378d() { // from class: gogolook.callgogolook2.gson.DataUserReport.UserReportRunnable.1
                    @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
                    /* renamed from: a */
                    public void mo1272a(int i, JSONObject jSONObject4) throws Exception {
                        C14261f.m1974a("user_report_api_called", (Bundle) null);
                        C6357a.m23033a(bVar.f15755a, i, C12378a.EnumC12382d.POST_USER_REPORT.ordinal());
                    }
                };
                C6334a.m23211s().m23238b(bVar);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public DataUserReport(String str, String str2, String str3, String str4, Source source) {
        this.mUpdateTime = -1L;
        this.mSource = Source.OTHER;
        this.mName = null;
        this.mSpam = null;
        this.mRemoteNum = str;
        this.mE164 = str2;
        if (!TextUtils.isEmpty(str3)) {
            this.mName = new Name();
            this.mName.cur = str3;
        }
        if (!TextUtils.isEmpty(str4)) {
            this.mSpam = new Spam();
            this.mSpam.cur = str4;
        }
        this.mUpdateTime = System.currentTimeMillis();
        this.mSource = source;
    }

    /* renamed from: b */
    public static DataUserReport m28464b(String str) {
        if (str == null) {
            return null;
        }
        return (DataUserReport) new Gson().m30982a(str, (Class<Object>) DataUserReport.class);
    }

    /* renamed from: k */
    public static String m28451k(DataUserReport dataUserReport) {
        return new Gson().m30988a(dataUserReport);
    }

    /* renamed from: a */
    public DataUserReport m28474a(int i, String str) {
        if (this.mName == null) {
            this.mName = new Name();
        }
        this.mName.f10790yn = i;
        this.mName.ask = str;
        return this;
    }

    /* renamed from: a */
    public DataUserReport m28473a(long j, long j2, long j3, long j4) {
        if (j > 0) {
            this.mInTime = j;
            if (j3 > 0 && j4 > 0) {
                this.mInDurSec = (j4 - j3) / 1000;
            }
        }
        return this;
    }

    /* renamed from: a */
    public DataUserReport m28472a(CallStats.Call call) {
        m28473a(call.m28502e(), call.m28484s(), call.m28485r(), call.m28493j());
        return this;
    }

    /* renamed from: a */
    public DataUserReport m28470a(String str) {
        if (this.mName == null) {
            this.mName = new Name();
        }
        this.mName.data = str;
        return this;
    }

    /* renamed from: a */
    public DataUserReport m28469a(String str, int i) {
        if (this.mSpam == null) {
            this.mSpam = new Spam();
        }
        this.mSpam.data = str;
        this.mSpam.ccat = i;
        return this;
    }

    @Nullable
    /* renamed from: a */
    public DataUserReport m28468a(boolean z) {
        if (this.mBlock == null) {
            this.mBlock = new Block();
        }
        this.mBlock.data = String.valueOf(z ? 1 : 0);
        return this;
    }

    @Nullable
    /* renamed from: a */
    public String m28475a() {
        Name name = this.mName;
        return name != null ? name.data : null;
    }

    /* renamed from: b */
    public DataUserReport m28466b(int i, String str) {
        if (this.mSpam == null) {
            this.mSpam = new Spam();
        }
        this.mSpam.f10791yn = i;
        this.mSpam.ask = str;
        return this;
    }

    /* renamed from: b */
    public String m28467b() {
        return this.mE164;
    }

    /* renamed from: c */
    public String m28463c() {
        return this.mRemoteNum;
    }

    /* renamed from: d */
    public Source m28461d() {
        return this.mSource;
    }

    /* renamed from: e */
    public String m28459e() {
        Spam spam = this.mSpam;
        return spam != null ? spam.data : null;
    }

    /* renamed from: f */
    public void m28457f() {
        if (Name.m28445b(this.mName) || Spam.m28439b(this.mSpam) || Block.m28450a(this.mBlock)) {
            try {
                C14174u.m2288p().execute(new UserReportRunnable());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
