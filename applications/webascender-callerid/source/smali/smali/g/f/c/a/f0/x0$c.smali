.class public final Lg/f/c/a/f0/x0$c;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/f0/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/f0/x0$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lg/f/c/a/f0/x0$c;",
        "Lg/f/c/a/f0/x0$c$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lg/f/c/a/f0/x0$c;

.field public static final KEY_ID_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_PREFIX_TYPE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lg/f/c/a/f0/x0$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyId_:I

.field private outputPrefixType_:I

.field private status_:I

.field private typeUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/c/a/f0/x0$c;

    invoke-direct {v0}, Lg/f/c/a/f0/x0$c;-><init>()V

    .line 2
    sput-object v0, Lg/f/c/a/f0/x0$c;->DEFAULT_INSTANCE:Lg/f/c/a/f0/x0$c;

    .line 3
    const-class v1, Lg/f/c/a/f0/x0$c;

    invoke-static {v1, v0}, Lcom/google/protobuf/y;->U(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/f/c/a/f0/x0$c;->typeUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic W()Lg/f/c/a/f0/x0$c;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/x0$c;->DEFAULT_INSTANCE:Lg/f/c/a/f0/x0$c;

    return-object v0
.end method

.method static synthetic X(Lg/f/c/a/f0/x0$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/x0$c;->f0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y(Lg/f/c/a/f0/x0$c;Lg/f/c/a/f0/c1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/x0$c;->d0(Lg/f/c/a/f0/c1;)V

    return-void
.end method

.method static synthetic Z(Lg/f/c/a/f0/x0$c;Lg/f/c/a/f0/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/x0$c;->e0(Lg/f/c/a/f0/t0;)V

    return-void
.end method

.method static synthetic a0(Lg/f/c/a/f0/x0$c;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/f0/x0$c;->c0(I)V

    return-void
.end method

.method public static b0()Lg/f/c/a/f0/x0$c$a;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/x0$c;->DEFAULT_INSTANCE:Lg/f/c/a/f0/x0$c;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->z()Lcom/google/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lg/f/c/a/f0/x0$c$a;

    return-object v0
.end method

.method private c0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/f/c/a/f0/x0$c;->keyId_:I

    return-void
.end method

.method private d0(Lg/f/c/a/f0/c1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/c1;->getNumber()I

    move-result p1

    iput p1, p0, Lg/f/c/a/f0/x0$c;->outputPrefixType_:I

    return-void
.end method

.method private e0(Lg/f/c/a/f0/t0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/t0;->getNumber()I

    move-result p1

    iput p1, p0, Lg/f/c/a/f0/x0$c;->status_:I

    return-void
.end method

.method private f0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lg/f/c/a/f0/x0$c;->typeUrl_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lg/f/c/a/f0/x0$a;->a:[I

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
    sget-object p1, Lg/f/c/a/f0/x0$c;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lg/f/c/a/f0/x0$c;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lg/f/c/a/f0/x0$c;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lg/f/c/a/f0/x0$c;->DEFAULT_INSTANCE:Lg/f/c/a/f0/x0$c;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lg/f/c/a/f0/x0$c;->PARSER:Lcom/google/protobuf/z0;

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
    sget-object p1, Lg/f/c/a/f0/x0$c;->DEFAULT_INSTANCE:Lg/f/c/a/f0/x0$c;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "typeUrl_"

    aput-object v0, p1, p3

    const-string p3, "status_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "keyId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "outputPrefixType_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 11
    sget-object p3, Lg/f/c/a/f0/x0$c;->DEFAULT_INSTANCE:Lg/f/c/a/f0/x0$c;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lg/f/c/a/f0/x0$c$a;

    invoke-direct {p1, p3}, Lg/f/c/a/f0/x0$c$a;-><init>(Lg/f/c/a/f0/x0$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lg/f/c/a/f0/x0$c;

    invoke-direct {p1}, Lg/f/c/a/f0/x0$c;-><init>()V

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
