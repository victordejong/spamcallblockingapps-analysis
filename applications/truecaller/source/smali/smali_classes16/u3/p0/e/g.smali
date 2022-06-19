.class public Lu3/p0/e/g;
.super Lv3/k;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/io/IOException;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/z;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/z;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/io/IOException;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onException"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lv3/k;-><init>(Lv3/z;)V

    iput-object p2, p0, Lu3/p0/e/g;->c:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu3/p0/e/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0}, Lv3/k;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lu3/p0/e/g;->b:Z

    .line 4
    iget-object v1, p0, Lu3/p0/e/g;->c:Ls1/z/b/l;

    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu3/p0/e/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lv3/k;->a:Lv3/z;

    invoke-interface {v0}, Lv3/z;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lu3/p0/e/g;->b:Z

    .line 4
    iget-object v1, p0, Lu3/p0/e/g;->c:Ls1/z/b/l;

    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public h1(Lv3/f;J)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v1, p0, Lu3/p0/e/g;->b:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Lv3/f;->skip(J)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lv3/k;->a:Lv3/z;

    invoke-interface {v0, p1, p2, p3}, Lv3/z;->h1(Lv3/f;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lu3/p0/e/g;->b:Z

    .line 6
    iget-object p2, p0, Lu3/p0/e/g;->c:Ls1/z/b/l;

    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
