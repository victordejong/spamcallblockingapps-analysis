package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.p003g.AbstractC0049a;
import androidx.core.app.C0174b;
import androidx.lifecycle.AbstractC0329h;
import androidx.lifecycle.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
/* renamed from: androidx.activity.result.d */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/d.class */
public abstract class AbstractC0042d {

    /* renamed from: a */
    private Random f78a = new Random();

    /* renamed from: b */
    private final Map<Integer, String> f79b = new HashMap();

    /* renamed from: c */
    private final Map<String, Integer> f80c = new HashMap();

    /* renamed from: d */
    private final Map<String, C0044c> f81d = new HashMap();

    /* renamed from: e */
    final transient Map<String, C0043b<?>> f82e = new HashMap();

    /* renamed from: f */
    final Map<String, Object> f83f = new HashMap();

    /* renamed from: g */
    final Bundle f84g = new Bundle();

    /* renamed from: androidx.activity.result.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/d$b.class */
    public static class C0043b<O> {

        /* renamed from: a */
        final AbstractC0040b<O> f85a;

        /* renamed from: b */
        final AbstractC0049a<?, O> f86b;

        C0043b(AbstractC0040b<O> abstractC0040b, AbstractC0049a<?, O> abstractC0049a) {
            this.f85a = abstractC0040b;
            this.f86b = abstractC0049a;
        }
    }

    /* renamed from: androidx.activity.result.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/d$c.class */
    private static class C0044c {

        /* renamed from: a */
        final AbstractC0329h f87a;

        /* renamed from: b */
        private final ArrayList<l> f88b;

        /* renamed from: a */
        void m6958a() {
            Iterator<l> it = this.f88b.iterator();
            while (it.hasNext()) {
                this.f87a.m5437c((l) it.next());
            }
            this.f88b.clear();
        }
    }

    /* renamed from: a */
    private void m6969a(int i, String str) {
        this.f79b.put(Integer.valueOf(i), str);
        this.f80c.put(str, Integer.valueOf(i));
    }

    /* renamed from: d */
    private <O> void m6966d(String str, int i, Intent intent, C0043b<O> c0043b) {
        AbstractC0040b<O> abstractC0040b;
        if (c0043b != null && (abstractC0040b = c0043b.f85a) != null) {
            abstractC0040b.m6973a(c0043b.f86b.m6946c(i, intent));
            return;
        }
        this.f83f.remove(str);
        this.f84g.putParcelable(str, new C0038a(i, intent));
    }

    /* renamed from: e */
    private int m6965e() {
        int nextInt = this.f78a.nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            if (this.f79b.containsKey(Integer.valueOf(i))) {
                nextInt = this.f78a.nextInt(2147418112);
            } else {
                return i;
            }
        }
    }

    /* renamed from: j */
    private int m6960j(String str) {
        Integer num = this.f80c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int m6965e = m6965e();
        m6969a(m6965e, str);
        return m6965e;
    }

    /* renamed from: b */
    public final boolean m6968b(int i, int i2, Intent intent) {
        String str = this.f79b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        m6966d(str, i2, intent, this.f82e.get(str));
        return true;
    }

    /* renamed from: c */
    public final <O> boolean m6967c(int i, O o) {
        AbstractC0040b<?> abstractC0040b;
        String str = this.f79b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        C0043b<?> c0043b = this.f82e.get(str);
        if (c0043b != null && (abstractC0040b = c0043b.f85a) != null) {
            abstractC0040b.m6973a(o);
            return true;
        }
        this.f84g.remove(str);
        this.f83f.put(str, o);
        return true;
    }

    /* renamed from: f */
    public abstract <I, O> void m6964f(int i, AbstractC0049a<I, O> abstractC0049a, I i2, C0174b c0174b);

    /* renamed from: g */
    public final void m6963g(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        int size = stringArrayList.size();
        for (int i = 0; i < size; i++) {
            m6969a(integerArrayList.get(i).intValue(), stringArrayList.get(i));
        }
        this.f78a = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
        this.f84g.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
    }

    /* renamed from: h */
    public final void m6962h(Bundle bundle) {
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f79b.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f79b.values()));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) this.f84g.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", this.f78a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public final <I, O> AbstractC0041c<I> m6961i(String str, AbstractC0049a<I, O> abstractC0049a, AbstractC0040b<O> abstractC0040b) {
        int m6960j = m6960j(str);
        this.f82e.put(str, new C0043b<>(abstractC0040b, abstractC0049a));
        if (this.f83f.containsKey(str)) {
            Object obj = this.f83f.get(str);
            this.f83f.remove(str);
            abstractC0040b.m6973a(obj);
        }
        C0038a c0038a = (C0038a) this.f84g.getParcelable(str);
        if (c0038a != null) {
            this.f84g.remove(str);
            abstractC0040b.m6973a(abstractC0049a.m6946c(c0038a.m6977b(), c0038a.m6978a()));
        }
        return new a(this, m6960j, abstractC0049a, str);
    }

    /* renamed from: k */
    final void m6959k(String str) {
        Integer remove = this.f80c.remove(str);
        if (remove != null) {
            this.f79b.remove(remove);
        }
        this.f82e.remove(str);
        if (this.f83f.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f83f.get(str));
            this.f83f.remove(str);
        }
        if (this.f84g.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f84g.getParcelable(str));
            this.f84g.remove(str);
        }
        C0044c c0044c = this.f81d.get(str);
        if (c0044c != null) {
            c0044c.m6958a();
            this.f81d.remove(str);
        }
    }
}
