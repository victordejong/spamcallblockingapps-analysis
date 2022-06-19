package p193e.p194a.p619d.p628c.p636z;

import android.net.Uri;
import com.truecaller.voip.VoipGroupCallHistoryStatus;
import com.truecaller.voip.p192ui.calldetails.VoipHistoryDetailsMVP$CallingAction;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p373a.p378c.p380m.C8279b;
import p193e.p194a.p619d.p627b0.AbstractC11162b;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11567d;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.c.z.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/p.class */
public abstract class AbstractC11358p {

    /* renamed from: e.a.d.c.z.p$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/z/p$a.class */
    public static final class C11359a extends AbstractC11358p {

        /* renamed from: a */
        public final List<C8279b> f33394a;

        /* renamed from: b */
        public final long f33395b;

        /* renamed from: c */
        public final VoipGroupCallHistoryStatus f33396c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11359a(List<C8279b> list, long j, VoipGroupCallHistoryStatus voipGroupCallHistoryStatus) {
            super(null);
            l.e(voipGroupCallHistoryStatus, "groupCallStatus");
            this.f33394a = list;
            this.f33395b = j;
            this.f33396c = voipGroupCallHistoryStatus;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C11359a)) {
                    return false;
                }
                C11359a c11359a = (C11359a) obj;
                return l.a(this.f33394a, c11359a.f33394a) && this.f33395b == c11359a.f33395b && l.a(this.f33396c, c11359a.f33396c);
            }
            return true;
        }

        public int hashCode() {
            List<C8279b> list = this.f33394a;
            int i = 0;
            int hashCode = list != null ? list.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f33395b);
            VoipGroupCallHistoryStatus voipGroupCallHistoryStatus = this.f33396c;
            if (voipGroupCallHistoryStatus != null) {
                i = voipGroupCallHistoryStatus.hashCode();
            }
            return (((hashCode * 31) + m34274a) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("GroupHeaderCallItem(groupAvatars=");
            m8728C.append(this.f33394a);
            m8728C.append(", callTimeStamp=");
            m8728C.append(this.f33395b);
            m8728C.append(", groupCallStatus=");
            m8728C.append(this.f33396c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.c.z.p$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/z/p$b.class */
    public static final class C11360b extends AbstractC11358p {

        /* renamed from: a */
        public final AbstractC11162b f33397a;

        /* renamed from: b */
        public final Uri f33398b;

        /* renamed from: c */
        public final AbstractC11567d f33399c;

        /* renamed from: d */
        public final VoipHistoryDetailsMVP$CallingAction f33400d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11360b(AbstractC11162b abstractC11162b, Uri uri, AbstractC11567d abstractC11567d, VoipHistoryDetailsMVP$CallingAction voipHistoryDetailsMVP$CallingAction) {
            super(null);
            l.e(voipHistoryDetailsMVP$CallingAction, "callingAction");
            this.f33397a = abstractC11162b;
            this.f33398b = uri;
            this.f33399c = abstractC11567d;
            this.f33400d = voipHistoryDetailsMVP$CallingAction;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11360b(AbstractC11162b abstractC11162b, Uri uri, AbstractC11567d abstractC11567d, VoipHistoryDetailsMVP$CallingAction voipHistoryDetailsMVP$CallingAction, int i) {
            super(null);
            l.e(voipHistoryDetailsMVP$CallingAction, "callingAction");
            this.f33397a = abstractC11162b;
            this.f33398b = null;
            this.f33399c = null;
            this.f33400d = voipHistoryDetailsMVP$CallingAction;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!l.a(C11360b.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.voip.ui.calldetails.VoipHistoryDetailsMVP.VoipCallHistoryItem.PeerItem");
            C11360b c11360b = (C11360b) obj;
            return !(l.a(this.f33397a, c11360b.f33397a) ^ true) && !(l.a(this.f33398b, c11360b.f33398b) ^ true) && this.f33400d == c11360b.f33400d;
        }

        public int hashCode() {
            AbstractC11162b abstractC11162b = this.f33397a;
            int i = 0;
            int hashCode = abstractC11162b != null ? abstractC11162b.hashCode() : 0;
            Uri uri = this.f33398b;
            if (uri != null) {
                i = uri.hashCode();
            }
            return this.f33400d.hashCode() + (((hashCode * 31) + i) * 31);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PeerItem(searchedPeer=");
            m8728C.append(this.f33397a);
            m8728C.append(", imageUrl=");
            m8728C.append(this.f33398b);
            m8728C.append(", availabilityPresenter=");
            m8728C.append(this.f33399c);
            m8728C.append(", callingAction=");
            m8728C.append(this.f33400d);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.c.z.p$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/z/p$c.class */
    public static final class C11361c extends AbstractC11358p {

        /* renamed from: a */
        public final int f33401a;

        public C11361c(int i) {
            super(null);
            this.f33401a = i;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11361c) && this.f33401a == ((C11361c) obj).f33401a;
            }
            return true;
        }

        public int hashCode() {
            return this.f33401a;
        }

        public String toString() {
            return C22128a.m8697J2(C22128a.m8728C("Searching(peerPosition="), this.f33401a, ")");
        }
    }

    public AbstractC11358p() {
    }

    public AbstractC11358p(f fVar) {
    }
}
