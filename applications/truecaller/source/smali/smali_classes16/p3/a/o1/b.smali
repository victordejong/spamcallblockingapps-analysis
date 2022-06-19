.class public final Lp3/a/o1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/o1/o/m/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/b$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lp3/a/o1/b$a;

.field public final b:Lp3/a/o1/o/m/c;

.field public final c:Lp3/a/o1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp3/a/o1/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/o1/b;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lp3/a/o1/b$a;Lp3/a/o1/o/m/c;Lp3/a/o1/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transportExceptionHandler"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/o1/b$a;

    iput-object p1, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    const-string p1, "frameWriter"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lp3/a/o1/o/m/c;

    iput-object p2, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    const-string p1, "frameLogger"

    .line 4
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lp3/a/o1/g;

    iput-object p3, p0, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    return-void
.end method


# virtual methods
.method public R(Lp3/a/o1/o/m/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    sget-object v1, Lp3/a/o1/g$a;->b:Lp3/a/o1/g$a;

    invoke-virtual {v0, v1, p1}, Lp3/a/o1/g;->f(Lp3/a/o1/g$a;Lp3/a/o1/o/m/h;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0, p1}, Lp3/a/o1/o/m/c;->R(Lp3/a/o1/o/m/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {v0, p1}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(ZII)V
    .locals 9

    .line 1
    sget-object v0, Lp3/a/o1/g$a;->b:Lp3/a/o1/g$a;

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz p1, :cond_0

    .line 2
    iget-object v4, p0, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    int-to-long v5, p2

    shl-long/2addr v5, v3

    int-to-long v7, p3

    and-long/2addr v1, v7

    or-long/2addr v1, v5

    .line 3
    invoke-virtual {v4}, Lp3/a/o1/g;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v4, Lp3/a/o1/g;->a:Ljava/util/logging/Logger;

    iget-object v4, v4, Lp3/a/o1/g;->b:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " PING: ack=true bytes="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v4, p0, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    int-to-long v5, p2

    shl-long/2addr v5, v3

    int-to-long v7, p3

    and-long/2addr v1, v7

    or-long/2addr v1, v5

    invoke-virtual {v4, v0, v1, v2}, Lp3/a/o1/g;->d(Lp3/a/o1/g$a;J)V

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0, p1, p2, p3}, Lp3/a/o1/o/m/c;->a(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {p2, p1}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    sget-object v1, Lp3/a/o1/g$a;->b:Lp3/a/o1/g$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lp3/a/o1/g;->g(Lp3/a/o1/g$a;IJ)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0, p1, p2, p3}, Lp3/a/o1/o/m/c;->c(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {p2, p1}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lp3/a/o1/b;->d:Ljava/util/logging/Logger;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/io/IOException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    const-string v3, "Failed closing connection"

    .line 6
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public e1(Lp3/a/o1/o/m/h;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    sget-object v1, Lp3/a/o1/g$a;->b:Lp3/a/o1/g$a;

    .line 2
    invoke-virtual {v0}, Lp3/a/o1/g;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v0, Lp3/a/o1/g;->a:Ljava/util/logging/Logger;

    iget-object v0, v0, Lp3/a/o1/g;->b:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " SETTINGS: ack=true"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0, p1}, Lp3/a/o1/o/m/c;->e1(Lp3/a/o1/o/m/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {v0, p1}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0}, Lp3/a/o1/o/m/c;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {v1, v0}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0}, Lp3/a/o1/o/m/c;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {v1, v0}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public l2(ILp3/a/o1/o/m/a;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    sget-object v1, Lp3/a/o1/g$a;->b:Lp3/a/o1/g$a;

    .line 2
    invoke-static {p3}, Lv3/i;->j([B)Lv3/i;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, p1, p2, v2}, Lp3/a/o1/g;->c(Lp3/a/o1/g$a;ILp3/a/o1/o/m/a;Lv3/i;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0, p1, p2, p3}, Lp3/a/o1/o/m/c;->l2(ILp3/a/o1/o/m/a;[B)V

    .line 5
    iget-object p1, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {p1}, Lp3/a/o1/o/m/c;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {p2, p1}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public m2(ILp3/a/o1/o/m/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    sget-object v1, Lp3/a/o1/g$a;->b:Lp3/a/o1/g$a;

    invoke-virtual {v0, v1, p1, p2}, Lp3/a/o1/g;->e(Lp3/a/o1/g$a;ILp3/a/o1/o/m/a;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0, p1, p2}, Lp3/a/o1/o/m/c;->m2(ILp3/a/o1/o/m/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {p2, p1}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public r(ZILv3/f;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lp3/a/o1/b;->c:Lp3/a/o1/g;

    sget-object v1, Lp3/a/o1/g$a;->b:Lp3/a/o1/g$a;

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lp3/a/o1/g;->b(Lp3/a/o1/g$a;ILv3/f;IZ)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lp3/a/o1/o/m/c;->r(ZILv3/f;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {p2, p1}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0}, Lp3/a/o1/o/m/c;->t()I

    move-result v0

    return v0
.end method

.method public v(ZZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lp3/a/o1/o/m/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/b;->b:Lp3/a/o1/o/m/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lp3/a/o1/o/m/c;->v(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lp3/a/o1/b;->a:Lp3/a/o1/b$a;

    invoke-interface {p2, p1}, Lp3/a/o1/b$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
