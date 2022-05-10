package p131c.p396i.p397a.p404g;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p396i.p397a.p404g.AbstractC6544c;
/* renamed from: c.i.a.g.d */
/* loaded from: classes2-dex2jar.jar:c/i/a/g/d.class */
public class C6547d {

    /* renamed from: a */
    public final List<AbstractC6544c> f20310a = new ArrayList();

    /* renamed from: b */
    public final List<AbstractC6544c.AbstractC6546b> f20311b = new ArrayList();

    /* renamed from: a */
    public static boolean m20546a(Activity activity, AbstractC6544c cVar) {
        boolean z = false;
        if (activity == null) {
            return false;
        }
        C6547d a = C6541b.m20556a().m20555a(activity);
        if (a != null) {
            z = true;
        }
        if (z) {
            a.m20543a(cVar);
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m20541b(Activity activity, AbstractC6544c cVar) {
        boolean z = false;
        if (activity == null) {
            return false;
        }
        C6547d a = C6541b.m20556a().m20555a(activity);
        if (a != null) {
            z = true;
        }
        if (z) {
            a.m20539b(cVar);
        }
        return z;
    }

    /* renamed from: a */
    public void m20548a() {
        this.f20310a.clear();
        this.f20311b.clear();
    }

    /* renamed from: a */
    public void m20547a(int i) {
        for (int i2 = 0; i2 < this.f20311b.size(); i2++) {
            this.f20311b.get(i2).onTrimMemory(i);
        }
        for (int i3 = 0; i3 < this.f20310a.size(); i3++) {
            this.f20310a.get(i3).onTrimMemory(i);
        }
    }

    /* renamed from: a */
    public void m20545a(Configuration configuration) {
        for (int i = 0; i < this.f20311b.size(); i++) {
            this.f20311b.get(i).onConfigurationChanged(configuration);
        }
        for (int i2 = 0; i2 < this.f20310a.size(); i2++) {
            this.f20310a.get(i2).onConfigurationChanged(configuration);
        }
    }

    /* renamed from: a */
    public void m20544a(Bundle bundle) {
        for (int i = 0; i < this.f20311b.size(); i++) {
            this.f20311b.get(i).onCreate(bundle);
        }
        for (int i2 = 0; i2 < this.f20310a.size(); i2++) {
            this.f20310a.get(i2).onCreate(bundle);
        }
    }

    /* renamed from: a */
    public void m20543a(AbstractC6544c cVar) {
        if (cVar instanceof AbstractC6544c.AbstractC6546b) {
            this.f20311b.add((AbstractC6544c.AbstractC6546b) cVar);
            Collections.sort(this.f20311b);
            return;
        }
        this.f20310a.add(cVar);
    }

    /* renamed from: b */
    public void m20542b() {
        for (int i = 0; i < this.f20311b.size(); i++) {
            this.f20311b.get(i).onDestroy();
        }
        for (int i2 = 0; i2 < this.f20310a.size(); i2++) {
            this.f20310a.get(i2).onDestroy();
        }
    }

    /* renamed from: b */
    public void m20540b(Bundle bundle) {
        for (int i = 0; i < this.f20311b.size(); i++) {
            this.f20311b.get(i).onSaveInstanceState(bundle);
        }
        for (int i2 = 0; i2 < this.f20310a.size(); i2++) {
            this.f20310a.get(i2).onSaveInstanceState(bundle);
        }
    }

    /* renamed from: b */
    public void m20539b(AbstractC6544c cVar) {
        if (cVar instanceof AbstractC6544c.AbstractC6546b) {
            this.f20311b.remove(cVar);
        } else {
            this.f20310a.remove(cVar);
        }
    }

    /* renamed from: c */
    public void m20538c() {
        for (int i = 0; i < this.f20311b.size(); i++) {
            this.f20311b.get(i).onLowMemory();
        }
        for (int i2 = 0; i2 < this.f20310a.size(); i2++) {
            this.f20310a.get(i2).onLowMemory();
        }
    }

    /* renamed from: d */
    public void m20537d() {
        for (int i = 0; i < this.f20311b.size(); i++) {
            this.f20311b.get(i).onPause();
        }
        for (int i2 = 0; i2 < this.f20310a.size(); i2++) {
            this.f20310a.get(i2).onPause();
        }
    }

    /* renamed from: e */
    public void m20536e() {
        for (int i = 0; i < this.f20311b.size(); i++) {
            this.f20311b.get(i).onResume();
        }
        for (int i2 = 0; i2 < this.f20310a.size(); i2++) {
            this.f20310a.get(i2).onResume();
        }
    }

    /* renamed from: f */
    public void m20535f() {
        for (int i = 0; i < this.f20311b.size(); i++) {
            this.f20311b.get(i).onStart();
        }
        for (int i2 = 0; i2 < this.f20310a.size(); i2++) {
            this.f20310a.get(i2).onStart();
        }
    }

    /* renamed from: g */
    public void m20534g() {
        for (int i = 0; i < this.f20311b.size(); i++) {
            this.f20311b.get(i).mo20551l0();
        }
        for (int i2 = 0; i2 < this.f20310a.size(); i2++) {
            this.f20310a.get(i2).mo20551l0();
        }
    }
}
