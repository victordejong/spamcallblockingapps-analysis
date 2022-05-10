package com.inmobi.p497a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.network.C8385e;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.p513e.C8376f;
import com.inmobi.commons.core.utilities.p516b.C8405h;
import com.inmobi.p497a.C8004p;
import com.inmobi.p497a.p499b.C7985b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.inmobi.a.h */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/h.class */
public class C7992h {

    /* renamed from: b */
    public static final String f31203b = "h";

    /* renamed from: a */
    public HandlerC7993a f31204a;

    /* renamed from: com.inmobi.a.h$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/a/h$a.class */
    public static final class HandlerC7993a extends Handler {

        /* renamed from: a */
        public List<C7998l> f31205a = new ArrayList();

        /* renamed from: b */
        public boolean f31206b;

        public HandlerC7993a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                String unused = C7992h.f31203b;
                sendEmptyMessage(3);
            } else if (i == 2) {
                String unused2 = C7992h.f31203b;
                removeMessages(3);
                sendEmptyMessage(4);
            } else if (i == 3) {
                String unused3 = C7992h.f31203b;
                if (this.f31206b) {
                    sendEmptyMessage(2);
                    return;
                }
                C7998l lVar = new C7998l();
                lVar.f31219a = C7985b.m6785a();
                lVar.f31221c = C7999m.m6764a().m6756e();
                if (this.f31205a != null) {
                    boolean z = true;
                    if (lVar.f31219a == null) {
                        z = lVar.f31220b != null;
                    }
                    if (z) {
                        this.f31205a.add(lVar);
                        if (this.f31205a.size() > C8003o.m6743a().f31245a.f31250a.f31264d) {
                            try {
                                C8366b.m5794a().m5792a(new C8376f("signals", "SampleSizeExceeded"));
                            } catch (Exception e) {
                                String unused4 = C7992h.f31203b;
                                StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                                sb.append(e.getMessage());
                                sb.append(")");
                            }
                            while (this.f31205a.size() > C8003o.m6743a().f31245a.f31250a.f31264d) {
                                this.f31205a.remove(0);
                            }
                        }
                    }
                }
                sendEmptyMessageDelayed(3, C8003o.m6743a().f31245a.f31250a.f31262b * 1000);
            } else if (i == 4) {
                C7997k kVar = new C7997k();
                kVar.f31214a = C7999m.m6764a().m6757d();
                kVar.f31216c = this.f31205a;
                C8002n.m6748a();
                kVar.f31215b = C8002n.m6746b();
                C8004p.C8006b bVar = C8003o.m6743a().f31245a.f31250a;
                final C7994i iVar = new C7994i(new C7996j(bVar.f31265e, bVar.f31266f, bVar.f31267g, C8003o.m6743a().m6740d(), kVar));
                new Thread(new Runnable() { // from class: com.inmobi.a.i.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i2 = 0;
                        while (i2 <= iVar.f31208b.f31211a) {
                            String unused5 = C7994i.f31207a;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            C8384d a = new C8385e(iVar.f31208b).m5728a();
                            try {
                                C8002n.m6748a().m6747a(iVar.f31208b.m5734g());
                                C8002n.m6748a().m6745b(a.m5729c());
                                C8002n.m6748a().m6744c(SystemClock.elapsedRealtime() - elapsedRealtime);
                            } catch (Exception e2) {
                                String unused6 = C7994i.f31207a;
                                new StringBuilder("Error in setting request-response data size. ").append(e2.getMessage());
                            }
                            if (a.m5733a()) {
                                String unused7 = C7994i.f31207a;
                                i2++;
                                if (i2 > iVar.f31208b.f31211a) {
                                    try {
                                        C8366b.m5794a().m5792a(new C8376f("signals", "RetryCountExceeded"));
                                        return;
                                    } catch (Exception e3) {
                                        String unused8 = C7994i.f31207a;
                                        StringBuilder sb2 = new StringBuilder("Error in submitting telemetry event : (");
                                        sb2.append(e3.getMessage());
                                        sb2.append(")");
                                        return;
                                    }
                                } else {
                                    try {
                                        Thread.sleep(iVar.f31208b.f31212b * 1000);
                                    } catch (InterruptedException e4) {
                                        String unused9 = C7994i.f31207a;
                                    }
                                }
                            } else {
                                String unused10 = C7994i.f31207a;
                                try {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("url", iVar.f31208b.f32611p);
                                    hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - 0));
                                    hashMap.put("payloadSize", Long.valueOf(iVar.f31208b.m5734g() + a.m5729c()));
                                    C8366b.m5794a();
                                    C8366b.m5789a("signals", "NICElatency", hashMap);
                                    HashMap hashMap2 = new HashMap();
                                    hashMap2.put("sessionId", C8405h.m5655a().f32684a);
                                    C8002n a2 = C8002n.m6748a();
                                    hashMap2.put("totalWifiSentBytes", Long.valueOf(a2.f31236a));
                                    hashMap2.put("totalWifiReceivedBytes", Long.valueOf(a2.f31237b));
                                    hashMap2.put("totalCarrierSentBytes", Long.valueOf(a2.f31238c));
                                    hashMap2.put("totalCarrierReceivedBytes", Long.valueOf(a2.f31239d));
                                    hashMap2.put("totalNetworkTime", Long.valueOf(a2.f31240e));
                                    C8366b.m5794a();
                                    C8366b.m5789a("signals", "SDKNetworkStats", hashMap2);
                                    return;
                                } catch (Exception e5) {
                                    String unused11 = C7994i.f31207a;
                                    StringBuilder sb3 = new StringBuilder("Error in submitting telemetry event : (");
                                    sb3.append(e5.getMessage());
                                    sb3.append(")");
                                    return;
                                }
                            }
                        }
                    }
                }).start();
                this.f31205a = new ArrayList();
            }
        }
    }

    public C7992h() {
        HandlerThread handlerThread = new HandlerThread("DataCollectionHandler");
        handlerThread.start();
        this.f31204a = new HandlerC7993a(handlerThread.getLooper());
    }

    /* renamed from: a */
    public final void m6771a() {
        synchronized (this) {
            this.f31204a.f31206b = false;
            if (!this.f31204a.hasMessages(3)) {
                this.f31204a.removeMessages(2);
                this.f31204a.sendEmptyMessage(1);
            }
        }
    }
}
