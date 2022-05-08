package p459j.p460a.p474c0.p475c;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.provider.Telephony;
import androidx.collection.LongSparseArray;
import com.aotter.net.trek.common.DiskLruCache;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.action.SyncMessagesAction;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12179k0;
import p459j.p460a.p582w0.p594z4.C14339d;
/* renamed from: j.a.c0.c.v */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/v.class */
public class C11565v {

    /* renamed from: a */
    public long f25846a = -1;

    /* renamed from: b */
    public long f25847b = -1;

    /* renamed from: c */
    public long f25848c = -1;

    /* renamed from: d */
    public final C11568c f25849d = new C11568c();

    /* renamed from: e */
    public LongSparseArray<C11566a> f25850e = null;

    /* renamed from: f */
    public final ContentObserver f25851f = new C11567b();

    /* renamed from: g */
    public boolean f25852g = false;

    /* renamed from: h */
    public boolean f25853h = false;

    /* renamed from: j.a.c0.c.v$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/v$a.class */
    public static class C11566a {

        /* renamed from: a */
        public final boolean f25854a;

        /* renamed from: b */
        public final boolean f25855b;

        /* renamed from: c */
        public final boolean f25856c;

        /* renamed from: d */
        public final String f25857d;

        /* renamed from: a */
        public String m9117a() {
            return this.f25857d;
        }

        /* renamed from: b */
        public boolean m9116b() {
            return this.f25854a;
        }

        /* renamed from: c */
        public boolean m9115c() {
            return this.f25855b;
        }

        /* renamed from: d */
        public boolean m9114d() {
            return this.f25856c;
        }
    }

    /* renamed from: j.a.c0.c.v$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/v$b.class */
    public class C11567b extends ContentObserver {
        public C11567b() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            onChange(z, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (C12153d0.m6992a("MessagingApp", 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("SyncManager: Sms/Mms DB changed @");
                sb.append(System.currentTimeMillis());
                sb.append(" for ");
                sb.append(uri == null ? "<unk>" : uri.toString());
                sb.append(" ");
                sb.append(C11565v.this.f25852g);
                sb.append("/");
                sb.append(C11565v.this.f25853h);
                C12153d0.m6983d("MessagingApp", sb.toString());
            }
            if (C11565v.this.f25852g) {
                C11565v.m9122e();
            }
            boolean unused = C11565v.this.f25853h;
        }
    }

    /* renamed from: j.a.c0.c.v$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/v$c.class */
    public static class C11568c {

        /* renamed from: a */
        public final LongSparseArray<String> f25859a = new LongSparseArray<>();

        /* renamed from: b */
        public final LongSparseArray<List<String>> f25860b = new LongSparseArray<>();

        /* renamed from: c */
        public final HashSet<String> f25861c = new HashSet<>();

        /* renamed from: d */
        public boolean f25862d = false;

        /* renamed from: a */
        public String m9111a(C11534l lVar, String str, long j, C11566a aVar) {
            String str2;
            synchronized (this) {
                C12151d.m6999b(lVar.m9211d().inTransaction());
                String str3 = this.f25859a.get(j);
                if (str3 != null) {
                    return str3;
                }
                ArrayList<ParticipantData> a = C11521c.m9357a(m9112a(j));
                if (aVar != null) {
                    String a2 = C11521c.m9382a(lVar, j, str, a, aVar.m9115c(), aVar.m9114d(), aVar.m9117a());
                    str2 = a2;
                    if (aVar.m9116b()) {
                        this.f25861c.add(a2);
                        str2 = a2;
                    }
                } else {
                    str2 = C11521c.m9382a(lVar, j, str, (List<ParticipantData>) a, false, false, (String) null);
                }
                if (str2 == null) {
                    return null;
                }
                this.f25859a.put(j, str2);
                return str2;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
            if (r9.isEmpty() != false) goto L_0x004b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0081, code lost:
            if (r8.isEmpty() != false) goto L_0x0084;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.List<java.lang.String> m9112a(long r6) {
            /*
                r5 = this;
                r0 = r5
                monitor-enter(r0)
                r0 = r5
                androidx.collection.LongSparseArray<java.util.List<java.lang.String>> r0 = r0.f25860b     // Catch: all -> 0x00c4
                r1 = r6
                java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00c4
                java.util.List r0 = (java.util.List) r0     // Catch: all -> 0x00c4
                r8 = r0
                r0 = r8
                r9 = r0
                r0 = r8
                if (r0 != 0) goto L_0x0039
                r0 = r6
                java.util.List r0 = p459j.p460a.p474c0.p488f.C11834j.m8087c(r0)     // Catch: all -> 0x00c4
                r8 = r0
                r0 = r8
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0039
                r0 = r8
                r9 = r0
                r0 = r8
                int r0 = r0.size()     // Catch: all -> 0x00c4
                if (r0 <= 0) goto L_0x0039
                r0 = r5
                androidx.collection.LongSparseArray<java.util.List<java.lang.String>> r0 = r0.f25860b     // Catch: all -> 0x00c4
                r1 = r6
                r2 = r8
                r0.put(r1, r2)     // Catch: all -> 0x00c4
                r0 = r8
                r9 = r0
            L_0x0039:
                r0 = r9
                if (r0 == 0) goto L_0x004b
                r0 = r9
                r8 = r0
                r0 = r9
                boolean r0 = r0.isEmpty()     // Catch: all -> 0x00c4
                if (r0 == 0) goto L_0x0074
            L_0x004b:
                r0 = r9
                r8 = r0
                r0 = r5
                boolean r0 = r0.f25862d     // Catch: all -> 0x00c4
                if (r0 != 0) goto L_0x0074
                androidx.collection.LongSparseArray r0 = p459j.p460a.p474c0.p488f.C11834j.m8101b()     // Catch: all -> 0x00c4
                r9 = r0
                r0 = r5
                androidx.collection.LongSparseArray<java.util.List<java.lang.String>> r0 = r0.f25860b     // Catch: all -> 0x00c4
                r1 = r9
                r0.putAll(r1)     // Catch: all -> 0x00c4
                r0 = r5
                r1 = 1
                r0.f25862d = r1     // Catch: all -> 0x00c4
                r0 = r5
                androidx.collection.LongSparseArray<java.util.List<java.lang.String>> r0 = r0.f25860b     // Catch: all -> 0x00c4
                r1 = r6
                java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00c4
                java.util.List r0 = (java.util.List) r0     // Catch: all -> 0x00c4
                r8 = r0
            L_0x0074:
                r0 = r8
                if (r0 == 0) goto L_0x0084
                r0 = r8
                r9 = r0
                r0 = r8
                boolean r0 = r0.isEmpty()     // Catch: all -> 0x00c4
                if (r0 == 0) goto L_0x00bf
            L_0x0084:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00c4, all -> 0x00c4
                r9 = r0
                r0 = r9
                r0.<init>()     // Catch: all -> 0x00c4
                r0 = r9
                java.lang.String r1 = "SyncManager : using unknown sender since thread "
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00c4
                r0 = r9
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00c4
                r0 = r9
                java.lang.String r1 = " couldn't find any recipients."
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00c4
                java.lang.String r0 = "MessagingApp"
                r1 = r9
                java.lang.String r1 = r1.toString()     // Catch: all -> 0x00c4
                p459j.p460a.p474c0.p499h.C12153d0.m6981e(r0, r1)     // Catch: all -> 0x00c4
                java.util.ArrayList r0 = com.google.common.collect.Lists.m31133a()     // Catch: all -> 0x00c4
                r9 = r0
                r0 = r9
                java.lang.String r1 = gogolook.callgogolook2.messaging.datamodel.data.ParticipantData.m27546L()     // Catch: all -> 0x00c4
                boolean r0 = r0.add(r1)     // Catch: all -> 0x00c4
            L_0x00bf:
                r0 = r5
                monitor-exit(r0)
                r0 = r9
                return r0
            L_0x00c4:
                r9 = move-exception
                r0 = r5
                monitor-exit(r0)
                r0 = r9
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.C11565v.C11568c.m9112a(long):java.util.List");
        }

        /* renamed from: a */
        public void m9113a() {
            synchronized (this) {
                if (C12153d0.m6992a("MessagingApp", 3)) {
                    C12153d0.m6991a("MessagingApp", "SyncManager: Cleared ThreadInfoCache");
                }
                this.f25859a.clear();
                this.f25860b.clear();
                this.f25861c.clear();
                this.f25862d = false;
            }
        }

        /* renamed from: a */
        public boolean m9110a(String str) {
            boolean contains;
            synchronized (this) {
                contains = this.f25861c.contains(str);
            }
            return contains;
        }
    }

    /* renamed from: e */
    public static void m9122e() {
        SyncMessagesAction.m27654z();
    }

    /* renamed from: f */
    public static void m9120f() {
        AbstractC12178k b = AbstractC12178k.m6912b();
        b.mo6904b("last_full_sync_time_millis", -1L);
        b.mo6904b("last_sync_time_millis", -1L);
    }

    /* renamed from: g */
    public static void m9118g() {
        SyncMessagesAction.m27663A();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* renamed from: a */
    public long m9134a(long j) {
        AbstractC12170i a = AbstractC12170i.m6941a();
        long a2 = AbstractC12178k.m6912b().mo6908a("last_full_sync_time_millis", -1L);
        a.mo6918a("bugle_sms_full_sync_backoff_time", 3600000L);
        long j2 = (a2 < 0 ? j : a2 + 3600000) - j;
        if (j2 > 0) {
            return j2;
        }
        return 0L;
    }

    /* renamed from: a */
    public void m9135a() {
        synchronized (this) {
            if (C12153d0.m6992a("MessagingApp", 3)) {
                C12153d0.m6991a("MessagingApp", "SyncManager: Sync started at " + this.f25846a + " marked as complete");
            }
            this.f25846a = -1L;
            this.f25850e = null;
            MessagingContentProvider.m27769e();
            C14339d.m1523b();
        }
    }

    /* renamed from: a */
    public final void m9133a(Context context) {
        if (!AbstractC12181l0.m6886t().m6891m()) {
            this.f25853h = false;
            this.f25852g = true;
        } else if (C12179k0.m6911a()) {
            this.f25853h = true;
            this.f25852g = true;
        } else {
            this.f25853h = false;
            this.f25852g = false;
        }
        if (this.f25853h || this.f25852g) {
            context.getContentResolver().registerContentObserver(Telephony.MmsSms.CONTENT_URI, true, this.f25851f);
        } else {
            context.getContentResolver().unregisterContentObserver(this.f25851f);
        }
    }

    /* renamed from: a */
    public boolean m9131a(boolean z, long j) {
        synchronized (this) {
            if (C12153d0.m6992a("MessagingApp", 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("SyncManager: Checking shouldSync ");
                sb.append(z ? "full " : "");
                sb.append("at ");
                sb.append(j);
                C12153d0.m6983d("MessagingApp", sb.toString());
            }
            if (z) {
                long a = m9134a(j);
                if (a > 0) {
                    if (C12153d0.m6992a("MessagingApp", 3)) {
                        C12153d0.m6991a("MessagingApp", "SyncManager: Full sync requested for " + j + " delayed for " + a + " ms");
                    }
                    return false;
                }
            }
            if (m9124d()) {
                if (C12153d0.m6992a("MessagingApp", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SyncManager: Not allowed to ");
                    sb2.append(z ? "full " : "");
                    sb2.append("sync yet; still running sync started at ");
                    sb2.append(this.f25846a);
                    C12153d0.m6991a("MessagingApp", sb2.toString());
                }
                return false;
            }
            if (C12153d0.m6992a("MessagingApp", 3)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("SyncManager: Starting ");
                sb3.append(z ? "full " : "");
                sb3.append("sync at ");
                sb3.append(j);
                C12153d0.m6991a("MessagingApp", sb3.toString());
            }
            this.f25846a = j;
            return true;
        }
    }

    /* renamed from: b */
    public C11566a m9129b(long j) {
        synchronized (this) {
            if (this.f25850e == null) {
                return null;
            }
            return this.f25850e.get(j);
        }
    }

    /* renamed from: b */
    public void m9128b(Context context) {
        m9133a(context);
        m9122e();
    }

    /* renamed from: b */
    public boolean m9130b() {
        return AbstractC12178k.m6912b().mo6908a("last_sync_time_millis", -1L) != -1;
    }

    /* renamed from: c */
    public C11568c m9126c() {
        return this.f25849d;
    }

    /* renamed from: c */
    public boolean m9125c(long j) {
        boolean z;
        synchronized (this) {
            z = true;
            C12151d.m6999b(this.f25847b >= 0);
            long j2 = this.f25848c;
            if (j2 < 0 || j2 < j) {
                z = false;
            }
            if (C12153d0.m6992a("MessagingApp", 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("SyncManager: Sync batch of messages from ");
                sb.append(j);
                sb.append(" to ");
                sb.append(this.f25847b);
                sb.append(" is ");
                sb.append(z ? DiskLruCache.f1470j : "clean");
                sb.append("; max change timestamp = ");
                sb.append(this.f25848c);
                C12153d0.m6991a("MessagingApp", sb.toString());
            }
            this.f25847b = -1L;
            this.f25848c = -1L;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m9124d() {
        boolean z;
        synchronized (this) {
            z = this.f25846a >= 0;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m9123d(long j) {
        boolean z;
        synchronized (this) {
            z = true;
            C12151d.m6999b(j >= 0);
            if (j != this.f25847b) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: e */
    public void m9121e(long j) {
        synchronized (this) {
            if (this.f25847b >= 0 && j <= this.f25847b) {
                this.f25848c = Math.max(this.f25847b, j);
                if (C12153d0.m6992a("MessagingApp", 3)) {
                    C12153d0.m6991a("MessagingApp", "SyncManager: New message @ " + j + " before upper bound of current sync batch " + this.f25847b);
                }
            } else if (C12153d0.m6992a("MessagingApp", 3)) {
                C12153d0.m6991a("MessagingApp", "SyncManager: New message @ " + j + " after upper bound of current sync batch " + this.f25847b);
            }
        }
    }

    /* renamed from: f */
    public void m9119f(long j) {
        synchronized (this) {
            C12151d.m6999b(this.f25847b < 0);
            this.f25847b = j;
            this.f25848c = -1L;
        }
    }
}
