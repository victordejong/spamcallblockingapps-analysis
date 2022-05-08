package com.gogolook.whoscallsdk.p051ml.model;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0006\u0003\u0004\u0005\u0006\u0007\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002\u0082\u0001\u0006\t\n\u000b\f\r\u000e¨\u0006\u000f"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/ModelStatus;", "", "()V", "DownloadFinished", "MetadataError", "ModelCheckError", "ModelDownloadError", "ModelExist", "UpdateMetadataFinished", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus$ModelExist;", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus$DownloadFinished;", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus$UpdateMetadataFinished;", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus$ModelCheckError;", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus$ModelDownloadError;", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus$MetadataError;", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: com.gogolook.whoscallsdk.ml.model.ModelStatus */
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelStatus.class */
public abstract class ModelStatus {

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/ModelStatus$DownloadFinished;", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus;", "()V", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.model.ModelStatus$DownloadFinished */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelStatus$DownloadFinished.class */
    public static final class DownloadFinished extends ModelStatus {
        public static final DownloadFinished INSTANCE = new DownloadFinished();

        public DownloadFinished() {
            super(null);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/ModelStatus$ModelExist;", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus;", "()V", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.model.ModelStatus$ModelExist */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelStatus$ModelExist.class */
    public static final class ModelExist extends ModelStatus {
        public static final ModelExist INSTANCE = new ModelExist();

        public ModelExist() {
            super(null);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/ModelStatus$UpdateMetadataFinished;", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus;", "()V", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.model.ModelStatus$UpdateMetadataFinished */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelStatus$UpdateMetadataFinished.class */
    public static final class UpdateMetadataFinished extends ModelStatus {
        public static final UpdateMetadataFinished INSTANCE = new UpdateMetadataFinished();

        public UpdateMetadataFinished() {
            super(null);
        }
    }

    /* renamed from: com.gogolook.whoscallsdk.ml.model.ModelStatus$a */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelStatus$a.class */
    public static final class C3546a extends ModelStatus {

        /* renamed from: a */
        public final Exception f6246a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3546a(Exception exc) {
            super(null);
            C15149k.m377b(exc, "exception");
            this.f6246a = exc;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C3546a) && C15149k.m384a(this.f6246a, ((C3546a) obj).f6246a);
            }
            return true;
        }

        public int hashCode() {
            Exception exc = this.f6246a;
            return exc != null ? exc.hashCode() : 0;
        }

        public String toString() {
            return "MetadataError(exception=" + this.f6246a + ")";
        }
    }

    /* renamed from: com.gogolook.whoscallsdk.ml.model.ModelStatus$b */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelStatus$b.class */
    public static final class C3547b extends ModelStatus {

        /* renamed from: a */
        public final Exception f6247a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3547b(Exception exc) {
            super(null);
            C15149k.m377b(exc, "exception");
            this.f6247a = exc;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C3547b) && C15149k.m384a(this.f6247a, ((C3547b) obj).f6247a);
            }
            return true;
        }

        public int hashCode() {
            Exception exc = this.f6247a;
            return exc != null ? exc.hashCode() : 0;
        }

        public String toString() {
            return "ModelCheckError(exception=" + this.f6247a + ")";
        }
    }

    /* renamed from: com.gogolook.whoscallsdk.ml.model.ModelStatus$c */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelStatus$c.class */
    public static final class C3548c extends ModelStatus {

        /* renamed from: a */
        public final Exception f6248a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3548c(Exception exc) {
            super(null);
            C15149k.m377b(exc, "exception");
            this.f6248a = exc;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C3548c) && C15149k.m384a(this.f6248a, ((C3548c) obj).f6248a);
            }
            return true;
        }

        public int hashCode() {
            Exception exc = this.f6248a;
            return exc != null ? exc.hashCode() : 0;
        }

        public String toString() {
            return "ModelDownloadError(exception=" + this.f6248a + ")";
        }
    }

    public ModelStatus() {
    }

    public /* synthetic */ ModelStatus(C15145g gVar) {
        this();
    }
}
