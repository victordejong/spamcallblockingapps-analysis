package p459j.p460a.p530k;

import android.os.AsyncTask;
import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p521j0.p522u.C12518a;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p541n0.C13041b;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14042j4;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p594z4.C14356f;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Actions;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.k.e */
/* loaded from: classes2-dex2jar.jar:j/a/k/e.class */
public class AsyncTaskC12833e extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    public String f28987a;

    /* renamed from: b */
    public String f28988b;

    /* renamed from: c */
    public int f28989c;

    /* renamed from: d */
    public int f28990d;

    /* renamed from: e */
    public C12942i f28991e;

    /* renamed from: f */
    public boolean f28992f;

    /* renamed from: g */
    public boolean f28993g;

    /* renamed from: h */
    public C12518a.EnumC12519a f28994h;

    /* renamed from: j.a.k.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/k/e$a.class */
    public class C12834a extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ String f28995d;

        /* renamed from: j.a.k.e$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/k/e$a$a.class */
        public class C12835a implements Single.OnSubscribe<Object> {

            /* renamed from: a */
            public final /* synthetic */ NumberInfo f28997a;

            public C12835a(NumberInfo numberInfo) {
                this.f28997a = numberInfo;
            }

            /* renamed from: a */
            public void call(SingleSubscriber<? super Object> singleSubscriber) {
                String a = C14042j4.m2727a(C12834a.this.f28995d);
                C14092n3.m2583b("block_history_newest_name", this.f28997a.m28393C());
                int i = AsyncTaskC12833e.this.f28989c;
                if (i == 1) {
                    C14289m.m1889a(AsyncTaskC12833e.this.f28987a, C12834a.this.f28995d, this.f28997a.m28383M(), C14217x3.m2133i(MyApplication.m29013o(), C12834a.this.f28995d), this.f28997a.m28381O() > 0, this.f28997a.m28393C(), !TextUtils.isEmpty(a), a, AsyncTaskC12833e.this.f28991e.f29291c, AsyncTaskC12833e.this.f28991e.m4962b() == CallStats.BlockResult.SUCCESS, AsyncTaskC12833e.this.f28992f, AsyncTaskC12833e.this.f28993g, AsyncTaskC12833e.this.f28994h.toString());
                } else if (i == 2) {
                    C14289m.m1890a(AsyncTaskC12833e.this.f28987a, C12834a.this.f28995d, this.f28997a.m28383M(), C14217x3.m2133i(MyApplication.m29013o(), C12834a.this.f28995d), this.f28997a.m28381O() > 0, this.f28997a.m28393C(), !TextUtils.isEmpty(a), a, AsyncTaskC12833e.this.f28991e.f29291c);
                }
                singleSubscriber.onSuccess(null);
            }
        }

        public C12834a(String str) {
            this.f28995d = str;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (numberInfo.m28296s0()) {
                Single.create(new C12835a(numberInfo)).subscribeOn(Schedulers.m0io()).subscribe(Actions.empty(), C14081m3.m2611a());
            }
        }
    }

    public AsyncTaskC12833e(String str, int i, int i2, String str2, C12942i iVar, boolean z, boolean z2, C12518a.EnumC12519a aVar) {
        this.f28987a = str;
        if (TextUtils.isEmpty(this.f28987a)) {
            this.f28987a = "";
        }
        this.f28989c = i;
        this.f28990d = i2;
        this.f28988b = str2;
        this.f28991e = iVar;
        this.f28992f = z;
        this.f28993g = z2;
        this.f28994h = aVar;
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        long currentTimeMillis = System.currentTimeMillis();
        String l = C14108o4.m2474l(this.f28987a);
        if (this.f28991e.m4962b() == CallStats.BlockResult.SUCCESS) {
            String str = this.f28987a;
            String str2 = this.f28988b;
            int i = this.f28989c;
            int i2 = this.f28990d;
            C12942i iVar = this.f28991e;
            C13041b.m4726a(new BlockLogRealmObject(-1L, str, l, str2, i, i2, currentTimeMillis, currentTimeMillis, 1, iVar.f29289a, iVar.f29290b));
            C14073m.m2633a(1);
            C14092n3.m2583b("block_history_newest_name", l);
            C14356f.m1485a(6);
        }
        C11052i.m10328e().m10340a(this.f28987a, new C12834a(l), 0, EnumC11047e.Other);
        return null;
    }

    /* renamed from: a */
    public void onPostExecute(Void r4) {
        try {
            C14037j3.m2731a().mo2704a(new C14020h1(true));
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        super.onPostExecute(r4);
    }
}
