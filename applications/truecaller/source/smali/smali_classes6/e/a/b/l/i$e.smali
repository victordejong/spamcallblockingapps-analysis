.class public final Le/a/b/l/i$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/l/i;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.data.BusinessProfileRepositoryImpl$uploadPicture$2"
    f = "BusinessProfileRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/b/l/i;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/b/l/i;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/l/i$e;->e:Le/a/b/l/i;

    iput-object p2, p0, Le/a/b/l/i$e;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/l/i$e;

    iget-object v0, p0, Le/a/b/l/i$e;->e:Le/a/b/l/i;

    iget-object v1, p0, Le/a/b/l/i$e;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/b/l/i$e;-><init>(Le/a/b/l/i;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/b/l/i$e;->e:Le/a/b/l/i;

    iget-object v0, p0, Le/a/b/l/i$e;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Le/a/b0/b/a/c;->b:Lu3/c0;

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "Uri.parse(picture)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "file"

    .line 7
    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$asRequestBody"

    .line 8
    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lu3/h0;

    invoke-direct {v0, v1, p2}, Lu3/h0;-><init>(Ljava/io/File;Lu3/c0;)V

    .line 10
    iget-object p1, p1, Le/a/b/l/i;->a:Le/a/b/l/f;

    .line 11
    invoke-interface {p1, v0}, Le/a/b/l/f;->b(Lu3/j0;)Lx3/b;

    move-result-object p1

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 12
    iget-object p2, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 13
    check-cast p2, Lu3/l0;

    const-string v0, "response"

    .line 14
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 15
    :cond_1
    new-instance p2, Le/a/b/b/c/r$e;

    .line 16
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 17
    iget p1, p1, Lu3/k0;->e:I

    .line 18
    invoke-direct {p2, p1}, Le/a/b/b/c/r$e;-><init>(I)V

    throw p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b/l/i$e;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/b/l/i$e;->f:Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Le/a/b0/b/a/c;->b:Lu3/c0;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Le/a/b/l/i$e;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.parse(picture)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$asRequestBody"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lu3/h0;

    invoke-direct {v1, v0, p1}, Lu3/h0;-><init>(Ljava/io/File;Lu3/c0;)V

    .line 8
    iget-object p1, p0, Le/a/b/l/i$e;->e:Le/a/b/l/i;

    .line 9
    iget-object p1, p1, Le/a/b/l/i;->a:Le/a/b/l/f;

    .line 10
    invoke-interface {p1, v1}, Le/a/b/l/f;->b(Lu3/j0;)Lx3/b;

    move-result-object p1

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 11
    iget-object v0, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 12
    check-cast v0, Lu3/l0;

    const-string v1, "response"

    .line 13
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_1
    new-instance v0, Le/a/b/b/c/r$e;

    .line 15
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 16
    iget p1, p1, Lu3/k0;->e:I

    .line 17
    invoke-direct {v0, p1}, Le/a/b/b/c/r$e;-><init>(I)V

    throw v0
.end method
