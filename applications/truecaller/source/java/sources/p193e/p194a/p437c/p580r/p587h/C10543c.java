package p193e.p194a.p437c.p580r.p587h;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.models.pdo.PdoBinderType;
import com.truecaller.insights.utils.DateFormat;
import com.truecaller.log.UnmutedException;
import e.m.e.e0.a0.e;
import e.m.e.k;
import e.m.e.q;
import e.q.f.a.f.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import kotlinx.coroutines.CoroutineExceptionHandler;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p531c0.AbstractC10011a;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import p193e.p194a.p437c.p577o.C10478a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10549f;
import p193e.p194a.p437c.p580r.p587h.AbstractC10553h;
import p193e.p194a.p437c.p580r.p587h.AbstractC10563i;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.r.h.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/h/c.class */
public final class C10543c implements AbstractC10542b {

    /* renamed from: a */
    public final k f31467a = new k();

    /* renamed from: b */
    public final g f31468b = C25225a.m3978P1(new C10544a());

    /* renamed from: c */
    public final AbstractC10011a f31469c;

    /* renamed from: e.a.c.r.h.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/h/c$a.class */
    public static final class C10544a extends m implements a<PdoBinderType> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10544a() {
            super(0);
            C10543c.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object invoke() {
            /*
                r4 = this;
                r0 = r4
                e.a.c.r.h.c r0 = p193e.p194a.p437c.p580r.p587h.C10543c.this
                e.a.c.c0.a r0 = r0.f31469c
                e.a.c.c0.b r0 = (p193e.p194a.p437c.p531c0.C10013b) r0
                r5 = r0
                r0 = r5
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = 0
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r5
                e.a.c.c0.m r0 = r0.f29852b     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L56
                java.lang.String r1 = "insightsBinder.json"
                java.io.BufferedReader r0 = r0.mo26890b(r1)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L56
                r8 = r0
                r0 = r5
                e.m.e.k r0 = r0.f29851a     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L79
                r1 = r8
                java.lang.Class<com.truecaller.insights.models.pdo.PdoBinderType$PdoBinder> r2 = com.truecaller.insights.models.pdo.PdoBinderType.PdoBinder.class
                java.lang.Object r0 = r0.d(r1, r2)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L79
                com.truecaller.insights.models.pdo.PdoBinderType$PdoBinder r0 = (com.truecaller.insights.models.pdo.PdoBinderType.PdoBinder) r0     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L79
                r7 = r0
                r0 = r5
                e.a.c.c0.m r0 = r0.f29852b
                r1 = r8
                r0.mo26891a(r1)
                r0 = r7
                r8 = r0
                goto L69
            L41:
                r6 = move-exception
                goto L49
            L45:
                r6 = move-exception
                r0 = r7
                r8 = r0
            L49:
                r0 = r5
                e.a.c.c0.m r0 = r0.f29852b
                r1 = r8
                r0.mo26891a(r1)
                r0 = r6
                throw r0
            L56:
                r8 = move-exception
                r0 = 0
                r8 = r0
            L5b:
                r0 = r5
                e.a.c.c0.m r0 = r0.f29852b
                r1 = r8
                r0.mo26891a(r1)
                r0 = r6
                r8 = r0
            L69:
                r0 = r8
                if (r0 == 0) goto L71
                goto L76
            L71:
                com.truecaller.insights.models.pdo.PdoBinderType$a r0 = com.truecaller.insights.models.pdo.PdoBinderType.C4068a.f12659a
                r8 = r0
            L76:
                r0 = r8
                return r0
            L79:
                r7 = move-exception
                goto L5b
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p580r.p587h.C10543c.C10544a.invoke():java.lang.Object");
        }
    }

    @Inject
    public C10543c(AbstractC10011a abstractC10011a) {
        l.e(abstractC10011a, "reader");
        this.f31469c = abstractC10011a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r13 != null) goto L11;
     */
    @Override // p193e.p194a.p437c.p580r.p587h.AbstractC10542b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.insights.models.pdo.SmsBackup mo25792a(p193e.p194a.p437c.p580r.p587h.AbstractC10549f.C10551b r12, p193e.p194a.p437c.p525b0.C9712c r13) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p580r.p587h.C10543c.mo25792a(e.a.c.r.h.f$b, e.a.c.b0.c):com.truecaller.insights.models.pdo.SmsBackup");
    }

    @Override // p193e.p194a.p437c.p580r.p587h.AbstractC10542b
    /* renamed from: b */
    public String mo25791b(ParsedDataObject parsedDataObject, String str, boolean z) {
        String str2;
        l.e(parsedDataObject, "pdo");
        l.e(str, AnalyticsConstants.KEY);
        PdoBinderType binder = getBinder();
        Objects.requireNonNull(binder, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.PdoBinderType.PdoBinder");
        String str3 = ((PdoBinderType.PdoBinder) binder).getBinderByCategoryString(parsedDataObject.getD()).get(str);
        if (str3 != null) {
            int hashCode = str3.hashCode();
            if (hashCode != -1283880532) {
                if (hashCode != 99) {
                    if (hashCode != 107) {
                        if (hashCode != 115) {
                            if (hashCode != 3076014) {
                                if (hashCode != 1793702779) {
                                    if (hashCode != 102) {
                                        if (hashCode != 103) {
                                            if (hashCode != 111) {
                                                if (hashCode != 112) {
                                                    switch (hashCode) {
                                                        case 3611952:
                                                            if (str3.equals("val1")) {
                                                                str2 = parsedDataObject.getVal1();
                                                                return str2;
                                                            }
                                                            break;
                                                        case 3611953:
                                                            if (str3.equals("val2")) {
                                                                str2 = parsedDataObject.getVal2();
                                                                return str2;
                                                            }
                                                            break;
                                                        case 3611954:
                                                            if (str3.equals("val3")) {
                                                                str2 = parsedDataObject.getVal3();
                                                                return str2;
                                                            }
                                                            break;
                                                        case 3611955:
                                                            if (str3.equals("val4")) {
                                                                str2 = parsedDataObject.getVal4();
                                                                return str2;
                                                            }
                                                            break;
                                                        case 3611956:
                                                            if (str3.equals("val5")) {
                                                                str2 = parsedDataObject.getVal5();
                                                                return str2;
                                                            }
                                                            break;
                                                        default:
                                                            switch (hashCode) {
                                                                case 1573086068:
                                                                    if (str3.equals("dffVal1")) {
                                                                        str2 = parsedDataObject.getDffVal1();
                                                                        return str2;
                                                                    }
                                                                    break;
                                                                case 1573086069:
                                                                    if (str3.equals("dffVal2")) {
                                                                        str2 = parsedDataObject.getDffVal2();
                                                                        return str2;
                                                                    }
                                                                    break;
                                                                case 1573086070:
                                                                    if (str3.equals("dffVal3")) {
                                                                        str2 = parsedDataObject.getDffVal3();
                                                                        return str2;
                                                                    }
                                                                    break;
                                                                case 1573086071:
                                                                    if (str3.equals("dffVal4")) {
                                                                        str2 = parsedDataObject.getDffVal4();
                                                                        return str2;
                                                                    }
                                                                    break;
                                                                case 1573086072:
                                                                    if (str3.equals("dffVal5")) {
                                                                        str2 = parsedDataObject.getDffVal5();
                                                                        return str2;
                                                                    }
                                                                    break;
                                                            }
                                                    }
                                                } else if (str3.equals("p")) {
                                                    str2 = parsedDataObject.getP();
                                                    return str2;
                                                }
                                            } else if (str3.equals("o")) {
                                                str2 = parsedDataObject.getO();
                                                return str2;
                                            }
                                        } else if (str3.equals("g")) {
                                            str2 = parsedDataObject.getG();
                                            return str2;
                                        }
                                    } else if (str3.equals("f")) {
                                        str2 = parsedDataObject.getF();
                                        return str2;
                                    }
                                } else if (str3.equals("datetime")) {
                                    str2 = parsedDataObject.getDatetime();
                                    return str2;
                                }
                            } else if (str3.equals("date")) {
                                str2 = parsedDataObject.getDate();
                                return str2;
                            }
                        } else if (str3.equals("s")) {
                            str2 = parsedDataObject.getS();
                            return str2;
                        }
                    } else if (str3.equals("k")) {
                        str2 = parsedDataObject.getK();
                        return str2;
                    }
                } else if (str3.equals(AbstractC2405c.f7629a)) {
                    str2 = parsedDataObject.getC();
                    return str2;
                }
            } else if (str3.equals("msg_date")) {
                str2 = DateFormat.yyyy_MM_dd_HH_mm_ss.formatDate(parsedDataObject.getMsgDate());
                return str2;
            }
        }
        if (z) {
            String m8543z2 = C22128a.m8543z2("Attempt to unBind an unknown key: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z2);
            return "";
        }
        return "";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p193e.p194a.p437c.p580r.p587h.AbstractC10542b
    /* renamed from: c */
    public AbstractC10553h mo25790c(ParsedDataObject parsedDataObject) {
        AbstractC10553h.C10556c c10556c;
        l.e(parsedDataObject, "pdo");
        String d = parsedDataObject.getD();
        switch (d.hashCode()) {
            case -1935925833:
                if (d.equals("Offers")) {
                    c10556c = AbstractC10553h.C10559f.f31487a;
                    break;
                }
                c10556c = AbstractC10553h.C10561h.f31489a;
                break;
            case -1781830854:
                if (d.equals("Travel")) {
                    c10556c = AbstractC10553h.C10562i.f31490a;
                    break;
                }
                c10556c = AbstractC10553h.C10561h.f31489a;
                break;
            case 78603:
                if (d.equals("OTP")) {
                    c10556c = AbstractC10553h.C10560g.f31488a;
                    break;
                }
                c10556c = AbstractC10553h.C10561h.f31489a;
                break;
            case 2062940:
                if (d.equals("Bank")) {
                    c10556c = AbstractC10553h.C10554a.f31482a;
                    break;
                }
                c10556c = AbstractC10553h.C10561h.f31489a;
                break;
            case 2070567:
                if (d.equals("Bill")) {
                    c10556c = AbstractC10553h.C10555b.f31483a;
                    break;
                }
                c10556c = AbstractC10553h.C10561h.f31489a;
                break;
            case 67338874:
                if (d.equals("Event")) {
                    c10556c = AbstractC10553h.C10557d.f31485a;
                    break;
                }
                c10556c = AbstractC10553h.C10561h.f31489a;
                break;
            case 75456272:
                if (d.equals("Notif")) {
                    c10556c = AbstractC10553h.C10558e.f31486a;
                    break;
                }
                c10556c = AbstractC10553h.C10561h.f31489a;
                break;
            case 888111124:
                if (d.equals("Delivery")) {
                    c10556c = AbstractC10553h.C10556c.f31484a;
                    break;
                }
                c10556c = AbstractC10553h.C10561h.f31489a;
                break;
            default:
                c10556c = AbstractC10553h.C10561h.f31489a;
                break;
        }
        return c10556c;
    }

    @Override // p193e.p194a.p437c.p580r.p587h.AbstractC10542b
    /* renamed from: d */
    public ParsedDataObject mo25789d(AbstractC10549f.C10551b c10551b) {
        Object obj;
        l.e(c10551b, "smsResponse");
        AbstractC10563i abstractC10563i = c10551b.f31479d;
        Objects.requireNonNull(abstractC10563i, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.SmsDetailedResponseType.SmsDetailedResponse");
        n nVar = ((AbstractC10563i.C10565b) abstractC10563i).f31492a.f70639c;
        l.d(nVar, "(smsResponse.detailedRes…Response).response.valMap");
        HashMap hashMap = nVar.b;
        l.d(hashMap, "(smsResponse.detailedRes…onse).response.valMap.all");
        k kVar = this.f31467a;
        AbstractC10553h abstractC10553h = c10551b.f31477b;
        l.e(hashMap, "valMap");
        l.e(abstractC10553h, "responseType");
        LinkedHashMap linkedHashMap = new LinkedHashMap(C25225a.m3942Y1(hashMap.size()));
        Iterator it = hashMap.entrySet().iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            PdoBinderType binder = getBinder();
            Objects.requireNonNull(binder, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.PdoBinderType.PdoBinder");
            String str = ((PdoBinderType.PdoBinder) binder).getBinderByCategory(abstractC10553h).get(entry.getKey());
            String str2 = null;
            if (str != null) {
                str2 = str;
            }
            linkedHashMap.put(str2, entry.getValue());
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry entry2 = (Map.Entry) it2.next();
            String str3 = (String) entry2.getKey();
            if (str3 == null || l.a(str3, "")) {
                z = false;
            }
            if (z) {
                linkedHashMap2.put(entry2.getKey(), entry2.getValue());
            }
        }
        q t = kVar.t(linkedHashMap2);
        Objects.requireNonNull(kVar);
        if (t != null) {
            obj = kVar.c(new e(t), ParsedDataObject.class);
        }
        Object cast = e.m.d.y.n.B1(ParsedDataObject.class).cast(obj);
        l.d(cast, "gson.fromJson(gson.toJso…edDataObject::class.java)");
        ParsedDataObject parsedDataObject = (ParsedDataObject) cast;
        C10266c c10266c = c10551b.f31476a;
        parsedDataObject.setMessageID(c10266c.f30432a);
        parsedDataObject.setAddress(c10551b.f31478c);
        parsedDataObject.setD(c10551b.f31477b.mo25784a());
        parsedDataObject.setMsgDate(c10266c.f30435d);
        parsedDataObject.setSpamCategory(c10266c.f30439h);
        if (parsedDataObject.getDatetime().length() > 0) {
            String datetime = parsedDataObject.getDatetime();
            Objects.requireNonNull(datetime, "null cannot be cast to non-null type java.lang.String");
            String substring = datetime.substring(0, 10);
            l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            parsedDataObject.setDate(substring);
        }
        return parsedDataObject;
    }

    @Override // p193e.p194a.p437c.p580r.p587h.AbstractC10542b
    /* renamed from: e */
    public String mo25788e(ParsedDataObject parsedDataObject, String str) {
        String str2;
        l.e(parsedDataObject, "pdo");
        l.e(str, "columnName");
        int hashCode = str.hashCode();
        if (hashCode == -1283880532) {
            if (str.equals("msg_date")) {
                str2 = DateFormat.yyyy_MM_dd_HH_mm_ss.formatDate(parsedDataObject.getMsgDate());
                return str2;
            }
            String m8543z2 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z2);
            return "";
        } else if (hashCode == 107) {
            if (str.equals("k")) {
                str2 = parsedDataObject.getK();
                return str2;
            }
            String m8543z22 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler2 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z22);
            return "";
        } else if (hashCode == 115) {
            if (str.equals("s")) {
                str2 = parsedDataObject.getS();
                return str2;
            }
            String m8543z222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler22 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z222);
            return "";
        } else if (hashCode == 3076014) {
            if (str.equals("date")) {
                str2 = parsedDataObject.getDate();
                return str2;
            }
            String m8543z2222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler222 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z2222);
            return "";
        } else if (hashCode == 1793702779) {
            if (str.equals("datetime")) {
                str2 = parsedDataObject.getDatetime();
                return str2;
            }
            String m8543z22222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler2222 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z22222);
            return "";
        } else if (hashCode == 99) {
            if (str.equals(AbstractC2405c.f7629a)) {
                str2 = parsedDataObject.getC();
                return str2;
            }
            String m8543z222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler22222 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z222222);
            return "";
        } else if (hashCode == 100) {
            if (str.equals("d")) {
                str2 = parsedDataObject.getD();
                return str2;
            }
            String m8543z2222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler222222 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z2222222);
            return "";
        } else if (hashCode == 102) {
            if (str.equals("f")) {
                str2 = parsedDataObject.getF();
                return str2;
            }
            String m8543z22222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler2222222 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z22222222);
            return "";
        } else if (hashCode == 103) {
            if (str.equals("g")) {
                str2 = parsedDataObject.getG();
                return str2;
            }
            String m8543z222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler22222222 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z222222222);
            return "";
        } else if (hashCode == 111) {
            if (str.equals("o")) {
                str2 = parsedDataObject.getO();
                return str2;
            }
            String m8543z2222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler222222222 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z2222222222);
            return "";
        } else if (hashCode == 112) {
            if (str.equals("p")) {
                str2 = parsedDataObject.getP();
                return str2;
            }
            String m8543z22222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
            CoroutineExceptionHandler coroutineExceptionHandler2222222222 = C10478a.f31165a;
            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z22222222222);
            return "";
        } else {
            switch (hashCode) {
                case 3611952:
                    if (str.equals("val1")) {
                        str2 = parsedDataObject.getVal1();
                        return str2;
                    }
                    String m8543z222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                    CoroutineExceptionHandler coroutineExceptionHandler22222222222 = C10478a.f31165a;
                    C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z222222222222);
                    return "";
                case 3611953:
                    if (str.equals("val2")) {
                        str2 = parsedDataObject.getVal2();
                        return str2;
                    }
                    String m8543z2222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                    CoroutineExceptionHandler coroutineExceptionHandler222222222222 = C10478a.f31165a;
                    C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z2222222222222);
                    return "";
                case 3611954:
                    if (str.equals("val3")) {
                        str2 = parsedDataObject.getVal3();
                        return str2;
                    }
                    String m8543z22222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                    CoroutineExceptionHandler coroutineExceptionHandler2222222222222 = C10478a.f31165a;
                    C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z22222222222222);
                    return "";
                case 3611955:
                    if (str.equals("val4")) {
                        str2 = parsedDataObject.getVal4();
                        return str2;
                    }
                    String m8543z222222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                    CoroutineExceptionHandler coroutineExceptionHandler22222222222222 = C10478a.f31165a;
                    C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z222222222222222);
                    return "";
                case 3611956:
                    if (str.equals("val5")) {
                        str2 = parsedDataObject.getVal5();
                        return str2;
                    }
                    String m8543z2222222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                    CoroutineExceptionHandler coroutineExceptionHandler222222222222222 = C10478a.f31165a;
                    C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z2222222222222222);
                    return "";
                default:
                    switch (hashCode) {
                        case 1529956459:
                            if (str.equals("dff_val1")) {
                                str2 = parsedDataObject.getDffVal1();
                                return str2;
                            }
                            String m8543z22222222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                            CoroutineExceptionHandler coroutineExceptionHandler2222222222222222 = C10478a.f31165a;
                            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z22222222222222222);
                            return "";
                        case 1529956460:
                            if (str.equals("dff_val2")) {
                                str2 = parsedDataObject.getDffVal2();
                                return str2;
                            }
                            String m8543z222222222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                            CoroutineExceptionHandler coroutineExceptionHandler22222222222222222 = C10478a.f31165a;
                            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z222222222222222222);
                            return "";
                        case 1529956461:
                            if (str.equals("dff_val3")) {
                                str2 = parsedDataObject.getDffVal3();
                                return str2;
                            }
                            String m8543z2222222222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                            CoroutineExceptionHandler coroutineExceptionHandler222222222222222222 = C10478a.f31165a;
                            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z2222222222222222222);
                            return "";
                        case 1529956462:
                            if (str.equals("dff_val4")) {
                                str2 = parsedDataObject.getDffVal4();
                                return str2;
                            }
                            String m8543z22222222222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                            CoroutineExceptionHandler coroutineExceptionHandler2222222222222222222 = C10478a.f31165a;
                            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z22222222222222222222);
                            return "";
                        case 1529956463:
                            if (str.equals("dff_val5")) {
                                str2 = parsedDataObject.getDffVal5();
                                return str2;
                            }
                            String m8543z222222222222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                            CoroutineExceptionHandler coroutineExceptionHandler22222222222222222222 = C10478a.f31165a;
                            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z222222222222222222222);
                            return "";
                        default:
                            String m8543z2222222222222222222222 = C22128a.m8543z2("Attempt to unBind an unknown columnName: ", str);
                            CoroutineExceptionHandler coroutineExceptionHandler222222222222222222222 = C10478a.f31165a;
                            C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.BINDER_EXCEPTION), m8543z2222222222222222222222);
                            return "";
                    }
            }
        }
    }

    @Override // p193e.p194a.p437c.p580r.p587h.AbstractC10542b
    /* renamed from: f */
    public String mo25787f(ParsedDataObject parsedDataObject, String str, String str2) {
        l.e(parsedDataObject, "pdo");
        l.e(str, AnalyticsConstants.KEY);
        l.e(str2, "default");
        boolean z = false;
        String mo25791b = mo25791b(parsedDataObject, str, false);
        if (mo25791b.length() == 0) {
            z = true;
        }
        if (!z) {
            str2 = mo25791b;
        }
        return str2;
    }

    @Override // p193e.p194a.p437c.p580r.p587h.AbstractC10542b
    public PdoBinderType getBinder() {
        return (PdoBinderType) this.f31468b.getValue();
    }
}
