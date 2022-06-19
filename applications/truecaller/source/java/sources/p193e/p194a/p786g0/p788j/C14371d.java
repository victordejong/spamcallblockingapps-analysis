package p193e.p194a.p786g0.p788j;

import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.g0.j.d */
/* loaded from: classes14-dex2jar.jar:e/a/g0/j/d.class */
public final class C14371d implements AbstractC19549v {

    /* renamed from: a */
    public final String f41500a;

    /* renamed from: b */
    public final String f41501b;

    /* renamed from: c */
    public final String f41502c;

    /* renamed from: d */
    public final String f41503d;

    /* renamed from: e */
    public final int f41504e;

    /* renamed from: f */
    public final int f41505f;

    public C14371d(String str, String str2, int i, int i2) {
        String str3;
        String str4;
        l.e(str, "deviceMake");
        l.e(str2, "deviceModel");
        this.f41502c = str;
        this.f41503d = str2;
        this.f41504e = i;
        this.f41505f = i2;
        if (i == 99) {
            str3 = "UNFINISHED";
        } else if (i != 1500) {
            switch (i) {
                case -1:
                    str3 = "UNKNOWN";
                    break;
                case 0:
                    str3 = "SUCCESS";
                    break;
                case 1:
                    str3 = "SERVICE_MISSING";
                    break;
                case 2:
                    str3 = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    str3 = "SERVICE_DISABLED";
                    break;
                case 4:
                    str3 = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    str3 = "INVALID_ACCOUNT";
                    break;
                case 6:
                    str3 = "RESOLUTION_REQUIRED";
                    break;
                case 7:
                    str3 = "NETWORK_ERROR";
                    break;
                case 8:
                    str3 = "INTERNAL_ERROR";
                    break;
                case 9:
                    str3 = "SERVICE_INVALID";
                    break;
                case 10:
                    str3 = "DEVELOPER_ERROR";
                    break;
                case 11:
                    str3 = "LICENSE_CHECK_FAILED";
                    break;
                default:
                    switch (i) {
                        case 13:
                            str3 = "CANCELED";
                            break;
                        case 14:
                            str3 = "TIMEOUT";
                            break;
                        case 15:
                            str3 = "INTERRUPTED";
                            break;
                        case 16:
                            str3 = "API_UNAVAILABLE";
                            break;
                        case 17:
                            str3 = "SIGN_IN_FAILED";
                            break;
                        case 18:
                            str3 = "SERVICE_UPDATING";
                            break;
                        case 19:
                            str3 = "SERVICE_MISSING_PERMISSION";
                            break;
                        case 20:
                            str3 = "RESTRICTED_PROFILE";
                            break;
                        case 21:
                            str3 = "API_VERSION_UPDATE_REQUIRED";
                            break;
                        default:
                            str3 = "UNKNOWN_ERROR_CODE(" + i + ')';
                            break;
                    }
            }
        } else {
            str3 = "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        this.f41500a = str3;
        if (i2 == -1) {
            str4 = "UNKNOWN";
        } else if (i2 == 0) {
            str4 = "SUCCESS";
        } else if (i2 == 1) {
            str4 = "SERVICE_MISSING";
        } else if (i2 == 2) {
            str4 = "SERVICE_VERSION_UPDATE_REQUIRED";
        } else if (i2 == 3) {
            str4 = "SERVICE_DISABLED";
        } else if (i2 == 13) {
            str4 = "CANCELED";
        } else if (i2 == 14) {
            str4 = "TIMEOUT";
        } else if (i2 != 19) {
            str4 = "API_VERSION_UPDATE_REQUIRED";
            if (i2 != 21) {
                switch (i2) {
                    case 6:
                        str4 = "RESOLUTION_REQUIRED";
                        break;
                    case 7:
                        str4 = "NETWORK_ERROR";
                        break;
                    case 8:
                        str4 = "INTERNAL_ERROR";
                        break;
                    case 9:
                        str4 = "SERVICE_INVALID";
                        break;
                    case 10:
                        str4 = "DEVELOPER_ERROR";
                        break;
                    case 11:
                        str4 = "LICENSE_CHECK_FAILED";
                        break;
                    default:
                        str4 = "UNKNOWN_ERROR_CODE(" + i2 + ')';
                        break;
                }
            }
        } else {
            str4 = "SERVICE_MISSING_PERMISSION";
        }
        this.f41501b = str4;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("DeviceMake", this.f41502c);
        bundle.putString("DeviceModel", this.f41503d);
        bundle.putString("GmsStatus", this.f41500a);
        return C22128a.m8588o1(bundle, "HmsStatus", this.f41501b, "RecaptchaNotAvailable", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14371d)) {
                return false;
            }
            C14371d c14371d = (C14371d) obj;
            return l.a(this.f41502c, c14371d.f41502c) && l.a(this.f41503d, c14371d.f41503d) && this.f41504e == c14371d.f41504e && this.f41505f == c14371d.f41505f;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f41502c;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f41503d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + i) * 31) + this.f41504e) * 31) + this.f41505f;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RecaptchaNotAvailableEvent(deviceMake=");
        m8728C.append(this.f41502c);
        m8728C.append(", deviceModel=");
        m8728C.append(this.f41503d);
        m8728C.append(", gmsStatus=");
        m8728C.append(this.f41504e);
        m8728C.append(", hmsStatus=");
        return C22128a.m8697J2(m8728C, this.f41505f, ")");
    }
}
