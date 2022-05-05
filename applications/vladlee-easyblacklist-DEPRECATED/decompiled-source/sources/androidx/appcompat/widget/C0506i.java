package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i.class */
public class C0506i extends DataSetObservable {

    /* renamed from: a */
    static final String f2394a = C0506i.class.getSimpleName();

    /* renamed from: e */
    private static final Object f2395e = new Object();

    /* renamed from: f */
    private static final Map<String, C0506i> f2396f = new HashMap();

    /* renamed from: b */
    final Context f2397b;

    /* renamed from: c */
    final String f2398c;

    /* renamed from: d */
    boolean f2399d;

    /* renamed from: g */
    private final Object f2400g;

    /* renamed from: h */
    private final List<C0507a> f2401h;

    /* renamed from: i */
    private final List<C0509c> f2402i;

    /* renamed from: j */
    private Intent f2403j;

    /* renamed from: k */
    private AbstractC0508b f2404k;

    /* renamed from: l */
    private int f2405l;

    /* renamed from: m */
    private boolean f2406m;

    /* renamed from: n */
    private boolean f2407n;

    /* renamed from: o */
    private boolean f2408o;

    /* renamed from: p */
    private AbstractC0510d f2409p;

    /* renamed from: androidx.appcompat.widget.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i$a.class */
    public static final class C0507a implements Comparable<C0507a> {

        /* renamed from: a */
        public final ResolveInfo f2410a;

        /* renamed from: b */
        public float f2411b;

        public C0507a(ResolveInfo resolveInfo) {
            this.f2410a = resolveInfo;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(C0507a aVar) {
            return Float.floatToIntBits(aVar.f2411b) - Float.floatToIntBits(this.f2411b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.f2411b) == Float.floatToIntBits(((C0507a) obj).f2411b);
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.f2411b) + 31;
        }

        public final String toString() {
            return "[resolveInfo:" + this.f2410a.toString() + "; weight:" + new BigDecimal(this.f2411b) + "]";
        }
    }

    /* renamed from: androidx.appcompat.widget.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i$b.class */
    public interface AbstractC0508b {
    }

    /* renamed from: androidx.appcompat.widget.i$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i$c.class */
    public static final class C0509c {

        /* renamed from: a */
        public final ComponentName f2412a;

        /* renamed from: b */
        public final long f2413b;

        /* renamed from: c */
        public final float f2414c;

        public C0509c(ComponentName componentName, long j, float f) {
            this.f2412a = componentName;
            this.f2413b = j;
            this.f2414c = f;
        }

        public C0509c(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0509c cVar = (C0509c) obj;
            ComponentName componentName = this.f2412a;
            if (componentName == null) {
                if (cVar.f2412a != null) {
                    return false;
                }
            } else if (!componentName.equals(cVar.f2412a)) {
                return false;
            }
            return this.f2413b == cVar.f2413b && Float.floatToIntBits(this.f2414c) == Float.floatToIntBits(cVar.f2414c);
        }

        public final int hashCode() {
            ComponentName componentName = this.f2412a;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j = this.f2413b;
            return ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Float.floatToIntBits(this.f2414c);
        }

        public final String toString() {
            return "[; activity:" + this.f2412a + "; time:" + this.f2413b + "; weight:" + new BigDecimal(this.f2414c) + "]";
        }
    }

    /* renamed from: androidx.appcompat.widget.i$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i$d.class */
    public interface AbstractC0510d {
        /* renamed from: a */
        boolean m9012a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.i$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i$e.class */
    public final class AsyncTaskC0511e extends AsyncTask<Object, Void, Void> {
        AsyncTaskC0511e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream openFileOutput = C0506i.this.f2397b.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    try {
                        newSerializer.setOutput(openFileOutput, null);
                        newSerializer.startDocument("UTF-8", Boolean.TRUE);
                        newSerializer.startTag(null, "historical-records");
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            C0509c cVar = (C0509c) list.remove(0);
                            newSerializer.startTag(null, "historical-record");
                            newSerializer.attribute(null, "activity", cVar.f2412a.flattenToString());
                            newSerializer.attribute(null, "time", String.valueOf(cVar.f2413b));
                            newSerializer.attribute(null, "weight", String.valueOf(cVar.f2414c));
                            newSerializer.endTag(null, "historical-record");
                        }
                        newSerializer.endTag(null, "historical-records");
                        newSerializer.endDocument();
                        C0506i.this.f2399d = true;
                        if (openFileOutput == null) {
                            return null;
                        }
                    } catch (Throwable th) {
                        C0506i.this.f2399d = true;
                        if (openFileOutput != null) {
                            try {
                                openFileOutput.close();
                            } catch (IOException e) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    String str2 = C0506i.f2394a;
                    Log.e(str2, "Error writing historical record file: " + C0506i.this.f2398c, e2);
                    C0506i.this.f2399d = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                } catch (IllegalArgumentException e3) {
                    String str3 = C0506i.f2394a;
                    Log.e(str3, "Error writing historical record file: " + C0506i.this.f2398c, e3);
                    C0506i.this.f2399d = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                } catch (IllegalStateException e4) {
                    String str4 = C0506i.f2394a;
                    Log.e(str4, "Error writing historical record file: " + C0506i.this.f2398c, e4);
                    C0506i.this.f2399d = true;
                    if (openFileOutput == null) {
                        return null;
                    }
                }
                try {
                    openFileOutput.close();
                    return null;
                } catch (IOException e5) {
                    return null;
                }
            } catch (FileNotFoundException e6) {
                Log.e(C0506i.f2394a, "Error writing historical record file: ".concat(String.valueOf(str)), e6);
                return null;
            }
        }
    }

    /* renamed from: a */
    private boolean m9024a(C0509c cVar) {
        boolean add = this.f2402i.add(cVar);
        if (add) {
            this.f2407n = true;
            m9014i();
            m9019d();
            m9017f();
            notifyChanged();
        }
        return add;
    }

    /* renamed from: d */
    private void m9019d() {
        if (!this.f2406m) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        } else if (this.f2407n) {
            this.f2407n = false;
            if (!TextUtils.isEmpty(this.f2398c)) {
                new AsyncTaskC0511e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f2402i), this.f2398c);
            }
        }
    }

    /* renamed from: e */
    private void m9018e() {
        boolean g = m9016g();
        boolean h = m9015h();
        m9014i();
        if (g || h) {
            m9017f();
            notifyChanged();
        }
    }

    /* renamed from: f */
    private boolean m9017f() {
        if (this.f2404k == null || this.f2403j == null || this.f2401h.isEmpty() || this.f2402i.isEmpty()) {
            return false;
        }
        Collections.unmodifiableList(this.f2402i);
        return true;
    }

    /* renamed from: g */
    private boolean m9016g() {
        if (!this.f2408o || this.f2403j == null) {
            return false;
        }
        this.f2408o = false;
        this.f2401h.clear();
        List<ResolveInfo> queryIntentActivities = this.f2397b.getPackageManager().queryIntentActivities(this.f2403j, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.f2401h.add(new C0507a(queryIntentActivities.get(i)));
        }
        return true;
    }

    /* renamed from: h */
    private boolean m9015h() {
        if (!this.f2399d || !this.f2407n || TextUtils.isEmpty(this.f2398c)) {
            return false;
        }
        this.f2399d = false;
        this.f2406m = true;
        m9013j();
        return true;
    }

    /* renamed from: i */
    private void m9014i() {
        int size = this.f2402i.size() - this.f2405l;
        if (size > 0) {
            this.f2407n = true;
            for (int i = 0; i < size; i++) {
                this.f2402i.remove(0);
            }
        }
    }

    /* renamed from: j */
    private void m9013j() {
        FileInputStream openFileInput;
        try {
            try {
                openFileInput = this.f2397b.openFileInput(this.f2398c);
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setInput(openFileInput, "UTF-8");
                    for (int i = 0; i != 1 && i != 2; i = newPullParser.next()) {
                    }
                    if ("historical-records".equals(newPullParser.getName())) {
                        List<C0509c> list = this.f2402i;
                        list.clear();
                        while (true) {
                            int next = newPullParser.next();
                            if (next != 1) {
                                if (!(next == 3 || next == 4)) {
                                    if ("historical-record".equals(newPullParser.getName())) {
                                        list.add(new C0509c(newPullParser.getAttributeValue(null, "activity"), Long.parseLong(newPullParser.getAttributeValue(null, "time")), Float.parseFloat(newPullParser.getAttributeValue(null, "weight"))));
                                    } else {
                                        throw new XmlPullParserException("Share records file not well-formed.");
                                    }
                                }
                            } else if (openFileInput != null) {
                                try {
                                    openFileInput.close();
                                    return;
                                } catch (IOException e) {
                                    return;
                                }
                            } else {
                                return;
                            }
                        }
                    } else {
                        throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                    }
                } catch (IOException e2) {
                    String str = f2394a;
                    Log.e(str, "Error reading historical recrod file: " + this.f2398c, e2);
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException e3) {
                        }
                    }
                } catch (XmlPullParserException e4) {
                    String str2 = f2394a;
                    Log.e(str2, "Error reading historical recrod file: " + this.f2398c, e4);
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException e5) {
                        }
                    }
                }
            } catch (Throwable th) {
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                    } catch (IOException e6) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e7) {
        }
    }

    /* renamed from: a */
    public final int m9027a() {
        int size;
        synchronized (this.f2400g) {
            m9018e();
            size = this.f2401h.size();
        }
        return size;
    }

    /* renamed from: a */
    public final int m9025a(ResolveInfo resolveInfo) {
        synchronized (this.f2400g) {
            m9018e();
            List<C0507a> list = this.f2401h;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).f2410a == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: a */
    public final ResolveInfo m9026a(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f2400g) {
            m9018e();
            resolveInfo = this.f2401h.get(i).f2410a;
        }
        return resolveInfo;
    }

    /* renamed from: b */
    public final Intent m9022b(int i) {
        synchronized (this.f2400g) {
            if (this.f2403j == null) {
                return null;
            }
            m9018e();
            C0507a aVar = this.f2401h.get(i);
            ComponentName componentName = new ComponentName(aVar.f2410a.activityInfo.packageName, aVar.f2410a.activityInfo.name);
            Intent intent = new Intent(this.f2403j);
            intent.setComponent(componentName);
            if (this.f2409p != null) {
                new Intent(intent);
                if (this.f2409p.m9012a()) {
                    return null;
                }
            }
            m9024a(new C0509c(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    /* renamed from: b */
    public final ResolveInfo m9023b() {
        synchronized (this.f2400g) {
            m9018e();
            if (this.f2401h.isEmpty()) {
                return null;
            }
            return this.f2401h.get(0).f2410a;
        }
    }

    /* renamed from: c */
    public final int m9021c() {
        int size;
        synchronized (this.f2400g) {
            m9018e();
            size = this.f2402i.size();
        }
        return size;
    }

    /* renamed from: c */
    public final void m9020c(int i) {
        synchronized (this.f2400g) {
            m9018e();
            C0507a aVar = this.f2401h.get(i);
            C0507a aVar2 = this.f2401h.get(0);
            m9024a(new C0509c(new ComponentName(aVar.f2410a.activityInfo.packageName, aVar.f2410a.activityInfo.name), System.currentTimeMillis(), aVar2 != null ? (aVar2.f2411b - aVar.f2411b) + 5.0f : 1.0f));
        }
    }
}
