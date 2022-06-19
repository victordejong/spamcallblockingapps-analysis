.class public final Lcom/google/firebase/perf/j/i;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/j/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/j/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lcom/google/firebase/perf/j/i;",
        "Lcom/google/firebase/perf/j/i$b;",
        ">;",
        "Lcom/google/firebase/perf/j/j;"
    }
.end annotation


# static fields
.field public static final APPLICATION_INFO_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/i;

.field public static final GAUGE_METRIC_FIELD_NUMBER:I = 0x4

.field public static final NETWORK_REQUEST_METRIC_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lcom/google/firebase/perf/j/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRACE_METRIC_FIELD_NUMBER:I = 0x2

.field public static final TRANSPORT_INFO_FIELD_NUMBER:I = 0x5


# instance fields
.field private applicationInfo_:Lcom/google/firebase/perf/j/c;

.field private bitField0_:I

.field private gaugeMetric_:Lcom/google/firebase/perf/j/g;

.field private networkRequestMetric_:Lcom/google/firebase/perf/j/h;

.field private traceMetric_:Lcom/google/firebase/perf/j/m;

.field private transportInfo_:Lcom/google/firebase/perf/j/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/perf/j/i;

    invoke-direct {v0}, Lcom/google/firebase/perf/j/i;-><init>()V

    .line 2
    sput-object v0, Lcom/google/firebase/perf/j/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/i;

    .line 3
    const-class v1, Lcom/google/firebase/perf/j/i;

    invoke-static {v1, v0}, Lcom/google/protobuf/y;->U(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    return-void
.end method

.method static synthetic W()Lcom/google/firebase/perf/j/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/i;

    return-object v0
.end method

.method static synthetic X(Lcom/google/firebase/perf/j/i;Lcom/google/firebase/perf/j/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/i;->e0(Lcom/google/firebase/perf/j/c;)V

    return-void
.end method

.method static synthetic Y(Lcom/google/firebase/perf/j/i;Lcom/google/firebase/perf/j/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/i;->f0(Lcom/google/firebase/perf/j/g;)V

    return-void
.end method

.method static synthetic Z(Lcom/google/firebase/perf/j/i;Lcom/google/firebase/perf/j/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/i;->h0(Lcom/google/firebase/perf/j/m;)V

    return-void
.end method

.method static synthetic a0(Lcom/google/firebase/perf/j/i;Lcom/google/firebase/perf/j/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/i;->g0(Lcom/google/firebase/perf/j/h;)V

    return-void
.end method

.method public static d0()Lcom/google/firebase/perf/j/i$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/i;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->z()Lcom/google/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/j/i$b;

    return-object v0
.end method

.method private e0(Lcom/google/firebase/perf/j/c;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/j/i;->applicationInfo_:Lcom/google/firebase/perf/j/c;

    .line 3
    iget p1, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    return-void
.end method

.method private f0(Lcom/google/firebase/perf/j/g;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/j/i;->gaugeMetric_:Lcom/google/firebase/perf/j/g;

    .line 3
    iget p1, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    return-void
.end method

.method private g0(Lcom/google/firebase/perf/j/h;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/j/i;->networkRequestMetric_:Lcom/google/firebase/perf/j/h;

    .line 3
    iget p1, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    return-void
.end method

.method private h0(Lcom/google/firebase/perf/j/m;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/j/i;->traceMetric_:Lcom/google/firebase/perf/j/m;

    .line 3
    iget p1, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/firebase/perf/j/i$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/j/i;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/firebase/perf/j/i;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/j/i;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lcom/google/firebase/perf/j/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/i;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lcom/google/firebase/perf/j/i;->PARSER:Lcom/google/protobuf/z0;

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
    sget-object p1, Lcom/google/firebase/perf/j/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/i;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "applicationInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "traceMetric_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "networkRequestMetric_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gaugeMetric_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "transportInfo_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004"

    .line 11
    sget-object p3, Lcom/google/firebase/perf/j/i;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/i;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/j/i$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/j/i$b;-><init>(Lcom/google/firebase/perf/j/i$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/j/i;

    invoke-direct {p1}, Lcom/google/firebase/perf/j/i;-><init>()V

    return-object p1

    nop

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

.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b0()Lcom/google/firebase/perf/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/i;->applicationInfo_:Lcom/google/firebase/perf/j/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/j/c;->d0()Lcom/google/firebase/perf/j/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c0()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Lcom/google/firebase/perf/j/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/i;->traceMetric_:Lcom/google/firebase/perf/j/m;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/j/m;->p0()Lcom/google/firebase/perf/j/m;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Lcom/google/firebase/perf/j/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/i;->networkRequestMetric_:Lcom/google/firebase/perf/j/h;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/j/h;->o0()Lcom/google/firebase/perf/j/h;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public n()Lcom/google/firebase/perf/j/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/i;->gaugeMetric_:Lcom/google/firebase/perf/j/g;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/j/g;->h0()Lcom/google/firebase/perf/j/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method
