package com.google.firebase.crashlytics.internal.model;

import com.apptentive.android.sdk.Apptentive;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder.class */
public final class AutoCrashlyticsReportEncoder implements Configurator {
    public static final int CODEGEN_VERSION = 1;
    public static final Configurator CONFIG = new AutoCrashlyticsReportEncoder();

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder.class */
    private static final class CrashlyticsReportCustomAttributeEncoder implements ObjectEncoder<CrashlyticsReport.CustomAttribute> {
        static final CrashlyticsReportCustomAttributeEncoder INSTANCE = new CrashlyticsReportCustomAttributeEncoder();

        private CrashlyticsReportCustomAttributeEncoder() {
        }

        public void encode(CrashlyticsReport.CustomAttribute customAttribute, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("key", customAttribute.getKey());
            objectEncoderContext.add(FirebaseAnalytics.Param.VALUE, customAttribute.getValue());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportEncoder.class */
    private static final class CrashlyticsReportEncoder implements ObjectEncoder<CrashlyticsReport> {
        static final CrashlyticsReportEncoder INSTANCE = new CrashlyticsReportEncoder();

        private CrashlyticsReportEncoder() {
        }

        public void encode(CrashlyticsReport crashlyticsReport, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("sdkVersion", crashlyticsReport.getSdkVersion());
            objectEncoderContext.add("gmpAppId", crashlyticsReport.getGmpAppId());
            objectEncoderContext.add("platform", crashlyticsReport.getPlatform());
            objectEncoderContext.add("installationUuid", crashlyticsReport.getInstallationUuid());
            objectEncoderContext.add("buildVersion", crashlyticsReport.getBuildVersion());
            objectEncoderContext.add("displayVersion", crashlyticsReport.getDisplayVersion());
            objectEncoderContext.add("session", crashlyticsReport.getSession());
            objectEncoderContext.add("ndkPayload", crashlyticsReport.getNdkPayload());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder.class */
    private static final class CrashlyticsReportFilesPayloadEncoder implements ObjectEncoder<CrashlyticsReport.FilesPayload> {
        static final CrashlyticsReportFilesPayloadEncoder INSTANCE = new CrashlyticsReportFilesPayloadEncoder();

        private CrashlyticsReportFilesPayloadEncoder() {
        }

        public void encode(CrashlyticsReport.FilesPayload filesPayload, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("files", filesPayload.getFiles());
            objectEncoderContext.add("orgId", filesPayload.getOrgId());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder.class */
    private static final class CrashlyticsReportFilesPayloadFileEncoder implements ObjectEncoder<CrashlyticsReport.FilesPayload.File> {
        static final CrashlyticsReportFilesPayloadFileEncoder INSTANCE = new CrashlyticsReportFilesPayloadFileEncoder();

        private CrashlyticsReportFilesPayloadFileEncoder() {
        }

        public void encode(CrashlyticsReport.FilesPayload.File file, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("filename", file.getFilename());
            objectEncoderContext.add("contents", file.getContents());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder.class */
    private static final class CrashlyticsReportSessionApplicationEncoder implements ObjectEncoder<CrashlyticsReport.Session.Application> {
        static final CrashlyticsReportSessionApplicationEncoder INSTANCE = new CrashlyticsReportSessionApplicationEncoder();

        private CrashlyticsReportSessionApplicationEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Application application, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("identifier", application.getIdentifier());
            objectEncoderContext.add(Apptentive.Version.TYPE, application.getVersion());
            objectEncoderContext.add("displayVersion", application.getDisplayVersion());
            objectEncoderContext.add("organization", application.getOrganization());
            objectEncoderContext.add("installationUuid", application.getInstallationUuid());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder.class */
    private static final class CrashlyticsReportSessionApplicationOrganizationEncoder implements ObjectEncoder<CrashlyticsReport.Session.Application.Organization> {
        static final CrashlyticsReportSessionApplicationOrganizationEncoder INSTANCE = new CrashlyticsReportSessionApplicationOrganizationEncoder();

        private CrashlyticsReportSessionApplicationOrganizationEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Application.Organization organization, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("clsId", organization.getClsId());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder.class */
    private static final class CrashlyticsReportSessionDeviceEncoder implements ObjectEncoder<CrashlyticsReport.Session.Device> {
        static final CrashlyticsReportSessionDeviceEncoder INSTANCE = new CrashlyticsReportSessionDeviceEncoder();

        private CrashlyticsReportSessionDeviceEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Device device, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("arch", device.getArch());
            objectEncoderContext.add("model", device.getModel());
            objectEncoderContext.add("cores", device.getCores());
            objectEncoderContext.add("ram", device.getRam());
            objectEncoderContext.add("diskSpace", device.getDiskSpace());
            objectEncoderContext.add("simulator", device.isSimulator());
            objectEncoderContext.add("state", device.getState());
            objectEncoderContext.add("manufacturer", device.getManufacturer());
            objectEncoderContext.add("modelClass", device.getModelClass());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder.class */
    private static final class CrashlyticsReportSessionEncoder implements ObjectEncoder<CrashlyticsReport.Session> {
        static final CrashlyticsReportSessionEncoder INSTANCE = new CrashlyticsReportSessionEncoder();

        private CrashlyticsReportSessionEncoder() {
        }

        public void encode(CrashlyticsReport.Session session, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("generator", session.getGenerator());
            objectEncoderContext.add("identifier", session.getIdentifierUtf8Bytes());
            objectEncoderContext.add("startedAt", session.getStartedAt());
            objectEncoderContext.add("endedAt", session.getEndedAt());
            objectEncoderContext.add("crashed", session.isCrashed());
            objectEncoderContext.add("app", session.getApp());
            objectEncoderContext.add("user", session.getUser());
            objectEncoderContext.add("os", session.getOs());
            objectEncoderContext.add("device", session.getDevice());
            objectEncoderContext.add("events", session.getEvents());
            objectEncoderContext.add("generatorType", session.getGeneratorType());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder.class */
    private static final class CrashlyticsReportSessionEventApplicationEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application> {
        static final CrashlyticsReportSessionEventApplicationEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationEncoder();

        private CrashlyticsReportSessionEventApplicationEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Event.Application application, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("execution", application.getExecution());
            objectEncoderContext.add("customAttributes", application.getCustomAttributes());
            objectEncoderContext.add("background", application.getBackground());
            objectEncoderContext.add("uiOrientation", application.getUiOrientation());
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder.class */
    private static final class C1316x99c932db implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> {
        static final C1316x99c932db INSTANCE = new C1316x99c932db();

        private C1316x99c932db() {
        }

        public void encode(CrashlyticsReport.Session.Event.Application.Execution.BinaryImage binaryImage, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("baseAddress", binaryImage.getBaseAddress());
            objectEncoderContext.add("size", binaryImage.getSize());
            objectEncoderContext.add("name", binaryImage.getName());
            objectEncoderContext.add("uuid", binaryImage.getUuidUtf8Bytes());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionEncoder.class */
    private static final class CrashlyticsReportSessionEventApplicationExecutionEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution> {
        static final CrashlyticsReportSessionEventApplicationExecutionEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionEncoder();

        private CrashlyticsReportSessionEventApplicationExecutionEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Event.Application.Execution execution, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("threads", execution.getThreads());
            objectEncoderContext.add("exception", execution.getException());
            objectEncoderContext.add("signal", execution.getSignal());
            objectEncoderContext.add("binaries", execution.getBinaries());
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder.class */
    private static final class C1317x55689506 implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.Exception> {
        static final C1317x55689506 INSTANCE = new C1317x55689506();

        private C1317x55689506() {
        }

        public void encode(CrashlyticsReport.Session.Event.Application.Execution.Exception exception, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("type", exception.getType());
            objectEncoderContext.add("reason", exception.getReason());
            objectEncoderContext.add("frames", exception.getFrames());
            objectEncoderContext.add("causedBy", exception.getCausedBy());
            objectEncoderContext.add("overflowCount", exception.getOverflowCount());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.class */
    private static final class CrashlyticsReportSessionEventApplicationExecutionSignalEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.Signal> {
        static final CrashlyticsReportSessionEventApplicationExecutionSignalEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionSignalEncoder();

        private CrashlyticsReportSessionEventApplicationExecutionSignalEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Event.Application.Execution.Signal signal, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("name", signal.getName());
            objectEncoderContext.add("code", signal.getCode());
            objectEncoderContext.add("address", signal.getAddress());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.class */
    private static final class CrashlyticsReportSessionEventApplicationExecutionThreadEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.Thread> {
        static final CrashlyticsReportSessionEventApplicationExecutionThreadEncoder INSTANCE = new CrashlyticsReportSessionEventApplicationExecutionThreadEncoder();

        private CrashlyticsReportSessionEventApplicationExecutionThreadEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Event.Application.Execution.Thread thread, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("name", thread.getName());
            objectEncoderContext.add("importance", thread.getImportance());
            objectEncoderContext.add("frames", thread.getFrames());
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder.class */
    private static final class C1318xc3999712 implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> {
        static final C1318xc3999712 INSTANCE = new C1318xc3999712();

        private C1318xc3999712() {
        }

        public void encode(CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame frame, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("pc", frame.getPc());
            objectEncoderContext.add("symbol", frame.getSymbol());
            objectEncoderContext.add("file", frame.getFile());
            objectEncoderContext.add("offset", frame.getOffset());
            objectEncoderContext.add("importance", frame.getImportance());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder.class */
    private static final class CrashlyticsReportSessionEventDeviceEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Device> {
        static final CrashlyticsReportSessionEventDeviceEncoder INSTANCE = new CrashlyticsReportSessionEventDeviceEncoder();

        private CrashlyticsReportSessionEventDeviceEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Event.Device device, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("batteryLevel", device.getBatteryLevel());
            objectEncoderContext.add("batteryVelocity", device.getBatteryVelocity());
            objectEncoderContext.add("proximityOn", device.isProximityOn());
            objectEncoderContext.add("orientation", device.getOrientation());
            objectEncoderContext.add("ramUsed", device.getRamUsed());
            objectEncoderContext.add("diskUsed", device.getDiskUsed());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder.class */
    private static final class CrashlyticsReportSessionEventEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event> {
        static final CrashlyticsReportSessionEventEncoder INSTANCE = new CrashlyticsReportSessionEventEncoder();

        private CrashlyticsReportSessionEventEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Event event, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("timestamp", event.getTimestamp());
            objectEncoderContext.add("type", event.getType());
            objectEncoderContext.add("app", event.getApp());
            objectEncoderContext.add("device", event.getDevice());
            objectEncoderContext.add("log", event.getLog());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder.class */
    private static final class CrashlyticsReportSessionEventLogEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Log> {
        static final CrashlyticsReportSessionEventLogEncoder INSTANCE = new CrashlyticsReportSessionEventLogEncoder();

        private CrashlyticsReportSessionEventLogEncoder() {
        }

        public void encode(CrashlyticsReport.Session.Event.Log log, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(FirebaseAnalytics.Param.CONTENT, log.getContent());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder.class */
    private static final class CrashlyticsReportSessionOperatingSystemEncoder implements ObjectEncoder<CrashlyticsReport.Session.OperatingSystem> {
        static final CrashlyticsReportSessionOperatingSystemEncoder INSTANCE = new CrashlyticsReportSessionOperatingSystemEncoder();

        private CrashlyticsReportSessionOperatingSystemEncoder() {
        }

        public void encode(CrashlyticsReport.Session.OperatingSystem operatingSystem, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("platform", operatingSystem.getPlatform());
            objectEncoderContext.add(Apptentive.Version.TYPE, operatingSystem.getVersion());
            objectEncoderContext.add("buildVersion", operatingSystem.getBuildVersion());
            objectEncoderContext.add("jailbroken", operatingSystem.isJailbroken());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder.class */
    private static final class CrashlyticsReportSessionUserEncoder implements ObjectEncoder<CrashlyticsReport.Session.User> {
        static final CrashlyticsReportSessionUserEncoder INSTANCE = new CrashlyticsReportSessionUserEncoder();

        private CrashlyticsReportSessionUserEncoder() {
        }

        public void encode(CrashlyticsReport.Session.User user, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add("identifier", user.getIdentifier());
        }
    }

    private AutoCrashlyticsReportEncoder() {
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig<?> encoderConfig) {
        encoderConfig.registerEncoder(CrashlyticsReport.class, CrashlyticsReportEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport.class, CrashlyticsReportEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.class, CrashlyticsReportSessionEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session.class, CrashlyticsReportSessionEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Application.class, CrashlyticsReportSessionApplicationEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_Application.class, CrashlyticsReportSessionApplicationEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Application.Organization.class, CrashlyticsReportSessionApplicationOrganizationEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_Application_Organization.class, CrashlyticsReportSessionApplicationOrganizationEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.User.class, CrashlyticsReportSessionUserEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_User.class, CrashlyticsReportSessionUserEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.OperatingSystem.class, CrashlyticsReportSessionOperatingSystemEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_OperatingSystem.class, CrashlyticsReportSessionOperatingSystemEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Device.class, CrashlyticsReportSessionDeviceEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_Device.class, CrashlyticsReportSessionDeviceEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.class, CrashlyticsReportSessionEventEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_Event.class, CrashlyticsReportSessionEventEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.Application.class, CrashlyticsReportSessionEventApplicationEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application.class, CrashlyticsReportSessionEventApplicationEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.class, CrashlyticsReportSessionEventApplicationExecutionEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Application_Execution.class, CrashlyticsReportSessionEventApplicationExecutionEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Thread.class, CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.INSTANCE);
        encoderConfig.registerEncoder(C1336x7e3e3ebd.class, CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.class, C1318xc3999712.INSTANCE);
        encoderConfig.registerEncoder(C1338xce3d994b.class, C1318xc3999712.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Exception.class, C1317x55689506.INSTANCE);
        encoderConfig.registerEncoder(C1332xc2f5febc.class, C1317x55689506.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.Signal.class, CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.INSTANCE);
        encoderConfig.registerEncoder(C1334x7c929f5b.class, CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.class, C1316x99c932db.INSTANCE);
        encoderConfig.registerEncoder(C1330xfe724d07.class, C1316x99c932db.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.CustomAttribute.class, CrashlyticsReportCustomAttributeEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_CustomAttribute.class, CrashlyticsReportCustomAttributeEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.Device.class, CrashlyticsReportSessionEventDeviceEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Device.class, CrashlyticsReportSessionEventDeviceEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.Session.Event.Log.class, CrashlyticsReportSessionEventLogEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_Session_Event_Log.class, CrashlyticsReportSessionEventLogEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.FilesPayload.class, CrashlyticsReportFilesPayloadEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_FilesPayload.class, CrashlyticsReportFilesPayloadEncoder.INSTANCE);
        encoderConfig.registerEncoder(CrashlyticsReport.FilesPayload.File.class, CrashlyticsReportFilesPayloadFileEncoder.INSTANCE);
        encoderConfig.registerEncoder(AutoValue_CrashlyticsReport_FilesPayload_File.class, CrashlyticsReportFilesPayloadFileEncoder.INSTANCE);
    }
}
