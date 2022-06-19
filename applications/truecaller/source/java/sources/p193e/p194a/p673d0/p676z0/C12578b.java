package p193e.p194a.p673d0.p676z0;

import android.os.Bundle;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.d0.z0.b */
/* loaded from: classes6-dex2jar.jar:e/a/d0/z0/b.class */
public final class C12578b implements AbstractC19549v {

    /* renamed from: a */
    public final boolean f36712a;

    /* renamed from: b */
    public final long f36713b;

    /* renamed from: c */
    public final List<C12577a> f36714c;

    public C12578b(boolean z, long j, List<C12577a> list) {
        l.e(list, "attemptsDetails");
        this.f36712a = z;
        this.f36713b = j;
        this.f36714c = list;
    }

    /* renamed from: b */
    public static final String m22861b(long j) {
        String str;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j);
        if (0 <= seconds && 1 >= seconds) {
            str = "0-1";
        } else {
            long j2 = 2;
            if (1 <= seconds && j2 >= seconds) {
                str = "1-2";
            } else {
                long j3 = 3;
                if (j2 <= seconds && j3 >= seconds) {
                    str = "2-3";
                } else {
                    long j4 = 4;
                    if (j3 <= seconds && j4 >= seconds) {
                        str = "3-4";
                    } else {
                        long j5 = 5;
                        if (j4 <= seconds && j5 >= seconds) {
                            str = "4-5";
                        } else {
                            long j6 = 6;
                            if (j5 <= seconds && j6 >= seconds) {
                                str = "5-6";
                            } else {
                                long j7 = 7;
                                if (j6 <= seconds && j7 >= seconds) {
                                    str = "6-7";
                                } else {
                                    long j8 = 8;
                                    if (j7 <= seconds && j8 >= seconds) {
                                        str = "7-8";
                                    } else {
                                        long j9 = 9;
                                        if (j8 <= seconds && j9 >= seconds) {
                                            str = "8-9";
                                        } else {
                                            long j10 = 10;
                                            if (j9 <= seconds && j10 >= seconds) {
                                                str = "9-10";
                                            } else {
                                                long j11 = 12;
                                                if (j10 <= seconds && j11 >= seconds) {
                                                    str = "10-12";
                                                } else {
                                                    long j12 = 14;
                                                    if (j11 <= seconds && j12 >= seconds) {
                                                        str = "12-14";
                                                    } else {
                                                        long j13 = 16;
                                                        if (j12 <= seconds && j13 >= seconds) {
                                                            str = "14-16";
                                                        } else {
                                                            long j14 = 18;
                                                            if (j13 <= seconds && j14 >= seconds) {
                                                                str = "16-18";
                                                            } else {
                                                                long j15 = 20;
                                                                if (j14 <= seconds && j15 >= seconds) {
                                                                    str = "18-20";
                                                                } else {
                                                                    long j16 = 25;
                                                                    if (j15 <= seconds && j16 >= seconds) {
                                                                        str = "20-25";
                                                                    } else {
                                                                        str = (j16 <= seconds && ((long) 30) >= seconds) ? "25-30" : ">30";
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return str;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("Success", this.f36712a);
        bundle.putString("ElapsedSeconds", m22861b(this.f36713b));
        bundle.putInt("NumberOfAttempts", this.f36714c.size());
        bundle.putString("LastConnectionType", ((C12577a) i.Q(this.f36714c)).f36708b);
        for (C12577a c12577a : this.f36714c) {
            bundle.putBoolean(C22128a.m8697J2(C22128a.m8728C("Attempt"), c12577a.f36707a, "_Success"), c12577a.f36709c);
            StringBuilder sb = new StringBuilder();
            sb.append("Attempt");
            bundle.putString(C22128a.m8697J2(sb, c12577a.f36707a, "_ElapsedSeconds"), m22861b(c12577a.f36710d));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Attempt");
            bundle.putString(C22128a.m8697J2(sb2, c12577a.f36707a, "_ConnectionType"), c12577a.f36711e ? c12577a.f36708b : "no-connection");
        }
        return new AbstractC19580x.C19582b("CallerIdNetworkRequest", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12578b)) {
                return false;
            }
            C12578b c12578b = (C12578b) obj;
            return this.f36712a == c12578b.f36712a && this.f36713b == c12578b.f36713b && l.a(this.f36714c, c12578b.f36714c);
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f36712a;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        int m34274a = C4876d.m34274a(this.f36713b);
        List<C12577a> list = this.f36714c;
        return ((((z2 ? 1 : 0) * 31) + m34274a) * 31) + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallerIdNetworkRequestEvent(success=");
        m8728C.append(this.f36712a);
        m8728C.append(", totalElapsedMs=");
        m8728C.append(this.f36713b);
        m8728C.append(", attemptsDetails=");
        return C22128a.m8602l(m8728C, this.f36714c, ")");
    }
}
