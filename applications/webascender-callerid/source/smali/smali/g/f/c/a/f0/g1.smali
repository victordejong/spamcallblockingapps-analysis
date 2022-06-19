.class public final Lg/f/c/a/f0/g1;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/f0/g1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lg/f/c/a/f0/g1;",
        "Lg/f/c/a/f0/g1$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CRT_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lg/f/c/a/f0/g1;

.field public static final DP_FIELD_NUMBER:I = 0x6

.field public static final DQ_FIELD_NUMBER:I = 0x7

.field public static final D_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lg/f/c/a/f0/g1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x2

.field public static final P_FIELD_NUMBER:I = 0x4

.field public static final Q_FIELD_NUMBER:I = 0x5

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private crt_:Lcom/google/protobuf/i;

.field private d_:Lcom/google/protobuf/i;

.field private dp_:Lcom/google/protobuf/i;

.field private dq_:Lcom/google/protobuf/i;

.field private p_:Lcom/google/protobuf/i;

.field private publicKey_:Lg/f/c/a/f0/h1;

.field private q_:Lcom/google/protobuf/i;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/c/a/f0/g1;

    invoke-direct {v0}, Lg/f/c/a/f0/g1;-><init>()V

    .line 2
    sput-object v0, Lg/f/c/a/f0/g1;->DEFAULT_INSTANCE:Lg/f/c/a/f0/g1;

    .line 3
    const-class v1, Lg/f/c/a/f0/g1;

    invoke-static {v1, v0}, Lcom/google/protobuf/y;->U(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    .line 2
    sget-object v0, Lcom/google/protobuf/i;->g:Lcom/google/protobuf/i;

    iput-object v0, p0, Lg/f/c/a/f0/g1;->d_:Lcom/google/protobuf/i;

    .line 3
    iput-object v0, p0, Lg/f/c/a/f0/g1;->p_:Lcom/google/protobuf/i;

    .line 4
    iput-object v0, p0, Lg/f/c/a/f0/g1;->q_:Lcom/google/protobuf/i;

    .line 5
    iput-object v0, p0, Lg/f/c/a/f0/g1;->dp_:Lcom/google/protobuf/i;

    .line 6
    iput-object v0, p0, Lg/f/c/a/f0/g1;->dq_:Lcom/google/protobuf/i;

    .line 7
    iput-object v0, p0, Lg/f/c/a/f0/g1;->crt_:Lcom/google/protobuf/i;

    return-void
.end method

.method static synthetic W()Lg/f/c/a/f0/g1;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/g1;->DEFAULT_INSTANCE:Lg/f/c/a/f0/g1;

    return-object v0
.end method

.method static synthetic X(Lg/f/c/a/f0/g1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/g1;->w0(I)V

    return-void
.end method

.method static synthetic Y(Lg/f/c/a/f0/g1;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/g1;->v0(Lcom/google/protobuf/i;)V

    return-void
.end method

.method static synthetic Z(Lg/f/c/a/f0/g1;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/g1;->r0(Lcom/google/protobuf/i;)V

    return-void
.end method

.method static synthetic a0(Lg/f/c/a/f0/g1;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/g1;->s0(Lcom/google/protobuf/i;)V

    return-void
.end method

.method static synthetic b0(Lg/f/c/a/f0/g1;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/g1;->p0(Lcom/google/protobuf/i;)V

    return-void
.end method

.method static synthetic c0(Lg/f/c/a/f0/g1;Lg/f/c/a/f0/h1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/g1;->u0(Lg/f/c/a/f0/h1;)V

    return-void
.end method

.method static synthetic d0(Lg/f/c/a/f0/g1;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/g1;->q0(Lcom/google/protobuf/i;)V

    return-void
.end method

.method static synthetic e0(Lg/f/c/a/f0/g1;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/g1;->t0(Lcom/google/protobuf/i;)V

    return-void
.end method

.method public static n0()Lg/f/c/a/f0/g1$b;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/g1;->DEFAULT_INSTANCE:Lg/f/c/a/f0/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->z()Lcom/google/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lg/f/c/a/f0/g1$b;

    return-object v0
.end method

.method public static o0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/f0/g1;->DEFAULT_INSTANCE:Lg/f/c/a/f0/g1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/y;->P(Lcom/google/protobuf/y;Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/g1;

    return-object p0
.end method

.method private p0(Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lg/f/c/a/f0/g1;->crt_:Lcom/google/protobuf/i;

    return-void
.end method

.method private q0(Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lg/f/c/a/f0/g1;->d_:Lcom/google/protobuf/i;

    return-void
.end method

.method private r0(Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lg/f/c/a/f0/g1;->dp_:Lcom/google/protobuf/i;

    return-void
.end method

.method private s0(Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lg/f/c/a/f0/g1;->dq_:Lcom/google/protobuf/i;

    return-void
.end method

.method private t0(Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lg/f/c/a/f0/g1;->p_:Lcom/google/protobuf/i;

    return-void
.end method

.method private u0(Lg/f/c/a/f0/h1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lg/f/c/a/f0/g1;->publicKey_:Lg/f/c/a/f0/h1;

    return-void
.end method

.method private v0(Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lg/f/c/a/f0/g1;->q_:Lcom/google/protobuf/i;

    return-void
.end method

.method private w0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/f/c/a/f0/g1;->version_:I

    return-void
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lg/f/c/a/f0/g1$a;->a:[I

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
    sget-object p1, Lg/f/c/a/f0/g1;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lg/f/c/a/f0/g1;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lg/f/c/a/f0/g1;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lg/f/c/a/f0/g1;->DEFAULT_INSTANCE:Lg/f/c/a/f0/g1;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lg/f/c/a/f0/g1;->PARSER:Lcom/google/protobuf/z0;

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
    sget-object p1, Lg/f/c/a/f0/g1;->DEFAULT_INSTANCE:Lg/f/c/a/f0/g1;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "version_"

    aput-object v0, p1, p3

    const-string p3, "publicKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "d_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "p_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "q_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "dp_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "dq_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "crt_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n\u0005\n\u0006\n\u0007\n\u0008\n"

    .line 11
    sget-object p3, Lg/f/c/a/f0/g1;->DEFAULT_INSTANCE:Lg/f/c/a/f0/g1;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lg/f/c/a/f0/g1$b;

    invoke-direct {p1, p3}, Lg/f/c/a/f0/g1$b;-><init>(Lg/f/c/a/f0/g1$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lg/f/c/a/f0/g1;

    invoke-direct {p1}, Lg/f/c/a/f0/g1;-><init>()V

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

.method public f0()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/g1;->crt_:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public g0()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/g1;->d_:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public h0()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/g1;->dp_:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public i0()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/g1;->dq_:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public j0()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/g1;->p_:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public k0()Lg/f/c/a/f0/h1;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/g1;->publicKey_:Lg/f/c/a/f0/h1;

    if-nez v0, :cond_0

    invoke-static {}, Lg/f/c/a/f0/h1;->b0()Lg/f/c/a/f0/h1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public l0()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/g1;->q_:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public m0()I
    .locals 1

    .line 1
    iget v0, p0, Lg/f/c/a/f0/g1;->version_:I

    return v0
.end method
