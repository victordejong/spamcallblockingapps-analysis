package p131c.p161d.p282e.p315q.p328q0;

import com.google.firebase.abt.AbtException;
import com.google.firebase.inappmessaging.ExperimentPayloadProto$ExperimentPayload;
import java.util.Date;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import p131c.p161d.p282e.p283i.C5139a;
import p131c.p161d.p282e.p283i.C5140b;
/* renamed from: c.d.e.q.q0.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/b.class */
public class C5639b {

    /* renamed from: a */
    public final C5140b f18714a;

    /* renamed from: b */
    public Executor f18715b = Executors.newSingleThreadExecutor();

    public C5639b(C5140b bVar) {
        this.f18714a = bVar;
    }

    /* renamed from: a */
    public static /* synthetic */ void m23353a(C5639b bVar, ExperimentPayloadProto$ExperimentPayload experimentPayloadProto$ExperimentPayload) {
        try {
            C5694l2.m23216a("Updating active experiment: " + experimentPayloadProto$ExperimentPayload.toString());
            bVar.f18714a.m24434a(new C5139a(experimentPayloadProto$ExperimentPayload.m7327v(), experimentPayloadProto$ExperimentPayload.m7330A(), experimentPayloadProto$ExperimentPayload.m7324y(), new Date(experimentPayloadProto$ExperimentPayload.m7326w()), experimentPayloadProto$ExperimentPayload.m7323z(), experimentPayloadProto$ExperimentPayload.m7325x()));
        } catch (AbtException e) {
            C5694l2.m23215b("Unable to set experiment as active with ABT, missing analytics?\n" + e.getMessage());
        }
    }

    /* renamed from: a */
    public void m23352a(ExperimentPayloadProto$ExperimentPayload experimentPayloadProto$ExperimentPayload) {
        this.f18715b.execute(RunnableC5632a.m23367a(this, experimentPayloadProto$ExperimentPayload));
    }
}
