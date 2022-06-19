package p193e.p194a.p619d.p643d.p644a.p645a.p646a;

import androidx.appcompat.widget.AppCompatTextView;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.data.entity.Number;
import com.truecaller.voip.contacts.p188ui.VoipContactsMvp$VoipContactSelectionSource;
import com.truecaller.voip.contacts.p188ui.items.contacts.VoipActionType;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p619d.p643d.p644a.AbstractC11683t;
import p193e.p194a.p619d.p643d.p650c.C11694a;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.a.a.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/a/c.class */
public final class C11647c extends AbstractC11646b implements AbstractC18904l {

    /* renamed from: b */
    public final String f34195b;

    /* renamed from: c */
    public final String f34196c;

    /* renamed from: d */
    public AbstractC11683t f34197d;

    /* renamed from: e */
    public boolean f34198e;

    @Inject
    public C11647c(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        String mo13768b = abstractC19223c0.mo13768b(C2752R.string.voip_contacts_adapter_header_phonebook, abstractC19223c0.mo13768b(2131890378, new Object[0]));
        l.d(mo13768b, "resourceProvider.getStri…R.string.voip_text)\n    )");
        this.f34195b = mo13768b;
        String mo13768b2 = abstractC19223c0.mo13768b(C2752R.string.voip_contacts_adapter_header_identified, abstractC19223c0.mo13768b(2131890378, new Object[0]));
        l.d(mo13768b2, "resourceProvider.getStri…R.string.voip_text)\n    )");
        this.f34196c = mo13768b2;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p646a.AbstractC11646b
    /* renamed from: A */
    public void mo24324A(AbstractC11683t abstractC11683t, boolean z) {
        l.e(abstractC11683t, "presenterProxy");
        this.f34197d = abstractC11683t;
        this.f34198e = z;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p646a.AbstractC11646b
    /* renamed from: B */
    public void mo24323B() {
        this.f34197d = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r3 != null) goto L7;
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p193e.p194a.p619d.p643d.p650c.C11694a> m24322C() {
        /*
            r2 = this;
            r0 = r2
            e.a.d.d.a.t r0 = r0.f34197d
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L17
            r0 = r3
            java.util.List r0 = r0.mo24229oj()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L17
            goto L1b
        L17:
            s1.u.s r0 = s1.u.s.a
            r3 = r0
        L1b:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p643d.p644a.p645a.p646a.C11647c.m24322C():java.util.List");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        String str;
        String str2;
        VoipActionType voipActionType;
        C11640a c11640a = (C11640a) obj;
        l.e(c11640a, "itemView");
        C11694a c11694a = m24322C().get(i);
        Number number = c11694a.f34313b;
        AvatarXConfig m13621I = C19291g.m13621I(c11694a);
        l.e(m13621I, "avatarXConfig");
        c11640a.f34185i.m28740nk(m13621I, true);
        Set<String> m13627G = C19291g.m13627G(c11694a);
        l.e(m13627G, "availabilityIdentifier");
        c11640a.f34186j.m16139Lj(m13627G);
        String m28239a = C8605o.m28239a(c11694a.f34314c);
        l.d(m28239a, "GUIUtils.bidiFormat(voipContact.name)");
        l.e(m28239a, "title");
        c11640a.f34183g.m35638w1(m28239a, false, 0, 0);
        if (c11694a.f34317f) {
            str = number.m35477g();
            if (str == null) {
                str = number.m35479e();
            }
        } else {
            str = "";
        }
        l.d(str, "if (voipContact.hasMulti….normalizedNumber else \"\"");
        l.e(str, "subtitle");
        ListItemX.m35644o1(c11640a.f34183g, str, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
        if (this.f34198e) {
            boolean z = c11694a.f34316e;
            ((AppCompatTextView) c11640a.f34180d.getValue()).setAlpha(z ? 1.0f : 0.45f);
            ((AppCompatTextView) c11640a.f34181e.getValue()).setAlpha(z ? 1.0f : 0.45f);
            c11640a.f34183g.setClickable(c11694a.f34316e);
            if (c11694a.f34316e) {
                boolean z2 = c11694a.f34315d;
                if (!z2) {
                    voipActionType = VoipActionType.VOIP_ADD_TO_GROUP;
                } else if (z2) {
                    voipActionType = VoipActionType.VOIP_REMOVE_FROM_GROUP;
                }
                c11640a.m24327N4(voipActionType);
            }
            voipActionType = null;
            c11640a.m24327N4(voipActionType);
        } else {
            c11640a.f34183g.setClickable(false);
            c11640a.m24327N4(VoipActionType.VOIP_CALL);
        }
        if (i == 0) {
            str2 = c11694a.f34318g ? this.f34195b : this.f34196c;
        } else {
            str2 = null;
            if (m24322C().get(i - 1).f34318g & (!c11694a.f34318g)) {
                str2 = this.f34196c;
            }
        }
        c11640a.f34177a = str2;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return m24322C().size();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        Long id = m24322C().get(i).f34312a.getId();
        return id != null ? id.longValue() : (char) 65535;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        VoipActionType voipActionType;
        l.e(c18900h, "event");
        VoipActionType.C4809a c4809a = VoipActionType.Companion;
        String str = c18900h.f53001a;
        Objects.requireNonNull(c4809a);
        l.e(str, "action");
        VoipActionType[] values = VoipActionType.values();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= 5) {
                voipActionType = null;
                break;
            }
            voipActionType = values[i];
            if (l.a(voipActionType.getEventAction(), str)) {
                break;
            }
            i++;
        }
        if (voipActionType != null) {
            int ordinal = voipActionType.ordinal();
            if (ordinal == 0) {
                int i2 = c18900h.f53002b;
                AbstractC11683t abstractC11683t = this.f34197d;
                if (abstractC11683t != null) {
                    abstractC11683t.mo24256Ch(m24322C().get(i2), i2, VoipContactsMvp$VoipContactSelectionSource.CONTACTS_LIST);
                }
            } else if (ordinal == 1) {
                int i3 = c18900h.f53002b;
                AbstractC11683t abstractC11683t2 = this.f34197d;
                if (abstractC11683t2 != null) {
                    abstractC11683t2.mo24234ai(m24322C().get(i3), i3, VoipContactsMvp$VoipContactSelectionSource.CONTACTS_LIST);
                }
            } else if (ordinal == 2) {
                AbstractC11683t abstractC11683t3 = this.f34197d;
                if (abstractC11683t3 != null) {
                    abstractC11683t3.mo24235Z5(m24322C().get(c18900h.f53002b));
                }
            } else if (ordinal == 3) {
                AbstractC11683t abstractC11683t4 = this.f34197d;
                if (abstractC11683t4 != null) {
                    abstractC11683t4.mo24228wj(m24322C().get(c18900h.f53002b));
                }
            } else if (ordinal == 4) {
                if (m24322C().get(c18900h.f53002b).f34315d) {
                    int i4 = c18900h.f53002b;
                    AbstractC11683t abstractC11683t5 = this.f34197d;
                    if (abstractC11683t5 != null) {
                        abstractC11683t5.mo24234ai(m24322C().get(i4), i4, VoipContactsMvp$VoipContactSelectionSource.CONTACTS_LIST);
                    }
                } else {
                    int i5 = c18900h.f53002b;
                    AbstractC11683t abstractC11683t6 = this.f34197d;
                    if (abstractC11683t6 != null) {
                        abstractC11683t6.mo24256Ch(m24322C().get(i5), i5, VoipContactsMvp$VoipContactSelectionSource.CONTACTS_LIST);
                    }
                }
            }
            z = true;
        }
        return z;
    }
}
