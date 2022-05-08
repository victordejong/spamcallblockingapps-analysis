package gogolook.callgogolook2.gson;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.provider.CallLog;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.TooltipCompatHandler;
import com.gogolook.whoscallsdk.core.num.data.CustomHitrateObject;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.TimeUnit;
import p081h.p160h.p179e.p180a.p187n.C6384a;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p515i0.p516a.C12436l;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14245c;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p594z4.C14356f;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.functions.Actions;
import p660rx.schedulers.Schedulers;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallStats.class */
public class CallStats {
    public static String TAG = "CallStats";
    public static boolean sIsFake = false;
    public CallContentObserver mCallContentObserver;
    public ConcurrentLinkedDeque<Call> mCalls;
    public OnGetCallDurationListener mOnGetFirstCallDurationListener;

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallStats$BlockResult.class */
    public enum BlockResult {
        UNINITIALIZED,
        SUCCESS,
        FAILURE
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallStats$BlockType.class */
    public enum BlockType {
        NONE,
        BLOCK
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallStats$Call.class */
    public class Call {
        public int from;
        public Remote mForegroundRemote;
        public List<Remote> remotes;
        public String status;
        public String uuid;
        public long t_out = 0;
        public long t_idle = 0;
        public List<Long> t_offhooks = new ArrayList();
        public List<Long> t_ringings = new ArrayList();
        public List<String> raw_history = new ArrayList();
        public Local local = new Local();

        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallStats$Call$Local.class */
        public class Local {
            public String brand;
            public String carrier;
            public String device_id;

            /* renamed from: ip */
            public String f10788ip;
            public String ip_from_server;
            public String num;
            public String offlinedb;
            public String region;
            public float timedelta;
            public String uid;
            public int version;

            public Local() {
            }
        }

        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallStats$Call$Remote.class */
        public class Remote {
            public BlockType block_type;
            public CInfo c_info;
            public String call_info;
            public String callend_info;
            public List<String> callend_report_done;
            public long duration;
            public String e164;
            public boolean is_call_shown;
            public boolean is_callend_shown;
            public boolean is_contact;
            public boolean is_multicallend_shown;
            public String num;
            public String region;
            public Map<String, Object> s_info;
            public String type;
            public boolean wellformed;
            public String spamcategory = "";
            public BlockResult blockResult = BlockResult.UNINITIALIZED;
            public long callDialogPopupDuration = -1;
            public long callDialogSearchDuration = -1;

            public Remote() {
            }

            @NonNull
            public String toString() {
                return "Remote{type='" + this.type + "', num='" + this.num + "', e164='" + this.e164 + "', block_type='" + this.block_type + "', spamcategory='" + this.spamcategory + "', call_info='" + this.call_info + "', callend_info='" + this.callend_info + "', blockResult=" + this.blockResult + ", callDialogPopupDuration=" + this.callDialogPopupDuration + ", duration=" + this.duration + ", is_contact=" + this.is_contact + ", wellformed=" + this.wellformed + ", region='" + this.region + "', is_multicallend_shown=" + this.is_multicallend_shown + ", is_call_shown=" + this.is_call_shown + ", is_callend_shown=" + this.is_callend_shown + ", callend_report_done=" + this.callend_report_done + ", s_info=" + this.s_info + ", c_info=" + this.c_info + '}';
            }
        }

        public Call() {
            try {
                this.local.num = C14137r4.m2373e();
                this.local.uid = C14217x3.m2118p();
                this.local.device_id = C14017g4.m2820d();
                this.local.region = C14017g4.m2810n().toUpperCase(Locale.US);
                this.local.carrier = C14017g4.m2811m();
                this.local.timedelta = TimeZone.getDefault().getRawOffset() / 3600000.0f;
                this.local.f10788ip = C14017g4.m2823a(true);
                this.local.ip_from_server = C13915b3.m3045e("record_local_ip");
            } catch (Error | Exception e) {
                C14080m2.m2612a(e);
            }
            this.remotes = new ArrayList();
            this.status = "";
            this.uuid = "";
        }

        /* renamed from: A */
        public boolean m28530A() {
            return this.status.equalsIgnoreCase(TelephonyManager.EXTRA_STATE_IDLE) || C14217x3.m2160b(this.status);
        }

        /* renamed from: B */
        public boolean m28529B() {
            return this.t_out != 0;
        }

        /* renamed from: C */
        public void m28528C() {
            int size = this.remotes.size();
            if (size > 0) {
                this.remotes.get(size - 1).is_call_shown = true;
            }
        }

        /* renamed from: D */
        public void m28527D() {
            if (this.remotes.size() > 0) {
                this.remotes.get(0).is_callend_shown = true;
            }
        }

        /* renamed from: E */
        public void m28526E() {
            if (this.remotes.size() > 0) {
                this.remotes.get(0).is_multicallend_shown = true;
            }
        }

        /* renamed from: a */
        public Remote m28524a(int i) {
            return this.remotes.get(i);
        }

        /* renamed from: a */
        public String m28525a() {
            return this.remotes.size() > 0 ? this.remotes.get(0).callend_info : "";
        }

        /* renamed from: a */
        public void m28523a(long j) {
            this.t_offhooks.add(Long.valueOf(j));
        }

        /* renamed from: a */
        public final void m28522a(Context context) {
            try {
                int size = this.remotes.size();
                if (size > 0 && C13878a3.m3207k()) {
                    Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"number", "type", "name", "numbertype", "duration", "date"}, null, null, "date DESC Limit " + size);
                    if (query != null) {
                        int count = query.getCount();
                        for (int i = 0; i < count; i++) {
                            query.moveToPosition(i);
                            String string = query.getString(query.getColumnIndex("duration"));
                            String string2 = query.getString(query.getColumnIndex("number"));
                            String string3 = query.getString(query.getColumnIndex("date"));
                            int i2 = 0;
                            while (true) {
                                if (i2 >= size) {
                                    break;
                                } else if (C14108o4.m2474l(string2).equals(this.remotes.get(i2).e164)) {
                                    this.remotes.get(i2).duration = Long.parseLong(string);
                                    C14245c.m2073a(string2, Long.parseLong(string3), Integer.parseInt(string), m28513b());
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                        }
                        query.close();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* renamed from: a */
        public void m28521a(BlockResult blockResult) {
            Remote remote = this.mForegroundRemote;
            if (remote == null) {
                m28510b(blockResult);
            } else {
                remote.blockResult = blockResult;
            }
        }

        /* renamed from: a */
        public void m28520a(BlockType blockType) {
            int size = this.remotes.size();
            if (size > 0) {
                this.remotes.get(size - 1).block_type = blockType;
            }
        }

        /* renamed from: a */
        public void m28519a(Remote remote) {
            this.mForegroundRemote = remote;
        }

        /* renamed from: a */
        public void m28517a(OnGetCallDurationListener onGetCallDurationListener) {
            CallStats.this.mOnGetFirstCallDurationListener = onGetCallDurationListener;
            if (this.remotes.size() > 0 && this.remotes.get(0).duration >= 0) {
                CallStats.this.mOnGetFirstCallDurationListener.mo5659a(this.remotes.get(0).duration);
            } else if (!C13565v.m3921g().m23335b()) {
            } else {
                if (this.t_offhooks.size() > 0) {
                    OnGetCallDurationListener onGetCallDurationListener2 = CallStats.this.mOnGetFirstCallDurationListener;
                    long j = this.t_idle;
                    List<Long> list = this.t_offhooks;
                    onGetCallDurationListener2.mo5659a((j - list.get(list.size() - 1).longValue()) / 1000);
                    return;
                }
                CallStats.this.mOnGetFirstCallDurationListener.mo5659a(1L);
            }
        }

        /* renamed from: a */
        public void m28516a(String str) {
            if (this.remotes.size() > 0) {
                this.remotes.get(0).callend_report_done.add(str);
            }
        }

        /* renamed from: a */
        public void m28515a(String str, CInfo cInfo) {
            int size = this.remotes.size();
            for (int i = 0; i < size; i++) {
                if (TextUtils.equals(this.remotes.get(i).e164, str)) {
                    this.remotes.get(i).c_info = cInfo;
                    return;
                }
            }
        }

        /* renamed from: a */
        public void m28514a(String str, Map<String, Object> map) {
            int size = this.remotes.size();
            for (int i = 0; i < size; i++) {
                if (TextUtils.equals(this.remotes.get(i).e164, str)) {
                    this.remotes.get(i).s_info = map;
                    return;
                }
            }
        }

        /* renamed from: b */
        public final int m28513b() {
            return m28529B() ? 2 : m28477z() ? 3 : 1;
        }

        /* renamed from: b */
        public void m28512b(int i) {
            this.from = i;
        }

        /* renamed from: b */
        public void m28511b(long j) {
            this.t_ringings.add(Long.valueOf(j));
        }

        /* renamed from: b */
        public void m28510b(BlockResult blockResult) {
            if (this.remotes.size() > 0) {
                List<Remote> list = this.remotes;
                list.get(list.size() - 1).blockResult = blockResult;
            }
        }

        /* renamed from: b */
        public void m28509b(String str) {
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            for (Remote remote : this.remotes) {
                if (str2.equals(remote.num)) {
                    return;
                }
            }
            Remote remote2 = new Remote();
            remote2.duration = -1L;
            remote2.num = str2;
            remote2.call_info = "";
            remote2.callend_info = "";
            remote2.callend_report_done = new ArrayList();
            PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
            try {
                Phonenumber.PhoneNumber parse = instance.parse(str2, C14017g4.m2810n().toUpperCase(Locale.US));
                remote2.type = instance.getNumberType(parse).toString();
                remote2.wellformed = instance.isValidNumber(parse);
                remote2.region = instance.getRegionCodeForNumber(parse);
                if (remote2.region == null) {
                    remote2.region = "";
                }
            } catch (NumberParseException e) {
                remote2.type = "";
                remote2.wellformed = false;
                remote2.region = "";
            }
            try {
                remote2.e164 = C14108o4.m2474l(str2);
            } catch (Exception e2) {
                remote2.e164 = str2;
            }
            remote2.is_contact = !TextUtils.isEmpty(C14217x3.m2146e(MyApplication.m29013o(), str2));
            remote2.c_info = new CInfo(remote2.e164);
            CInfo cInfo = remote2.c_info;
            cInfo.contact = remote2.is_contact;
            cInfo.lookup_source = (m28529B() ? EnumC11047e.CallDialogOut : EnumC11047e.CallDialogIn).toString();
            this.remotes.add(remote2);
        }

        /* renamed from: c */
        public String m28508c() {
            return this.status;
        }

        /* renamed from: c */
        public void m28507c(long j) {
            this.t_idle = j;
        }

        /* renamed from: c */
        public void m28506c(String str) {
            this.raw_history.add(str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m28505d() {
            /*
                r5 = this;
                r0 = r5
                long r0 = r0.m28485r()
                r6 = r0
                r0 = r5
                long r0 = r0.m28493j()
                r8 = r0
                r0 = 0
                r10 = r0
                r0 = r10
                r12 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0026
                r0 = r10
                r12 = r0
                r0 = r8
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0026
                r0 = r8
                r1 = r6
                long r0 = r0 - r1
                r12 = r0
            L_0x0026:
                r0 = r12
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.gson.CallStats.Call.m28505d():long");
        }

        /* renamed from: d */
        public CInfo m28503d(String str) {
            int size = this.remotes.size();
            for (int i = 0; i < size; i++) {
                if (TextUtils.equals(this.remotes.get(i).e164, str)) {
                    return this.remotes.get(i).c_info;
                }
            }
            return null;
        }

        /* renamed from: d */
        public void m28504d(long j) {
            int size = this.remotes.size();
            if (size > 0) {
                this.remotes.get(size - 1).callDialogPopupDuration = j;
            }
        }

        /* renamed from: e */
        public long m28502e() {
            if (this.t_ringings.size() > 0) {
                return this.t_ringings.get(0).longValue();
            }
            return -1L;
        }

        /* renamed from: e */
        public void m28501e(long j) {
            int size = this.remotes.size();
            if (size > 0) {
                this.remotes.get(size - 1).callDialogSearchDuration = j;
            }
        }

        /* renamed from: e */
        public void m28500e(String str) {
            this.status = str;
        }

        /* renamed from: f */
        public BlockType m28499f() {
            return this.remotes.size() > 0 ? this.remotes.get(0).block_type : BlockType.NONE;
        }

        /* renamed from: f */
        public void m28498f(long j) {
            this.t_out = j;
        }

        /* renamed from: f */
        public void m28497f(String str) {
            this.uuid = str;
        }

        /* renamed from: g */
        public BlockResult m28496g() {
            return this.remotes.size() > 0 ? this.remotes.get(0).blockResult : BlockResult.UNINITIALIZED;
        }

        /* renamed from: h */
        public String m28495h() {
            if (this.remotes.size() > 0) {
                return this.remotes.get(0).num;
            }
            return null;
        }

        /* renamed from: i */
        public String m28494i() {
            if (this.mForegroundRemote == null) {
                return m28486q();
            }
            if (this.remotes.size() > 0) {
                return this.mForegroundRemote.num;
            }
            return null;
        }

        /* renamed from: j */
        public long m28493j() {
            return this.t_idle;
        }

        /* renamed from: k */
        public Remote m28492k() {
            if (this.remotes.size() <= 0) {
                return null;
            }
            List<Remote> list = this.remotes;
            return list.get(list.size() - 1);
        }

        /* renamed from: l */
        public BlockType m28491l() {
            int size = this.remotes.size();
            return size > 0 ? this.remotes.get(size - 1).block_type : BlockType.NONE;
        }

        /* renamed from: m */
        public BlockResult m28490m() {
            if (this.remotes.size() <= 0) {
                return BlockResult.UNINITIALIZED;
            }
            List<Remote> list = this.remotes;
            return list.get(list.size() - 1).blockResult;
        }

        /* renamed from: n */
        public long m28489n() {
            int size = this.remotes.size();
            if (size > 0) {
                return this.remotes.get(size - 1).callDialogPopupDuration;
            }
            return -1L;
        }

        /* renamed from: o */
        public long m28488o() {
            int size = this.remotes.size();
            if (size > 0) {
                return this.remotes.get(size - 1).callDialogSearchDuration;
            }
            return -1L;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
            if (r0.get(r0.size() - 1).is_contact != false) goto L_0x0031;
         */
        /* renamed from: p */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m28487p() {
            /*
                r4 = this;
                r0 = r4
                java.util.List<gogolook.callgogolook2.gson.CallStats$Call$Remote> r0 = r0.remotes
                int r0 = r0.size()
                r5 = r0
                r0 = 1
                r6 = r0
                r0 = r5
                if (r0 <= 0) goto L_0x002f
                r0 = r4
                java.util.List<gogolook.callgogolook2.gson.CallStats$Call$Remote> r0 = r0.remotes
                r7 = r0
                r0 = r7
                r1 = r7
                int r1 = r1.size()
                r2 = 1
                int r1 = r1 - r2
                java.lang.Object r0 = r0.get(r1)
                gogolook.callgogolook2.gson.CallStats$Call$Remote r0 = (gogolook.callgogolook2.gson.CallStats.Call.Remote) r0
                boolean r0 = r0.is_contact
                if (r0 == 0) goto L_0x002f
                goto L_0x0031
            L_0x002f:
                r0 = 0
                r6 = r0
            L_0x0031:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.gson.CallStats.Call.m28487p():boolean");
        }

        /* renamed from: q */
        public String m28486q() {
            if (this.remotes.size() <= 0) {
                return null;
            }
            List<Remote> list = this.remotes;
            return list.get(list.size() - 1).num;
        }

        /* renamed from: r */
        public long m28485r() {
            if (this.t_offhooks.size() <= 0) {
                return -1L;
            }
            List<Long> list = this.t_offhooks;
            return list.get(list.size() - 1).longValue();
        }

        /* renamed from: s */
        public long m28484s() {
            return this.t_out;
        }

        /* renamed from: t */
        public int m28483t() {
            return this.remotes.size();
        }

        /* renamed from: u */
        public String m28482u() {
            return this.uuid;
        }

        /* renamed from: v */
        public boolean m28481v() {
            return this.t_ringings.size() > 0;
        }

        /* renamed from: w */
        public boolean m28480w() {
            for (Remote remote : this.remotes) {
                if (remote.callDialogPopupDuration > CallUtils.m26540f()) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: x */
        public boolean m28479x() {
            boolean z = true;
            if (this.remotes.size() <= 1 || !this.status.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                z = false;
            }
            return z;
        }

        /* renamed from: y */
        public boolean m28478y() {
            return this.t_idle != 0;
        }

        /* renamed from: z */
        public boolean m28477z() {
            return this.t_offhooks.size() == 0 && !m28529B();
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallStats$CallContentObserver.class */
    public class CallContentObserver extends ContentObserver {
        public CallContentObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            CallStats.this.m28538d();
            C14356f.m1485a(2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallStats$Loader.class */
    public static class Loader {
        public static volatile CallStats INSTANCE = new CallStats();
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallStats$OnGetCallDurationListener.class */
    public interface OnGetCallDurationListener {
        /* renamed from: a */
        void mo5659a(long j);
    }

    public CallStats() {
        this.mCalls = new ConcurrentLinkedDeque<>();
        this.mCalls.add(new Call());
    }

    /* renamed from: a */
    public static void m28541a(boolean z) {
        sIsFake = z;
    }

    /* renamed from: h */
    public static CallStats m28534h() {
        return Loader.INSTANCE;
    }

    /* renamed from: i */
    public static boolean m28533i() {
        return sIsFake;
    }

    /* renamed from: a */
    public void m28546a() {
        final Call poll = this.mCalls.poll();
        if (poll != null) {
            Single.create(new Single.OnSubscribe<Void>() { // from class: gogolook.callgogolook2.gson.CallStats.2
                /* renamed from: a */
                public void call(SingleSubscriber<? super Void> singleSubscriber) {
                    CallStats.this.m28545a(poll);
                    singleSubscriber.onSuccess(null);
                }
            }).delay(2L, TimeUnit.SECONDS).subscribeOn(Schedulers.m0io()).subscribe(Actions.empty(), new Action1<Throwable>() { // from class: gogolook.callgogolook2.gson.CallStats.1
                /* renamed from: a */
                public void call(Throwable th) {
                    C14080m2.m2612a(th);
                }
            });
        }
    }

    /* renamed from: a */
    public final void m28545a(Call call) {
        synchronized (this) {
            if (call != null) {
                try {
                    if (!call.m28529B() && call.t_ringings.size() == 0) {
                        C14289m.m1881a(call.m28529B(), call.m28487p(), true, (Integer) null, 5);
                    } else if (C13915b3.m3059b("isNumberTransmissionAccepted")) {
                        for (int i = 0; i < call.m28483t(); i++) {
                            Call.Remote a = call.m28524a(i);
                            if (!C14108o4.m2496a(a.c_info.num, C14108o4.EnumC14110b.CALL) && !C14108o4.m2496a(a.c_info.num, C14108o4.EnumC14110b.OTHERS)) {
                                String str = a.e164;
                                CustomHitrateObject customHitrateObject = new CustomHitrateObject();
                                CInfo cInfo = a.c_info;
                                customHitrateObject.name = cInfo.name;
                                customHitrateObject.name_d = cInfo.name_d;
                                customHitrateObject.name_type = cInfo.name_type;
                                customHitrateObject.duration = (int) a.duration;
                                customHitrateObject.lnglat = cInfo.lnglat;
                                customHitrateObject.lookup_source = cInfo.lookup_source;
                                customHitrateObject.hit = a.s_info;
                                customHitrateObject.num = a.e164;
                                customHitrateObject.ori_num = a.num;
                                if (C11052i.m10328e().m10334b(str)) {
                                    customHitrateObject.off_info.put(NumberInfo.InfoSource.OFFLINE_DB.toString(), String.valueOf(C14063l4.m2654k()));
                                } else if (C11052i.m10328e().m10331c(str)) {
                                    customHitrateObject.off_info.put("PERSONAL_OFF_DB", C12436l.m6168g().toString());
                                }
                                C6384a.m22873a(str, customHitrateObject);
                                C14261f.m1984a(call.m28529B() ? C14261f.EnumC14264c.a_Outgoing_Call : C14261f.EnumC14264c.a_Incoming_Call, call, a.c_info);
                                C14289m.m1885a(a.s_info, a.c_info);
                            }
                        }
                    }
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        }
    }

    /* renamed from: b */
    public Call m28540b() {
        if (this.mCalls.isEmpty()) {
            this.mCalls.add(new Call());
        }
        return this.mCalls.peekFirst();
    }

    /* renamed from: c */
    public Call m28539c() {
        if (this.mCalls.isEmpty()) {
            this.mCalls.add(new Call());
        }
        return this.mCalls.peekLast();
    }

    /* renamed from: d */
    public void m28538d() {
        synchronized (this) {
            if (this.mCallContentObserver != null) {
                Context o = MyApplication.m29013o();
                if (this.mCalls.getLast() != null) {
                    this.mCalls.getLast().m28522a(o);
                    if (this.mOnGetFirstCallDurationListener != null && this.mCalls.getLast().remotes.size() > 0 && this.mCalls.getLast().remotes.get(0).duration >= 0) {
                        this.mOnGetFirstCallDurationListener.mo5659a(this.mCalls.getLast().remotes.get(0).duration);
                    }
                }
                try {
                    o.getContentResolver().unregisterContentObserver(this.mCallContentObserver);
                    this.mCallContentObserver = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: e */
    public int m28537e() {
        return this.mCalls.size();
    }

    /* renamed from: f */
    public void m28536f() {
        Call c = m28539c();
        if (c == null || !C14217x3.m2160b(c.status)) {
            this.mCalls.add(new Call());
        }
    }

    /* renamed from: g */
    public void m28535g() {
        synchronized (this) {
            Context o = MyApplication.m29013o();
            if (this.mCallContentObserver == null && C13878a3.m3207k()) {
                this.mCallContentObserver = new CallContentObserver(new Handler(Looper.getMainLooper()));
                try {
                    o.getContentResolver().registerContentObserver(CallLog.Calls.CONTENT_URI, false, this.mCallContentObserver);
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: gogolook.callgogolook2.gson.CallStats.3
                        @Override // java.lang.Runnable
                        public void run() {
                            CallStats.this.m28538d();
                        }
                    }, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
                } catch (SecurityException e) {
                    this.mCallContentObserver = null;
                    C14080m2.m2613a(TAG, e, true);
                }
            }
        }
    }
}
