package com.inmobi.ads;

import android.os.Handler;
import android.os.Message;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.rendering.RenderView;
import java.lang.ref.WeakReference;
/* renamed from: com.inmobi.ads.bo */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bo.class */
public final class HandlerC8182bo extends Handler {

    /* renamed from: a */
    public WeakReference<AbstractC8252i> f31918a;

    public HandlerC8182bo(AbstractC8252i iVar) {
        this.f31918a = new WeakReference<>(iVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        AbstractC8252i iVar = this.f31918a.get();
        if (iVar != null) {
            try {
                if (message.what == 0) {
                    if (iVar instanceof C8068ac) {
                        C8068ac acVar = (C8068ac) iVar;
                        if (acVar.f32213u != null) {
                            acVar.f32213u.stopLoading();
                            return;
                        }
                    }
                    RenderView renderView = (RenderView) iVar.m6039j();
                    if (renderView != null) {
                        renderView.stopLoading();
                    }
                }
            } catch (Exception e) {
                C8328a.m5878a().m5875a(new C8365a(e));
            } finally {
                iVar.m6102B();
            }
        }
    }
}
