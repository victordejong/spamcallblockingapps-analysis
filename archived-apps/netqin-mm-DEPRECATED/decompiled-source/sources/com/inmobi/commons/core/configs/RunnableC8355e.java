package com.inmobi.commons.core.configs;

import android.os.SystemClock;
import com.inmobi.commons.core.configs.ConfigNetworkResponse;
import com.inmobi.commons.core.network.C8385e;
import java.util.Map;
/* renamed from: com.inmobi.commons.core.configs.e */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/e.class */
public class RunnableC8355e implements Runnable {

    /* renamed from: a */
    public static final String f32488a = RunnableC8355e.class.getName();

    /* renamed from: b */
    public C8357f f32489b;

    /* renamed from: c */
    public AbstractC8356a f32490c;

    /* renamed from: d */
    public final C8357f f32491d;

    /* renamed from: com.inmobi.commons.core.configs.e$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/e$a.class */
    public interface AbstractC8356a {
        /* renamed from: a */
        void mo5822a();

        /* renamed from: a */
        void mo5821a(ConfigNetworkResponse.ConfigResponse configResponse);
    }

    public RunnableC8355e(AbstractC8356a aVar, C8357f fVar, C8357f fVar2) {
        this.f32490c = aVar;
        this.f32489b = fVar;
        this.f32491d = fVar2;
    }

    /* renamed from: a */
    public static ConfigNetworkResponse m5825a(C8357f fVar) {
        C8385e eVar = new C8385e(fVar);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        return new ConfigNetworkResponse(fVar.f32495c, eVar.m5728a(), SystemClock.elapsedRealtime() - elapsedRealtime);
    }

    /* renamed from: a */
    private void m5823a(C8357f fVar, Map<String, ConfigNetworkResponse.ConfigResponse> map) {
        for (Map.Entry<String, ConfigNetworkResponse.ConfigResponse> entry : map.entrySet()) {
            ConfigNetworkResponse.ConfigResponse value = entry.getValue();
            String key = entry.getKey();
            if (!value.m5848a()) {
                this.f32490c.mo5821a(value);
                fVar.f32495c.remove(key);
            }
        }
    }

    /* renamed from: a */
    private boolean m5824a(C8357f fVar, int i, Map<String, ConfigNetworkResponse.ConfigResponse> map) throws InterruptedException {
        if (i > fVar.f32493a) {
            for (Map.Entry<String, AbstractC8346a> entry : fVar.f32495c.entrySet()) {
                String key = entry.getKey();
                if (map.containsKey(key)) {
                    this.f32490c.mo5821a(map.get(key));
                }
            }
            return true;
        }
        Thread.sleep(fVar.f32494b * 1000);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
        if (r7 > r5.f32491d.f32493a) goto L_0x008b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
        r0 = m5825a(r5.f32491d);
        r0 = r0.f32462a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        if (r0.m5852a() != false) goto L_0x008b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
        m5823a(r5.f32491d, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
        if (r5.f32491d.f32495c.isEmpty() != false) goto L_0x008b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
        r0 = r7 + 1;
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0088, code lost:
        if (m5824a(r5.f32491d, r0, r0) == false) goto L_0x003b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008c, code lost:
        r5.f32490c.mo5822a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.core.configs.RunnableC8355e.run():void");
    }
}
