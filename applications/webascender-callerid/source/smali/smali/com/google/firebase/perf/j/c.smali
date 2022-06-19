.class public final Lcom/google/firebase/perf/j/c;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/j/c$b;,
        Lcom/google/firebase/perf/j/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lcom/google/firebase/perf/j/c;",
        "Lcom/google/firebase/perf/j/c$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANDROID_APP_INFO_FIELD_NUMBER:I = 0x3

.field public static final APPLICATION_PROCESS_STATE_FIELD_NUMBER:I = 0x5

.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/c;

.field public static final GOOGLE_APP_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lcom/google/firebase/perf/j/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private androidAppInfo_:Lcom/google/firebase/perf/j/a;

.field private appInstanceId_:Ljava/lang/String;

.field private applicationProcessState_:I

.field private bitField0_:I

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

.field private googleAppId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/perf/j/c;

    invoke-direct {v0}, Lcom/google/firebase/perf/j/c;-><init>()V

    .line 2
    sput-object v0, Lcom/google/firebase/perf/j/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/c;

    .line 3
    const-class v1, Lcom/google/firebase/perf/j/c;

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

    iput-object v0, p0, Lcom/google/firebase/perf/j/c;->customAttributes_:Lcom/google/protobuf/l0;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/firebase/perf/j/c;->googleAppId_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/firebase/perf/j/c;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic W()Lcom/google/firebase/perf/j/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/c;

    return-object v0
.end method

.method static synthetic X(Lcom/google/firebase/perf/j/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/c;->o0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y(Lcom/google/firebase/perf/j/c;Lcom/google/firebase/perf/j/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/c;->n0(Lcom/google/firebase/perf/j/d;)V

    return-void
.end method

.method static synthetic Z(Lcom/google/firebase/perf/j/c;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/c;->e0()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a0(Lcom/google/firebase/perf/j/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/c;->m0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b0(Lcom/google/firebase/perf/j/c;Lcom/google/firebase/perf/j/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/j/c;->l0(Lcom/google/firebase/perf/j/a;)V

    return-void
.end method

.method public static d0()Lcom/google/firebase/perf/j/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/c;

    return-object v0
.end method

.method private e0()Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/google/firebase/perf/j/c;->j0()Lcom/google/protobuf/l0;

    move-result-object v0

    return-object v0
.end method

.method private j0()Lcom/google/protobuf/l0;
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
    iget-object v0, p0, Lcom/google/firebase/perf/j/c;->customAttributes_:Lcom/google/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/l0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/j/c;->customAttributes_:Lcom/google/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/l0;->n()Lcom/google/protobuf/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/j/c;->customAttributes_:Lcom/google/protobuf/l0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/j/c;->customAttributes_:Lcom/google/protobuf/l0;

    return-object v0
.end method

.method public static k0()Lcom/google/firebase/perf/j/c$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/c;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->z()Lcom/google/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/j/c$b;

    return-object v0
.end method

.method private l0(Lcom/google/firebase/perf/j/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/j/c;->androidAppInfo_:Lcom/google/firebase/perf/j/a;

    .line 3
    iget p1, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    return-void
.end method

.method private m0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/perf/j/c;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method private n0(Lcom/google/firebase/perf/j/d;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/perf/j/d;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/perf/j/c;->applicationProcessState_:I

    .line 2
    iget p1, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    return-void
.end method

.method private o0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/perf/j/c;->googleAppId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/firebase/perf/j/c$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/j/c;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/firebase/perf/j/c;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/j/c;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lcom/google/firebase/perf/j/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/c;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lcom/google/firebase/perf/j/c;->PARSER:Lcom/google/protobuf/z0;

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
    sget-object p1, Lcom/google/firebase/perf/j/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/c;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "googleAppId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "appInstanceId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "androidAppInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "applicationProcessState_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 11
    invoke-static {}, Lcom/google/firebase/perf/j/d;->internalGetVerifier()Lcom/google/protobuf/a0$e;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    sget-object p3, Lcom/google/firebase/perf/j/c$c;->a:Lcom/google/protobuf/k0;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0005\u100c\u0003\u00062"

    .line 12
    sget-object p3, Lcom/google/firebase/perf/j/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/j/c;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/j/c$b;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/j/c$b;-><init>(Lcom/google/firebase/perf/j/c$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/j/c;

    invoke-direct {p1}, Lcom/google/firebase/perf/j/c;-><init>()V

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

.method public c0()Lcom/google/firebase/perf/j/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/j/c;->androidAppInfo_:Lcom/google/firebase/perf/j/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/j/a;->a0()Lcom/google/firebase/perf/j/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i0()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/j/c;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
