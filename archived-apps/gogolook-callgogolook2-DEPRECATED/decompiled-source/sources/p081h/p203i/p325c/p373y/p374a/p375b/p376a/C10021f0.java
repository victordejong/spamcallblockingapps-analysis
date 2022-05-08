package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import android.app.DownloadManager;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.LongSparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p271l.C8075e2;
import p081h.p203i.p204a.p224e.p259j.p271l.C8125g7;
import p081h.p203i.p204a.p224e.p259j.p271l.C8246m6;
import p081h.p203i.p204a.p224e.p259j.p271l.C8299p6;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p204a.p224e.p259j.p271l.EnumC8223l4;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p081h.p203i.p325c.p373y.p374a.p377c.C10047c;
import p081h.p203i.p325c.p373y.p374a.p377c.C10051e;
/* renamed from: h.i.c.y.a.b.a.f0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/f0.class */
public final class C10021f0 {

    /* renamed from: j */
    public static final C6999k f22666j = new C6999k("ModelDownloadManager", "");
    @GuardedBy("RemoteModelDownloadManager.class")

    /* renamed from: k */
    public static final Map<String, C10021f0> f22667k = new HashMap();
    @GuardedBy("this")

    /* renamed from: a */
    public final LongSparseArray<C10025h0> f22668a = new LongSparseArray<>();
    @GuardedBy("this")

    /* renamed from: b */
    public final LongSparseArray<C9145i<Void>> f22669b = new LongSparseArray<>();

    /* renamed from: c */
    public final C8386u6 f22670c;

    /* renamed from: d */
    public final DownloadManager f22671d;

    /* renamed from: e */
    public final C10051e f22672e;

    /* renamed from: f */
    public final C10023g0 f22673f;

    /* renamed from: g */
    public final C8125g7 f22674g;

    /* renamed from: h */
    public final C10036s f22675h;

    /* renamed from: i */
    public C10047c f22676i;

    public C10021f0(@NonNull C8386u6 u6Var, @NonNull C10051e eVar, @NonNull C10036s sVar, @NonNull C10023g0 g0Var) {
        this.f22670c = u6Var;
        this.f22672e = eVar;
        this.f22671d = (DownloadManager) u6Var.m18152a().getSystemService("download");
        if (this.f22671d == null) {
            f22666j.m21339a("ModelDownloadManager", "Download manager service is not available in the service.");
        }
        this.f22675h = sVar;
        this.f22673f = g0Var;
        this.f22674g = C8125g7.m18518a(u6Var);
    }

    /* renamed from: a */
    public static C10021f0 m13606a(@NonNull C8386u6 u6Var, @NonNull C10051e eVar, @NonNull C10036s sVar, @NonNull C10023g0 g0Var) {
        C10021f0 f0Var;
        synchronized (C10021f0.class) {
            try {
                String d = eVar.m13522d();
                if (!f22667k.containsKey(d)) {
                    f22667k.put(d, new C10021f0(u6Var, eVar, sVar, g0Var));
                }
                f0Var = f22667k.get(d);
            } catch (Throwable th) {
                throw th;
            }
        }
        return f0Var;
    }

    /* renamed from: a */
    public static boolean m13601a(Integer num) {
        if (num != null) {
            return num.intValue() == 8 || num.intValue() == 16;
        }
        return false;
    }

    /* renamed from: a */
    public final int m13600a(Long l) {
        DownloadManager downloadManager = this.f22671d;
        Cursor query = (downloadManager == null || l == null) ? null : downloadManager.query(new DownloadManager.Query().setFilterById(l.longValue()));
        int i = 0;
        if (query != null) {
            i = 0;
            if (query.moveToFirst()) {
                int columnIndex = query.getColumnIndex("reason");
                i = 0;
                if (columnIndex != -1) {
                    i = query.getInt(columnIndex);
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public final C10025h0 m13608a(long j) {
        C10025h0 h0Var;
        synchronized (this) {
            C10025h0 h0Var2 = this.f22668a.get(j);
            h0Var = h0Var2;
            if (h0Var2 == null) {
                h0Var = new C10025h0(this, j, m13597b(j), null);
                this.f22668a.put(j, h0Var);
            }
        }
        return h0Var;
    }

    @Nullable
    /* renamed from: a */
    public final Long m13609a() {
        Long a;
        synchronized (this) {
            a = this.f22674g.m18516a(this.f22672e);
        }
        return a;
    }

    /* renamed from: a */
    public final Long m13607a(@NonNull DownloadManager.Request request, @NonNull C10018e eVar) {
        synchronized (this) {
            if (this.f22671d == null) {
                return null;
            }
            long enqueue = this.f22671d.enqueue(request);
            C6999k kVar = f22666j;
            StringBuilder sb = new StringBuilder(53);
            sb.append("Schedule a new downloading task: ");
            sb.append(enqueue);
            kVar.m21339a("ModelDownloadManager", sb.toString());
            this.f22674g.m18519a(enqueue, eVar);
            this.f22673f.m13576a(EnumC8223l4.NO_ERROR, false, eVar.m13611c(), C8075e2.EnumC8077b.SCHEDULED);
            return Long.valueOf(enqueue);
        }
    }

    @Nullable
    @WorkerThread
    /* renamed from: a */
    public final Long m13605a(@NonNull C10018e eVar, @NonNull C10047c cVar) throws C10009a {
        Uri uri;
        String str;
        synchronized (this) {
            C7021t.m21289a(cVar, "DownloadConditions can not be null");
            String b = this.f22674g.m18510b(this.f22672e);
            Integer d = m13591d();
            if (b != null) {
                str = eVar.f22662c;
                if (b.equals(str) && d != null) {
                    if (!m13601a(m13591d())) {
                        this.f22673f.m13576a(EnumC8223l4.NO_ERROR, false, m13583j(), C8075e2.EnumC8077b.DOWNLOADING);
                    }
                    f22666j.m21339a("ModelDownloadManager", "New model is already in downloading, do nothing.");
                    return null;
                }
            }
            f22666j.m21339a("ModelDownloadManager", "Need to download a new model.");
            m13594c();
            uri = eVar.f22661b;
            DownloadManager.Request request = new DownloadManager.Request(uri);
            request.setDestinationUri(null);
            if (this.f22675h.m13558a(eVar)) {
                f22666j.m21339a("ModelDownloadManager", "Model update is enabled and have a previous downloaded model, use download condition");
                this.f22673f.m13576a(EnumC8223l4.NO_ERROR, false, eVar.m13611c(), C8075e2.EnumC8077b.UPDATE_AVAILABLE);
            }
            if (Build.VERSION.SDK_INT >= 24) {
                request.setRequiresCharging(cVar.m13539a());
                request.setRequiresDeviceIdle(cVar.m13538b());
            }
            if (cVar.m13537c()) {
                request.setAllowedNetworkTypes(2);
            }
            return m13607a(request, eVar);
        }
    }

    /* renamed from: a */
    public final void m13602a(@NonNull C10047c cVar) {
        C7021t.m21289a(cVar, "DownloadConditions can not be null");
        this.f22676i = cVar;
    }

    /* renamed from: a */
    public final void m13599a(@NonNull String str, @NonNull EnumC10040w wVar) throws C10009a {
        synchronized (this) {
            this.f22674g.m18514a(this.f22672e, str, wVar);
            m13594c();
        }
    }

    /* renamed from: b */
    public final C9145i<Void> m13597b(long j) {
        C9145i<Void> iVar;
        synchronized (this) {
            C9145i<Void> iVar2 = this.f22669b.get(j);
            iVar = iVar2;
            if (iVar2 == null) {
                iVar = new C9145i<>();
                this.f22669b.put(j, iVar);
            }
        }
        return iVar;
    }

    /* renamed from: b */
    public final C10009a m13595b(Long l) {
        String str;
        DownloadManager downloadManager = this.f22671d;
        Cursor query = (downloadManager == null || l == null) ? null : downloadManager.query(new DownloadManager.Query().setFilterById(l.longValue()));
        int i = 13;
        if (query == null || !query.moveToFirst()) {
            str = "Model downloading failed";
        } else {
            int i2 = query.getInt(query.getColumnIndex("reason"));
            if (i2 == 1006) {
                i = 101;
                str = "Model downloading failed due to insufficient space on the device.";
            } else {
                StringBuilder sb = new StringBuilder(84);
                sb.append("Model downloading failed due to error code: ");
                sb.append(i2);
                sb.append(" from Android DownloadManager");
                str = sb.toString();
            }
        }
        return new C10009a(str, i);
    }

    @Nullable
    /* renamed from: b */
    public final String m13598b() {
        String b;
        synchronized (this) {
            b = this.f22674g.m18510b(this.f22672e);
        }
        return b;
    }

    /* renamed from: c */
    public final AbstractC9143h<Void> m13593c(long j) {
        this.f22670c.m18152a().registerReceiver(m13608a(j), new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), null, C8299p6.m18209c().m18216a());
        return m13597b(j).m16008a();
    }

    /* renamed from: c */
    public final void m13594c() throws C10009a {
        synchronized (this) {
            Long a = m13609a();
            if (this.f22671d != null && a != null) {
                C6999k kVar = f22666j;
                String valueOf = String.valueOf(a);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 44);
                sb.append("Cancel or remove existing downloading task: ");
                sb.append(valueOf);
                kVar.m21339a("ModelDownloadManager", sb.toString());
                if (this.f22671d.remove(a.longValue()) > 0 || m13591d() == null) {
                    this.f22675h.m13557a(this.f22672e.m13522d(), m13583j());
                    this.f22674g.m18500h(this.f22672e);
                }
            }
        }
    }

    @Nullable
    /* renamed from: d */
    public final Integer m13591d() {
        synchronized (this) {
            Long a = m13609a();
            if (this.f22671d == null || a == null) {
                return null;
            }
            Cursor query = this.f22671d.query(new DownloadManager.Query().setFilterById(a.longValue()));
            Integer valueOf = (query == null || !query.moveToFirst()) ? null : Integer.valueOf(query.getInt(query.getColumnIndex("status")));
            if (valueOf == null) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            Integer num = valueOf;
            if (valueOf.intValue() != 2) {
                num = valueOf;
                if (valueOf.intValue() != 4) {
                    num = valueOf;
                    if (valueOf.intValue() != 1) {
                        num = valueOf;
                        if (valueOf.intValue() != 8) {
                            num = valueOf;
                            if (valueOf.intValue() != 16) {
                                num = null;
                            }
                        }
                    }
                }
            }
            if (query != null) {
                query.close();
            }
            return num;
        }
    }

    @Nullable
    /* renamed from: e */
    public final ParcelFileDescriptor m13589e() {
        synchronized (this) {
            Long a = m13609a();
            ParcelFileDescriptor parcelFileDescriptor = null;
            if (this.f22671d == null || a == null) {
                return null;
            }
            try {
                parcelFileDescriptor = this.f22671d.openDownloadedFile(a.longValue());
            } catch (FileNotFoundException e) {
                f22666j.m21337b("ModelDownloadManager", "Downloaded file is not found");
            }
            return parcelFileDescriptor;
        }
    }

    @Nullable
    @WorkerThread
    /* renamed from: f */
    public final C10018e m13587f() throws C10009a {
        String str;
        String str2;
        synchronized (this) {
            boolean i = m13584i();
            boolean z = false;
            if (i) {
                this.f22673f.m13576a(EnumC8223l4.NO_ERROR, false, this.f22674g.m18505d(this.f22672e), C8075e2.EnumC8077b.LIVE);
            }
            C10018e a = C10024h.m13574a(this.f22670c, this.f22672e, this.f22673f);
            if (a == null) {
                return null;
            }
            C8386u6 u6Var = this.f22670c;
            C10051e eVar = this.f22672e;
            str = a.f22662c;
            C8125g7 a2 = C8125g7.m18518a(u6Var);
            if (str.equals(a2.m18503e(eVar)) && C8246m6.m18280a(u6Var.m18152a()).equals(a2.m18506d())) {
                f22666j.m21337b("ModelDownloadManager", "The model is incompatible with TFLite and the app is not upgraded, do not download");
            } else {
                z = true;
            }
            if (!i) {
                this.f22674g.m18499i(this.f22672e);
            }
            C8386u6 u6Var2 = this.f22670c;
            C10051e eVar2 = this.f22672e;
            str2 = a.f22662c;
            boolean z2 = !str2.equals(C8125g7.m18518a(u6Var2).m18507c(eVar2));
            if (z && (!i || z2)) {
                return a;
            }
            if (i && (z2 ^ z)) {
                return null;
            }
            String b = this.f22672e.m13525b();
            StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 46);
            sb.append("The model ");
            sb.append(b);
            sb.append(" is incompatible with TFLite runtime");
            throw new C10009a(sb.toString(), 100);
        }
    }

    @WorkerThread
    /* renamed from: g */
    public final boolean m13586g() throws C10009a {
        try {
            if (!m13584i()) {
                return C7018s.m21297a(m13591d(), 8);
            }
            return true;
        } catch (C10009a e) {
            throw new C10009a("Failed to check if the model is downloaded.", 13, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a9 A[Catch: a -> 0x011f, TRY_ENTER, TryCatch #1 {a -> 0x011f, blocks: (B:7:0x0020, B:9:0x0033, B:15:0x004a, B:19:0x0057, B:21:0x0060, B:30:0x007d, B:32:0x0084, B:37:0x00a9, B:40:0x00b7, B:43:0x00cb, B:47:0x00d7, B:49:0x00e5, B:51:0x00ee, B:51:0x00ee, B:52:0x00f1, B:55:0x00fe, B:57:0x0108, B:60:0x0119), top: B:67:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b7 A[Catch: a -> 0x011f, TRY_ENTER, TryCatch #1 {a -> 0x011f, blocks: (B:7:0x0020, B:9:0x0033, B:15:0x004a, B:19:0x0057, B:21:0x0060, B:30:0x007d, B:32:0x0084, B:37:0x00a9, B:40:0x00b7, B:43:0x00cb, B:47:0x00d7, B:49:0x00e5, B:51:0x00ee, B:51:0x00ee, B:52:0x00f1, B:55:0x00fe, B:57:0x0108, B:60:0x0119), top: B:67:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ca  */
    @androidx.annotation.WorkerThread
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p081h.p203i.p204a.p224e.p293r.AbstractC9143h<java.lang.Void> m13585h() {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10021f0.m13585h():h.i.a.e.r.h");
    }

    /* renamed from: i */
    public final boolean m13584i() throws C10009a {
        return this.f22675h.m13556b(this.f22672e.m13522d(), this.f22674g.m18505d(this.f22672e));
    }

    /* renamed from: j */
    public final EnumC10040w m13583j() {
        String b = this.f22674g.m18510b(this.f22672e);
        return b == null ? EnumC10040w.UNKNOWN : this.f22674g.m18512a(b);
    }
}
