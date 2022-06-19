.class public final Lg/f/c/a/f0/w0;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/f0/w0$b;,
        Lg/f/c/a/f0/w0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lg/f/c/a/f0/w0;",
        "Lg/f/c/a/f0/w0$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lg/f/c/a/f0/w0;

.field public static final KEY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lg/f/c/a/f0/w0;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARY_KEY_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private key_:Lcom/google/protobuf/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$i<",
            "Lg/f/c/a/f0/w0$c;",
            ">;"
        }
    .end annotation
.end field

.field private primaryKeyId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/c/a/f0/w0;

    invoke-direct {v0}, Lg/f/c/a/f0/w0;-><init>()V

    .line 2
    sput-object v0, Lg/f/c/a/f0/w0;->DEFAULT_INSTANCE:Lg/f/c/a/f0/w0;

    .line 3
    const-class v1, Lg/f/c/a/f0/w0;

    invoke-static {v1, v0}, Lcom/google/protobuf/y;->U(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/y;->F()Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/f0/w0;->key_:Lcom/google/protobuf/a0$i;

    return-void
.end method

.method static synthetic W()Lg/f/c/a/f0/w0;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/w0;->DEFAULT_INSTANCE:Lg/f/c/a/f0/w0;

    return-object v0
.end method

.method static synthetic X(Lg/f/c/a/f0/w0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/w0;->g0(I)V

    return-void
.end method

.method static synthetic Y(Lg/f/c/a/f0/w0;Lg/f/c/a/f0/w0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/w0;->Z(Lg/f/c/a/f0/w0$c;)V

    return-void
.end method

.method private Z(Lg/f/c/a/f0/w0$c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lg/f/c/a/f0/w0;->a0()V

    .line 3
    iget-object v0, p0, Lg/f/c/a/f0/w0;->key_:Lcom/google/protobuf/a0$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/w0;->key_:Lcom/google/protobuf/a0$i;

    invoke-interface {v0}, Lcom/google/protobuf/a0$i;->s1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/f/c/a/f0/w0;->key_:Lcom/google/protobuf/a0$i;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/y;->M(Lcom/google/protobuf/a0$i;)Lcom/google/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/f0/w0;->key_:Lcom/google/protobuf/a0$i;

    :cond_0
    return-void
.end method

.method public static e0()Lg/f/c/a/f0/w0$b;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/w0;->DEFAULT_INSTANCE:Lg/f/c/a/f0/w0;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->z()Lcom/google/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lg/f/c/a/f0/w0$b;

    return-object v0
.end method

.method public static f0([BLcom/google/protobuf/p;)Lg/f/c/a/f0/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/f0/w0;->DEFAULT_INSTANCE:Lg/f/c/a/f0/w0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/y;->Q(Lcom/google/protobuf/y;[BLcom/google/protobuf/p;)Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/w0;

    return-object p0
.end method

.method private g0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/f/c/a/f0/w0;->primaryKeyId_:I

    return-void
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lg/f/c/a/f0/w0$a;->a:[I

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
    sget-object p1, Lg/f/c/a/f0/w0;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lg/f/c/a/f0/w0;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lg/f/c/a/f0/w0;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lg/f/c/a/f0/w0;->DEFAULT_INSTANCE:Lg/f/c/a/f0/w0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lg/f/c/a/f0/w0;->PARSER:Lcom/google/protobuf/z0;

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
    sget-object p1, Lg/f/c/a/f0/w0;->DEFAULT_INSTANCE:Lg/f/c/a/f0/w0;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "primaryKeyId_"

    aput-object v0, p1, p3

    const-string p3, "key_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lg/f/c/a/f0/w0$c;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 12
    sget-object p3, Lg/f/c/a/f0/w0;->DEFAULT_INSTANCE:Lg/f/c/a/f0/w0;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lg/f/c/a/f0/w0$b;

    invoke-direct {p1, p3}, Lg/f/c/a/f0/w0$b;-><init>(Lg/f/c/a/f0/w0$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lg/f/c/a/f0/w0;

    invoke-direct {p1}, Lg/f/c/a/f0/w0;-><init>()V

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

.method public b0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/w0;->key_:Lcom/google/protobuf/a0$i;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/f/c/a/f0/w0$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/f0/w0;->key_:Lcom/google/protobuf/a0$i;

    return-object v0
.end method

.method public d0()I
    .locals 1

    .line 1
    iget v0, p0, Lg/f/c/a/f0/w0;->primaryKeyId_:I

    return v0
.end method
