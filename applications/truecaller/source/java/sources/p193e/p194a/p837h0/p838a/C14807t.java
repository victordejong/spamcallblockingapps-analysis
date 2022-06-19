package p193e.p194a.p837h0.p838a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.filters.sync.FilterSettingsUploadWorker;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.settings.CallingSettings;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.C14845p;
import p193e.p194a.p837h0.p838a.AbstractC14811v;
import p193e.p194a.p851h5.AbstractC14946m;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p852i.AbstractC15211m;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.i;
import s1.k;
import s1.z.b.p;
import s1.z.b.q;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h0.a.t */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/t.class */
public final class C14807t extends AbstractC14806s implements AbstractC15211m {

    /* renamed from: b */
    public boolean f42349b;

    /* renamed from: c */
    public AbstractC15183d f42350c;

    /* renamed from: d */
    public boolean f42351d;

    /* renamed from: e */
    public final AbstractC14840m f42352e;

    /* renamed from: f */
    public final CallingSettings f42353f;

    /* renamed from: g */
    public final AbstractC6392i0 f42354g;

    /* renamed from: h */
    public final AbstractC14965w f42355h;

    /* renamed from: i */
    public final AbstractC19219a0 f42356i;

    /* renamed from: j */
    public final AbstractC19462a f42357j;

    /* renamed from: k */
    public final AbstractC15163d f42358k;

    /* renamed from: l */
    public final C15222s f42359l;

    /* renamed from: m */
    public final AbstractC19223c0 f42360m;

    /* renamed from: n */
    public final AbstractC17197v0 f42361n;

    /* renamed from: o */
    public final C20592g f42362o;

    /* renamed from: p */
    public final AbstractC26857y f42363p;

    /* renamed from: q */
    public final C14845p f42364q;

    /* renamed from: r */
    public final AbstractC19230g f42365r;

    /* renamed from: s */
    public final AbstractC14946m f42366s;

    /* renamed from: e.a.h0.a.t$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/t$a.class */
    public static final class C14808a extends m implements q<AbstractC14811v, Boolean, Boolean, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ List f42367b;

        /* renamed from: c */
        public final /* synthetic */ List f42368c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14808a(List list, List list2) {
            super(3);
            this.f42367b = list;
            this.f42368c = list2;
        }

        /* renamed from: h */
        public Object m19636h(Object obj, Object obj2, Object obj3) {
            AbstractC14811v abstractC14811v = (AbstractC14811v) obj;
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            boolean booleanValue2 = ((Boolean) obj3).booleanValue();
            l.e(abstractC14811v, "switch");
            return Boolean.valueOf((booleanValue2 ? this.f42367b : this.f42368c).add(new C14823w(abstractC14811v, booleanValue)));
        }
    }

    /* renamed from: e.a.h0.a.t$b */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/t$b.class */
    public static final class C14809b extends m implements p<AbstractC14811v, Boolean, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ List f42369b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14809b(List list) {
            super(2);
            this.f42369b = list;
        }

        /* renamed from: k */
        public Object m19635k(Object obj, Object obj2) {
            AbstractC14811v abstractC14811v = (AbstractC14811v) obj;
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            l.e(abstractC14811v, "switch");
            return Boolean.valueOf(this.f42369b.add(new C14823w(abstractC14811v, booleanValue)));
        }
    }

    public C14807t(AbstractC14840m abstractC14840m, CallingSettings callingSettings, AbstractC6392i0 abstractC6392i0, AbstractC14965w abstractC14965w, AbstractC19219a0 abstractC19219a0, AbstractC19462a abstractC19462a, AbstractC15163d abstractC15163d, C15222s c15222s, AbstractC19223c0 abstractC19223c0, AbstractC17197v0 abstractC17197v0, C20592g c20592g, AbstractC26857y abstractC26857y, C14845p c14845p, AbstractC19230g abstractC19230g, AbstractC14946m abstractC14946m) {
        l.e(abstractC14840m, "filterSettings");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC6392i0, "messagingSettings");
        l.e(abstractC14965w, "tcPermissionsUtil");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC15163d, "adsProvider");
        l.e(c15222s, "unitConfig");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC26857y, "workManager");
        l.e(c14845p, "neighbourhoodDigitsAdjuster");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC14946m, "roleRequester");
        this.f42352e = abstractC14840m;
        this.f42353f = callingSettings;
        this.f42354g = abstractC6392i0;
        this.f42355h = abstractC14965w;
        this.f42356i = abstractC19219a0;
        this.f42357j = abstractC19462a;
        this.f42358k = abstractC15163d;
        this.f42359l = c15222s;
        this.f42360m = abstractC19223c0;
        this.f42361n = abstractC17197v0;
        this.f42362o = c20592g;
        this.f42363p = abstractC26857y;
        this.f42364q = c14845p;
        this.f42365r = abstractC19230g;
        this.f42366s = abstractC14946m;
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Hj */
    public void mo19656Hj() {
        AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
        if (abstractC14810u != null) {
            abstractC14810u.mo19611C9();
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Ij */
    public void mo19655Ij(int i) {
        String str;
        CallingSettings.BlockMethod mo8949z = this.f42353f.mo8949z();
        if (i != 4) {
            if (i != 8 || mo8949z == CallingSettings.BlockMethod.Mute) {
                return;
            }
            if (!this.f42356i.mo13824i()) {
                this.f42349b = true;
                AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
                if (abstractC14810u != null) {
                    abstractC14810u.mo19622mA();
                }
                m19639Yj();
                return;
            }
            this.f42349b = false;
            str = "RingSilent";
        } else if (mo8949z == CallingSettings.BlockMethod.Reject) {
            return;
        } else {
            str = "RejectAutomatically";
        }
        C22128a.m8711G0("BLOCKSETTINGS_BlockMethod", null, C22128a.m8667T("BlocktabSettings_Action", str), null, "event.build()", this.f42357j);
        this.f42353f.putInt("blockCallMethod", i);
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Jj */
    public void mo19654Jj() {
        AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
        if (abstractC14810u != null) {
            abstractC14810u.mo19608s6();
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Kj */
    public void mo19653Kj() {
        AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
        if (abstractC14810u != null) {
            abstractC14810u.mo19609kz();
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Lj */
    public void mo19652Lj() {
        AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
        if (abstractC14810u != null) {
            abstractC14810u.mo19607tj();
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Mj */
    public void mo19651Mj() {
        if (this.f42365r.mo13791f()) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("Context", "blockView");
        hashMap.put("Permission", "DialerApp");
        hashMap.put("State", "Asked");
        C22128a.m8711G0("PermissionChanged", null, hashMap, null, "event.build()", this.f42357j);
        this.f42366s.mo19388c();
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Nj */
    public void mo19650Nj(AbstractC14811v abstractC14811v) {
        Integer num;
        l.e(abstractC14811v, "blockingSwitch");
        if (abstractC14811v instanceof AbstractC14811v.C14819h) {
            Integer mo19559i = this.f42352e.mo19559i();
            if (mo19559i != null) {
                C14845p c14845p = this.f42364q;
                l.d(mo19559i, "it");
                num = Integer.valueOf(c14845p.m19536a(mo19559i.intValue()));
            } else {
                num = null;
            }
            AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
            if (abstractC14810u == null) {
                return;
            }
            abstractC14810u.mo19625j5(num, this.f42364q.m19534c());
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Oj */
    public void mo19649Oj(AbstractC14811v abstractC14811v) {
        AbstractC14810u abstractC14810u;
        l.e(abstractC14811v, "blockingSwitch");
        if (!(abstractC14811v instanceof AbstractC14811v.C14819h) || (abstractC14810u = (AbstractC14810u) this.f57683a) == null) {
            return;
        }
        abstractC14810u.mo19621o4();
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Pj */
    public void mo19648Pj() {
        AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
        if (abstractC14810u != null) {
            abstractC14810u.mo19631Ei();
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Qj */
    public void mo19647Qj(AbstractC14811v abstractC14811v, boolean z) {
        AbstractC14810u abstractC14810u;
        EnumC26841q enumC26841q = EnumC26841q.CONNECTED;
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        l.e(abstractC14811v, "blockingSwitch");
        if (abstractC14811v instanceof AbstractC14811v.C14812a) {
            if (!this.f42361n.mo16408H()) {
                AbstractC14810u abstractC14810u2 = (AbstractC14810u) this.f57683a;
                if (abstractC14810u2 != null) {
                    abstractC14810u2.mo19620po(PremiumLaunchContext.TOPSPAMMER_UPDATE);
                }
            } else {
                this.f42352e.mo19548t(Boolean.valueOf(z));
            }
            m19638Zj();
        } else if (abstractC14811v instanceof AbstractC14811v.C14821j) {
            if (this.f42362o.m10956l().isEnabled() && !this.f42361n.mo16408H() && z) {
                AbstractC14810u abstractC14810u3 = (AbstractC14810u) this.f57683a;
                if (abstractC14810u3 != null) {
                    abstractC14810u3.mo19620po(PremiumLaunchContext.BLOCK_TOP_SPAMMERS);
                }
                m19638Zj();
                return;
            }
            this.f42352e.mo19557k(z);
            this.f42352e.mo19565c(true);
            AbstractC26857y abstractC26857y = this.f42363p;
            l.e(abstractC26857y, "workManager");
            C26842r.C26843a c26843a = new C26842r.C26843a(FilterSettingsUploadWorker.class);
            C26825d.C26826a c26826a = new C26825d.C26826a();
            c26826a.f75068c = enumC26841q;
            c26843a.f75127c.f74911j = new C26825d(c26826a);
            abstractC26857y.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a.m1272b());
            m19641Wj(z, "BLOCKSETTINGS_BlockSpammers");
        } else if (abstractC14811v instanceof AbstractC14811v.C14820i) {
            if (this.f42362o.m10958k().isEnabled() && !this.f42361n.mo16408H() && z) {
                AbstractC14810u abstractC14810u4 = (AbstractC14810u) this.f57683a;
                if (abstractC14810u4 != null) {
                    abstractC14810u4.mo19620po(PremiumLaunchContext.BLOCK_NON_PHONEBOOK);
                }
                m19638Zj();
                return;
            }
            this.f42352e.mo19555m(z);
            this.f42352e.mo19565c(true);
            AbstractC26857y abstractC26857y2 = this.f42363p;
            l.e(abstractC26857y2, "workManager");
            C26842r.C26843a c26843a2 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
            C26825d.C26826a c26826a2 = new C26825d.C26826a();
            c26826a2.f75068c = enumC26841q;
            c26843a2.f75127c.f74911j = new C26825d(c26826a2);
            abstractC26857y2.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a2.m1272b());
            m19641Wj(z, "BLOCKSETTINGS_BlockNonPhonebook");
        } else if (abstractC14811v instanceof AbstractC14811v.C14817f) {
            if (this.f42362o.m10966g().isEnabled() && !this.f42361n.mo16408H() && z) {
                AbstractC14810u abstractC14810u5 = (AbstractC14810u) this.f57683a;
                if (abstractC14810u5 != null) {
                    abstractC14810u5.mo19620po(PremiumLaunchContext.BLOCK_FOREIGN_NUMBERS);
                }
                m19638Zj();
                return;
            }
            this.f42352e.mo19561g(z);
            this.f42352e.mo19565c(true);
            AbstractC26857y abstractC26857y3 = this.f42363p;
            l.e(abstractC26857y3, "workManager");
            C26842r.C26843a c26843a3 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
            C26825d.C26826a c26826a3 = new C26825d.C26826a();
            c26826a3.f75068c = enumC26841q;
            c26843a3.f75127c.f74911j = new C26825d(c26826a3);
            abstractC26857y3.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a3.m1272b());
            m19641Wj(z, "BLOCKSETTINGS_BlockForeignNumbers");
        } else if (abstractC14811v instanceof AbstractC14811v.C14819h) {
            if (this.f42362o.m10960j().isEnabled() && !this.f42361n.mo16408H() && z) {
                AbstractC14810u abstractC14810u6 = (AbstractC14810u) this.f57683a;
                if (abstractC14810u6 != null) {
                    abstractC14810u6.mo19620po(PremiumLaunchContext.BLOCK_NEIGHBOUR_SPOOFING);
                }
                m19638Zj();
                return;
            }
            this.f42352e.mo19553o(z);
            this.f42352e.mo19565c(true);
            AbstractC26857y abstractC26857y4 = this.f42363p;
            l.e(abstractC26857y4, "workManager");
            C26842r.C26843a c26843a4 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
            C26825d.C26826a c26826a4 = new C26825d.C26826a();
            c26826a4.f75068c = enumC26841q;
            c26843a4.f75127c.f74911j = new C26825d(c26826a4);
            abstractC26857y4.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a4.m1272b());
            m19641Wj(z, "BLOCKSETTINGS_BlockNeighbourSpoofing");
        } else if (abstractC14811v instanceof AbstractC14811v.C14822k) {
            if (this.f42362o.m10964h().isEnabled() && !this.f42361n.mo16408H() && z) {
                AbstractC14810u abstractC14810u7 = (AbstractC14810u) this.f57683a;
                if (abstractC14810u7 != null) {
                    abstractC14810u7.mo19620po(PremiumLaunchContext.BLOCK_HIDDEN_NUMBERS);
                }
                m19638Zj();
                return;
            }
            this.f42352e.mo19558j(z);
            this.f42352e.mo19565c(true);
            AbstractC26857y abstractC26857y5 = this.f42363p;
            l.e(abstractC26857y5, "workManager");
            C26842r.C26843a c26843a5 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
            C26825d.C26826a c26826a5 = new C26825d.C26826a();
            c26826a5.f75068c = enumC26841q;
            c26843a5.f75127c.f74911j = new C26825d(c26826a5);
            abstractC26857y5.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a5.m1272b());
            m19641Wj(z, "BLOCKSETTINGS_BlockHiddenNumbers");
        } else if (abstractC14811v instanceof AbstractC14811v.C14818g) {
            if (this.f42362o.m10962i().isEnabled() && !this.f42361n.mo16408H() && z) {
                AbstractC14810u abstractC14810u8 = (AbstractC14810u) this.f57683a;
                if (abstractC14810u8 != null) {
                    abstractC14810u8.mo19620po(PremiumLaunchContext.BLOCK_INDIAN_REGISTERED_TELEMARKETERS);
                }
                m19638Zj();
                return;
            }
            this.f42352e.mo19567a(z);
            this.f42352e.mo19565c(true);
            AbstractC26857y abstractC26857y6 = this.f42363p;
            l.e(abstractC26857y6, "workManager");
            C26842r.C26843a c26843a6 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
            C26825d.C26826a c26826a6 = new C26825d.C26826a();
            c26826a6.f75068c = enumC26841q;
            c26843a6.f75127c.f74911j = new C26825d(c26826a6);
            abstractC26857y6.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a6.m1272b());
            m19641Wj(z, "BLOCKSETTINGS_BlockIndianTelemarketers");
        } else if (abstractC14811v instanceof AbstractC14811v.C14816e) {
            if (!this.f42361n.mo16408H() && z && (abstractC14810u = (AbstractC14810u) this.f57683a) != null) {
                abstractC14810u.mo19620po(PremiumLaunchContext.BLOCK_EXTENDED_TOP_SPAMMER_LIST);
            }
            m19638Zj();
        } else if (l.a(abstractC14811v, AbstractC14811v.C14813b.f42379i)) {
            if (z) {
                this.f42353f.putBoolean("blockCallNotification", true);
                return;
            }
            AbstractC14810u abstractC14810u9 = (AbstractC14810u) this.f57683a;
            if (abstractC14810u9 != null) {
                abstractC14810u9.mo19624lb();
            }
            m19638Zj();
        } else if (!l.a(abstractC14811v, AbstractC14811v.C14814c.f42380i)) {
            throw new i();
        } else {
            if (z) {
                this.f42354g.mo31175M2(true);
                return;
            }
            AbstractC14810u abstractC14810u10 = (AbstractC14810u) this.f57683a;
            if (abstractC14810u10 != null) {
                abstractC14810u10.mo19619ue();
            }
            m19638Zj();
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Rj */
    public void mo19646Rj() {
        AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
        if (abstractC14810u != null) {
            abstractC14810u.mo19620po(PremiumLaunchContext.BLOCK);
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Sj */
    public void mo19645Sj() {
        this.f42351d = true;
        if (this.f57683a != 0) {
            m19638Zj();
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Tj */
    public void mo19644Tj() {
        AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
        if (abstractC14810u != null) {
            abstractC14810u.mo19629Ki(true);
        }
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Uj */
    public void mo19643Uj() {
        this.f42353f.putBoolean("blockCallNotification", false);
        m19638Zj();
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: Vj */
    public void mo19642Vj() {
        this.f42354g.mo31175M2(false);
        m19638Zj();
    }

    /* renamed from: Wj */
    public final void m19641Wj(boolean z, String str) {
        String str2 = z ? "Enabled" : "Disabled";
        HashMap hashMap = new HashMap();
        hashMap.put("BlocktabSettings_Action", str2);
        AbstractC19462a abstractC19462a = this.f42357j;
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(str, null, hashMap, null);
        l.d(c19505a, "event.build()");
        abstractC19462a.mo13271e(c19505a);
        if (z) {
            AbstractC19462a abstractC19462a2 = this.f42357j;
            AbstractC19502g.C19504b.C19505a c19505a2 = new AbstractC19502g.C19504b.C19505a("BLOCKSETTINGS_Enabled", null, null, null);
            l.d(c19505a2, "AnalyticsEvent.Builder(B…ngs.Enabled.NAME).build()");
            abstractC19462a2.mo13271e(c19505a2);
        }
    }

    /* renamed from: Xj */
    public final boolean m19640Xj() {
        if (!this.f42361n.mo16408H()) {
            this.f42352e.mo19548t(null);
            return false;
        }
        return C12864a2.m22540r(this.f42352e.mo19560h());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.h0.a.u, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC14810u) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        if (this.f42352e.mo19554n() && !m19640Xj()) {
            r0.mo19629Ki(false);
        }
        n.B0(C22128a.m8580q1("blockView", "viewId", "blockView", null, null), this.f42357j);
        if (this.f42358k.m19090b()) {
            n.l1(this.f42358k, this.f42359l, this, (String) null, 4, (Object) null);
        }
        m19638Zj();
    }

    /* renamed from: Yj */
    public final void m19639Yj() {
        int i;
        if (this.f42349b && this.f42356i.mo13824i()) {
            AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
            if (abstractC14810u != null) {
                abstractC14810u.mo19623m(this.f42360m.mo13768b(C2752R.string.BlockFragmentBlockMethodRingSilentToast, new Object[0]));
            }
            mo19655Ij(8);
        }
        List<k<Integer, Integer>> T = s1.u.i.T(new k[]{new k(Integer.valueOf((int) C2752R.string.BlockFragmentBlockMethodRejectAutomatically), 4), new k(Integer.valueOf((int) C2752R.string.BlockFragmentBlockMethodRingSilent), 8)});
        int i2 = this.f42353f.getInt("blockCallMethod", 0);
        int size = T.size();
        int i3 = 0;
        while (true) {
            i = 0;
            if (i3 >= size) {
                break;
            } else if (((Number) T.get(i3).b).intValue() == i2) {
                i = i3;
                break;
            } else {
                i3++;
            }
        }
        AbstractC14810u abstractC14810u2 = (AbstractC14810u) this.f57683a;
        if (abstractC14810u2 != null) {
            abstractC14810u2.mo19618xu(T, i);
        }
    }

    /* renamed from: Zj */
    public final void m19638Zj() {
        Boolean bool = Boolean.TRUE;
        AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
        if (abstractC14810u != null) {
            boolean m19640Xj = m19640Xj();
            boolean z = m19640Xj || this.f42351d;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            C14808a c14808a = new C14808a(arrayList2, arrayList3);
            C14809b c14809b = new C14809b(arrayList);
            AbstractC14811v abstractC14811v = AbstractC14811v.f42371h;
            for (AbstractC14811v abstractC14811v2 : (List) AbstractC14811v.f42370g.getValue()) {
                if (l.a(abstractC14811v2, AbstractC14811v.C14812a.f42378i)) {
                    c14808a.h(abstractC14811v2, Boolean.valueOf(m19640Xj), bool);
                } else if (l.a(abstractC14811v2, AbstractC14811v.C14821j.f42387i)) {
                    c14808a.h(abstractC14811v2, Boolean.valueOf(this.f42352e.mo19547u()), Boolean.valueOf(this.f42362o.m10956l().isEnabled()));
                } else if (l.a(abstractC14811v2, AbstractC14811v.C14820i.f42386i)) {
                    c14808a.h(abstractC14811v2, Boolean.valueOf(this.f42352e.mo19566b()), Boolean.valueOf(this.f42362o.m10958k().isEnabled()));
                } else if (l.a(abstractC14811v2, AbstractC14811v.C14817f.f42383i)) {
                    c14808a.h(abstractC14811v2, Boolean.valueOf(this.f42352e.mo19544x()), Boolean.valueOf(this.f42362o.m10966g().isEnabled()));
                } else if (l.a(abstractC14811v2, AbstractC14811v.C14819h.f42385i)) {
                    C20592g c20592g = this.f42362o;
                    if (c20592g.f57861X3.m10941a(c20592g, C20592g.f57695p6[260]).isEnabled()) {
                        c14808a.h(abstractC14811v2, Boolean.valueOf(this.f42352e.mo19562f()), Boolean.valueOf(this.f42362o.m10960j().isEnabled()));
                    }
                } else if (l.a(abstractC14811v2, AbstractC14811v.C14822k.f42388i)) {
                    c14808a.h(abstractC14811v2, Boolean.valueOf(this.f42352e.mo19550r()), Boolean.valueOf(this.f42362o.m10964h().isEnabled()));
                } else if (l.a(abstractC14811v2, AbstractC14811v.C14818g.f42384i)) {
                    if (this.f42362o.m10962i().isEnabled()) {
                        c14808a.h(abstractC14811v2, Boolean.valueOf(this.f42352e.mo19549s()), bool);
                    }
                } else if (l.a(abstractC14811v2, AbstractC14811v.C14816e.f42382i)) {
                    c14808a.h(abstractC14811v2, Boolean.valueOf(this.f42361n.mo16408H()), bool);
                } else if (l.a(abstractC14811v2, AbstractC14811v.C14813b.f42379i)) {
                    c14809b.k(abstractC14811v2, Boolean.valueOf(this.f42353f.getBoolean("blockCallNotification", true)));
                } else if (l.a(abstractC14811v2, AbstractC14811v.C14814c.f42380i)) {
                    c14809b.k(abstractC14811v2, Boolean.valueOf(this.f42354g.mo31225C2()));
                }
            }
            m19639Yj();
            abstractC14810u.mo19617zh(!arrayList2.isEmpty(), !arrayList3.isEmpty());
            abstractC14810u.mo19632Ee(arrayList, arrayList2, arrayList3);
            abstractC14810u.mo19627Rl(z);
            abstractC14810u.mo19626Vl(!this.f42361n.mo16408H());
            abstractC14810u.mo19633Dq(!m19640Xj);
            abstractC14810u.mo19634Ca((this.f42365r.mo13780q() >= 24) && !this.f42365r.mo13791f());
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f42358k.m19085h(this.f42359l, this);
        AbstractC15183d abstractC15183d = this.f42350c;
        if (abstractC15183d != null) {
            abstractC15183d.destroy();
        }
        this.f42350c = null;
        this.f57683a = null;
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: ed */
    public void mo10117ed(int i) {
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14806s
    /* renamed from: j */
    public void mo19637j() {
        m19638Zj();
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    public void onAdLoaded() {
        AbstractC15183d m19087f;
        AbstractC14810u abstractC14810u = (AbstractC14810u) this.f57683a;
        if (abstractC14810u == null || (m19087f = this.f42358k.m19087f(this.f42359l, 0)) == null) {
            return;
        }
        this.f42358k.m19085h(this.f42359l, this);
        abstractC14810u.mo19628R3(m19087f);
        AbstractC15183d abstractC15183d = this.f42350c;
        if (abstractC15183d != null) {
            abstractC15183d.destroy();
        }
        this.f42350c = m19087f;
    }

    @Override // p193e.p194a.p837h0.AbstractC14833h
    public void onResume() {
        PV pv;
        if (this.f42355h.mo19348i() || (pv = this.f57683a) == 0) {
            m19638Zj();
            return;
        }
        AbstractC14810u abstractC14810u = (AbstractC14810u) pv;
        if (abstractC14810u != null) {
            abstractC14810u.mo19630Gc();
        }
        AbstractC14810u abstractC14810u2 = (AbstractC14810u) this.f57683a;
        if (abstractC14810u2 == null) {
            return;
        }
        abstractC14810u2.finish();
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: xe */
    public void mo10116xe(AbstractC15183d abstractC15183d, int i) {
        l.e(abstractC15183d, "ad");
    }
}
