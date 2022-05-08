package com.adbert;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.adbert.p009a.C1398f;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1409j;
import com.adbert.p009a.p010a.C1361b;
import com.adbert.p009a.p010a.C1367d;
import com.adbert.p009a.p010a.C1369e;
import com.adbert.p009a.p011b.C1378c;
import com.adbert.p009a.p012c.EnumC1383c;
import com.adbert.p009a.p012c.EnumC1387g;
import com.adbert.p009a.p012c.EnumC1389i;
import com.adbert.p009a.p013d.C1391a;
import com.adbert.p009a.p014e.C1397b;
import com.adbert.p015b.C1426d;
import com.adbert.p015b.C1457j;
/* loaded from: classes-dex2jar.jar:com/adbert/AdbertVideoBox.class */
public class AdbertVideoBox extends RelativeLayout {

    /* renamed from: e */
    public AdbertVideoBoxListener f309e;

    /* renamed from: g */
    public C1378c f311g;

    /* renamed from: k */
    public boolean f315k;

    /* renamed from: m */
    public C1426d f317m;

    /* renamed from: n */
    public Context f318n;

    /* renamed from: o */
    public C1457j f319o;

    /* renamed from: b */
    public String f306b = "";

    /* renamed from: c */
    public String f307c = "";

    /* renamed from: d */
    public String f308d = "";

    /* renamed from: f */
    public boolean f310f = false;

    /* renamed from: h */
    public int f312h = 50;

    /* renamed from: i */
    public int f313i = 0;

    /* renamed from: j */
    public int f314j = 0;

    /* renamed from: l */
    public String f316l = "";

    /* renamed from: a */
    public C1391a f305a = new C1391a() { // from class: com.adbert.AdbertVideoBox.5
        @Override // com.adbert.p009a.p013d.C1391a
        public void callReturnEvent() {
            AdbertVideoBox.this.m37303d();
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void closeAdView() {
            AdbertVideoBox.this.f309e.onCompletion();
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void endingCardAction(int i) {
            AdbertVideoBox.this.m37319a(i);
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void setLogo(ViewGroup viewGroup, boolean z) {
            if (AdbertVideoBox.this.f315k) {
                C1402g.m37147a(AdbertVideoBox.this.getContext(), (int) (AdbertVideoBox.this.f313i * 0.04d), viewGroup, z);
            } else {
                C1402g.m37147a(AdbertVideoBox.this.getContext(), (int) (AdbertVideoBox.this.f314j * 0.04d), viewGroup, z);
            }
        }
    };

    public AdbertVideoBox(Context context) {
        super(context);
        this.f318n = context;
        m37320a();
    }

    public AdbertVideoBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f318n = context;
        if (!isInEditMode()) {
            m37320a();
        }
    }

    public AdbertVideoBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f318n = context;
        if (!isInEditMode()) {
            m37320a();
        }
    }

    /* renamed from: a */
    private void m37320a() {
        this.f315k = C1402g.m37136b(this.f318n);
        this.f312h = C1402g.m37144a(this.f318n, this.f315k, this.f312h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37319a(int i) {
        C1378c cVar = this.f311g;
        if (!cVar.f441j) {
            cVar.f441j = true;
            m37303d();
        }
        m37304c(EnumC1389i.init.m37181a(i));
        C1409j.m37112a(this.f318n).m37107a(this.f311g.m37198a(), i, (C1409j.AbstractC1410a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37318a(int i, String str) {
        if (i != 200) {
            m37308b(EnumC1387g.ERROR_SERVICE.m37184a());
        } else if (str != null && str.isEmpty()) {
            m37308b(EnumC1387g.ERROR_JSON_EMPTY.m37184a());
        } else if (str != null && !str.isEmpty()) {
            this.f311g = new C1397b(getContext(), str, "native_video").m37164a();
            C1378c cVar = this.f311g;
            cVar.f439h = this.f316l;
            if (cVar == null) {
                m37308b(EnumC1387g.ERROR_JSON_PARSE.m37184a());
            } else if (cVar.f446o.isEmpty()) {
                m37308b(EnumC1387g.ERROR_JSON_PARSE.m37184a());
            } else {
                C1361b.m37272a().m37271a(this.f318n).m37262a(new C1361b.AbstractC1363a() { // from class: com.adbert.AdbertVideoBox.4
                    @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
                    public void onConnectionFail(C1367d dVar) {
                        AdbertVideoBox.this.m37308b(EnumC1387g.ERROR_DOWNLOAD_FILE.m37184a());
                    }

                    @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
                    public void onConnectionSuccess(C1367d dVar) {
                        AdbertVideoBox.this.m37313a(EnumC1387g.OK_DOWNLOAD.m37184a());
                        AdbertVideoBox.this.m37312b();
                    }
                }).m37255b(this.f311g.f446o, C1402g.m37135b(this.f318n, this.f311g.f446o));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37313a(final String str) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.adbert.AdbertVideoBox.2
            @Override // java.lang.Runnable
            public void run() {
                if (AdbertVideoBox.this.f309e != null) {
                    AdbertVideoBox.this.f309e.onReceived(str);
                }
                C1402g.m37127d(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m37312b() {
        if (!this.f311g.f436e.isEmpty()) {
            m37307c();
        }
        this.f317m = new C1426d(this.f318n, this.f311g.m37198a(), this.f312h, this.f305a);
        this.f317m.m37081a(getMeasuredWidth(), this.f314j);
        this.f317m.m37083a();
        addView(this.f317m);
        C1398f.m37161a(this.f318n, this.f311g.m37198a());
    }

    /* renamed from: b */
    private void m37311b(int i) {
        C1369e eVar = new C1369e(getContext());
        C1378c cVar = this.f311g;
        C1361b.m37272a().m37270a(this.f318n, this.f311g.f435d, eVar.m37238a(cVar.f437f, cVar.f438g, this.f316l, cVar.f440i, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m37308b(final String str) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.adbert.AdbertVideoBox.3
            @Override // java.lang.Runnable
            public void run() {
                if (AdbertVideoBox.this.f309e != null) {
                    AdbertVideoBox.this.f309e.onFailReceived(str);
                }
                C1402g.m37130c(str);
            }
        });
    }

    /* renamed from: c */
    private void m37307c() {
        SharedPreferences sharedPreferences = this.f318n.getSharedPreferences("ADBERT", 0);
        if (sharedPreferences.getBoolean("exise", false) && this.f318n != null) {
            sharedPreferences.edit().putBoolean("exist", true).apply();
            this.f319o = new C1457j(this.f318n);
            addView(this.f319o);
            this.f319o.loadUrl(this.f311g.f436e);
        }
    }

    /* renamed from: c */
    private void m37304c(String str) {
        C1369e eVar = new C1369e(getContext());
        C1378c cVar = this.f311g;
        C1361b.m37272a().m37270a(this.f318n, this.f311g.f434c, eVar.m37236a(cVar.f437f, cVar.f438g, this.f316l, str, cVar.f440i, ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m37303d() {
        C1378c cVar = this.f311g;
        if (!cVar.f441j && !cVar.f432a.isEmpty()) {
            this.f311g.f441j = true;
            C1369e eVar = new C1369e(getContext());
            C1378c cVar2 = this.f311g;
            C1361b.m37272a().m37269a(this.f318n, this.f311g.f432a, eVar.m37239a(cVar2.f437f, cVar2.f438g, this.f316l, cVar2.f440i), new C1361b.AbstractC1365c() { // from class: com.adbert.AdbertVideoBox.6
                @Override // com.adbert.p009a.p010a.C1361b.AbstractC1365c
                public void onEnd(int i, String str) {
                    AdbertVideoBox.this.f311g.f441j = i == 200;
                }
            });
        }
    }

    public void destroy() {
        C1426d dVar = this.f317m;
        if (dVar != null) {
            if (dVar.getSeekTo() > 0) {
                m37311b(this.f317m.getSeekTo());
            }
            this.f317m.m37069d();
        }
        C1457j jVar = this.f319o;
        if (jVar != null) {
            jVar.destroy();
        }
    }

    public void loadAD() {
        removeAllViews();
        if (this.f306b.isEmpty() || this.f307c.isEmpty()) {
            m37308b(EnumC1387g.ERROR_ID_NULL.m37184a());
        } else if (!C1402g.m37132c(getContext())) {
            m37308b(EnumC1387g.ERROR_CONNECTION.m37184a());
        } else {
            C1402g.m37146a(this.f318n, new C1402g.AbstractC1405a() { // from class: com.adbert.AdbertVideoBox.1
                @Override // com.adbert.p009a.C1402g.AbstractC1405a
                public void onResult(String str) {
                    AdbertVideoBox.this.f316l = str;
                    String str2 = AdbertVideoBox.this.f310f ? "" : "&testMode=1";
                    C1361b.m37272a().m37269a(AdbertVideoBox.this.f318n, EnumC1383c.nativeADURL.m37191a(AdbertVideoBox.this.f316l), new C1369e(AdbertVideoBox.this.getContext()).m37237a(AdbertVideoBox.this.f306b, AdbertVideoBox.this.f307c, "", "native_video", AdbertVideoBox.this.f308d) + str2 + EnumC1383c.uuid.m37189c(AdbertVideoBox.this.f316l), new C1361b.AbstractC1365c() { // from class: com.adbert.AdbertVideoBox.1.1
                        @Override // com.adbert.p009a.p010a.C1361b.AbstractC1365c
                        public void onEnd(int i, String str3) {
                            AdbertVideoBox.this.m37318a(i, str3);
                        }
                    });
                }
            });
        }
    }

    public void pause() {
        C1426d dVar = this.f317m;
        if (dVar != null) {
            dVar.m37074b();
        }
    }

    public void resume() {
        C1426d dVar = this.f317m;
        if (dVar != null) {
            dVar.m37071c();
        }
    }

    public void setID(String str, String str2) {
        this.f306b = str.trim();
        this.f307c = str2.trim();
    }

    public void setListener(AdbertVideoBoxListener adbertVideoBoxListener) {
        this.f309e = adbertVideoBoxListener;
    }

    public void setPageInfo(String str) {
        this.f308d = str;
    }

    public void setTestMode() {
        this.f310f = true;
    }
}
