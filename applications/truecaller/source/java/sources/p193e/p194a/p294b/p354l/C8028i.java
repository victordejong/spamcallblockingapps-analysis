package p193e.p194a.p294b.p354l;

import android.net.Uri;
import android.webkit.URLUtil;
import com.truecaller.profile.data.dto.Address;
import com.truecaller.profile.data.dto.BusinessData;
import com.truecaller.profile.data.dto.OnlineIds;
import com.truecaller.profile.data.dto.Profile;
import e.m.e.k;
import java.io.File;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1060m4.p1061c.AbstractC18204c;
import p193e.p194a.p294b.p331b.p334c.AbstractC7895r;
import p193e.p194a.p372b0.p394b.p395a.C8366c;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p424n.AbstractC8532h;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.n0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import u3.c0;
import u3.h0;
import u3.j0;
import u3.l0;
import x3.a0;
/* renamed from: e.a.b.l.i */
/* loaded from: classes6-dex2jar.jar:e/a/b/l/i.class */
public final class C8028i implements AbstractC8027h {

    /* renamed from: a */
    public final AbstractC8024f f24747a;

    /* renamed from: b */
    public final AbstractC18204c f24748b;

    /* renamed from: c */
    public final AbstractC8541a f24749c;

    /* renamed from: d */
    public final AbstractC8438a f24750d;

    /* renamed from: e */
    public final k f24751e;

    /* renamed from: f */
    public final f f24752f;

    @e(c = "com.truecaller.bizmon.data.BusinessProfileRepositoryImpl$deleteLogo$2", f = "BusinessProfileRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.l.i$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/i$a.class */
    public static final class C8029a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8029a(d dVar) {
            super(2, dVar);
            C8028i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m28945i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8029a(dVar);
        }

        /* renamed from: k */
        public final Object m28944k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8028i c8028i = C8028i.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            a0 execute = c8028i.f24747a.mo28957c().execute();
            l.d(execute, "response");
            if (execute.b()) {
                return sVar;
            }
            throw new AbstractC7895r.C7896a(execute.a.e);
        }

        /* renamed from: s */
        public final Object m28943s(Object obj) {
            C25225a.m3932a3(obj);
            a0 execute = C8028i.this.f24747a.mo28957c().execute();
            l.d(execute, "response");
            if (execute.b()) {
                return s.a;
            }
            throw new AbstractC7895r.C7896a(execute.a.e);
        }
    }

    @e(c = "com.truecaller.bizmon.data.BusinessProfileRepositoryImpl$deletePicture$2", f = "BusinessProfileRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.l.i$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/i$b.class */
    public static final class C8030b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f24755f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8030b(String str, d dVar) {
            super(2, dVar);
            C8028i.this = r5;
            this.f24755f = str;
        }

        /* renamed from: i */
        public final d<s> m28942i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8030b(this.f24755f, dVar);
        }

        /* renamed from: k */
        public final Object m28941k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8028i c8028i = C8028i.this;
            String str = this.f24755f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            if (URLUtil.isNetworkUrl(str)) {
                j0.a aVar = j0.a;
                c0.a aVar2 = c0.f;
                a0 execute = c8028i.f24747a.mo28959a(aVar.c(c0.a.b("text/plain"), str)).execute();
                l.d(execute, "response");
                if (!execute.b()) {
                    throw new AbstractC7895r.C7897b(execute.a.e);
                }
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m28940s(Object obj) {
            s sVar = s.a;
            C25225a.m3932a3(obj);
            if (!URLUtil.isNetworkUrl(this.f24755f)) {
                return sVar;
            }
            j0.a aVar = j0.a;
            c0.a aVar2 = c0.f;
            a0 execute = C8028i.this.f24747a.mo28959a(aVar.c(c0.a.b("text/plain"), this.f24755f)).execute();
            l.d(execute, "response");
            if (!execute.b()) {
                throw new AbstractC7895r.C7897b(execute.a.e);
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.bizmon.data.BusinessProfileRepositoryImpl$saveProfile$2", f = "BusinessProfileRepository.kt", l = {185}, m = "invokeSuspend")
    /* renamed from: e.a.b.l.i$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/i$c.class */
    public static final class C8031c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f24756e;

        /* renamed from: g */
        public final /* synthetic */ Profile f24758g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8031c(Profile profile, d dVar) {
            super(2, dVar);
            C8028i.this = r5;
            this.f24758g = profile;
        }

        /* renamed from: i */
        public final d<s> m28939i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8031c(this.f24758g, dVar);
        }

        /* renamed from: k */
        public final Object m28938k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8031c(this.f24758g, dVar).m28937s(s.a);
        }

        /* renamed from: s */
        public final Object m28937s(Object obj) {
            a aVar = a.a;
            int i = this.f24756e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                n0<AbstractC8532h> mo15447a = C8028i.this.f24748b.mo15447a(this.f24758g);
                this.f24756e = 1;
                Object s = mo15447a.s(this);
                obj = s;
                if (s == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC8532h abstractC8532h = (AbstractC8532h) obj;
            if (abstractC8532h.f26322a) {
                C8028i c8028i = C8028i.this;
                Profile profile = this.f24758g;
                C17422k.m16086c0(c8028i.f24749c, profile.getFirstName(), profile.getLastName());
                BusinessData businessData = profile.getBusinessData();
                if (businessData != null) {
                    AbstractC8541a abstractC8541a = c8028i.f24749c;
                    Address address = businessData.getCompany().getAddress();
                    String str = null;
                    String street = address != null ? address.getStreet() : null;
                    Address address2 = businessData.getCompany().getAddress();
                    String city = address2 != null ? address2.getCity() : null;
                    Address address3 = businessData.getCompany().getAddress();
                    String zipCode = address3 != null ? address3.getZipCode() : null;
                    Address address4 = businessData.getCompany().getAddress();
                    Double latitude = address4 != null ? address4.getLatitude() : null;
                    Address address5 = businessData.getCompany().getAddress();
                    Double longitude = address5 != null ? address5.getLongitude() : null;
                    String name = businessData.getCompany().getName();
                    OnlineIds onlineIds = businessData.getOnlineIds();
                    String avatarUrl = businessData.getAvatarUrl();
                    String backgroundColor = businessData.getCompany().getBranding().getBackgroundColor();
                    String jobTitle = businessData.getJobTitle();
                    Long l = (Long) s1.u.i.D(businessData.getTags());
                    if (l != null) {
                        str = String.valueOf(l.longValue());
                    }
                    String about = businessData.getAbout();
                    String size = businessData.getCompany().getSize();
                    String m = c8028i.f24751e.m(businessData.getCompany().getOpenHours());
                    l.d(m, "gson.toJson(company.openHours)");
                    String m2 = c8028i.f24751e.m(businessData.getCompany().getBranding().getImageUrls());
                    l.d(m2, "gson.toJson(company.branding.imageUrls)");
                    Boolean bool = Boolean.TRUE;
                    l.e(abstractC8541a, "$this$persistBusinessProfileData");
                    l.e(name, "companyName");
                    l.e(onlineIds, "onlineIds");
                    l.e(backgroundColor, "backgroundColor");
                    l.e(m, "openingHours");
                    l.e(m2, "imageUrls");
                    abstractC8541a.putString("profileGender", "N");
                    abstractC8541a.putString("profileStreet", street);
                    abstractC8541a.putString("profileCity", city);
                    abstractC8541a.putString("profileZip", zipCode);
                    abstractC8541a.putString("profileFacebook", onlineIds.getFacebookId());
                    abstractC8541a.putString("profileTwitter", onlineIds.getTwitterId());
                    abstractC8541a.putString("profileEmail", onlineIds.getEmail());
                    abstractC8541a.putString("profileWeb", onlineIds.getUrl());
                    abstractC8541a.putString("profileAvatar", avatarUrl);
                    abstractC8541a.putString("profileBackgroundColor", backgroundColor);
                    abstractC8541a.putString("profileCompanyName", name);
                    abstractC8541a.putString("profileCompanyJob", jobTitle);
                    abstractC8541a.putString("profileTag", str);
                    abstractC8541a.putString("profileStatus", about);
                    abstractC8541a.putString("profileSize", size);
                    abstractC8541a.putString("profileOpeningHours", m);
                    abstractC8541a.putString("profileImageUrls", m2);
                    abstractC8541a.putString("profileAcceptAuto", "1");
                    abstractC8541a.putBoolean("profileBusiness", C12864a2.m22540r(bool));
                    if (latitude != null) {
                        abstractC8541a.m28409p2("profileLatitude", latitude.doubleValue());
                    }
                    if (longitude != null) {
                        abstractC8541a.m28409p2("profileLongitude", longitude.doubleValue());
                    }
                }
                return s.a;
            }
            throw new AbstractC7895r.C7898c(abstractC8532h);
        }
    }

    @e(c = "com.truecaller.bizmon.data.BusinessProfileRepositoryImpl$uploadLogo$2", f = "BusinessProfileRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.l.i$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/i$d.class */
    public static final class C8032d extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f24760f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8032d(String str, d dVar) {
            super(2, dVar);
            C8028i.this = r5;
            this.f24760f = str;
        }

        /* renamed from: i */
        public final d<s> m28936i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8032d(this.f24760f, dVar);
        }

        /* renamed from: k */
        public final Object m28935k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8028i c8028i = C8028i.this;
            String str = this.f24760f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            String str2 = str;
            if (!r.p(str)) {
                if (URLUtil.isNetworkUrl(str)) {
                    str2 = str;
                } else {
                    c0 c0Var = C8366c.f25724b;
                    Uri parse = Uri.parse(str);
                    l.d(parse, "Uri.parse(logo)");
                    File file = new File(parse.getPath());
                    l.f(file, "file");
                    l.f(file, "$this$asRequestBody");
                    a0 execute = c8028i.f24747a.mo28956d(new h0(file, c0Var)).execute();
                    l0 l0Var = (l0) execute.b;
                    l.d(execute, "response");
                    if (!execute.b() || l0Var == null) {
                        throw new AbstractC7895r.C7899d(execute.a.e);
                    }
                    str2 = l0Var.s();
                }
            }
            return str2;
        }

        /* renamed from: s */
        public final Object m28934s(Object obj) {
            C25225a.m3932a3(obj);
            if (r.p(this.f24760f) || URLUtil.isNetworkUrl(this.f24760f)) {
                return this.f24760f;
            }
            c0 c0Var = C8366c.f25724b;
            Uri parse = Uri.parse(this.f24760f);
            l.d(parse, "Uri.parse(logo)");
            File file = new File(parse.getPath());
            l.f(file, "file");
            l.f(file, "$this$asRequestBody");
            a0 execute = C8028i.this.f24747a.mo28956d(new h0(file, c0Var)).execute();
            l0 l0Var = (l0) execute.b;
            l.d(execute, "response");
            if (execute.b() && l0Var != null) {
                return l0Var.s();
            }
            throw new AbstractC7895r.C7899d(execute.a.e);
        }
    }

    @e(c = "com.truecaller.bizmon.data.BusinessProfileRepositoryImpl$uploadPicture$2", f = "BusinessProfileRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.l.i$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/i$e.class */
    public static final class C8033e extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f24762f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8033e(String str, d dVar) {
            super(2, dVar);
            C8028i.this = r5;
            this.f24762f = str;
        }

        /* renamed from: i */
        public final d<s> m28933i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8033e(this.f24762f, dVar);
        }

        /* renamed from: k */
        public final Object m28932k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8028i c8028i = C8028i.this;
            String str = this.f24762f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            if (!URLUtil.isNetworkUrl(str)) {
                c0 c0Var = C8366c.f25724b;
                Uri parse = Uri.parse(str);
                l.d(parse, "Uri.parse(picture)");
                File file = new File(parse.getPath());
                l.f(file, "file");
                l.f(file, "$this$asRequestBody");
                a0 execute = c8028i.f24747a.mo28958b(new h0(file, c0Var)).execute();
                l0 l0Var = (l0) execute.b;
                l.d(execute, "response");
                if (!execute.b() || l0Var == null) {
                    throw new AbstractC7895r.C7900e(execute.a.e);
                }
                str = l0Var.s();
            }
            return str;
        }

        /* renamed from: s */
        public final Object m28931s(Object obj) {
            C25225a.m3932a3(obj);
            if (URLUtil.isNetworkUrl(this.f24762f)) {
                return this.f24762f;
            }
            c0 c0Var = C8366c.f25724b;
            Uri parse = Uri.parse(this.f24762f);
            l.d(parse, "Uri.parse(picture)");
            File file = new File(parse.getPath());
            l.f(file, "file");
            l.f(file, "$this$asRequestBody");
            a0 execute = C8028i.this.f24747a.mo28958b(new h0(file, c0Var)).execute();
            l0 l0Var = (l0) execute.b;
            l.d(execute, "response");
            if (execute.b() && l0Var != null) {
                return l0Var.s();
            }
            throw new AbstractC7895r.C7900e(execute.a.e);
        }
    }

    @Inject
    public C8028i(AbstractC8024f abstractC8024f, AbstractC18204c abstractC18204c, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, k kVar, @Named("IO") f fVar) {
        l.e(abstractC8024f, "pictureRestAdapter");
        l.e(abstractC18204c, "profileNetworkHelper");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(kVar, "gson");
        l.e(fVar, "async");
        this.f24747a = abstractC8024f;
        this.f24748b = abstractC18204c;
        this.f24749c = abstractC8541a;
        this.f24750d = abstractC8438a;
        this.f24751e = kVar;
        this.f24752f = fVar;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8027h
    /* renamed from: a */
    public Object mo28951a(String str, d<? super s> dVar) throws AbstractC7895r.C7897b {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f24752f, new C8030b(str, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8027h
    /* renamed from: b */
    public Object mo28950b(Profile profile, d<? super s> dVar) throws AbstractC7895r.C7898c {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f24752f, new C8031c(profile, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8027h
    /* renamed from: c */
    public Object mo28949c(String str, d<? super String> dVar) throws AbstractC7895r.C7900e {
        return s1.a.a.a.v0.f.d.a4(this.f24752f, new C8033e(str, null), dVar);
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8027h
    /* renamed from: d */
    public Object mo28948d(d<? super s> dVar) throws AbstractC7895r.C7896a {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f24752f, new C8029a(null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8027h
    /* renamed from: e */
    public Object mo28947e(String str, d<? super String> dVar) throws AbstractC7895r.C7899d {
        return s1.a.a.a.v0.f.d.a4(this.f24752f, new C8032d(str, null), dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x02c6, code lost:
        if (r31 != null) goto L84;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0291 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // p193e.p194a.p294b.p354l.AbstractC8027h
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.profile.data.dto.Profile mo28946f() {
        /*
            Method dump skipped, instructions count: 789
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p354l.C8028i.mo28946f():com.truecaller.profile.data.dto.Profile");
    }
}
