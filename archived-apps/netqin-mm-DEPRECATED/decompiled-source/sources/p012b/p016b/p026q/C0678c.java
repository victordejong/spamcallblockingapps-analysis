package p012b.p016b.p026q;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import com.android.volley.Request;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;
/* renamed from: b.b.q.c */
/* loaded from: classes-dex2jar.jar:b/b/q/c.class */
public class C0678c extends DataSetObservable {

    /* renamed from: n */
    public static final String f3361n = C0678c.class.getSimpleName();

    /* renamed from: a */
    public final Object f3362a;

    /* renamed from: b */
    public final List<C0679a> f3363b;

    /* renamed from: c */
    public final List<C0681c> f3364c;

    /* renamed from: d */
    public final Context f3365d;

    /* renamed from: e */
    public final String f3366e;

    /* renamed from: f */
    public Intent f3367f;

    /* renamed from: g */
    public AbstractC0680b f3368g;

    /* renamed from: h */
    public int f3369h;

    /* renamed from: i */
    public boolean f3370i;

    /* renamed from: j */
    public boolean f3371j;

    /* renamed from: k */
    public boolean f3372k;

    /* renamed from: l */
    public boolean f3373l;

    /* renamed from: m */
    public AbstractC0682d f3374m;

    /* renamed from: b.b.q.c$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/c$a.class */
    public static final class C0679a implements Comparable<C0679a> {

        /* renamed from: a */
        public final ResolveInfo f3375a;

        /* renamed from: b */
        public float f3376b;

        public C0679a(ResolveInfo resolveInfo) {
            this.f3375a = resolveInfo;
        }

        /* renamed from: a */
        public int compareTo(C0679a aVar) {
            return Float.floatToIntBits(aVar.f3376b) - Float.floatToIntBits(this.f3376b);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && C0679a.class == obj.getClass() && Float.floatToIntBits(this.f3376b) == Float.floatToIntBits(((C0679a) obj).f3376b);
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f3376b) + 31;
        }

        public String toString() {
            return "[resolveInfo:" + this.f3375a.toString() + "; weight:" + new BigDecimal(this.f3376b) + "]";
        }
    }

    /* renamed from: b.b.q.c$b */
    /* loaded from: classes-dex2jar.jar:b/b/q/c$b.class */
    public interface AbstractC0680b {
        /* renamed from: a */
        void m36462a(Intent intent, List<C0679a> list, List<C0681c> list2);
    }

    /* renamed from: b.b.q.c$c */
    /* loaded from: classes-dex2jar.jar:b/b/q/c$c.class */
    public static final class C0681c {

        /* renamed from: a */
        public final ComponentName f3377a;

        /* renamed from: b */
        public final long f3378b;

        /* renamed from: c */
        public final float f3379c;

        public C0681c(ComponentName componentName, long j, float f) {
            this.f3377a = componentName;
            this.f3378b = j;
            this.f3379c = f;
        }

        public C0681c(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0681c.class != obj.getClass()) {
                return false;
            }
            C0681c cVar = (C0681c) obj;
            ComponentName componentName = this.f3377a;
            if (componentName == null) {
                if (cVar.f3377a != null) {
                    return false;
                }
            } else if (!componentName.equals(cVar.f3377a)) {
                return false;
            }
            return this.f3378b == cVar.f3378b && Float.floatToIntBits(this.f3379c) == Float.floatToIntBits(cVar.f3379c);
        }

        public int hashCode() {
            ComponentName componentName = this.f3377a;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.f3378b;
            return ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Float.floatToIntBits(this.f3379c);
        }

        public String toString() {
            return "[; activity:" + this.f3377a + "; time:" + this.f3378b + "; weight:" + new BigDecimal(this.f3379c) + "]";
        }
    }

    /* renamed from: b.b.q.c$d */
    /* loaded from: classes-dex2jar.jar:b/b/q/c$d.class */
    public interface AbstractC0682d {
        /* renamed from: a */
        boolean m36461a(C0678c cVar, Intent intent);
    }

    /* renamed from: b.b.q.c$e */
    /* loaded from: classes-dex2jar.jar:b/b/q/c$e.class */
    public final class AsyncTaskC0683e extends AsyncTask<Object, Void, Void> {
        public AsyncTaskC0683e() {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream openFileOutput = C0678c.this.f3365d.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    try {
                        try {
                            newSerializer.setOutput(openFileOutput, null);
                            newSerializer.startDocument(Request.DEFAULT_PARAMS_ENCODING, true);
                            newSerializer.startTag(null, "historical-records");
                            int size = list.size();
                            for (int i = 0; i < size; i++) {
                                C0681c cVar = (C0681c) list.remove(0);
                                newSerializer.startTag(null, "historical-record");
                                newSerializer.attribute(null, "activity", cVar.f3377a.flattenToString());
                                newSerializer.attribute(null, "time", String.valueOf(cVar.f3378b));
                                newSerializer.attribute(null, "weight", String.valueOf(cVar.f3379c));
                                newSerializer.endTag(null, "historical-record");
                            }
                            newSerializer.endTag(null, "historical-records");
                            newSerializer.endDocument();
                            C0678c.this.f3370i = true;
                            if (openFileOutput == null) {
                                return null;
                            }
                        } catch (IllegalStateException e) {
                            String str2 = C0678c.f3361n;
                            Log.e(str2, "Error writing historical record file: " + C0678c.this.f3366e, e);
                            C0678c.this.f3370i = true;
                            if (openFileOutput == null) {
                                return null;
                            }
                        }
                    } catch (IOException e2) {
                        String str3 = C0678c.f3361n;
                        Log.e(str3, "Error writing historical record file: " + C0678c.this.f3366e, e2);
                        C0678c.this.f3370i = true;
                        if (openFileOutput == null) {
                            return null;
                        }
                    } catch (IllegalArgumentException e3) {
                        String str4 = C0678c.f3361n;
                        Log.e(str4, "Error writing historical record file: " + C0678c.this.f3366e, e3);
                        C0678c.this.f3370i = true;
                        if (openFileOutput == null) {
                            return null;
                        }
                    }
                    try {
                        openFileOutput.close();
                        return null;
                    } catch (IOException e4) {
                        return null;
                    }
                } catch (Throwable th) {
                    C0678c.this.f3370i = true;
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e6) {
                String str5 = C0678c.f3361n;
                Log.e(str5, "Error writing historical record file: " + str, e6);
                return null;
            }
        }
    }

    static {
        new HashMap();
    }

    /* renamed from: a */
    public int m36476a(ResolveInfo resolveInfo) {
        synchronized (this.f3362a) {
            try {
                m36478a();
                List<C0679a> list = this.f3363b;
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    if (list.get(i).f3375a == resolveInfo) {
                        return i;
                    }
                }
                return -1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public Intent m36477a(int i) {
        synchronized (this.f3362a) {
            if (this.f3367f == null) {
                return null;
            }
            m36478a();
            C0679a aVar = this.f3363b.get(i);
            ComponentName componentName = new ComponentName(aVar.f3375a.activityInfo.packageName, aVar.f3375a.activityInfo.name);
            Intent intent = new Intent(this.f3367f);
            intent.setComponent(componentName);
            if (this.f3374m != null) {
                if (this.f3374m.m36461a(this, new Intent(intent))) {
                    return null;
                }
            }
            m36475a(new C0681c(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    /* renamed from: a */
    public final void m36478a() {
        boolean e = m36469e();
        boolean h = m36466h();
        m36467g();
        if (e || h) {
            m36464j();
            notifyChanged();
        }
    }

    /* renamed from: a */
    public final boolean m36475a(C0681c cVar) {
        boolean add = this.f3364c.add(cVar);
        if (add) {
            this.f3372k = true;
            m36467g();
            m36468f();
            m36464j();
            notifyChanged();
        }
        return add;
    }

    /* renamed from: b */
    public int m36474b() {
        int size;
        synchronized (this.f3362a) {
            m36478a();
            size = this.f3363b.size();
        }
        return size;
    }

    /* renamed from: b */
    public ResolveInfo m36473b(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f3362a) {
            m36478a();
            resolveInfo = this.f3363b.get(i).f3375a;
        }
        return resolveInfo;
    }

    /* renamed from: c */
    public ResolveInfo m36472c() {
        synchronized (this.f3362a) {
            m36478a();
            if (this.f3363b.isEmpty()) {
                return null;
            }
            return this.f3363b.get(0).f3375a;
        }
    }

    /* renamed from: c */
    public void m36471c(int i) {
        synchronized (this.f3362a) {
            m36478a();
            C0679a aVar = this.f3363b.get(i);
            C0679a aVar2 = this.f3363b.get(0);
            m36475a(new C0681c(new ComponentName(aVar.f3375a.activityInfo.packageName, aVar.f3375a.activityInfo.name), System.currentTimeMillis(), aVar2 != null ? (aVar2.f3376b - aVar.f3376b) + 5.0f : 1.0f));
        }
    }

    /* renamed from: d */
    public int m36470d() {
        int size;
        synchronized (this.f3362a) {
            m36478a();
            size = this.f3364c.size();
        }
        return size;
    }

    /* renamed from: e */
    public final boolean m36469e() {
        if (!this.f3373l || this.f3367f == null) {
            return false;
        }
        this.f3373l = false;
        this.f3363b.clear();
        List<ResolveInfo> queryIntentActivities = this.f3365d.getPackageManager().queryIntentActivities(this.f3367f, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.f3363b.add(new C0679a(queryIntentActivities.get(i)));
        }
        return true;
    }

    /* renamed from: f */
    public final void m36468f() {
        if (!this.f3371j) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        } else if (this.f3372k) {
            this.f3372k = false;
            if (!TextUtils.isEmpty(this.f3366e)) {
                new AsyncTaskC0683e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f3364c), this.f3366e);
            }
        }
    }

    /* renamed from: g */
    public final void m36467g() {
        int size = this.f3364c.size() - this.f3369h;
        if (size > 0) {
            this.f3372k = true;
            for (int i = 0; i < size; i++) {
                this.f3364c.remove(0);
            }
        }
    }

    /* renamed from: h */
    public final boolean m36466h() {
        if (!this.f3370i || !this.f3372k || TextUtils.isEmpty(this.f3366e)) {
            return false;
        }
        this.f3370i = false;
        this.f3371j = true;
        m36465i();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005a, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
        return;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m36465i() {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p026q.C0678c.m36465i():void");
    }

    /* renamed from: j */
    public final boolean m36464j() {
        if (this.f3368g == null || this.f3367f == null || this.f3363b.isEmpty() || this.f3364c.isEmpty()) {
            return false;
        }
        this.f3368g.m36462a(this.f3367f, this.f3363b, Collections.unmodifiableList(this.f3364c));
        return true;
    }
}
