package p131c.p161d.p282e.p352w;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.abt.AbtException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p283i.C5140b;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p352w.p353o.C6084e;
import p131c.p161d.p282e.p352w.p353o.C6087f;
import p131c.p161d.p282e.p352w.p353o.C6094k;
import p131c.p161d.p282e.p352w.p353o.C6097m;
import p131c.p161d.p282e.p352w.p353o.C6098n;
import p131c.p161d.p282e.p352w.p353o.C6101p;
/* renamed from: c.d.e.w.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/g.class */
public class C6070g {

    /* renamed from: a */
    public final Context f19512a;

    /* renamed from: b */
    public final C5140b f19513b;

    /* renamed from: c */
    public final Executor f19514c;

    /* renamed from: d */
    public final C6084e f19515d;

    /* renamed from: e */
    public final C6084e f19516e;

    /* renamed from: f */
    public final C6084e f19517f;

    /* renamed from: g */
    public final C6094k f19518g;

    /* renamed from: h */
    public final C6097m f19519h;

    /* renamed from: i */
    public final C6098n f19520i;

    public C6070g(Context context, C5128c cVar, AbstractC5898g gVar, C5140b bVar, Executor executor, C6084e eVar, C6084e eVar2, C6084e eVar3, C6094k kVar, C6097m mVar, C6098n nVar) {
        this.f19512a = context;
        this.f19513b = bVar;
        this.f19514c = executor;
        this.f19515d = eVar;
        this.f19516e = eVar2;
        this.f19517f = eVar3;
        this.f19518g = kVar;
        this.f19519h = mVar;
        this.f19520i = nVar;
    }

    /* renamed from: a */
    public static C6070g m22152a(C5128c cVar) {
        return ((C6078m) cVar.m24471a(C6078m.class)).m22122a();
    }

    /* renamed from: a */
    public static /* synthetic */ Task m22149a(C6070g gVar, Task task, Task task2, Task task3) throws Exception {
        if (!task.mo8601e() || task.mo8606b() == null) {
            return Tasks.m8591a(false);
        }
        C6087f fVar = (C6087f) task.mo8606b();
        return (!task2.mo8601e() || m22145a(fVar, (C6087f) task2.mo8606b())) ? gVar.f19516e.m22101a(fVar).mo8611a(gVar.f19514c, C6064a.m22160a(gVar)) : Tasks.m8591a(false);
    }

    /* renamed from: a */
    public static boolean m22145a(C6087f fVar, C6087f fVar2) {
        return fVar2 == null || !fVar.m22090c().equals(fVar2.m22090c());
    }

    /* renamed from: b */
    public static List<Map<String, String>> m22137b(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    /* renamed from: g */
    public static C6070g m22132g() {
        return m22152a(C5128c.m24458j());
    }

    /* renamed from: a */
    public Task<Boolean> m22154a() {
        Task<C6087f> b = this.f19515d.m22097b();
        Task<C6087f> b2 = this.f19516e.m22097b();
        return Tasks.m8586b(b, b2).mo8604b(this.f19514c, C6066c.m22158a(this, b, b2));
    }

    /* renamed from: a */
    public Task<Void> m22153a(int i) {
        return m22141a(C6101p.m22018a(this.f19512a, i));
    }

    /* renamed from: a */
    public Task<Void> m22147a(C6072i iVar) {
        return Tasks.m8589a(this.f19514c, CallableC6068e.m22156a(this, iVar));
    }

    /* renamed from: a */
    public final Task<Void> m22141a(Map<String, String> map) {
        try {
            C6087f.C6089b f = C6087f.m22087f();
            f.m22084a(map);
            return this.f19517f.m22101a(f.m22086a()).mo8612a(C6069f.m22155a());
        } catch (JSONException e) {
            Log.e("FirebaseRemoteConfig", "The provided defaults map could not be processed.", e);
            return Tasks.m8591a((Object) null);
        }
    }

    /* renamed from: a */
    public void m22140a(JSONArray jSONArray) {
        if (this.f19513b != null) {
            try {
                this.f19513b.m24427b(m22137b(jSONArray));
            } catch (AbtException e) {
                Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e);
            } catch (JSONException e2) {
                Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e2);
            }
        }
    }

    /* renamed from: a */
    public final boolean m22143a(Task<C6087f> task) {
        if (!task.mo8601e()) {
            return false;
        }
        this.f19515d.m22105a();
        if (task.mo8606b() != null) {
            m22140a(task.mo8606b().m22093a());
            return true;
        }
        Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
        return true;
    }

    /* renamed from: a */
    public boolean m22142a(String str) {
        return this.f19519h.m22044a(str);
    }

    /* renamed from: b */
    public Task<Void> m22139b() {
        return this.f19518g.m22076a().mo8612a(C6067d.m22157a());
    }

    /* renamed from: b */
    public String m22138b(String str) {
        return this.f19519h.m22040b(str);
    }

    /* renamed from: c */
    public Task<Boolean> m22136c() {
        return m22139b().mo8607a(this.f19514c, C6065b.m22159a(this));
    }

    /* renamed from: d */
    public Map<String, AbstractC6075j> m22135d() {
        return this.f19519h.m22049a();
    }

    /* renamed from: e */
    public AbstractC6071h m22134e() {
        return this.f19520i.m22032c();
    }

    /* renamed from: f */
    public void m22133f() {
        this.f19516e.m22097b();
        this.f19517f.m22097b();
        this.f19515d.m22097b();
    }
}
