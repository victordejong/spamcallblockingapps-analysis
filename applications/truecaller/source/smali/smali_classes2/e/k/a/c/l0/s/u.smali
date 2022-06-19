.class public final Le/k/a/c/l0/s/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/a/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/a/k0<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>(Le/k/a/a/k0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/a/k0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/k/a/c/l0/s/u;->c:Z

    .line 3
    iput-object p1, p0, Le/k/a/c/l0/s/u;->a:Le/k/a/a/k0;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/l0/s/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/k/a/c/l0/s/u;->c:Z

    .line 2
    invoke-virtual {p1}, Le/k/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p1, p2}, Le/k/a/b/g;->l1(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p3, Le/k/a/c/l0/s/j;->b:Le/k/a/b/p;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    .line 7
    iget-object p3, p3, Le/k/a/c/l0/s/j;->d:Le/k/a/c/n;

    iget-object v0, p0, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    invoke-virtual {p3, v0, p1, p2}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :cond_2
    return-void
.end method

.method public b(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/l0/s/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Le/k/a/c/l0/s/u;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p3, Le/k/a/c/l0/s/j;->e:Z

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/g;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p3, p3, Le/k/a/c/l0/s/j;->d:Le/k/a/c/n;

    iget-object v0, p0, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    invoke-virtual {p3, v0, p1, p2}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    iget-object p2, p0, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    new-instance p2, Le/k/a/b/f;

    const-string p3, "No native support for writing Object Ids"

    invoke-direct {p2, p3, p1}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
