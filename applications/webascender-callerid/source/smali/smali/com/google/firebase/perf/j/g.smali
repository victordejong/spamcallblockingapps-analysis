.class public final Lcom/google/firebase/perf/j/g;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/j/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lcom/google/firebase/perf/j/g;",
        "Lcom/google/firebase/perf/j/g$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANDROID_MEMORY_READINGS_FIELD_NUMBER:I = 0x4

.field public static final CPU_METRIC_READINGS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/g;

.field public static final GAUGE_METADATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lcom/google/firebase/perf/j/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private androidMemoryReadings_:Lcom/google/protobuf/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$i<",
            "Lcom/google/firebase/perf/j/b;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private cpuMetricReadings_:Lcom/google/protobuf/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$i<",
            "Lcom/google/firebase/perf/j/e;",
            ">;"
        }
    .end annotation
.end field

.field private gaugeMetadata_:Lcom/google/firebase/perf/j/f;

.field private sessionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/perf/j/g;

    invoke-direct {v0}, Lcom/google/firebase/perf/j/g;-><init>()V

    .line 2
    sput-object v0, Lcom/google/firebase/perf/j/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/g;

    .line 3
    const-class v1, Lcom/google/firebase/perf/j/g;

    invoke-static {v1, v0}, Lcom/google/protobuf/y;->U(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/firebase/perf/j/g;->sessionId_:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/protobuf/y;->F()Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/g;->cpuMetricReadings_:Lcom/google/protobuf/a0$i;

    .line 4
    invoke-static {}, Lcom/google/protobuf/y;->F()Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/g;->androidMemoryReadings_:Lcom/google/protobuf/a0$i;

    return-void
.end method

.method static synthetic W()Lcom/google/firebase/perf/j/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/g;

    return-object v0
.end method

.method static synthetic X(Lcom/google/firebase/perf/j/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/g;->n0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y(Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/g;->b0(Lcom/google/firebase/perf/j/b;)V

    return-void
.end method

.method static synthetic Z(Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/g;->m0(Lcom/google/firebase/perf/j/f;)V

    return-void
.end method

.method static synthetic a0(Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/g;->c0(Lcom/google/firebase/perf/j/e;)V

    return-void
.end method

.method private b0(Lcom/google/firebase/perf/j/b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/perf/j/g;->d0()V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/perf/j/g;->androidMemoryReadings_:Lcom/google/protobuf/a0$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c0(Lcom/google/firebase/perf/j/e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/perf/j/g;->e0()V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/perf/j/g;->cpuMetricReadings_:Lcom/google/protobuf/a0$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/g;->androidMemoryReadings_:Lcom/google/protobuf/a0$i;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/a0$i;->s1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/y;->M(Lcom/google/protobuf/a0$i;)Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/g;->androidMemoryReadings_:Lcom/google/protobuf/a0$i;

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/g;->cpuMetricReadings_:Lcom/google/protobuf/a0$i;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/a0$i;->s1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/y;->M(Lcom/google/protobuf/a0$i;)Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/g;->cpuMetricReadings_:Lcom/google/protobuf/a0$i;

    :cond_0
    return-void
.end method

.method public static h0()Lcom/google/firebase/perf/j/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/g;

    return-object v0
.end method

.method public static l0()Lcom/google/firebase/perf/j/g$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/g;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->z()Lcom/google/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/j/g$b;

    return-object v0
.end method

.method private m0(Lcom/google/firebase/perf/j/f;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/j/g;->gaugeMetadata_:Lcom/google/firebase/perf/j/f;

    .line 3
    iget p1, p0, Lcom/google/firebase/perf/j/g;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/j/g;->bitField0_:I

    return-void
.end method

.method private n0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/firebase/perf/j/g;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/j/g;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/perf/j/g;->sessionId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/firebase/perf/j/g$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/j/g;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/firebase/perf/j/g;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/j/g;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lcom/google/firebase/perf/j/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/g;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lcom/google/firebase/perf/j/g;->PARSER:Lcom/google/protobuf/z0;

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
    sget-object p1, Lcom/google/firebase/perf/j/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/g;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sessionId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "cpuMetricReadings_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/google/firebase/perf/j/e;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gaugeMetadata_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "androidMemoryReadings_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/google/firebase/perf/j/b;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u001b"

    .line 12
    sget-object p3, Lcom/google/firebase/perf/j/g;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/g;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/j/g$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/j/g$b;-><init>(Lcom/google/firebase/perf/j/g$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/j/g;

    invoke-direct {p1}, Lcom/google/firebase/perf/j/g;-><init>()V

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

.method public f0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/g;->androidMemoryReadings_:Lcom/google/protobuf/a0$i;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public g0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/g;->cpuMetricReadings_:Lcom/google/protobuf/a0$i;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public i0()Lcom/google/firebase/perf/j/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/g;->gaugeMetadata_:Lcom/google/firebase/perf/j/f;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/j/f;->b0()Lcom/google/firebase/perf/j/f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public j0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/g;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k0()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/g;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
