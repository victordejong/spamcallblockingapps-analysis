.class public final Lcom/google/firebase/inappmessaging/j0/z2;
.super Lcom/google/protobuf/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/j0/z2$a;,
        Lcom/google/firebase/inappmessaging/j0/z2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y<",
        "Lcom/google/firebase/inappmessaging/j0/z2;",
        "Lcom/google/firebase/inappmessaging/j0/z2$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/j0/z2;

.field public static final LIMITS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/z0<",
            "Lcom/google/firebase/inappmessaging/j0/z2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private limits_:Lcom/google/protobuf/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/j0/y2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/z2;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/z2;-><init>()V

    .line 2
    sput-object v0, Lcom/google/firebase/inappmessaging/j0/z2;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/j0/z2;

    .line 3
    const-class v1, Lcom/google/firebase/inappmessaging/j0/z2;

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

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/z2;->limits_:Lcom/google/protobuf/l0;

    return-void
.end method

.method static synthetic W()Lcom/google/firebase/inappmessaging/j0/z2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/j0/z2;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/j0/z2;

    return-object v0
.end method

.method static synthetic X(Lcom/google/firebase/inappmessaging/j0/z2;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/z2;->a0()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static Y()Lcom/google/firebase/inappmessaging/j0/z2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/j0/z2;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/j0/z2;

    return-object v0
.end method

.method private a0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/j0/y2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/z2;->c0()Lcom/google/protobuf/l0;

    move-result-object v0

    return-object v0
.end method

.method private b0()Lcom/google/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/j0/y2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/z2;->limits_:Lcom/google/protobuf/l0;

    return-object v0
.end method

.method private c0()Lcom/google/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l0<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/j0/y2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/z2;->limits_:Lcom/google/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/l0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/z2;->limits_:Lcom/google/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/l0;->n()Lcom/google/protobuf/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/z2;->limits_:Lcom/google/protobuf/l0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/z2;->limits_:Lcom/google/protobuf/l0;

    return-object v0
.end method

.method public static d0(Lcom/google/firebase/inappmessaging/j0/z2;)Lcom/google/firebase/inappmessaging/j0/z2$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/j0/z2;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/j0/z2;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/y;->A(Lcom/google/protobuf/y;)Lcom/google/protobuf/y$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/j0/z2$a;

    return-object p0
.end method

.method public static e0()Lcom/google/protobuf/z0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/z0<",
            "Lcom/google/firebase/inappmessaging/j0/z2;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/j0/z2;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/j0/z2;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->q()Lcom/google/protobuf/z0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final D(Lcom/google/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/firebase/inappmessaging/j0/x2;->a:[I

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
    sget-object p1, Lcom/google/firebase/inappmessaging/j0/z2;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/firebase/inappmessaging/j0/z2;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/j0/z2;->PARSER:Lcom/google/protobuf/z0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/y$b;

    sget-object p3, Lcom/google/firebase/inappmessaging/j0/z2;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/j0/z2;

    invoke-direct {p1, p3}, Lcom/google/protobuf/y$b;-><init>(Lcom/google/protobuf/y;)V

    .line 8
    sput-object p1, Lcom/google/firebase/inappmessaging/j0/z2;->PARSER:Lcom/google/protobuf/z0;

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
    sget-object p1, Lcom/google/firebase/inappmessaging/j0/z2;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/j0/z2;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "limits_"

    aput-object v0, p1, p3

    .line 11
    sget-object p3, Lcom/google/firebase/inappmessaging/j0/z2$b;->a:Lcom/google/protobuf/k0;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 12
    sget-object p3, Lcom/google/firebase/inappmessaging/j0/z2;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/j0/z2;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/y;->O(Lcom/google/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/firebase/inappmessaging/j0/z2$a;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/j0/z2$a;-><init>(Lcom/google/firebase/inappmessaging/j0/x2;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/firebase/inappmessaging/j0/z2;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/j0/z2;-><init>()V

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

.method public Z(Ljava/lang/String;Lcom/google/firebase/inappmessaging/j0/y2;)Lcom/google/firebase/inappmessaging/j0/y2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/z2;->b0()Lcom/google/protobuf/l0;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/firebase/inappmessaging/j0/y2;

    :cond_0
    return-object p2
.end method
