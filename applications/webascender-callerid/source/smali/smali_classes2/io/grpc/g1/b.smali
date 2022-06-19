.class final Lio/grpc/g1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/g1/r/j/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/g1/b$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/logging/Logger;


# instance fields
.field private final f:Lio/grpc/g1/b$a;

.field private final g:Lio/grpc/g1/r/j/c;

.field private final h:Lio/grpc/g1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/g1/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/g1/b;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/g1/b$a;Lio/grpc/g1/r/j/c;)V
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/g1/i;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lio/grpc/g1/h;

    invoke-direct {v0, v1, v2}, Lio/grpc/g1/i;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/g1/b;-><init>(Lio/grpc/g1/b$a;Lio/grpc/g1/r/j/c;Lio/grpc/g1/i;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/g1/b$a;Lio/grpc/g1/r/j/c;Lio/grpc/g1/i;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transportExceptionHandler"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/g1/b$a;

    iput-object p1, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    const-string p1, "frameWriter"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/g1/r/j/c;

    iput-object p2, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    const-string p1, "frameLogger"

    .line 5
    invoke-static {p3, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lio/grpc/g1/i;

    iput-object p3, p0, Lio/grpc/g1/b;->h:Lio/grpc/g1/i;

    return-void
.end method

.method static a(Ljava/lang/Throwable;)Ljava/util/logging/Level;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/io/IOException;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    return-object p0
.end method


# virtual methods
.method public F0(Lio/grpc/g1/r/j/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/b;->h:Lio/grpc/g1/i;

    sget-object v1, Lio/grpc/g1/i$a;->OUTBOUND:Lio/grpc/g1/i$a;

    invoke-virtual {v0, v1, p1}, Lio/grpc/g1/i;->i(Lio/grpc/g1/i$a;Lio/grpc/g1/r/j/i;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0, p1}, Lio/grpc/g1/r/j/c;->F0(Lio/grpc/g1/r/j/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {v0, p1}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public V()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0}, Lio/grpc/g1/r/j/c;->V()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {v1, v0}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a0(ZILn/f;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/grpc/g1/b;->h:Lio/grpc/g1/i;

    sget-object v1, Lio/grpc/g1/i$a;->OUTBOUND:Lio/grpc/g1/i$a;

    .line 2
    invoke-virtual {p3}, Ln/f;->u()Ln/f;

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Lio/grpc/g1/i;->b(Lio/grpc/g1/i$a;ILn/f;IZ)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/g1/r/j/c;->a0(ZILn/f;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {p2, p1}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lio/grpc/g1/b;->i:Ljava/util/logging/Logger;

    invoke-static {v0}, Lio/grpc/g1/b;->a(Ljava/lang/Throwable;)Ljava/util/logging/Level;

    move-result-object v2

    const-string v3, "Failed closing connection"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/b;->h:Lio/grpc/g1/i;

    sget-object v1, Lio/grpc/g1/i$a;->OUTBOUND:Lio/grpc/g1/i$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/g1/i;->k(Lio/grpc/g1/i$a;IJ)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/g1/r/j/c;->d(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {p2, p1}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0}, Lio/grpc/g1/r/j/c;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {v1, v0}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public h(ZII)V
    .locals 9

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-eqz p1, :cond_0

    .line 1
    iget-object v3, p0, Lio/grpc/g1/b;->h:Lio/grpc/g1/i;

    sget-object v4, Lio/grpc/g1/i$a;->OUTBOUND:Lio/grpc/g1/i$a;

    int-to-long v5, p2

    shl-long/2addr v5, v2

    int-to-long v7, p3

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Lio/grpc/g1/i;->f(Lio/grpc/g1/i$a;J)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, Lio/grpc/g1/b;->h:Lio/grpc/g1/i;

    sget-object v4, Lio/grpc/g1/i$a;->OUTBOUND:Lio/grpc/g1/i$a;

    int-to-long v5, p2

    shl-long/2addr v5, v2

    int-to-long v7, p3

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Lio/grpc/g1/i;->e(Lio/grpc/g1/i$a;J)V

    .line 3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/g1/r/j/c;->h(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {p2, p1}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public l1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0}, Lio/grpc/g1/r/j/c;->l1()I

    move-result v0

    return v0
.end method

.method public m1(ZZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lio/grpc/g1/r/j/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/grpc/g1/r/j/c;->m1(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {p2, p1}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public p(ILio/grpc/g1/r/j/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/b;->h:Lio/grpc/g1/i;

    sget-object v1, Lio/grpc/g1/i$a;->OUTBOUND:Lio/grpc/g1/i$a;

    invoke-virtual {v0, v1, p1, p2}, Lio/grpc/g1/i;->h(Lio/grpc/g1/i$a;ILio/grpc/g1/r/j/a;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0, p1, p2}, Lio/grpc/g1/r/j/c;->p(ILio/grpc/g1/r/j/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {p2, p1}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public w1(ILio/grpc/g1/r/j/a;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/g1/b;->h:Lio/grpc/g1/i;

    sget-object v1, Lio/grpc/g1/i$a;->OUTBOUND:Lio/grpc/g1/i$a;

    .line 2
    invoke-static {p3}, Ln/i;->w([B)Ln/i;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, p1, p2, v2}, Lio/grpc/g1/i;->c(Lio/grpc/g1/i$a;ILio/grpc/g1/r/j/a;Ln/i;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/g1/r/j/c;->w1(ILio/grpc/g1/r/j/a;[B)V

    .line 5
    iget-object p1, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {p1}, Lio/grpc/g1/r/j/c;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {p2, p1}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public x0(Lio/grpc/g1/r/j/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/b;->h:Lio/grpc/g1/i;

    sget-object v1, Lio/grpc/g1/i$a;->OUTBOUND:Lio/grpc/g1/i$a;

    invoke-virtual {v0, v1}, Lio/grpc/g1/i;->j(Lio/grpc/g1/i$a;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/b;->g:Lio/grpc/g1/r/j/c;

    invoke-interface {v0, p1}, Lio/grpc/g1/r/j/c;->x0(Lio/grpc/g1/r/j/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lio/grpc/g1/b;->f:Lio/grpc/g1/b$a;

    invoke-interface {v0, p1}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
