package com.netqin.p525cm.receiver;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.provider.CallLog;
import com.libaray.gdpr.GdprHelper;
import java.util.ArrayList;
import java.util.Iterator;
import p131c.p431l.p432a.p465k.AbstractC6834a;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6860r;
/* renamed from: com.netqin.cm.receiver.CBPhoneStateReceiver */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/receiver/CBPhoneStateReceiver.class */
public class CBPhoneStateReceiver {

    /* renamed from: d */
    public static final Uri f35664d = CallLog.Calls.CONTENT_URI;

    /* renamed from: e */
    public static ArrayList<AbstractC6834a> f35665e = new ArrayList<>();

    /* renamed from: f */
    public static CBPhoneStateReceiver f35666f;

    /* renamed from: a */
    public Context f35667a;

    /* renamed from: b */
    public C9160a f35668b;

    /* renamed from: c */
    public boolean f35669c;

    /* renamed from: com.netqin.cm.receiver.CBPhoneStateReceiver$PhoneStateReceiver */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/receiver/CBPhoneStateReceiver$PhoneStateReceiver.class */
    public static class PhoneStateReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (GdprHelper.m5353a(context)) {
                C6850i.m19579a("PhoneStateReceiver", "->onReceive:action is:" + intent.getAction());
                if ("android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction())) {
                    if (CBPhoneStateReceiver.m3266b(intent.getStringExtra("android.intent.extra.PHONE_NUMBER"))) {
                        abortBroadcast();
                    }
                } else if (("android.intent.action.PHONE_STATE".equals(intent.getAction()) || "android.intent.action.PHONE_STATE_2".equals(intent.getAction())) && CBPhoneStateReceiver.m3268b(context, intent)) {
                    try {
                        C6850i.m19580a("Aborting phone broadcast not used ");
                    } catch (Exception e) {
                        C6850i.m19580a("Aborting broadcast cause exception :" + e.getMessage());
                    }
                }
            }
        }
    }

    /* renamed from: com.netqin.cm.receiver.CBPhoneStateReceiver$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/receiver/CBPhoneStateReceiver$a.class */
    public class C9160a extends ContentObserver {

        /* renamed from: a */
        public long f35670a = 0;

        /* renamed from: b */
        public Context f35671b;

        public C9160a(Context context, Handler handler) {
            super(handler);
            this.f35671b = context;
        }

        /* renamed from: a */
        public Cursor m3265a() {
            return this.f35671b.getContentResolver().query(CBPhoneStateReceiver.f35664d, null, null, null, "_id DESC LIMIT 1");
        }

        /* renamed from: a */
        public boolean m3264a(long j) {
            ContentResolver contentResolver = this.f35671b.getContentResolver();
            Uri uri = CBPhoneStateReceiver.f35664d;
            StringBuilder sb = new StringBuilder();
            sb.append("_id=");
            sb.append(j);
            return contentResolver.delete(uri, sb.toString(), null) > 0;
        }

        /* renamed from: b */
        public long m3263b() {
            long j;
            Cursor query = this.f35671b.getContentResolver().query(CBPhoneStateReceiver.f35664d, new String[]{"_id", "date"}, null, null, "_id DESC LIMIT 1");
            if (query == null || query.getCount() <= 0) {
                j = 0;
            } else {
                query.moveToFirst();
                j = query.getLong(query.getColumnIndex("_id"));
            }
            if (query != null) {
                query.close();
            }
            return j;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C6850i.m19579a("CBPhoneStateReceiver", "onChange 方法被执行 " + C6860r.m19548a());
            long b = m3263b();
            if (b > this.f35670a) {
                this.f35670a = b;
                Cursor a = m3265a();
                if (a != null) {
                    if (a.moveToFirst()) {
                        String string = a.getString(a.getColumnIndex("number"));
                        String str = string;
                        if (string.contains("-")) {
                            str = string.replace("-", "");
                        }
                        int i = a.getInt(a.getColumnIndex("type"));
                        long j = a.getLong(a.getColumnIndex("_id"));
                        if (CBPhoneStateReceiver.this.m3270a(str, i)) {
                            boolean a2 = m3264a(j);
                            C6850i.m19580a("删除结果：" + a2);
                        }
                    }
                    a.close();
                    return;
                }
                return;
            }
            this.f35670a = b;
        }
    }

    public CBPhoneStateReceiver(Context context) {
        this.f35667a = context.getApplicationContext();
        this.f35668b = new C9160a(this.f35667a, null);
        try {
            this.f35667a.getContentResolver().registerContentObserver(f35664d, true, this.f35668b);
            this.f35669c = true;
        } catch (Exception e) {
            this.f35669c = false;
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static CBPhoneStateReceiver m3275a(Context context) {
        CBPhoneStateReceiver cBPhoneStateReceiver;
        synchronized (CBPhoneStateReceiver.class) {
            try {
                if (f35666f == null) {
                    f35666f = new CBPhoneStateReceiver(context);
                }
                cBPhoneStateReceiver = f35666f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cBPhoneStateReceiver;
    }

    /* renamed from: b */
    public static boolean m3268b(Context context, Intent intent) {
        C6850i.m19579a("CBPhoneStateReceiver", "onPhoneStateChanged");
        Iterator<AbstractC6834a> it = f35665e.iterator();
        while (it.hasNext()) {
            if (it.next().mo19626a(context, intent)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m3266b(String str) {
        Iterator<AbstractC6834a> it = f35665e.iterator();
        while (it.hasNext()) {
            if (it.next().mo19625a(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public void m3276a() {
        if (!this.f35669c) {
            this.f35667a.getContentResolver().registerContentObserver(f35664d, true, this.f35668b);
            this.f35669c = true;
        }
    }

    /* renamed from: a */
    public void m3273a(AbstractC6834a aVar) {
        if (!f35665e.contains(aVar)) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= f35665e.size()) {
                    break;
                } else if (f35665e.get(i).mo19627a() < aVar.mo19627a()) {
                    f35665e.add(i, aVar);
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                f35665e.add(aVar);
            }
        }
    }

    /* renamed from: a */
    public final boolean m3270a(String str, int i) {
        Iterator<AbstractC6834a> it = f35665e.iterator();
        while (it.hasNext()) {
            if (it.next().mo19624a(str, i)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public void m3267b(AbstractC6834a aVar) {
        f35665e.remove(aVar);
    }
}
