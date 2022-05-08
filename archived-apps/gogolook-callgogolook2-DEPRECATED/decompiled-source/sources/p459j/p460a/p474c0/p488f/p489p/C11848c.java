package p459j.p460a.p474c0.p488f.p489p;

import android.content.Context;
import com.gogolook.whoscallsdk.p051ml.MLSdkManager;
import com.gogolook.whoscallsdk.p051ml.callback.InferCallback;
import com.gogolook.whoscallsdk.p051ml.client.SmsFilterClient;
import com.gogolook.whoscallsdk.p051ml.model.ModelType;
import com.gogolook.whoscallsdk.p051ml.request.Data;
import com.gogolook.whoscallsdk.p051ml.request.Request;
import com.gogolook.whoscallsdk.p051ml.request.SingleRequest;
import gogolook.callgogolook2.MyApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import p459j.p460a.p474c0.p475c.p478y.C11636q;
import p459j.p460a.p474c0.p488f.p489p.AbstractC11844a;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u0006H\u0002J\f\u0010\r\u001a\u00020\u000e*\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/infer/MlInferMethod;", "Lgogolook/callgogolook2/messaging/sms/infer/InferMethod;", "inferCallback", "Lgogolook/callgogolook2/messaging/sms/infer/InferMethod$InferCallback;", "(Lgogolook/callgogolook2/messaging/sms/infer/InferMethod$InferCallback;)V", "inferBatch", "", "smsList", "", "Lgogolook/callgogolook2/messaging/datamodel/data/UnfilteredMessageData;", "inferSingle", "sms", "printModelDebugInfo", "getDebugInfo", "", "Lcom/gogolook/whoscallsdk/ml/model/metadata/Metadata;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.p.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/p/c.class */
public final class C11848c implements AbstractC11844a {

    /* renamed from: a */
    public final AbstractC11844a.AbstractC11845a f26561a;

    /* renamed from: j.a.c0.f.p.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/p/c$a.class */
    public static final class C11849a implements InferCallback {
        public C11849a() {
        }

        @Override // com.gogolook.whoscallsdk.p051ml.callback.InferCallback
        public void onInferComplete() {
            C11848c.this.m8041a();
            C11848c.this.f26561a.onComplete();
        }

        @Override // com.gogolook.whoscallsdk.p051ml.callback.InferCallback
        public void onInferFailed(List<String> list) {
            C15149k.m377b(list, "keyList");
            C11848c.this.f26561a.mo7961a(list);
        }

        @Override // com.gogolook.whoscallsdk.p051ml.callback.InferCallback
        public void onInferSuccess(Data data) {
            boolean z;
            C15149k.m377b(data, "data");
            C14080m2.m2616a("sms] filter} ML infer - batch infer success, success count: " + data.getKeyValueMap().size());
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            Set<String> keySet = data.getKeyValueMap().keySet();
            float a = new C11876e().m8015a();
            for (String str : keySet) {
                float[] floatArray = data.getFloatArray(str);
                int i = 1;
                if (floatArray == null) {
                    z = false;
                } else {
                    z = false;
                    if (floatArray[1] > a) {
                        z = false;
                        if (floatArray[1] > floatArray[0]) {
                            z = true;
                        }
                    }
                }
                if (z) {
                    i = 2;
                }
                concurrentHashMap.put(str, Integer.valueOf(i));
            }
            C11848c.this.f26561a.mo7962a(new C11876e.C11877a(concurrentHashMap));
        }
    }

    /* renamed from: j.a.c0.f.p.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/p/c$b.class */
    public static final class C11850b implements InferCallback {

        /* renamed from: b */
        public final /* synthetic */ C11636q f26564b;

        public C11850b(C11636q qVar) {
            this.f26564b = qVar;
        }

        @Override // com.gogolook.whoscallsdk.p051ml.callback.InferCallback
        public void onInferComplete() {
            C11848c.this.f26561a.onComplete();
        }

        @Override // com.gogolook.whoscallsdk.p051ml.callback.InferCallback
        public void onInferFailed(List<String> list) {
            C15149k.m377b(list, "keyList");
            C11848c.this.f26561a.mo7961a(list);
        }

        @Override // com.gogolook.whoscallsdk.p051ml.callback.InferCallback
        public void onInferSuccess(Data data) {
            C15149k.m377b(data, "data");
            String b = this.f26564b.m8742b();
            Float f = null;
            if (b != null) {
                float[] floatArray = data.getFloatArray(b);
                if (floatArray != null) {
                    C14080m2.m2616a("sms] filter} ML infer - single infer success, ham: " + floatArray[0] + " spam: " + floatArray[1]);
                }
                C11848c.this.m8041a();
                String b2 = this.f26564b.m8742b();
                if (b2 != null) {
                    float[] floatArray2 = data.getFloatArray(b2);
                    int i = (floatArray2 == null || floatArray2[1] <= new C11876e().m8015a() || floatArray2[1] <= floatArray2[0]) ? 1 : 2;
                    AbstractC11844a.AbstractC11845a aVar = C11848c.this.f26561a;
                    Float valueOf = floatArray2 != null ? Float.valueOf(floatArray2[0]) : null;
                    if (floatArray2 != null) {
                        f = Float.valueOf(floatArray2[1]);
                    }
                    aVar.mo7962a(new C11876e.C11879c(i, valueOf, f));
                    return;
                }
                C15149k.m378b();
                throw null;
            }
            C15149k.m378b();
            throw null;
        }
    }

    public C11848c(AbstractC11844a.AbstractC11845a aVar) {
        C15149k.m377b(aVar, "inferCallback");
        this.f26561a = aVar;
    }

    /* renamed from: a */
    public final void m8041a() {
    }

    @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a
    /* renamed from: a */
    public void mo8040a(C11636q qVar) {
        C15149k.m377b(qVar, "sms");
        String b = qVar.m8742b();
        if (b == null || b.length() == 0) {
            this.f26561a.mo7961a(new ArrayList());
            return;
        }
        String c = qVar.m8741c();
        if (c == null || c.length() == 0) {
            AbstractC11844a.AbstractC11845a aVar = this.f26561a;
            String b2 = qVar.m8742b();
            if (b2 != null) {
                aVar.mo7961a(C15021m.m562a((Object[]) new String[]{b2}));
            } else {
                C15149k.m378b();
                throw null;
            }
        } else {
            Data.Builder builder = new Data.Builder();
            String b3 = qVar.m8742b();
            if (b3 != null) {
                String c2 = qVar.m8741c();
                if (c2 != null) {
                    Request.Builder<SingleRequest.Builder, SingleRequest> modelType = new SingleRequest.Builder().setInputData(builder.putString(b3, c2).build()).setModelType(ModelType.SmsFilterRemote.INSTANCE);
                    String n = C14017g4.m2810n();
                    C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
                    SingleRequest build = modelType.setRegion(n).setCallback(new C11850b(qVar)).build();
                    SmsFilterClient smsFilterClient = MLSdkManager.INSTANCE.getSmsFilterClient();
                    Context o = MyApplication.m29013o();
                    C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
                    smsFilterClient.predict(o, build);
                    return;
                }
                C15149k.m378b();
                throw null;
            }
            C15149k.m378b();
            throw null;
        }
    }

    @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a
    /* renamed from: a */
    public void mo8038a(List<C11636q> list) {
        C15149k.m377b(list, "smsList");
        C11876e eVar = new C11876e();
        Data.Builder builder = new Data.Builder();
        for (C11636q qVar : list) {
            String b = qVar.m8742b();
            if (b != null) {
                String c = qVar.m8741c();
                if (c != null) {
                    builder.putString(b, c);
                } else {
                    C15149k.m378b();
                    throw null;
                }
            } else {
                C15149k.m378b();
                throw null;
            }
        }
        eVar.m8012a(builder, new C11849a());
    }
}
