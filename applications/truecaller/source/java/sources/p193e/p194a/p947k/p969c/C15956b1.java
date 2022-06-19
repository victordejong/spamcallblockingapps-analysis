package p193e.p194a.p947k.p969c;

import android.content.Intent;
import com.truecaller.api.services.presence.p139v1.models.VideoCallerID;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.C16110g;
import p193e.p194a.p947k.C16117k;
import p193e.p194a.p947k.p971l.C16126d;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k.c.b1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/b1.class */
public final class C15956b1 implements AbstractC15950a1, i0 {

    /* renamed from: a */
    public final f f44971a;

    /* renamed from: b */
    public final AbstractC16067r0 f44972b;

    /* renamed from: c */
    public final AbstractC16116j f44973c;

    @e(c = "com.truecaller.videocallerid.utils.VideoCallerIdPresenceHandlerImpl$onPresenceUpdate$1", f = "VideoCallerIdPresenceHandler.kt", l = {38}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.b1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/b1$a.class */
    public static final class C15957a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f44974e;

        /* renamed from: g */
        public final /* synthetic */ Intent f44976g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15957a(Intent intent, d dVar) {
            super(2, dVar);
            C15956b1.this = r5;
            this.f44976g = intent;
        }

        /* renamed from: i */
        public final d<s> m18101i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15957a(this.f44976g, dVar);
        }

        /* renamed from: k */
        public final Object m18100k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15957a(this.f44976g, dVar).m18099s(s.a);
        }

        /* renamed from: s */
        public final Object m18099s(Object obj) {
            ArrayList<C16110g> arrayList;
            a aVar = a.a;
            int i = this.f44974e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16116j abstractC16116j = C15956b1.this.f44973c;
                Intent intent = this.f44976g;
                Objects.requireNonNull((C16117k) abstractC16116j);
                l.e(intent, "intent");
                Serializable serializableExtra = intent.getSerializableExtra("com.truecaller.datamanager.EXTRA_PRESENCE");
                Serializable serializable = serializableExtra;
                if (!(serializableExtra instanceof ArrayList)) {
                    serializable = null;
                }
                ArrayList arrayList2 = (ArrayList) serializable;
                if (arrayList2 != null) {
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (true) {
                        arrayList = arrayList3;
                        if (!it.hasNext()) {
                            break;
                        }
                        C17409e c17409e = (C17409e) it.next();
                        VideoCallerID videoCallerID = c17409e.f48765l;
                        C16110g c16110g = videoCallerID != null ? new C16110g(c17409e.f48754a, !videoCallerID.getDisabled(), videoCallerID.getVersion()) : null;
                        if (c16110g != null) {
                            arrayList3.add(c16110g);
                        }
                    }
                } else {
                    arrayList = s1.u.s.a;
                }
                ArrayList arrayList4 = new ArrayList(C25225a.m4004J(arrayList, 10));
                for (C16110g c16110g2 : arrayList) {
                    arrayList4.add(new C16126d(c16110g2.f45381a, c16110g2.f45382b, c16110g2.f45383c));
                }
                AbstractC16067r0 abstractC16067r0 = C15956b1.this.f44972b;
                this.f44974e = 1;
                if (abstractC16067r0.mo17920f(arrayList4, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C15956b1(@Named("IO") f fVar, AbstractC16067r0 abstractC16067r0, AbstractC16116j abstractC16116j) {
        l.e(fVar, "ioContext");
        l.e(abstractC16067r0, "videoCallerIdAvailability");
        l.e(abstractC16116j, "support");
        this.f44971a = fVar;
        this.f44972b = abstractC16067r0;
        this.f44973c = abstractC16116j;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15950a1
    /* renamed from: a */
    public p1 mo18102a(Intent intent) {
        l.e(intent, "intent");
        return s1.a.a.a.v0.f.d.w2(this, this.f44971a, (j0) null, new C15957a(intent, null), 2, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f44971a;
    }
}
