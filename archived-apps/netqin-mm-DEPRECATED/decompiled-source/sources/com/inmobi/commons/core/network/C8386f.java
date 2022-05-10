package com.inmobi.commons.core.network;

import com.inmobi.commons.core.network.NetworkError;
import com.inmobi.commons.core.p513e.C8366b;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.HashMap;
/* renamed from: com.inmobi.commons.core.network.f */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/f.class */
public final class C8386f extends C8382b {
    public C8386f(C8383c cVar) {
        super(cVar);
    }

    @Override // com.inmobi.commons.core.network.C8382b
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C8384d mo5727a() {
        return super.mo5727a();
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.inmobi.commons.core.network.C8382b
    /* renamed from: b */
    public final C8384d mo5726b() {
        C8384d dVar = new C8384d();
        try {
            int responseCode = this.f32597c.getResponseCode();
            StringBuilder sb = new StringBuilder();
            sb.append(this.f32596b.f32611p);
            sb.append("Response code: ");
            sb.append(responseCode);
            try {
                dVar.f32625c = this.f32597c.getContentLength();
                this.f32597c.disconnect();
            } catch (Throwable th) {
                this.f32597c.disconnect();
                throw th;
            }
        } catch (SocketTimeoutException e) {
            NetworkError.ErrorCode errorCode = NetworkError.ErrorCode.HTTP_GATEWAY_TIMEOUT;
            dVar.f32624b = new NetworkError(errorCode, errorCode.toString());
        } catch (IOException e2) {
            NetworkError.ErrorCode errorCode2 = NetworkError.ErrorCode.NETWORK_IO_ERROR;
            dVar.f32624b = new NetworkError(errorCode2, errorCode2.toString());
        } catch (Exception e3) {
            NetworkError.ErrorCode errorCode3 = NetworkError.ErrorCode.UNKNOWN_ERROR;
            dVar.f32624b = new NetworkError(errorCode3, errorCode3.toString());
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("type", "GenericException");
                hashMap.put(AvidVideoPlaybackListenerImpl.MESSAGE, e3.getMessage());
                C8366b.m5794a();
                C8366b.m5789a("root", "ExceptionCaught", hashMap);
            } catch (Exception e4) {
                StringBuilder sb2 = new StringBuilder("Error in submitting telemetry event : (");
                sb2.append(e3.getMessage());
                sb2.append(")");
            }
        } catch (OutOfMemoryError e5) {
            NetworkError.ErrorCode errorCode4 = NetworkError.ErrorCode.OUT_OF_MEMORY_ERROR;
            dVar.f32624b = new NetworkError(errorCode4, errorCode4.toString());
        }
        return dVar;
    }
}
