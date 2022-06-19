.class public final Le/a/b0/b/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/b/j/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lu3/g0;->e:Lu3/j0;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    const-string v3, "Content-Encoding"

    .line 3
    invoke-virtual {v0, v3}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-static {v4, v3, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    new-instance v2, Lu3/g0$a;

    invoke-direct {v2, v0}, Lu3/g0$a;-><init>(Lu3/g0;)V

    .line 5
    iget-object v0, v0, Lu3/g0;->c:Ljava/lang/String;

    .line 6
    new-instance v3, Le/a/b0/b/j/b$a;

    invoke-direct {v3, v1}, Le/a/b0/b/j/b$a;-><init>(Lu3/j0;)V

    invoke-virtual {v2, v0, v3}, Lu3/g0$a;->e(Ljava/lang/String;Lu3/j0;)Lu3/g0$a;

    .line 7
    invoke-virtual {v2}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1
.end method
