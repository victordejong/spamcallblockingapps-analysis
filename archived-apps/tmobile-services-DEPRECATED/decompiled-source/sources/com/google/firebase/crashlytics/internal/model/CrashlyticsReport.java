package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.stetho.common.Utf8Charset;
import com.google.auto.value.AutoValue;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_CustomAttribute;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload_File;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Application;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Application_Organization;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Device;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application_Execution;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Device;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Log;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_OperatingSystem;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_User;
import com.google.firebase.crashlytics.internal.model.C1330xfe724d07;
import com.google.firebase.crashlytics.internal.model.C1332xc2f5febc;
import com.google.firebase.crashlytics.internal.model.C1334x7c929f5b;
import com.google.firebase.crashlytics.internal.model.C1336x7e3e3ebd;
import com.google.firebase.crashlytics.internal.model.C1338xce3d994b;
import com.google.firebase.encoders.annotations.Encodable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.Charset;
@AutoValue
@Encodable
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport.class */
public abstract class CrashlyticsReport {
    private static final Charset UTF_8 = Charset.forName(Utf8Charset.NAME);

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture.class */
    public @interface Architecture {
        public static final int ARM64 = 9;
        public static final int ARMV6 = 5;
        public static final int ARMV7 = 6;
        public static final int UNKNOWN = 7;
        public static final int X86_32 = 0;
        public static final int X86_64 = 1;
    }

    @AutoValue.Builder
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Builder.class */
    public static abstract class Builder {
        @NonNull
        public abstract CrashlyticsReport build();

        @NonNull
        public abstract Builder setBuildVersion(@NonNull String str);

        @NonNull
        public abstract Builder setDisplayVersion(@NonNull String str);

        @NonNull
        public abstract Builder setGmpAppId(@NonNull String str);

        @NonNull
        public abstract Builder setInstallationUuid(@NonNull String str);

        @NonNull
        public abstract Builder setNdkPayload(FilesPayload filesPayload);

        @NonNull
        public abstract Builder setPlatform(int i);

        @NonNull
        public abstract Builder setSdkVersion(@NonNull String str);

        @NonNull
        public abstract Builder setSession(@NonNull Session session);
    }

    @AutoValue
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute.class */
    public static abstract class CustomAttribute {

        @AutoValue.Builder
        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute$Builder.class */
        public static abstract class Builder {
            @NonNull
            public abstract CustomAttribute build();

            @NonNull
            public abstract Builder setKey(@NonNull String str);

            @NonNull
            public abstract Builder setValue(@NonNull String str);
        }

        @NonNull
        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_CustomAttribute.Builder();
        }

        @NonNull
        public abstract String getKey();

        @NonNull
        public abstract String getValue();
    }

    @AutoValue
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload.class */
    public static abstract class FilesPayload {

        @AutoValue.Builder
        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$Builder.class */
        public static abstract class Builder {
            public abstract FilesPayload build();

            public abstract Builder setFiles(ImmutableList<File> immutableList);

            public abstract Builder setOrgId(String str);
        }

        @AutoValue
        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File.class */
        public static abstract class File {

            @AutoValue.Builder
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder.class */
            public static abstract class Builder {
                public abstract File build();

                public abstract Builder setContents(byte[] bArr);

                public abstract Builder setFilename(String str);
            }

            @NonNull
            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_FilesPayload_File.Builder();
            }

            @NonNull
            public abstract byte[] getContents();

            @NonNull
            public abstract String getFilename();
        }

        @NonNull
        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_FilesPayload.Builder();
        }

        @NonNull
        public abstract ImmutableList<File> getFiles();

        @Nullable
        public abstract String getOrgId();

        abstract Builder toBuilder();
    }

    @AutoValue
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session.class */
    public static abstract class Session {

        @AutoValue
        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application.class */
        public static abstract class Application {

            @AutoValue.Builder
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Builder.class */
            public static abstract class Builder {
                @NonNull
                public abstract Application build();

                @NonNull
                public abstract Builder setDisplayVersion(@NonNull String str);

                @NonNull
                public abstract Builder setIdentifier(@NonNull String str);

                @NonNull
                public abstract Builder setInstallationUuid(@NonNull String str);

                @NonNull
                public abstract Builder setOrganization(@NonNull Organization organization);

                @NonNull
                public abstract Builder setVersion(@NonNull String str);
            }

            @AutoValue
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization.class */
            public static abstract class Organization {

                @AutoValue.Builder
                /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization$Builder.class */
                public static abstract class Builder {
                    @NonNull
                    public abstract Organization build();

                    @NonNull
                    public abstract Builder setClsId(@NonNull String str);
                }

                @NonNull
                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Application_Organization.Builder();
                }

                @NonNull
                public abstract String getClsId();

                @NonNull
                protected abstract Builder toBuilder();
            }

            @NonNull
            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_Application.Builder();
            }

            @Nullable
            public abstract String getDisplayVersion();

            @NonNull
            public abstract String getIdentifier();

            @Nullable
            public abstract String getInstallationUuid();

            @Nullable
            public abstract Organization getOrganization();

            @NonNull
            public abstract String getVersion();

            @NonNull
            protected abstract Builder toBuilder();

            @NonNull
            Application withOrganizationId(@NonNull String str) {
                Organization organization = getOrganization();
                return toBuilder().setOrganization((organization != null ? organization.toBuilder() : Organization.builder()).setClsId(str).build()).build();
            }
        }

        @AutoValue.Builder
        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder.class */
        public static abstract class Builder {
            @NonNull
            public abstract Session build();

            @NonNull
            public abstract Builder setApp(@NonNull Application application);

            @NonNull
            public abstract Builder setCrashed(boolean z);

            @NonNull
            public abstract Builder setDevice(@NonNull Device device);

            @NonNull
            public abstract Builder setEndedAt(@NonNull Long l);

            @NonNull
            public abstract Builder setEvents(@NonNull ImmutableList<Event> immutableList);

            @NonNull
            public abstract Builder setGenerator(@NonNull String str);

            @NonNull
            public abstract Builder setGeneratorType(int i);

            @NonNull
            public abstract Builder setIdentifier(@NonNull String str);

            @NonNull
            public Builder setIdentifierFromUtf8Bytes(@NonNull byte[] bArr) {
                return setIdentifier(new String(bArr, CrashlyticsReport.UTF_8));
            }

            @NonNull
            public abstract Builder setOs(@NonNull OperatingSystem operatingSystem);

            @NonNull
            public abstract Builder setStartedAt(long j);

            @NonNull
            public abstract Builder setUser(@NonNull User user);
        }

        @AutoValue
        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device.class */
        public static abstract class Device {

            @AutoValue.Builder
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder.class */
            public static abstract class Builder {
                @NonNull
                public abstract Device build();

                @NonNull
                public abstract Builder setArch(int i);

                @NonNull
                public abstract Builder setCores(int i);

                @NonNull
                public abstract Builder setDiskSpace(long j);

                @NonNull
                public abstract Builder setManufacturer(@NonNull String str);

                @NonNull
                public abstract Builder setModel(@NonNull String str);

                @NonNull
                public abstract Builder setModelClass(@NonNull String str);

                @NonNull
                public abstract Builder setRam(long j);

                @NonNull
                public abstract Builder setSimulator(boolean z);

                @NonNull
                public abstract Builder setState(int i);
            }

            @NonNull
            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_Device.Builder();
            }

            @NonNull
            public abstract int getArch();

            public abstract int getCores();

            public abstract long getDiskSpace();

            @NonNull
            public abstract String getManufacturer();

            @NonNull
            public abstract String getModel();

            @NonNull
            public abstract String getModelClass();

            public abstract long getRam();

            public abstract int getState();

            public abstract boolean isSimulator();
        }

        @AutoValue
        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event.class */
        public static abstract class Event {

            @AutoValue
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application.class */
            public static abstract class Application {

                @AutoValue.Builder
                /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Builder.class */
                public static abstract class Builder {
                    @NonNull
                    public abstract Application build();

                    @NonNull
                    public abstract Builder setBackground(@Nullable Boolean bool);

                    @NonNull
                    public abstract Builder setCustomAttributes(@NonNull ImmutableList<CustomAttribute> immutableList);

                    @NonNull
                    public abstract Builder setExecution(@NonNull Execution execution);

                    @NonNull
                    public abstract Builder setUiOrientation(int i);
                }

                @AutoValue
                /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution.class */
                public static abstract class Execution {

                    @AutoValue
                    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage.class */
                    public static abstract class BinaryImage {

                        @AutoValue.Builder
                        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder.class */
                        public static abstract class Builder {
                            @NonNull
                            public abstract BinaryImage build();

                            @NonNull
                            public abstract Builder setBaseAddress(long j);

                            @NonNull
                            public abstract Builder setName(@NonNull String str);

                            @NonNull
                            public abstract Builder setSize(long j);

                            @NonNull
                            public abstract Builder setUuid(@Nullable String str);

                            @NonNull
                            public Builder setUuidFromUtf8Bytes(@NonNull byte[] bArr) {
                                return setUuid(new String(bArr, CrashlyticsReport.UTF_8));
                            }
                        }

                        @NonNull
                        public static Builder builder() {
                            return new C1330xfe724d07.Builder();
                        }

                        @NonNull
                        public abstract long getBaseAddress();

                        @NonNull
                        public abstract String getName();

                        public abstract long getSize();

                        @Encodable.Ignore
                        @Nullable
                        public abstract String getUuid();

                        @Nullable
                        @Encodable.Field(name = "uuid")
                        public byte[] getUuidUtf8Bytes() {
                            String uuid = getUuid();
                            return uuid != null ? uuid.getBytes(CrashlyticsReport.UTF_8) : null;
                        }
                    }

                    @AutoValue.Builder
                    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Builder.class */
                    public static abstract class Builder {
                        @NonNull
                        public abstract Execution build();

                        @NonNull
                        public abstract Builder setBinaries(@NonNull ImmutableList<BinaryImage> immutableList);

                        @NonNull
                        public abstract Builder setException(@NonNull Exception exception);

                        @NonNull
                        public abstract Builder setSignal(@NonNull Signal signal);

                        @NonNull
                        public abstract Builder setThreads(@NonNull ImmutableList<Thread> immutableList);
                    }

                    @AutoValue
                    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Exception.class */
                    public static abstract class Exception {

                        @AutoValue.Builder
                        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder.class */
                        public static abstract class Builder {
                            @NonNull
                            public abstract Exception build();

                            @NonNull
                            public abstract Builder setCausedBy(@NonNull Exception exception);

                            @NonNull
                            public abstract Builder setFrames(@NonNull ImmutableList<Thread.Frame> immutableList);

                            @NonNull
                            public abstract Builder setOverflowCount(int i);

                            @NonNull
                            public abstract Builder setReason(@NonNull String str);

                            @NonNull
                            public abstract Builder setType(@NonNull String str);
                        }

                        @NonNull
                        public static Builder builder() {
                            return new C1332xc2f5febc.Builder();
                        }

                        @Nullable
                        public abstract Exception getCausedBy();

                        @NonNull
                        public abstract ImmutableList<Thread.Frame> getFrames();

                        public abstract int getOverflowCount();

                        @Nullable
                        public abstract String getReason();

                        @NonNull
                        public abstract String getType();
                    }

                    @AutoValue
                    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Signal.class */
                    public static abstract class Signal {

                        @AutoValue.Builder
                        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder.class */
                        public static abstract class Builder {
                            @NonNull
                            public abstract Signal build();

                            @NonNull
                            public abstract Builder setAddress(long j);

                            @NonNull
                            public abstract Builder setCode(@NonNull String str);

                            @NonNull
                            public abstract Builder setName(@NonNull String str);
                        }

                        @NonNull
                        public static Builder builder() {
                            return new C1334x7c929f5b.Builder();
                        }

                        @NonNull
                        public abstract long getAddress();

                        @NonNull
                        public abstract String getCode();

                        @NonNull
                        public abstract String getName();
                    }

                    @AutoValue
                    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread.class */
                    public static abstract class Thread {

                        @AutoValue.Builder
                        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder.class */
                        public static abstract class Builder {
                            @NonNull
                            public abstract Thread build();

                            @NonNull
                            public abstract Builder setFrames(@NonNull ImmutableList<Frame> immutableList);

                            @NonNull
                            public abstract Builder setImportance(int i);

                            @NonNull
                            public abstract Builder setName(@NonNull String str);
                        }

                        @AutoValue
                        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame.class */
                        public static abstract class Frame {

                            @AutoValue.Builder
                            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder.class */
                            public static abstract class Builder {
                                @NonNull
                                public abstract Frame build();

                                @NonNull
                                public abstract Builder setFile(@NonNull String str);

                                @NonNull
                                public abstract Builder setImportance(int i);

                                @NonNull
                                public abstract Builder setOffset(long j);

                                @NonNull
                                public abstract Builder setPc(long j);

                                @NonNull
                                public abstract Builder setSymbol(@NonNull String str);
                            }

                            @NonNull
                            public static Builder builder() {
                                return new C1338xce3d994b.Builder();
                            }

                            @Nullable
                            public abstract String getFile();

                            public abstract int getImportance();

                            public abstract long getOffset();

                            public abstract long getPc();

                            @NonNull
                            public abstract String getSymbol();
                        }

                        @NonNull
                        public static Builder builder() {
                            return new C1336x7e3e3ebd.Builder();
                        }

                        @NonNull
                        public abstract ImmutableList<Frame> getFrames();

                        public abstract int getImportance();

                        @NonNull
                        public abstract String getName();
                    }

                    @NonNull
                    public static Builder builder() {
                        return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution.Builder();
                    }

                    @NonNull
                    public abstract ImmutableList<BinaryImage> getBinaries();

                    @NonNull
                    public abstract Exception getException();

                    @NonNull
                    public abstract Signal getSignal();

                    @NonNull
                    public abstract ImmutableList<Thread> getThreads();
                }

                @NonNull
                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Application.Builder();
                }

                @Nullable
                public abstract Boolean getBackground();

                @Nullable
                public abstract ImmutableList<CustomAttribute> getCustomAttributes();

                @NonNull
                public abstract Execution getExecution();

                public abstract int getUiOrientation();

                @NonNull
                public abstract Builder toBuilder();
            }

            @AutoValue.Builder
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Builder.class */
            public static abstract class Builder {
                @NonNull
                public abstract Event build();

                @NonNull
                public abstract Builder setApp(@NonNull Application application);

                @NonNull
                public abstract Builder setDevice(@NonNull Device device);

                @NonNull
                public abstract Builder setLog(@NonNull Log log);

                @NonNull
                public abstract Builder setTimestamp(long j);

                @NonNull
                public abstract Builder setType(@NonNull String str);
            }

            @AutoValue
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Device.class */
            public static abstract class Device {

                @AutoValue.Builder
                /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Device$Builder.class */
                public static abstract class Builder {
                    @NonNull
                    public abstract Device build();

                    @NonNull
                    public abstract Builder setBatteryLevel(Double d);

                    @NonNull
                    public abstract Builder setBatteryVelocity(int i);

                    @NonNull
                    public abstract Builder setDiskUsed(long j);

                    @NonNull
                    public abstract Builder setOrientation(int i);

                    @NonNull
                    public abstract Builder setProximityOn(boolean z);

                    @NonNull
                    public abstract Builder setRamUsed(long j);
                }

                @NonNull
                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Device.Builder();
                }

                @Nullable
                public abstract Double getBatteryLevel();

                public abstract int getBatteryVelocity();

                public abstract long getDiskUsed();

                public abstract int getOrientation();

                public abstract long getRamUsed();

                public abstract boolean isProximityOn();
            }

            @AutoValue
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log.class */
            public static abstract class Log {

                @AutoValue.Builder
                /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log$Builder.class */
                public static abstract class Builder {
                    @NonNull
                    public abstract Log build();

                    @NonNull
                    public abstract Builder setContent(@NonNull String str);
                }

                @NonNull
                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Log.Builder();
                }

                @NonNull
                public abstract String getContent();
            }

            @NonNull
            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_Event.Builder();
            }

            @NonNull
            public abstract Application getApp();

            @NonNull
            public abstract Device getDevice();

            @Nullable
            public abstract Log getLog();

            public abstract long getTimestamp();

            @NonNull
            public abstract String getType();

            @NonNull
            public abstract Builder toBuilder();
        }

        @AutoValue
        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$OperatingSystem.class */
        public static abstract class OperatingSystem {

            @AutoValue.Builder
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$OperatingSystem$Builder.class */
            public static abstract class Builder {
                @NonNull
                public abstract OperatingSystem build();

                @NonNull
                public abstract Builder setBuildVersion(@NonNull String str);

                @NonNull
                public abstract Builder setJailbroken(boolean z);

                @NonNull
                public abstract Builder setPlatform(int i);

                @NonNull
                public abstract Builder setVersion(@NonNull String str);
            }

            @NonNull
            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_OperatingSystem.Builder();
            }

            @NonNull
            public abstract String getBuildVersion();

            public abstract int getPlatform();

            @NonNull
            public abstract String getVersion();

            public abstract boolean isJailbroken();
        }

        @AutoValue
        /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User.class */
        public static abstract class User {

            @AutoValue.Builder
            /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User$Builder.class */
            public static abstract class Builder {
                @NonNull
                public abstract User build();

                @NonNull
                public abstract Builder setIdentifier(@NonNull String str);
            }

            @NonNull
            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_User.Builder();
            }

            @NonNull
            public abstract String getIdentifier();
        }

        @NonNull
        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_Session.Builder().setCrashed(false);
        }

        @NonNull
        public abstract Application getApp();

        @Nullable
        public abstract Device getDevice();

        @Nullable
        public abstract Long getEndedAt();

        @Nullable
        public abstract ImmutableList<Event> getEvents();

        @NonNull
        public abstract String getGenerator();

        public abstract int getGeneratorType();

        @Encodable.Ignore
        @NonNull
        public abstract String getIdentifier();

        @NonNull
        @Encodable.Field(name = "identifier")
        public byte[] getIdentifierUtf8Bytes() {
            return getIdentifier().getBytes(CrashlyticsReport.UTF_8);
        }

        @Nullable
        public abstract OperatingSystem getOs();

        public abstract long getStartedAt();

        @Nullable
        public abstract User getUser();

        public abstract boolean isCrashed();

        @NonNull
        public abstract Builder toBuilder();

        @NonNull
        Session withEvents(@NonNull ImmutableList<Event> immutableList) {
            return toBuilder().setEvents(immutableList).build();
        }

        @NonNull
        Session withOrganizationId(@NonNull String str) {
            return toBuilder().setApp(getApp().withOrganizationId(str)).build();
        }

        @NonNull
        Session withSessionEndFields(long j, boolean z, @Nullable String str) {
            Builder builder = toBuilder();
            builder.setEndedAt(Long.valueOf(j));
            builder.setCrashed(z);
            if (str != null) {
                builder.setUser(User.builder().setIdentifier(str).build()).build();
            }
            return builder.build();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type.class */
    public enum Type {
        INCOMPLETE,
        JAVA,
        NATIVE
    }

    @NonNull
    public static Builder builder() {
        return new AutoValue_CrashlyticsReport.Builder();
    }

    @NonNull
    public abstract String getBuildVersion();

    @NonNull
    public abstract String getDisplayVersion();

    @NonNull
    public abstract String getGmpAppId();

    @NonNull
    public abstract String getInstallationUuid();

    @Nullable
    public abstract FilesPayload getNdkPayload();

    public abstract int getPlatform();

    @NonNull
    public abstract String getSdkVersion();

    @Nullable
    public abstract Session getSession();

    @Encodable.Ignore
    public Type getType() {
        return getSession() != null ? Type.JAVA : getNdkPayload() != null ? Type.NATIVE : Type.INCOMPLETE;
    }

    @NonNull
    protected abstract Builder toBuilder();

    @NonNull
    public CrashlyticsReport withEvents(@NonNull ImmutableList<Session.Event> immutableList) {
        if (getSession() != null) {
            return toBuilder().setSession(getSession().withEvents(immutableList)).build();
        }
        throw new IllegalStateException("Reports without sessions cannot have events added to them.");
    }

    @NonNull
    public CrashlyticsReport withNdkPayload(@NonNull FilesPayload filesPayload) {
        return toBuilder().setSession(null).setNdkPayload(filesPayload).build();
    }

    @NonNull
    public CrashlyticsReport withOrganizationId(@NonNull String str) {
        Builder builder = toBuilder();
        FilesPayload ndkPayload = getNdkPayload();
        if (ndkPayload != null) {
            builder.setNdkPayload(ndkPayload.toBuilder().setOrgId(str).build());
        }
        Session session = getSession();
        if (session != null) {
            builder.setSession(session.withOrganizationId(str));
        }
        return builder.build();
    }

    @NonNull
    public CrashlyticsReport withSessionEndFields(long j, boolean z, @Nullable String str) {
        Builder builder = toBuilder();
        if (getSession() != null) {
            builder.setSession(getSession().withSessionEndFields(j, z, str));
        }
        return builder.build();
    }
}
