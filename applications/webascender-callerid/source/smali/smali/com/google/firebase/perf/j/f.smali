.class public final Lcom/google/firebase/perf/j/f;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/j/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lcom/google/firebase/perf/j/f;",
        "Lcom/google/firebase/perf/j/f$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CPU_CLOCK_RATE_KHZ_FIELD_NUMBER:I = 0x2

.field public static final CPU_PROCESSOR_COUNT_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/f;

.field public static final DEVICE_RAM_SIZE_KB_FIELD_NUMBER:I = 0x3

.field public static final MAX_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x4

.field public static final MAX_ENCOURAGED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lcom/google/firebase/perf/j/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROCESS_NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private cpuClockRateKhz_:I

.field private cpuProcessorCount_:I

.field private deviceRamSizeKb_:I

.field private maxAppJavaHeapMemoryKb_:I

.field private maxEncouragedAppJavaHeapMemoryKb_:I

.field private processName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/perf/j/f;

    invoke-direct {v0}, Lcom/google/firebase/perf/j/f;-><init>()V

    .line 2
    sput-object v0, Lcom/google/firebase/perf/j/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/f;

    .line 3
    const-class v1, Lcom/google/firebase/perf/j/f;

    invoke-static {v1, v0}, Lcom/google/protobuf/y;->U(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/firebase/perf/j/f;->processName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic W()Lcom/google/firebase/perf/j/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/f;

    return-object v0
.end method

.method static synthetic X(Lcom/google/firebase/perf/j/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/f;->h0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y(Lcom/google/firebase/perf/j/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/f;->f0(I)V

    return-void
.end method

.method static synthetic Z(Lcom/google/firebase/perf/j/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/f;->g0(I)V

    return-void
.end method

.method static synthetic a0(Lcom/google/firebase/perf/j/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/f;->e0(I)V

    return-void
.end method

.method public static b0()Lcom/google/firebase/perf/j/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/f;

    return-object v0
.end method

.method public static d0()Lcom/google/firebase/perf/j/f$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/f;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->z()Lcom/google/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/j/f$b;

    return-object v0
.end method

.method private e0(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/perf/j/f;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/firebase/perf/j/f;->deviceRamSizeKb_:I

    return-void
.end method

.method private f0(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/firebase/perf/j/f;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/firebase/perf/j/f;->maxAppJavaHeapMemoryKb_:I

    return-void
.end method

.method private g0(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/firebase/perf/j/f;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/firebase/perf/j/f;->maxEncouragedAppJavaHeapMemoryKb_:I

    return-void
.end method

.method private h0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/firebase/perf/j/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/j/f;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/perf/j/f;->processName_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/firebase/perf/j/f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/j/f;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/firebase/perf/j/f;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/j/f;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lcom/google/firebase/perf/j/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/f;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lcom/google/firebase/perf/j/f;->PARSER:Lcom/google/protobuf/z0;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/j/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/f;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "processName_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "cpuClockRateKhz_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "deviceRamSizeKb_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "maxAppJavaHeapMemoryKb_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "maxEncouragedAppJavaHeapMemoryKb_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "cpuProcessorCount_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1004\u0001\u0003\u1004\u0003\u0004\u1004\u0004\u0005\u1004\u0005\u0006\u1004\u0002"

    .line 11
    sget-object p3, Lcom/google/firebase/perf/j/f;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/f;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/j/f$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/j/f$b;-><init>(Lcom/google/firebase/perf/j/f$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/j/f;

    invoke-direct {p1}, Lcom/google/firebase/perf/j/f;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/f;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
