.class final Lcom/google/android/gms/internal/firebase-auth-api/qp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/q0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/pp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    const-string v0, "input"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/k;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    iput-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/pp;->b:Lcom/google/android/gms/internal/firebase-auth-api/qp;

    return-void
.end method

.method private final R(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->b()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    move-result-object p1

    throw p1
.end method

.method private static final S(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->h()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    move-result-object p0

    throw p0
.end method

.method private static final T(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->h()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    move-result-object p0

    throw p0
.end method

.method public static U(Lcom/google/android/gms/internal/firebase-auth-api/pp;)Lcom/google/android/gms/internal/firebase-auth-api/qp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/pp;->b:Lcom/google/android/gms/internal/firebase-auth-api/qp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/qp;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/pp;)V

    return-object v0
.end method

.method private final o(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1
.end method

.method private final q(Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/r0<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/aq;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->h(I)I

    move-result v0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    iget v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a:I

    .line 4
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/q0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)V

    .line 5
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->d(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->b(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    iget p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->i(I)V

    return-object v1

    .line 8
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Ljava/lang/String;)V

    .line 10
    throw p1
.end method

.method private final v(Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/r0<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/aq;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->c:I

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/q0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->d(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->c:I

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->h()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->c:I

    .line 6
    throw p1
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zo;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zo;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->d()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zo;->d(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->d()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zo;->d(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 11
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 16
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final B(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/t;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/t;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v2

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 20
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final C(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/r0<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/aq;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->q(Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1
.end method

.method public final D(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/xp;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/xp;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/xp;->d(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/xp;->d(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 20
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final E(Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/r0<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/aq;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->v(Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final F(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->S(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 15
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->S(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final G(Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/r0<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/aq;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->q(Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/r0<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/aq;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->v(Lcom/google/android/gms/internal/firebase-auth-api/r0;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1
.end method

.method public final I(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/t;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/t;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->n(J)J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->n(J)J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->n(J)J

    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->n(J)J

    move-result-wide v0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final J(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/t;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/t;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final K(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final L(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/t;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/t;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final M(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/mp;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->i()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1
.end method

.method public final N(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->S(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 15
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->S(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final O(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/t;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/t;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->g(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->T(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v2

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 20
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final P(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final Q(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final a()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    return v0
.end method

.method public final c()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->c(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final e()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    return v0
.end method

.method public final f()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->n(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()Lcom/google/android/gms/internal/firebase-auth-api/mp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->g()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final l(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/o;

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->i()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/o;->C(Lcom/google/android/gms/internal/firebase-auth-api/mp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->t()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 7
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1
.end method

.method public final m()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result v0

    return v0
.end method

.method public final p()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->d()Z

    move-result v0

    return v0
.end method

.method public final s()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->m(I)I

    move-result v0

    return v0
.end method

.method public final w()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    return v0
.end method

.method public final x()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->o(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result v0

    return v0
.end method

.method public final y(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/f;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/f;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->m(I)I

    move-result p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->m(I)I

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->m(I)I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->R(I)V

    return-void

    .line 19
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->m(I)I

    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void
.end method

.method public final z(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/hq;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/hq;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/hq;->d(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->S(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/hq;->d(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->d:I

    return-void

    .line 15
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    move-result-object p1

    throw p1

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->o()I

    move-result v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/qp;->S(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/op;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/op;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qp;->a:Lcom/google/android/gms/internal/firebase-auth-api/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/pp;->k()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method
