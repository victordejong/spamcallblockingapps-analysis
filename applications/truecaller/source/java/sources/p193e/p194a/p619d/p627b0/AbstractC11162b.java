package p193e.p194a.p619d.p627b0;

import com.truecaller.voip.VoipUserBadge;
import com.truecaller.voip.user.PeerHistoryPeerStatus;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.b0.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/b0/b.class */
public abstract class AbstractC11162b {

    /* renamed from: e.a.d.b0.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b0/b$a.class */
    public static final class C11163a extends AbstractC11162b {

        /* renamed from: a */
        public final int f33003a;

        /* renamed from: b */
        public final PeerHistoryPeerStatus f33004b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11163a(int i, PeerHistoryPeerStatus peerHistoryPeerStatus) {
            super(i, null);
            l.e(peerHistoryPeerStatus, "state");
            this.f33003a = i;
            this.f33004b = peerHistoryPeerStatus;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C11163a)) {
                    return false;
                }
                C11163a c11163a = (C11163a) obj;
                return this.f33003a == c11163a.f33003a && l.a(this.f33004b, c11163a.f33004b);
            }
            return true;
        }

        public int hashCode() {
            int i = this.f33003a;
            PeerHistoryPeerStatus peerHistoryPeerStatus = this.f33004b;
            return (i * 31) + (peerHistoryPeerStatus != null ? peerHistoryPeerStatus.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FailedToResolve(peerPosition=");
            m8728C.append(this.f33003a);
            m8728C.append(", state=");
            m8728C.append(this.f33004b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.b0.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b0/b$b.class */
    public static final class C11164b extends AbstractC11162b {

        /* renamed from: a */
        public final String f33005a;

        /* renamed from: b */
        public final Long f33006b;

        /* renamed from: c */
        public final String f33007c;

        /* renamed from: d */
        public final String f33008d;

        /* renamed from: e */
        public final String f33009e;

        /* renamed from: f */
        public final boolean f33010f;

        /* renamed from: g */
        public final boolean f33011g;

        /* renamed from: h */
        public final VoipUserBadge f33012h;

        /* renamed from: i */
        public final int f33013i;

        /* renamed from: j */
        public final boolean f33014j;

        /* renamed from: k */
        public final PeerHistoryPeerStatus f33015k;

        /* renamed from: l */
        public final int f33016l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11164b(String str, Long l, String str2, String str3, String str4, boolean z, boolean z2, VoipUserBadge voipUserBadge, int i, boolean z3, PeerHistoryPeerStatus peerHistoryPeerStatus, int i2) {
            super(i2, null);
            l.e(str2, "number");
            l.e(voipUserBadge, "badge");
            l.e(peerHistoryPeerStatus, "state");
            this.f33005a = str;
            this.f33006b = l;
            this.f33007c = str2;
            this.f33008d = str3;
            this.f33009e = str4;
            this.f33010f = z;
            this.f33011g = z2;
            this.f33012h = voipUserBadge;
            this.f33013i = i;
            this.f33014j = z3;
            this.f33015k = peerHistoryPeerStatus;
            this.f33016l = i2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C11164b)) {
                    return false;
                }
                C11164b c11164b = (C11164b) obj;
                return l.a(this.f33005a, c11164b.f33005a) && l.a(this.f33006b, c11164b.f33006b) && l.a(this.f33007c, c11164b.f33007c) && l.a(this.f33008d, c11164b.f33008d) && l.a(this.f33009e, c11164b.f33009e) && this.f33010f == c11164b.f33010f && this.f33011g == c11164b.f33011g && l.a(this.f33012h, c11164b.f33012h) && this.f33013i == c11164b.f33013i && this.f33014j == c11164b.f33014j && l.a(this.f33015k, c11164b.f33015k) && this.f33016l == c11164b.f33016l;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f33005a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            Long l = this.f33006b;
            int hashCode2 = l != null ? l.hashCode() : 0;
            String str2 = this.f33007c;
            int hashCode3 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f33008d;
            int hashCode4 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f33009e;
            int hashCode5 = str4 != null ? str4.hashCode() : 0;
            boolean z = this.f33010f;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            boolean z2 = this.f33011g;
            int i4 = z2 ? 1 : 0;
            if (z2) {
                i4 = 1;
            }
            VoipUserBadge voipUserBadge = this.f33012h;
            int hashCode6 = voipUserBadge != null ? voipUserBadge.hashCode() : 0;
            int i5 = this.f33013i;
            boolean z3 = this.f33014j;
            if (!z3) {
                i2 = z3 ? 1 : 0;
            }
            PeerHistoryPeerStatus peerHistoryPeerStatus = this.f33015k;
            if (peerHistoryPeerStatus != null) {
                i = peerHistoryPeerStatus.hashCode();
            }
            return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i3) * 31) + i4) * 31) + hashCode6) * 31) + i5) * 31) + i2) * 31) + i) * 31) + this.f33016l;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SearchedPeer(contactId=");
            m8728C.append(this.f33005a);
            m8728C.append(", phonebookId=");
            m8728C.append(this.f33006b);
            m8728C.append(", number=");
            m8728C.append(this.f33007c);
            m8728C.append(", name=");
            m8728C.append(this.f33008d);
            m8728C.append(", pictureUrl=");
            m8728C.append(this.f33009e);
            m8728C.append(", isPhonebook=");
            m8728C.append(this.f33010f);
            m8728C.append(", isUnknown=");
            m8728C.append(this.f33011g);
            m8728C.append(", badge=");
            m8728C.append(this.f33012h);
            m8728C.append(", spamScore=");
            m8728C.append(this.f33013i);
            m8728C.append(", isBlocked=");
            m8728C.append(this.f33014j);
            m8728C.append(", state=");
            m8728C.append(this.f33015k);
            m8728C.append(", peerPosition=");
            return C22128a.m8697J2(m8728C, this.f33016l, ")");
        }
    }

    /* renamed from: e.a.d.b0.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b0/b$c.class */
    public static final class C11165c extends AbstractC11162b {

        /* renamed from: a */
        public final int f33017a;

        public C11165c(int i) {
            super(i, null);
            this.f33017a = i;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11165c) && this.f33017a == ((C11165c) obj).f33017a;
            }
            return true;
        }

        public int hashCode() {
            return this.f33017a;
        }

        public String toString() {
            return C22128a.m8697J2(C22128a.m8728C("Searching(peerPosition="), this.f33017a, ")");
        }
    }

    public AbstractC11162b(int i, f fVar) {
    }
}
