package p459j.p460a.p474c0.p475c.p478y;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12155e;
/* renamed from: j.a.c0.c.y.p */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/p.class */
public class C11634p {

    /* renamed from: a */
    public final List<C11635a> f26114a = new ArrayList();

    /* renamed from: b */
    public C11635a f26115b;

    /* renamed from: c */
    public final Context f26116c;

    /* renamed from: j.a.c0.c.y.p$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/p$a.class */
    public static class C11635a {

        /* renamed from: a */
        public final String f26117a;

        /* renamed from: b */
        public final Uri f26118b;

        /* renamed from: c */
        public final Uri f26119c;

        /* renamed from: d */
        public final String f26120d;

        /* renamed from: e */
        public final int f26121e;

        /* renamed from: f */
        public final String f26122f;

        public C11635a(String str, Uri uri, Uri uri2, String str2, int i, String str3) {
            this.f26117a = str;
            this.f26118b = uri;
            this.f26119c = uri2;
            this.f26120d = str2;
            this.f26121e = i;
            this.f26122f = str3;
        }

        /* renamed from: a */
        public static C11635a m8745a(ParticipantData participantData, Context context) {
            C12151d.m6999b(participantData.m27551G());
            C12151d.m6999b(participantData.m27555C());
            int q = participantData.m27526q();
            String format = String.format(Locale.getDefault(), "%d", Integer.valueOf(q));
            String B = participantData.m27556B();
            String str = B;
            if (TextUtils.isEmpty(B)) {
                str = context.getString(R$string.sim_slot_identifier, Integer.valueOf(q));
            }
            return new C11635a(participantData.m27523t(), C12155e.m6974a(participantData, format, false, false), C12155e.m6974a(participantData, format, true, false), str, participantData.m27557A(), participantData.m27534c());
        }
    }

    public C11634p(Context context) {
        this.f26116c = context;
    }

    /* renamed from: a */
    public C11635a m8748a(String str, boolean z) {
        C11635a aVar = this.f26115b;
        C11635a aVar2 = null;
        if (aVar == null || !TextUtils.equals(aVar.f26117a, str)) {
            for (C11635a aVar3 : this.f26114a) {
                if (TextUtils.equals(aVar3.f26117a, str)) {
                    return aVar3;
                }
            }
            return null;
        }
        if (!z) {
            aVar2 = this.f26115b;
        }
        return aVar2;
    }

    /* renamed from: a */
    public List<C11635a> m8749a() {
        return this.f26114a;
    }

    /* renamed from: a */
    public void m8747a(List<ParticipantData> list) {
        this.f26114a.clear();
        this.f26115b = null;
        for (ParticipantData participantData : list) {
            C11635a a = C11635a.m8745a(participantData, this.f26116c);
            if (!participantData.m27553E()) {
                this.f26114a.add(a);
            } else {
                this.f26115b = a;
            }
        }
    }

    /* renamed from: b */
    public boolean m8746b() {
        return !this.f26114a.isEmpty() || this.f26115b != null;
    }
}
