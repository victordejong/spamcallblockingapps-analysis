package p193e.p194a.p372b0.p424n;

import com.razorpay.AnalyticsConstants;
import com.truecaller.common.C3656R;
import com.truecaller.common.profile.ProfileSaveError;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p372b0.p424n.AbstractC8532h;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.b0.n.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/n/b.class */
public final class C8523b {

    /* renamed from: a */
    public final AbstractC19223c0 f26314a;

    @Inject
    public C8523b(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        this.f26314a = abstractC19223c0;
    }

    /* renamed from: a */
    public final String m28414a(AbstractC8532h abstractC8532h) {
        int i;
        String str;
        l.e(abstractC8532h, "profileSaveResult");
        if (!l.a(abstractC8532h, AbstractC8532h.C8537e.f26328c)) {
            if (l.a(abstractC8532h, AbstractC8532h.C8534b.f26325c)) {
                i = C3656R.string.profile_error_generic;
            } else if (l.a(abstractC8532h, AbstractC8532h.C8533a.f26324c)) {
                i = C3656R.string.profile_error_generic;
            } else if (l.a(abstractC8532h, AbstractC8532h.C8535c.f26326c)) {
                i = C3656R.string.profile_error_network;
            } else if (l.a(abstractC8532h, AbstractC8532h.C8536d.f26327c)) {
                i = C3656R.string.profile_error_network;
            } else if (abstractC8532h instanceof AbstractC8532h.C8538f) {
                i = C3656R.string.profile_error_network;
            } else if (!(abstractC8532h instanceof AbstractC8532h.C8539g)) {
                throw new i();
            } else {
                ProfileSaveError profileSaveError = (ProfileSaveError) s1.u.i.D(((AbstractC8532h.C8539g) abstractC8532h).f26329c);
                Integer valueOf = profileSaveError != null ? Integer.valueOf(profileSaveError.getErrorType()) : null;
                if (valueOf != null && valueOf.intValue() == 1) {
                    i = C3656R.string.profile_error_validation_invalidCharacter;
                } else if (valueOf != null && valueOf.intValue() == 2) {
                    i = C3656R.string.profile_error_validation_invalidWord;
                } else if (valueOf != null && valueOf.intValue() == 7) {
                    i = C3656R.string.profile_error_validation_birthdayNotAllowed;
                } else if (valueOf != null && valueOf.intValue() == 8) {
                    String fieldName = profileSaveError.getFieldName();
                    int hashCode = fieldName.hashCode();
                    if (hashCode == -1459599807) {
                        if (fieldName.equals("lastName")) {
                            i = C3656R.string.profile_error_validation_lastNameTooLong;
                        }
                        i = C3656R.string.profile_error_generic;
                    } else if (hashCode != -508582744) {
                        if (hashCode == 132835675 && fieldName.equals("firstName")) {
                            i = C3656R.string.profile_error_validation_firstNameTooLong;
                        }
                        i = C3656R.string.profile_error_generic;
                    } else {
                        if (fieldName.equals("companyName")) {
                            i = C3656R.string.profile_error_validation_companyNameTooLong;
                        }
                        i = C3656R.string.profile_error_generic;
                    }
                } else {
                    i = (valueOf != null && valueOf.intValue() == 9) ? C3656R.string.profile_error_validation_invalidUrl : C3656R.string.profile_error_generic;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.f26314a.mo13768b(i, new Object[0]));
            sb.append(" (");
            if (abstractC8532h instanceof AbstractC8532h.C8539g) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(abstractC8532h.f26323b);
                sb2.append(':');
                ProfileSaveError profileSaveError2 = (ProfileSaveError) s1.u.i.D(((AbstractC8532h.C8539g) abstractC8532h).f26329c);
                Integer num = null;
                if (profileSaveError2 != null) {
                    num = Integer.valueOf(profileSaveError2.getErrorType());
                }
                if (num == null) {
                    num = AnalyticsConstants.NULL;
                }
                sb2.append(num);
                str = sb2.toString();
            } else {
                str = String.valueOf(abstractC8532h.f26323b);
            }
            return C22128a.m8630e(sb, str, ')');
        }
        throw new IllegalStateException("Not an error".toString());
    }
}
