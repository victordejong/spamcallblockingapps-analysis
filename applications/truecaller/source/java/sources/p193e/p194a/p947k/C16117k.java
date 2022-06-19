package p193e.p194a.p947k;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.businesscard.BusinessCardBackgroundWorker;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Business;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.log.AssertionUtil;
import com.truecaller.profile.data.dto.MediaCallerIDs;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19093r;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8246b;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p677d3.AbstractC12585d;
import p193e.p194a.p804h.p806b.p818w0.AbstractC14630d;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.k.k */
/* loaded from: classes15-dex2jar.jar:e/a/k/k.class */
public final class C16117k implements AbstractC16116j {

    /* renamed from: a */
    public final a<C16461b> f45414a;

    /* renamed from: b */
    public final f f45415b;

    /* renamed from: c */
    public final AbstractC8246b<Contact> f45416c;

    /* renamed from: d */
    public final a<AbstractC14630d> f45417d;

    /* renamed from: e */
    public final a<AbstractC19093r> f45418e;

    /* renamed from: f */
    public final a<AbstractC21780a> f45419f;

    /* renamed from: g */
    public final Context f45420g;

    /* renamed from: h */
    public final a<AbstractC12585d> f45421h;

    /* renamed from: i */
    public final a<InitiateCallHelper> f45422i;

    @e(c = "com.truecaller.videocallerid.VideoCallerIdSupportImpl$getPhoneBookContactByNumber$2", f = "VideoCallerIdSupportImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/k$a.class */
    public static final class C16118a extends i implements p<i0, d<? super Contact>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f45424f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16118a(String str, d dVar) {
            super(2, dVar);
            C16117k.this = r5;
            this.f45424f = str;
        }

        /* renamed from: i */
        public final d<s> m17805i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16118a(this.f45424f, dVar);
        }

        /* renamed from: k */
        public final Object m17804k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16117k c16117k = C16117k.this;
            String str = this.f45424f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return ((C16461b) c16117k.f45414a.get()).m17364h(str);
        }

        /* renamed from: s */
        public final Object m17803s(Object obj) {
            C25225a.m3932a3(obj);
            return ((C16461b) C16117k.this.f45414a.get()).m17364h(this.f45424f);
        }
    }

    @Inject
    public C16117k(a<C16461b> aVar, @Named("IO") f fVar, AbstractC8246b<Contact> abstractC8246b, a<AbstractC14630d> aVar2, a<AbstractC19093r> aVar3, a<AbstractC21780a> aVar4, Context context, a<AbstractC12585d> aVar5, a<InitiateCallHelper> aVar6) {
        l.e(aVar, "aggregatedContactDao");
        l.e(fVar, "ioContext");
        l.e(abstractC8246b, "avatarXConfigProvider");
        l.e(aVar2, "suggestedContact");
        l.e(aVar3, "contactManagerSync");
        l.e(aVar4, "workTrigger");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar5, "businessCardManager");
        l.e(aVar6, "initiateCallHelper");
        this.f45414a = aVar;
        this.f45415b = fVar;
        this.f45416c = abstractC8246b;
        this.f45417d = aVar2;
        this.f45418e = aVar3;
        this.f45419f = aVar4;
        this.f45420g = context;
        this.f45421h = aVar5;
        this.f45422i = aVar6;
    }

    /* renamed from: a */
    public AvatarXConfig m17810a(Contact contact, s1.z.b.l<? super AvatarXConfig, AvatarXConfig> lVar) {
        l.e(lVar, "avatarXConfigModifier");
        return (AvatarXConfig) lVar.d(contact != null ? this.f45416c.mo9781a(contact) : new AvatarXConfig(null, null, null, null, false, false, false, false, false, false, false, false, false, false, null, false, 65535));
    }

    /* renamed from: b */
    public List<MediaCallerIDs> m17809b(Contact contact) {
        ArrayList arrayList;
        String mediaCallerIDs;
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(contact, AnalyticsConstants.CONTACT);
        Business business = contact.f11526u;
        if (business != null && (mediaCallerIDs = business.getMediaCallerIDs()) != null) {
            Object[] array = v.U(mediaCallerIDs, new String[]{"|"}, false, 0, 6).toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            ArrayList arrayList2 = new ArrayList();
            int length = strArr.length;
            int i = 0;
            while (true) {
                arrayList = arrayList2;
                if (i >= length) {
                    break;
                }
                String str = strArr[i];
                if (!h.i(str)) {
                    Object[] array2 = v.U(str, new String[]{";"}, false, 0, 6).toArray(new String[0]);
                    Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                    String[] strArr2 = (String[]) array2;
                    if (strArr2.length == 4) {
                        try {
                            String decode = URLDecoder.decode(strArr2[0], StringConstant.UTF8);
                            String str2 = strArr2[1];
                            String str3 = strArr2[2];
                            long parseLong = Long.parseLong(strArr2[3]);
                            l.d(decode, "url");
                            arrayList2.add(new MediaCallerIDs(decode, str2, str3, parseLong));
                        } catch (UnsupportedEncodingException e) {
                            AssertionUtil.reportThrowableButNeverCrash(e);
                        } catch (NumberFormatException e2) {
                            AssertionUtil.reportThrowableButNeverCrash(e2);
                        } catch (IllegalArgumentException e3) {
                            AssertionUtil.reportThrowableButNeverCrash(e3);
                        } catch (IndexOutOfBoundsException e4) {
                            AssertionUtil.reportThrowableButNeverCrash(e4);
                        }
                    }
                }
                i++;
            }
        } else {
            arrayList = s1.u.s.a;
        }
        return arrayList;
    }

    /* renamed from: c */
    public Object m17808c(String str, d<? super Contact> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f45415b, new C16118a(str, null), dVar);
    }

    /* renamed from: d */
    public boolean m17807d(String str) {
        l.e(str, "normalizedNumber");
        return ((AbstractC19093r) this.f45418e.get()).mo14113d(new Number(str, null));
    }

    /* renamed from: e */
    public void m17806e() {
        C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a m1268f = new C26842r.C26843a(BusinessCardBackgroundWorker.class).m1268f(0L, TimeUnit.SECONDS);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        m1268f.f75127c.f74911j = new C26825d(c26826a);
        m1431n.m1279i("BusinessCardBackgroundWorker", enumC26832h, m1268f.m1272b());
    }
}
