package p193e.p194a.p793g3;

import android.content.Intent;
import android.os.Bundle;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.clevertap.CleverTapProfile;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p678d4.AbstractC12603e;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.t0;
import s1.f0.b;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.g3.d */
/* loaded from: classes7-dex2jar.jar:e/a/g3/d.class */
public final class C14416d implements CleverTapManager {

    /* renamed from: a */
    public final AbstractC14413b f41561a;

    /* renamed from: b */
    public final AbstractC14427g f41562b;

    @e(c = "com.truecaller.clevertap.CleverTapManagerImpl$init$1", f = "CleverTapManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g3.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/g3/d$a.class */
    public static final class C14417a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14417a(d dVar) {
            super(2, dVar);
            C14416d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20133i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14417a(dVar);
        }

        /* renamed from: k */
        public final Object m20132k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14416d c14416d = C14416d.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c14416d.f41561a.init();
            return sVar;
        }

        /* renamed from: s */
        public final Object m20131s(Object obj) {
            C25225a.m3932a3(obj);
            C14416d.this.f41561a.init();
            return s.a;
        }
    }

    @e(c = "com.truecaller.clevertap.CleverTapManagerImpl$initWithoutActivityLifeCycleCallBacks$1", f = "CleverTapManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g3.d$b */
    /* loaded from: classes7-dex2jar.jar:e/a/g3/d$b.class */
    public static final class C14418b extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14418b(d dVar) {
            super(2, dVar);
            C14416d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20130i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14418b(dVar);
        }

        /* renamed from: k */
        public final Object m20129k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14416d c14416d = C14416d.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c14416d.f41561a.initWithoutActivityLifeCycleCallBacks();
            return sVar;
        }

        /* renamed from: s */
        public final Object m20128s(Object obj) {
            C25225a.m3932a3(obj);
            C14416d.this.f41561a.initWithoutActivityLifeCycleCallBacks();
            return s.a;
        }
    }

    @e(c = "com.truecaller.clevertap.CleverTapManagerImpl$mayBeProcessNotificationExtras$1$1", f = "CleverTapManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g3.d$c */
    /* loaded from: classes7-dex2jar.jar:e/a/g3/d$c.class */
    public static final class C14419c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ Bundle f41565e;

        /* renamed from: f */
        public final /* synthetic */ C14416d f41566f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14419c(Bundle bundle, d dVar, C14416d c14416d) {
            super(2, dVar);
            this.f41565e = bundle;
            this.f41566f = c14416d;
        }

        /* renamed from: i */
        public final d<s> m20127i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14419c(this.f41565e, dVar, this.f41566f);
        }

        /* renamed from: k */
        public final Object m20126k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            Bundle bundle = this.f41565e;
            C14416d c14416d = this.f41566f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            AbstractC14413b abstractC14413b = c14416d.f41561a;
            l.d(bundle, "bundle");
            abstractC14413b.mo20137d(bundle);
            return sVar;
        }

        /* renamed from: s */
        public final Object m20125s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC14413b abstractC14413b = this.f41566f.f41561a;
            Bundle bundle = this.f41565e;
            l.d(bundle, "bundle");
            abstractC14413b.mo20137d(bundle);
            return s.a;
        }
    }

    @e(c = "com.truecaller.clevertap.CleverTapManagerImpl$onUserLogin$1", f = "CleverTapManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g3.d$d */
    /* loaded from: classes7-dex2jar.jar:e/a/g3/d$d.class */
    public static final class C14420d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ CleverTapProfile f41568f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14420d(CleverTapProfile cleverTapProfile, d dVar) {
            super(2, dVar);
            C14416d.this = r5;
            this.f41568f = cleverTapProfile;
        }

        /* renamed from: i */
        public final d<s> m20124i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14420d(this.f41568f, dVar);
        }

        /* renamed from: k */
        public final Object m20123k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14420d c14420d = new C14420d(this.f41568f, dVar);
            s sVar = s.a;
            c14420d.m20122s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m20122s(Object obj) {
            C25225a.m3932a3(obj);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            String firstName = this.f41568f.getFirstName();
            if (firstName != null) {
                linkedHashMap.put("Name", firstName);
            }
            String phoneNumber = this.f41568f.getPhoneNumber();
            if (phoneNumber != null) {
                Objects.requireNonNull(C14416d.this);
                String str = phoneNumber;
                if (phoneNumber.length() > 0) {
                    str = phoneNumber;
                    if (v.C(phoneNumber) >= 2) {
                        StringBuilder m8728C = C22128a.m8728C(phoneNumber);
                        m8728C.append(phoneNumber.subSequence(0, 2));
                        m8728C.append(phoneNumber.subSequence(phoneNumber.length() - 2, phoneNumber.length()));
                        String sb = m8728C.toString();
                        Charset charset = b.a;
                        Objects.requireNonNull(sb, "null cannot be cast to non-null type java.lang.String");
                        byte[] bytes = sb.getBytes(charset);
                        l.d(bytes, "(this as java.lang.String).getBytes(charset)");
                        byte[] digest = MessageDigest.getInstance("SHA-256").digest(bytes);
                        l.d(digest, "digest");
                        str = "";
                        for (byte b : digest) {
                            StringBuilder m8728C2 = C22128a.m8728C(str);
                            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                            l.d(format, "java.lang.String.format(this, *args)");
                            m8728C2.append(format);
                            str = m8728C2.toString();
                        }
                    }
                }
                linkedHashMap.put("Identity", str);
            }
            String email = this.f41568f.getEmail();
            if (email != null) {
                linkedHashMap.put("Email", email);
            }
            String country = this.f41568f.getCountry();
            if (country != null) {
                linkedHashMap.put("Country", country);
            }
            String language = this.f41568f.getLanguage();
            if (language != null) {
                linkedHashMap.put("Language", language);
            }
            C14416d c14416d = C14416d.this;
            c14416d.f41561a.mo20138c(C14416d.m20134a(c14416d, linkedHashMap));
            return s.a;
        }
    }

    @e(c = "com.truecaller.clevertap.CleverTapManagerImpl$push$1", f = "CleverTapManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g3.d$e */
    /* loaded from: classes7-dex2jar.jar:e/a/g3/d$e.class */
    public static final class C14421e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f41570f;

        /* renamed from: g */
        public final /* synthetic */ Map f41571g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14421e(String str, Map map, d dVar) {
            super(2, dVar);
            C14416d.this = r5;
            this.f41570f = str;
            this.f41571g = map;
        }

        /* renamed from: i */
        public final d<s> m20121i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14421e(this.f41570f, this.f41571g, dVar);
        }

        /* renamed from: k */
        public final Object m20120k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14416d c14416d = C14416d.this;
            String str = this.f41570f;
            Map<String, ? extends Object> map = this.f41571g;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c14416d.f41561a.push(str, map);
            return sVar;
        }

        /* renamed from: s */
        public final Object m20119s(Object obj) {
            C25225a.m3932a3(obj);
            C14416d.this.f41561a.push(this.f41570f, this.f41571g);
            return s.a;
        }
    }

    @e(c = "com.truecaller.clevertap.CleverTapManagerImpl$push$2", f = "CleverTapManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g3.d$f */
    /* loaded from: classes7-dex2jar.jar:e/a/g3/d$f.class */
    public static final class C14422f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f41573f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14422f(String str, d dVar) {
            super(2, dVar);
            C14416d.this = r5;
            this.f41573f = str;
        }

        /* renamed from: i */
        public final d<s> m20118i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14422f(this.f41573f, dVar);
        }

        /* renamed from: k */
        public final Object m20117k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14416d c14416d = C14416d.this;
            String str = this.f41573f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c14416d.f41561a.push(str);
            return sVar;
        }

        /* renamed from: s */
        public final Object m20116s(Object obj) {
            C25225a.m3932a3(obj);
            C14416d.this.f41561a.push(this.f41573f);
            return s.a;
        }
    }

    @e(c = "com.truecaller.clevertap.CleverTapManagerImpl$updateProfile$1", f = "CleverTapManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g3.d$g */
    /* loaded from: classes7-dex2jar.jar:e/a/g3/d$g.class */
    public static final class C14423g extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Map f41575f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14423g(Map map, d dVar) {
            super(2, dVar);
            C14416d.this = r5;
            this.f41575f = map;
        }

        /* renamed from: i */
        public final d<s> m20115i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14423g(this.f41575f, dVar);
        }

        /* renamed from: k */
        public final Object m20114k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14416d c14416d = C14416d.this;
            Map map = this.f41575f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c14416d.f41561a.updateProfile(C14416d.m20134a(c14416d, map));
            return sVar;
        }

        /* renamed from: s */
        public final Object m20113s(Object obj) {
            C25225a.m3932a3(obj);
            C14416d c14416d = C14416d.this;
            c14416d.f41561a.updateProfile(C14416d.m20134a(c14416d, this.f41575f));
            return s.a;
        }
    }

    @e(c = "com.truecaller.clevertap.CleverTapManagerImpl$updatePushRegistrationId$1", f = "CleverTapManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g3.d$h */
    /* loaded from: classes7-dex2jar.jar:e/a/g3/d$h.class */
    public static final class C14424h extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ AbstractC12603e f41577f;

        /* renamed from: g */
        public final /* synthetic */ String f41578g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14424h(AbstractC12603e abstractC12603e, String str, d dVar) {
            super(2, dVar);
            C14416d.this = r5;
            this.f41577f = abstractC12603e;
            this.f41578g = str;
        }

        /* renamed from: i */
        public final d<s> m20112i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14424h(this.f41577f, this.f41578g, dVar);
        }

        /* renamed from: k */
        public final Object m20111k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14416d c14416d = C14416d.this;
            AbstractC12603e abstractC12603e = this.f41577f;
            String str = this.f41578g;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            if (l.a(abstractC12603e, AbstractC12603e.C12604a.f36737c)) {
                if (!l.a(str, c14416d.f41562b.getString("CleverTapFcmToken"))) {
                    c14416d.f41562b.mo20108a("CleverTapFcmToken", str);
                    c14416d.f41561a.mo20140a(str);
                }
            } else if (l.a(abstractC12603e, AbstractC12603e.C12605b.f36738c) && (!l.a(str, c14416d.f41562b.getString("CleverTapHmsToken")))) {
                c14416d.f41562b.mo20108a("CleverTapHmsToken", str);
                c14416d.f41561a.mo20139b(str);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m20110s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC12603e abstractC12603e = this.f41577f;
            if (l.a(abstractC12603e, AbstractC12603e.C12604a.f36737c)) {
                if (!l.a(this.f41578g, C14416d.this.f41562b.getString("CleverTapFcmToken"))) {
                    C14416d.this.f41562b.mo20108a("CleverTapFcmToken", this.f41578g);
                    C14416d.this.f41561a.mo20140a(this.f41578g);
                }
            } else if (l.a(abstractC12603e, AbstractC12603e.C12605b.f36738c) && (!l.a(this.f41578g, C14416d.this.f41562b.getString("CleverTapHmsToken")))) {
                C14416d.this.f41562b.mo20108a("CleverTapHmsToken", this.f41578g);
                C14416d.this.f41561a.mo20139b(this.f41578g);
            }
            return s.a;
        }
    }

    @Inject
    public C14416d(AbstractC14413b abstractC14413b, AbstractC14427g abstractC14427g) {
        l.e(abstractC14413b, "cleverTapAPIWrapper");
        l.e(abstractC14427g, "cleverTapPreferences");
        this.f41561a = abstractC14413b;
        this.f41562b = abstractC14427g;
    }

    /* renamed from: a */
    public static final Map m20134a(C14416d c14416d, Map map) {
        Objects.requireNonNull(c14416d);
        Map map2 = map.isEmpty() ^ true ? map : null;
        if (map2 != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it = map2.entrySet().iterator();
            while (true) {
                map = linkedHashMap;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (!l.a(value.toString(), c14416d.f41562b.getString(str))) {
                    linkedHashMap.put(str, value);
                    c14416d.f41562b.mo20108a(str, value.toString());
                }
            }
        }
        return map;
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void init() {
        s1.a.a.a.v0.f.d.H(h1.a, t0.d, (j0) null, new C14417a(null), 2, (Object) null);
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void initWithoutActivityLifeCycleCallBacks() {
        s1.a.a.a.v0.f.d.H(h1.a, t0.d, (j0) null, new C14418b(null), 2, (Object) null);
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void mayBeProcessNotificationExtras(Intent intent) {
        Bundle extras;
        if (intent == null || (extras = intent.getExtras()) == null) {
            return;
        }
        s1.a.a.a.v0.f.d.H(h1.a, t0.d, (j0) null, new C14419c(extras, null, this), 2, (Object) null);
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void onUserLogin(CleverTapProfile cleverTapProfile) {
        l.e(cleverTapProfile, "profile");
        s1.a.a.a.v0.f.d.H(h1.a, t0.d, (j0) null, new C14420d(cleverTapProfile, null), 2, (Object) null);
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void push(String str) {
        l.e(str, "eventName");
        s1.a.a.a.v0.f.d.H(h1.a, t0.d, (j0) null, new C14422f(str, null), 2, (Object) null);
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void push(String str, Map<String, ? extends Object> map) {
        l.e(str, "eventName");
        l.e(map, "eventActions");
        s1.a.a.a.v0.f.d.H(h1.a, t0.d, (j0) null, new C14421e(str, map, null), 2, (Object) null);
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void updateProfile(C14433m c14433m) {
        l.e(c14433m, "profileUpdate");
        HashMap hashMap = new HashMap();
        for (AbstractC14434n abstractC14434n : c14433m.f41607a) {
            hashMap.putAll(abstractC14434n.m20104a());
        }
        updateProfile(hashMap);
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void updateProfile(AbstractC14434n abstractC14434n) {
        l.e(abstractC14434n, "profileUpdate");
        updateProfile(abstractC14434n.m20104a());
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void updateProfile(Map<String, ? extends Object> map) {
        l.e(map, "profileUpdate");
        s1.a.a.a.v0.f.d.H(h1.a, t0.d, (j0) null, new C14423g(map, null), 2, (Object) null);
    }

    @Override // com.truecaller.clevertap.CleverTapManager
    public void updatePushRegistrationId(AbstractC12603e abstractC12603e, String str) {
        l.e(abstractC12603e, "engine");
        l.e(str, "pushId");
        s1.a.a.a.v0.f.d.H(h1.a, t0.d, (j0) null, new C14424h(abstractC12603e, str, null), 2, (Object) null);
    }
}
