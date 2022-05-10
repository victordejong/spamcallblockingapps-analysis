package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaaw.class */
public final class zzaaw {

    /* renamed from: a */
    public final Collection<zzaaq<?>> f23637a = new ArrayList();

    /* renamed from: b */
    public final Collection<zzaaq<String>> f23638b = new ArrayList();

    /* renamed from: c */
    public final Collection<zzaaq<String>> f23639c = new ArrayList();

    /* renamed from: a */
    public final List<String> m16929a() {
        ArrayList arrayList = new ArrayList();
        for (zzaaq<String> zzaaqVar : this.f23638b) {
            String str = (String) zzwm.m11166e().m16921a(zzaaqVar);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(zzabg.m16906a());
        return arrayList;
    }

    /* renamed from: a */
    public final void m16928a(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzaaq<?> zzaaqVar : this.f23637a) {
            if (zzaaqVar.m16931b() == 1) {
                zzaaqVar.mo16935a(editor, (SharedPreferences.Editor) zzaaqVar.mo16932a(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzbbq.m15856b("Flag Json is null.");
        }
    }

    /* renamed from: a */
    public final void m16927a(zzaaq zzaaqVar) {
        this.f23637a.add(zzaaqVar);
    }

    /* renamed from: b */
    public final List<String> m16926b() {
        List<String> a = m16929a();
        for (zzaaq<String> zzaaqVar : this.f23639c) {
            String str = (String) zzwm.m11166e().m16921a(zzaaqVar);
            if (!TextUtils.isEmpty(str)) {
                a.add(str);
            }
        }
        a.addAll(zzabg.m16904b());
        return a;
    }

    /* renamed from: b */
    public final void m16925b(zzaaq<String> zzaaqVar) {
        this.f23638b.add(zzaaqVar);
    }

    /* renamed from: c */
    public final void m16924c(zzaaq<String> zzaaqVar) {
        this.f23639c.add(zzaaqVar);
    }
}
