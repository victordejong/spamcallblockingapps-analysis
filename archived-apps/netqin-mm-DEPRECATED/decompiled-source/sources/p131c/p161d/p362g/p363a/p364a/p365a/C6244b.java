package p131c.p161d.p362g.p363a.p364a.p365a;

import com.google.firebase.inappmessaging.ExperimentPayloadProto$ExperimentPayload;
import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.g.a.a.a.b */
/* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/b.class */
public final class C6244b extends GeneratedMessageLite<C6244b, C6245a> implements AbstractC6246c {
    public static final int CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER = 4;
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    public static final int CAMPAIGN_NAME_FIELD_NUMBER = 5;
    public static final int CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER = 3;
    public static final C6244b DEFAULT_INSTANCE;
    public static final int EXPERIMENT_PAYLOAD_FIELD_NUMBER = 2;
    public static volatile AbstractC6376v0<C6244b> PARSER;
    public long campaignEndTimeMillis_;
    public String campaignId_ = "";
    public String campaignName_ = "";
    public long campaignStartTimeMillis_;
    public ExperimentPayloadProto$ExperimentPayload experimentPayload_;

    /* renamed from: c.d.g.a.a.a.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/b$a.class */
    public static final class C6245a extends GeneratedMessageLite.AbstractC7946a<C6244b, C6245a> implements AbstractC6246c {
        public C6245a() {
            super(C6244b.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6245a(C6243a aVar) {
            this();
        }
    }

    static {
        C6244b bVar = new C6244b();
        DEFAULT_INSTANCE = bVar;
        GeneratedMessageLite.m6949a(C6244b.class, bVar);
    }

    /* renamed from: C */
    public static C6244b m21766C() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6243a.f19844a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6244b();
            case 2:
                return new C6245a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002\t\u0003\u0002\u0004\u0002\u0005Ȉ", new Object[]{"campaignId_", "experimentPayload_", "campaignStartTimeMillis_", "campaignEndTimeMillis_", "campaignName_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6244b> v0Var = PARSER;
                AbstractC6376v0<C6244b> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6244b.class) {
                        try {
                            AbstractC6376v0<C6244b> v0Var3 = PARSER;
                            v0Var2 = v0Var3;
                            if (v0Var3 == null) {
                                v0Var2 = new GeneratedMessageLite.C7947b<>(DEFAULT_INSTANCE);
                                PARSER = v0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return v0Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: v */
    public long m21765v() {
        return this.campaignEndTimeMillis_;
    }

    /* renamed from: w */
    public String m21764w() {
        return this.campaignId_;
    }

    /* renamed from: x */
    public String m21763x() {
        return this.campaignName_;
    }

    /* renamed from: y */
    public long m21762y() {
        return this.campaignStartTimeMillis_;
    }

    /* renamed from: z */
    public ExperimentPayloadProto$ExperimentPayload m21761z() {
        ExperimentPayloadProto$ExperimentPayload experimentPayloadProto$ExperimentPayload = this.experimentPayload_;
        ExperimentPayloadProto$ExperimentPayload experimentPayloadProto$ExperimentPayload2 = experimentPayloadProto$ExperimentPayload;
        if (experimentPayloadProto$ExperimentPayload == null) {
            experimentPayloadProto$ExperimentPayload2 = ExperimentPayloadProto$ExperimentPayload.m7328D();
        }
        return experimentPayloadProto$ExperimentPayload2;
    }
}
