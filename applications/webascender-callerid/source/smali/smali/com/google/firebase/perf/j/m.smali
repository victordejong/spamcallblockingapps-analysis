.class public final Lcom/google/firebase/perf/j/m;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/j/m$b;,
        Lcom/google/firebase/perf/j/m$d;,
        Lcom/google/firebase/perf/j/m$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lcom/google/firebase/perf/j/m;",
        "Lcom/google/firebase/perf/j/m$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x4

.field public static final COUNTERS_FIELD_NUMBER:I = 0x6

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/m;

.field public static final DURATION_US_FIELD_NUMBER:I = 0x5

.field public static final IS_AUTO_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lcom/google/firebase/perf/j/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0x9

.field public static final SUBTRACES_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

.field private counters_:Lcom/google/protobuf/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private customAttributes_:Lcom/google/protobuf/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs_:J

.field private isAuto_:Z

.field private name_:Ljava/lang/String;

.field private perfSessions_:Lcom/google/protobuf/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$i<",
            "Lcom/google/firebase/perf/j/k;",
            ">;"
        }
    .end annotation
.end field

.field private subtraces_:Lcom/google/protobuf/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$i<",
            "Lcom/google/firebase/perf/j/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/perf/j/m;

    invoke-direct {v0}, Lcom/google/firebase/perf/j/m;-><init>()V

    .line 2
    sput-object v0, Lcom/google/firebase/perf/j/m;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/m;

    .line 3
    const-class v1, Lcom/google/firebase/perf/j/m;

    invoke-static {v1, v0}, Lcom/google/protobuf/y;->U(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/l0;->f()Lcom/google/protobuf/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/m;->counters_:Lcom/google/protobuf/l0;

    .line 3
    invoke-static {}, Lcom/google/protobuf/l0;->f()Lcom/google/protobuf/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/m;->customAttributes_:Lcom/google/protobuf/l0;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/firebase/perf/j/m;->name_:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/protobuf/y;->F()Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/m;->subtraces_:Lcom/google/protobuf/a0$i;

    .line 6
    invoke-static {}, Lcom/google/protobuf/y;->F()Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/m;->perfSessions_:Lcom/google/protobuf/a0$i;

    return-void
.end method

.method private A0()Lcom/google/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->customAttributes_:Lcom/google/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/l0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->customAttributes_:Lcom/google/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/l0;->n()Lcom/google/protobuf/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/m;->customAttributes_:Lcom/google/protobuf/l0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->customAttributes_:Lcom/google/protobuf/l0;

    return-object v0
.end method

.method public static B0()Lcom/google/firebase/perf/j/m$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/m;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/m;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->z()Lcom/google/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/j/m$b;

    return-object v0
.end method

.method private C0(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/j/m;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/google/firebase/perf/j/m;->clientStartTimeUs_:J

    return-void
.end method

.method private D0(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/perf/j/m;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/google/firebase/perf/j/m;->durationUs_:J

    return-void
.end method

.method private E0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/firebase/perf/j/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/j/m;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/perf/j/m;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic W()Lcom/google/firebase/perf/j/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/m;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/m;

    return-object v0
.end method

.method static synthetic X(Lcom/google/firebase/perf/j/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/m;->E0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y(Lcom/google/firebase/perf/j/m;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->r0()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Z(Lcom/google/firebase/perf/j/m;Lcom/google/firebase/perf/j/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/m;->j0(Lcom/google/firebase/perf/j/m;)V

    return-void
.end method

.method static synthetic a0(Lcom/google/firebase/perf/j/m;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/m;->h0(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic b0(Lcom/google/firebase/perf/j/m;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->s0()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c0(Lcom/google/firebase/perf/j/m;Lcom/google/firebase/perf/j/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/m;->i0(Lcom/google/firebase/perf/j/k;)V

    return-void
.end method

.method static synthetic d0(Lcom/google/firebase/perf/j/m;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/m;->g0(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic e0(Lcom/google/firebase/perf/j/m;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/j/m;->C0(J)V

    return-void
.end method

.method static synthetic f0(Lcom/google/firebase/perf/j/m;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/j/m;->D0(J)V

    return-void
.end method

.method private g0(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/j/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->k0()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->perfSessions_:Lcom/google/protobuf/a0$i;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->j(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private h0(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/j/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->l0()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->subtraces_:Lcom/google/protobuf/a0$i;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->j(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private i0(Lcom/google/firebase/perf/j/k;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->k0()V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->perfSessions_:Lcom/google/protobuf/a0$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j0(Lcom/google/firebase/perf/j/m;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->l0()V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->subtraces_:Lcom/google/protobuf/a0$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->perfSessions_:Lcom/google/protobuf/a0$i;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/a0$i;->s1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/y;->M(Lcom/google/protobuf/a0$i;)Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/m;->perfSessions_:Lcom/google/protobuf/a0$i;

    :cond_0
    return-void
.end method

.method private l0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->subtraces_:Lcom/google/protobuf/a0$i;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/a0$i;->s1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/y;->M(Lcom/google/protobuf/a0$i;)Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/m;->subtraces_:Lcom/google/protobuf/a0$i;

    :cond_0
    return-void
.end method

.method public static p0()Lcom/google/firebase/perf/j/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/m;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/m;

    return-object v0
.end method

.method private r0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->z0()Lcom/google/protobuf/l0;

    move-result-object v0

    return-object v0
.end method

.method private s0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->A0()Lcom/google/protobuf/l0;

    move-result-object v0

    return-object v0
.end method

.method private x0()Lcom/google/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->counters_:Lcom/google/protobuf/l0;

    return-object v0
.end method

.method private y0()Lcom/google/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->customAttributes_:Lcom/google/protobuf/l0;

    return-object v0
.end method

.method private z0()Lcom/google/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->counters_:Lcom/google/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/l0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->counters_:Lcom/google/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/l0;->n()Lcom/google/protobuf/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/m;->counters_:Lcom/google/protobuf/l0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->counters_:Lcom/google/protobuf/l0;

    return-object v0
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class p2, Lcom/google/firebase/perf/j/m;

    sget-object p3, Lcom/google/firebase/perf/j/m$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/j/m;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/j/m;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lcom/google/firebase/perf/j/m;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/m;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lcom/google/firebase/perf/j/m;->PARSER:Lcom/google/protobuf/z0;

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
    sget-object p1, Lcom/google/firebase/perf/j/m;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/m;

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "bitField0_"

    aput-object v1, p1, v0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "isAuto_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "clientStartTimeUs_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "durationUs_"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "counters_"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    .line 11
    sget-object v0, Lcom/google/firebase/perf/j/m$c;->a:Lcom/google/protobuf/k0;

    aput-object v0, p1, p3

    const/4 p3, 0x7

    const-string v0, "subtraces_"

    aput-object v0, p1, p3

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const/16 p2, 0x9

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lcom/google/firebase/perf/j/m$d;->a:Lcom/google/protobuf/k0;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "perfSessions_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lcom/google/firebase/perf/j/k;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0002\u0002\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0004\u1002\u0002\u0005\u1002\u0003\u00062\u0007\u001b\u00082\t\u001b"

    .line 12
    sget-object p3, Lcom/google/firebase/perf/j/m;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/m;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/j/m$b;

    invoke-direct {p1, v0}, Lcom/google/firebase/perf/j/m$b;-><init>(Lcom/google/firebase/perf/j/m$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/j/m;

    invoke-direct {p1}, Lcom/google/firebase/perf/j/m;-><init>()V

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

.method public m0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->x0()Lcom/google/protobuf/l0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public n0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->x0()Lcom/google/protobuf/l0;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public o0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m;->y0()Lcom/google/protobuf/l0;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public q0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/j/m;->durationUs_:J

    return-wide v0
.end method

.method public t0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public u0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/j/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->perfSessions_:Lcom/google/protobuf/a0$i;

    return-object v0
.end method

.method public v0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/j/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/m;->subtraces_:Lcom/google/protobuf/a0$i;

    return-object v0
.end method

.method public w0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/m;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
