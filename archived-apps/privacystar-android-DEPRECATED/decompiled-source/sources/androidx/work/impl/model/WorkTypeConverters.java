package androidx.work.impl.model;

import android.arch.persistence.room.TypeConverter;
import androidx.work.BackoffPolicy;
import androidx.work.ContentUriTriggers;
import androidx.work.NetworkType;
import androidx.work.WorkInfo;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters.class */
public class WorkTypeConverters {

    /* renamed from: androidx.work.impl.model.WorkTypeConverters$1 */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters$1.class */
    static /* synthetic */ class C06531 {
        static final /* synthetic */ int[] $SwitchMap$androidx$work$BackoffPolicy;
        static final /* synthetic */ int[] $SwitchMap$androidx$work$NetworkType = new int[NetworkType.values().length];
        static final /* synthetic */ int[] $SwitchMap$androidx$work$WorkInfo$State;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ac -> B:56:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b0 -> B:52:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b4 -> B:64:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b8 -> B:60:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bc -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c0 -> B:66:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c4 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c8 -> B:44:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cc -> B:54:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d0 -> B:50:0x0089). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d4 -> B:62:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d8 -> B:58:0x009f). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$androidx$work$NetworkType[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            $SwitchMap$androidx$work$BackoffPolicy = new int[BackoffPolicy.values().length];
            try {
                $SwitchMap$androidx$work$BackoffPolicy[BackoffPolicy.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$androidx$work$BackoffPolicy[BackoffPolicy.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            $SwitchMap$androidx$work$WorkInfo$State = new int[WorkInfo.State.values().length];
            try {
                $SwitchMap$androidx$work$WorkInfo$State[WorkInfo.State.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[WorkInfo.State.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[WorkInfo.State.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[WorkInfo.State.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[WorkInfo.State.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$androidx$work$WorkInfo$State[WorkInfo.State.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters$BackoffPolicyIds.class */
    public interface BackoffPolicyIds {
        public static final int EXPONENTIAL = 0;
        public static final int LINEAR = 1;
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters$NetworkTypeIds.class */
    public interface NetworkTypeIds {
        public static final int CONNECTED = 1;
        public static final int METERED = 4;
        public static final int NOT_REQUIRED = 0;
        public static final int NOT_ROAMING = 3;
        public static final int UNMETERED = 2;
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTypeConverters$StateIds.class */
    public interface StateIds {
        public static final int BLOCKED = 4;
        public static final int CANCELLED = 5;
        public static final String COMPLETED_STATES = "(2, 3, 5)";
        public static final int ENQUEUED = 0;
        public static final int FAILED = 3;
        public static final int RUNNING = 1;
        public static final int SUCCEEDED = 2;
    }

    private WorkTypeConverters() {
    }

    @TypeConverter
    public static int backoffPolicyToInt(BackoffPolicy backoffPolicy) {
        switch (C06531.$SwitchMap$androidx$work$BackoffPolicy[backoffPolicy.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            default:
                throw new IllegalArgumentException("Could not convert " + backoffPolicy + " to int");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0094 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0089 -> B:34:0x008d). Please submit an issue!!! */
    @android.arch.persistence.room.TypeConverter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.ContentUriTriggers byteArrayToContentUriTriggers(byte[] r4) {
        /*
            androidx.work.ContentUriTriggers r0 = new androidx.work.ContentUriTriggers
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000e
            r0 = r5
            return r0
        L_0x000e:
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r6 = r0
            java.io.ObjectInputStream r0 = new java.io.ObjectInputStream     // Catch: all -> 0x0060, IOException -> 0x0066
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: all -> 0x0060, IOException -> 0x0066
            r0 = r7
            r4 = r0
            r0 = r7
            int r0 = r0.readInt()     // Catch: IOException -> 0x005b, all -> 0x008f
            r8 = r0
        L_0x0028:
            r0 = r8
            if (r0 <= 0) goto L_0x0044
            r0 = r7
            r4 = r0
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.readUTF()     // Catch: IOException -> 0x005b, all -> 0x008f
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: IOException -> 0x005b, all -> 0x008f
            r2 = r7
            boolean r2 = r2.readBoolean()     // Catch: IOException -> 0x005b, all -> 0x008f
            r0.add(r1, r2)     // Catch: IOException -> 0x005b, all -> 0x008f
            int r8 = r8 + (-1)
            goto L_0x0028
        L_0x0044:
            r0 = r7
            if (r0 == 0) goto L_0x0054
            r0 = r7
            r0.close()     // Catch: IOException -> 0x004f
            goto L_0x0054
        L_0x004f:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L_0x0054:
            r0 = r6
            r0.close()     // Catch: IOException -> 0x0088
            goto L_0x008d
        L_0x005b:
            r9 = move-exception
            goto L_0x006a
        L_0x0060:
            r7 = move-exception
            r0 = 0
            r4 = r0
            goto L_0x0090
        L_0x0066:
            r9 = move-exception
            r0 = 0
            r7 = r0
        L_0x006a:
            r0 = r7
            r4 = r0
            r0 = r9
            r0.printStackTrace()     // Catch: all -> 0x008f
            r0 = r7
            if (r0 == 0) goto L_0x0081
            r0 = r7
            r0.close()     // Catch: IOException -> 0x007c
            goto L_0x0081
        L_0x007c:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L_0x0081:
            r0 = r6
            r0.close()     // Catch: IOException -> 0x0088
            goto L_0x008d
        L_0x0088:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L_0x008d:
            r0 = r5
            return r0
        L_0x008f:
            r7 = move-exception
        L_0x0090:
            r0 = r4
            if (r0 == 0) goto L_0x00a0
            r0 = r4
            r0.close()     // Catch: IOException -> 0x009b
            goto L_0x00a0
        L_0x009b:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L_0x00a0:
            r0 = r6
            r0.close()     // Catch: IOException -> 0x00a7
            goto L_0x00ac
        L_0x00a7:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L_0x00ac:
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkTypeConverters.byteArrayToContentUriTriggers(byte[]):androidx.work.ContentUriTriggers");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c2 -> B:38:0x00c6). Please submit an issue!!! */
    @TypeConverter
    public static byte[] contentUriTriggersToByteArray(ContentUriTriggers contentUriTriggers) {
        IOException e;
        ObjectOutputStream objectOutputStream;
        int size = contentUriTriggers.size();
        ObjectOutputStream objectOutputStream2 = null;
        if (size == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                try {
                    objectOutputStream = null;
                    objectOutputStream3 = new ObjectOutputStream(byteArrayOutputStream);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
            objectOutputStream3 = objectOutputStream3;
        }
        try {
            objectOutputStream3.writeInt(contentUriTriggers.size());
            for (ContentUriTriggers.Trigger trigger : contentUriTriggers.getTriggers()) {
                objectOutputStream3.writeUTF(trigger.getUri().toString());
                objectOutputStream3.writeBoolean(trigger.shouldTriggerForDescendants());
                objectOutputStream = trigger;
            }
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            byteArrayOutputStream.close();
            objectOutputStream3 = objectOutputStream;
        } catch (IOException e5) {
            e = e5;
            objectOutputStream2 = objectOutputStream3;
            objectOutputStream3 = objectOutputStream2;
            e.printStackTrace();
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    @TypeConverter
    public static BackoffPolicy intToBackoffPolicy(int i) {
        switch (i) {
            case 0:
                return BackoffPolicy.EXPONENTIAL;
            case 1:
                return BackoffPolicy.LINEAR;
            default:
                throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
        }
    }

    @TypeConverter
    public static NetworkType intToNetworkType(int i) {
        switch (i) {
            case 0:
                return NetworkType.NOT_REQUIRED;
            case 1:
                return NetworkType.CONNECTED;
            case 2:
                return NetworkType.UNMETERED;
            case 3:
                return NetworkType.NOT_ROAMING;
            case 4:
                return NetworkType.METERED;
            default:
                throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
        }
    }

    @TypeConverter
    public static WorkInfo.State intToState(int i) {
        switch (i) {
            case 0:
                return WorkInfo.State.ENQUEUED;
            case 1:
                return WorkInfo.State.RUNNING;
            case 2:
                return WorkInfo.State.SUCCEEDED;
            case 3:
                return WorkInfo.State.FAILED;
            case 4:
                return WorkInfo.State.BLOCKED;
            case 5:
                return WorkInfo.State.CANCELLED;
            default:
                throw new IllegalArgumentException("Could not convert " + i + " to State");
        }
    }

    @TypeConverter
    public static int networkTypeToInt(NetworkType networkType) {
        switch (C06531.$SwitchMap$androidx$work$NetworkType[networkType.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            default:
                throw new IllegalArgumentException("Could not convert " + networkType + " to int");
        }
    }

    @TypeConverter
    public static int stateToInt(WorkInfo.State state) {
        switch (C06531.$SwitchMap$androidx$work$WorkInfo$State[state.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new IllegalArgumentException("Could not convert " + state + " to int");
        }
    }
}
