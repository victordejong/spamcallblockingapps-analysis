package p131c.p396i.p397a.p406i.p411f;

import android.view.ViewGroup;
import com.library.p518ad.core.AdInfo;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p405h.C6549b;
/* renamed from: c.i.a.i.f.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/b.class */
public abstract class AbstractC6580b<AdData> {

    /* renamed from: a */
    public BaseAdResult f20384a;

    /* renamed from: b */
    public AdInfo f20385b;

    /* renamed from: c */
    public AbstractC6515g f20386c = new C6581a();

    /* renamed from: c.i.a.i.f.b$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/b$a.class */
    public class C6581a extends AbstractC6515g {
        public C6581a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: a */
        public void mo3232a(AdInfo adInfo, int i) {
            if (AbstractC6580b.this.f20384a.m5331a() != null) {
                AbstractC6580b.this.f20384a.m5331a().mo3232a(adInfo, i);
            }
            C6549b.m20533a();
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: b */
        public void mo3231b(AdInfo adInfo, int i) {
            if (AbstractC6580b.this.f20384a.m5331a() != null) {
                AbstractC6580b.this.f20384a.m5331a().mo3231b(adInfo, i);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: c */
        public void mo3294c(AdInfo adInfo, int i) {
            if (AbstractC6580b.this.f20384a.m5331a() != null) {
                AbstractC6580b.this.f20384a.m5331a().mo3294c(adInfo, i);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: d */
        public void mo3230d(AdInfo adInfo, int i) {
            if (AbstractC6580b.this.f20384a.m5331a() != null) {
                AbstractC6580b.this.f20384a.m5331a().mo3230d(adInfo, i);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: e */
        public void mo20455e(AdInfo adInfo, int i) {
            if (AbstractC6580b.this.f20384a.m5331a() != null) {
                AbstractC6580b.this.f20384a.m5331a().mo20455e(adInfo, i);
            }
        }
    }

    public AbstractC6580b(BaseAdResult baseAdResult) {
        this.f20384a = baseAdResult;
        this.f20385b = baseAdResult.m5320b();
    }

    /* renamed from: a */
    public abstract void mo20446a();

    /* renamed from: a */
    public abstract boolean mo20445a(ViewGroup viewGroup, AbstractC6514f<AdData> fVar);
}
