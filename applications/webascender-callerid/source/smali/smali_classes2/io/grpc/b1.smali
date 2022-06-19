.class public final Lio/grpc/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/b1$d;,
        Lio/grpc/b1$c;,
        Lio/grpc/b1$b;
    }
.end annotation


# static fields
.field private static final d:Z

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/b1;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lio/grpc/b1;

.field public static final g:Lio/grpc/b1;

.field public static final h:Lio/grpc/b1;

.field public static final i:Lio/grpc/b1;

.field public static final j:Lio/grpc/b1;

.field public static final k:Lio/grpc/b1;

.field public static final l:Lio/grpc/b1;

.field public static final m:Lio/grpc/b1;

.field public static final n:Lio/grpc/b1;

.field static final o:Lio/grpc/q0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/q0$f<",
            "Lio/grpc/b1;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Lio/grpc/q0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/q0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final q:Lio/grpc/q0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/q0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/b1$b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "io.grpc.Status.failOnEqualsForTest"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/grpc/b1;->d:Z

    .line 2
    invoke-static {}, Lio/grpc/b1;->g()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->e:Ljava/util/List;

    .line 3
    sget-object v0, Lio/grpc/b1$b;->OK:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->f:Lio/grpc/b1;

    .line 4
    sget-object v0, Lio/grpc/b1$b;->CANCELLED:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->g:Lio/grpc/b1;

    .line 5
    sget-object v0, Lio/grpc/b1$b;->UNKNOWN:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->h:Lio/grpc/b1;

    .line 6
    sget-object v0, Lio/grpc/b1$b;->INVALID_ARGUMENT:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    .line 7
    sget-object v0, Lio/grpc/b1$b;->DEADLINE_EXCEEDED:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->i:Lio/grpc/b1;

    .line 8
    sget-object v0, Lio/grpc/b1$b;->NOT_FOUND:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    .line 9
    sget-object v0, Lio/grpc/b1$b;->ALREADY_EXISTS:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    .line 10
    sget-object v0, Lio/grpc/b1$b;->PERMISSION_DENIED:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->j:Lio/grpc/b1;

    .line 11
    sget-object v0, Lio/grpc/b1$b;->UNAUTHENTICATED:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->k:Lio/grpc/b1;

    .line 12
    sget-object v0, Lio/grpc/b1$b;->RESOURCE_EXHAUSTED:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->l:Lio/grpc/b1;

    .line 13
    sget-object v0, Lio/grpc/b1$b;->FAILED_PRECONDITION:Lio/grpc/b1$b;

    .line 14
    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    .line 15
    sget-object v0, Lio/grpc/b1$b;->ABORTED:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    .line 16
    sget-object v0, Lio/grpc/b1$b;->OUT_OF_RANGE:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    .line 17
    sget-object v0, Lio/grpc/b1$b;->UNIMPLEMENTED:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    .line 18
    sget-object v0, Lio/grpc/b1$b;->INTERNAL:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->m:Lio/grpc/b1;

    .line 19
    sget-object v0, Lio/grpc/b1$b;->UNAVAILABLE:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->n:Lio/grpc/b1;

    .line 20
    sget-object v0, Lio/grpc/b1$b;->DATA_LOSS:Lio/grpc/b1$b;

    invoke-virtual {v0}, Lio/grpc/b1$b;->toStatus()Lio/grpc/b1;

    .line 21
    new-instance v0, Lio/grpc/b1$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/b1$c;-><init>(Lio/grpc/b1$a;)V

    const-string v2, "grpc-status"

    const/4 v3, 0x0

    .line 22
    invoke-static {v2, v3, v0}, Lio/grpc/q0$f;->g(Ljava/lang/String;ZLio/grpc/q0$i;)Lio/grpc/q0$f;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->o:Lio/grpc/q0$f;

    .line 23
    new-instance v0, Lio/grpc/b1$d;

    invoke-direct {v0, v1}, Lio/grpc/b1$d;-><init>(Lio/grpc/b1$a;)V

    sput-object v0, Lio/grpc/b1;->p:Lio/grpc/q0$i;

    const-string v1, "grpc-message"

    .line 24
    invoke-static {v1, v3, v0}, Lio/grpc/q0$f;->g(Ljava/lang/String;ZLio/grpc/q0$i;)Lio/grpc/q0$f;

    move-result-object v0

    sput-object v0, Lio/grpc/b1;->q:Lio/grpc/q0$f;

    return-void
.end method

.method private constructor <init>(Lio/grpc/b1$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lio/grpc/b1;-><init>(Lio/grpc/b1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/b1$b;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/b1$b;

    iput-object p1, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    .line 4
    iput-object p2, p0, Lio/grpc/b1;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lio/grpc/b1;->c:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/b1;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b([B)Lio/grpc/b1;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/grpc/b1;->j([B)Lio/grpc/b1;

    move-result-object p0

    return-object p0
.end method

.method private static g()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/b1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/b1$b;->values()[Lio/grpc/b1$b;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Lio/grpc/b1$b;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lio/grpc/b1;

    invoke-direct {v6, v4}, Lio/grpc/b1;-><init>(Lio/grpc/b1$b;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/b1;

    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code value duplication between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v5}, Lio/grpc/b1;->n()Lio/grpc/b1$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static h(Lio/grpc/b1;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/b1;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/grpc/b1;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(I)Lio/grpc/b1;
    .locals 3

    if-ltz p0, :cond_1

    .line 1
    sget-object v0, Lio/grpc/b1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/b1;

    return-object p0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lio/grpc/b1;->h:Lio/grpc/b1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object p0

    return-object p0
.end method

.method private static j([B)Lio/grpc/b1;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lio/grpc/b1;->f:Lio/grpc/b1;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lio/grpc/b1;->k([B)Lio/grpc/b1;

    move-result-object p0

    return-object p0
.end method

.method private static k([B)Lio/grpc/b1;
    .locals 6

    .line 1
    array-length v0, p0

    const/16 v1, 0x39

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x30

    if-eq v0, v2, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    aget-byte v0, p0, v3

    if-lt v0, v4, :cond_4

    aget-byte v0, p0, v3

    if-le v0, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    aget-byte v0, p0, v3

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_0
    aget-byte v0, p0, v2

    if-lt v0, v4, :cond_4

    aget-byte v0, p0, v2

    if-le v0, v1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    aget-byte v0, p0, v2

    sub-int/2addr v0, v4

    add-int/2addr v3, v0

    .line 6
    sget-object v0, Lio/grpc/b1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/b1;

    return-object p0

    .line 8
    :cond_4
    :goto_1
    sget-object v0, Lio/grpc/b1;->h:Lio/grpc/b1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/Throwable;)Lio/grpc/b1;
    .locals 2

    const-string v0, "t"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    instance-of v1, v0, Lio/grpc/StatusException;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lio/grpc/StatusException;

    invoke-virtual {v0}, Lio/grpc/StatusException;->a()Lio/grpc/b1;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->a()Lio/grpc/b1;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lio/grpc/b1;->h:Lio/grpc/b1;

    invoke-virtual {v0, p0}, Lio/grpc/b1;->q(Ljava/lang/Throwable;)Lio/grpc/b1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Lio/grpc/StatusException;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/StatusException;

    invoke-direct {v0, p0}, Lio/grpc/StatusException;-><init>(Lio/grpc/b1;)V

    return-object v0
.end method

.method public d()Lio/grpc/StatusRuntimeException;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p0}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/b1;)V

    return-object v0
.end method

.method public e(Lio/grpc/q0;)Lio/grpc/StatusRuntimeException;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/b1;Lio/grpc/q0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;)Lio/grpc/b1;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lio/grpc/b1;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lio/grpc/b1;

    iget-object v1, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    iget-object v2, p0, Lio/grpc/b1;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/b1;-><init>(Lio/grpc/b1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lio/grpc/b1;

    iget-object v1, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/grpc/b1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lio/grpc/b1;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/b1;-><init>(Lio/grpc/b1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/b1;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public n()Lio/grpc/b1$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/b1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/b1$b;->OK:Lio/grpc/b1$b;

    iget-object v1, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(Ljava/lang/Throwable;)Lio/grpc/b1;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/b1;->c:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/b1;

    iget-object v1, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    iget-object v2, p0, Lio/grpc/b1;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lio/grpc/b1;-><init>(Lio/grpc/b1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lio/grpc/b1;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/b1;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/b1;

    iget-object v1, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    iget-object v2, p0, Lio/grpc/b1;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/b1;-><init>(Lio/grpc/b1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/b1;->a:Lio/grpc/b1$b;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/b1;->b:Ljava/lang/String;

    const-string v2, "description"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 4
    iget-object v1, p0, Lio/grpc/b1;->c:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/common/base/t;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
