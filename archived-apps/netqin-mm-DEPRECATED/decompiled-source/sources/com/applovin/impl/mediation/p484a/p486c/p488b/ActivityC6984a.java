package com.applovin.impl.mediation.p484a.p486c.p488b;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.impl.mediation.p484a.p485a.AbstractC6975c;
import com.applovin.impl.mediation.p484a.p485a.C6977d;
import p131c.p135b.p136a.p143d.a$d.p145c.C2132a;
import p131c.p135b.p156c.C2451c;
import p131c.p135b.p156c.C2452d;
import p131c.p135b.p156c.C2453e;
/* renamed from: com.applovin.impl.mediation.a.c.b.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c/b/a.class */
public class ActivityC6984a extends Activity {

    /* renamed from: a */
    public ListView f21463a;

    /* renamed from: com.applovin.impl.mediation.a.c.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c/b/a$a.class */
    public class C6985a implements C2132a.AbstractC2133a {
        public C6985a() {
        }

        @Override // p131c.p135b.p136a.p143d.a$d.p145c.C2132a.AbstractC2133a
        /* renamed from: a */
        public void mo19138a(String str) {
            new AlertDialog.Builder(ActivityC6984a.this, 16974130).setTitle(C2453e.applovin_instructions_dialog_title).setMessage(str).setNegativeButton(17039370, (DialogInterface.OnClickListener) null).create().show();
        }
    }

    /* renamed from: com.applovin.impl.mediation.a.c.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c/b/a$b.class */
    public class C6986b extends AbstractC6975c {

        /* renamed from: d */
        public final String f21465d;

        /* renamed from: e */
        public final int f21466e;

        /* renamed from: f */
        public final int f21467f;

        /* renamed from: g */
        public final boolean f21468g;

        /* renamed from: com.applovin.impl.mediation.a.c.b.a$b$b */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c/b/a$b$b.class */
        public static class C6988b {

            /* renamed from: a */
            public SpannedString f21469a;

            /* renamed from: b */
            public SpannedString f21470b;

            /* renamed from: c */
            public String f21471c;

            /* renamed from: e */
            public int f21473e;

            /* renamed from: f */
            public int f21474f;

            /* renamed from: d */
            public AbstractC6975c.EnumC6976a f21472d = AbstractC6975c.EnumC6976a.DETAIL;

            /* renamed from: g */
            public boolean f21475g = false;

            /* renamed from: a */
            public C6988b m19131a(int i) {
                this.f21473e = i;
                return this;
            }

            /* renamed from: a */
            public C6988b m19130a(SpannedString spannedString) {
                this.f21470b = spannedString;
                return this;
            }

            /* renamed from: a */
            public C6988b m19129a(AbstractC6975c.EnumC6976a aVar) {
                this.f21472d = aVar;
                return this;
            }

            /* renamed from: a */
            public C6988b m19128a(String str) {
                this.f21469a = new SpannedString(str);
                return this;
            }

            /* renamed from: a */
            public C6988b m19127a(boolean z) {
                this.f21475g = z;
                return this;
            }

            /* renamed from: a */
            public C6986b m19132a() {
                return new C6986b(this);
            }

            /* renamed from: b */
            public C6988b m19126b(int i) {
                this.f21474f = i;
                return this;
            }

            /* renamed from: b */
            public C6988b m19125b(String str) {
                m19130a(new SpannedString(str));
                return this;
            }

            /* renamed from: c */
            public C6988b m19124c(String str) {
                this.f21471c = str;
                return this;
            }
        }

        public C6986b(C6988b bVar) {
            super(bVar.f21472d);
            this.f21420b = bVar.f21469a;
            this.f21421c = bVar.f21470b;
            this.f21465d = bVar.f21471c;
            this.f21466e = bVar.f21473e;
            this.f21467f = bVar.f21474f;
            this.f21468g = bVar.f21475g;
        }

        /* renamed from: l */
        public static C6988b m19133l() {
            return new C6988b();
        }

        @Override // com.applovin.impl.mediation.p484a.p485a.AbstractC6975c
        /* renamed from: a */
        public boolean mo19137a() {
            return this.f21468g;
        }

        @Override // com.applovin.impl.mediation.p484a.p485a.AbstractC6975c
        /* renamed from: h */
        public int mo19136h() {
            return this.f21466e;
        }

        @Override // com.applovin.impl.mediation.p484a.p485a.AbstractC6975c
        /* renamed from: i */
        public int mo19135i() {
            return this.f21467f;
        }

        /* renamed from: k */
        public String m19134k() {
            return this.f21465d;
        }

        public String toString() {
            return "NetworkDetailListItemViewModel{text=" + ((Object) this.f21420b) + ", detailText=" + ((Object) this.f21420b) + "}";
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2452d.mediation_debugger_detail_activity);
        this.f21463a = (ListView) findViewById(C2451c.listView);
    }

    public void setNetwork(C6977d dVar) {
        setTitle(dVar.m19166g());
        C2132a aVar = new C2132a(dVar, this);
        aVar.m31009a(new C6985a());
        this.f21463a.setAdapter((ListAdapter) aVar);
    }
}
