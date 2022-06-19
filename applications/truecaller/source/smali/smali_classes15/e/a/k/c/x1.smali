.class public final Le/a/k/c/x1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Le/a/k/c/r1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$getVideoFileInfo$2"
    f = "VideoFileUtil.kt"
    l = {
        0x7f,
        0x80
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:J

.field public h:J

.field public i:I

.field public final synthetic j:Le/a/k/c/a;

.field public final synthetic k:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Le/a/k/c/a;Landroid/net/Uri;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/x1;->j:Le/a/k/c/a;

    iput-object p2, p0, Le/a/k/c/x1;->k:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/x1;

    iget-object v1, p0, Le/a/k/c/x1;->j:Le/a/k/c/a;

    iget-object v2, p0, Le/a/k/c/x1;->k:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/c/x1;-><init>(Le/a/k/c/a;Landroid/net/Uri;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/c/x1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/x1;

    iget-object v1, p0, Le/a/k/c/x1;->j:Le/a/k/c/a;

    iget-object v2, p0, Le/a/k/c/x1;->k:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/c/x1;-><init>(Le/a/k/c/a;Landroid/net/Uri;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/c/x1;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Le/a/k/c/x1;->h:J

    iget-wide v2, p0, Le/a/k/c/x1;->g:J

    iget-object v4, p0, Le/a/k/c/x1;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Le/a/k/c/x1;->e:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide v8, v2

    move-object v2, v4

    move-wide v3, v8

    move-wide v10, v0

    move-object v1, v5

    move-wide v5, v10

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/k/c/x1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :cond_2
    move-object v5, v1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/c/x1;->k:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, "uri.path ?: return@withSafeIOContext null"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_6

    .line 8
    iget-object p1, p0, Le/a/k/c/x1;->j:Le/a/k/c/a;

    iput-object v1, p0, Le/a/k/c/x1;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/k/c/x1;->i:I

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v3, Le/a/k/c/w1;

    invoke-direct {v3, p1, v1, v4}, Le/a/k/c/w1;-><init>(Le/a/k/c/a;Ljava/io/File;Ls1/w/d;)V

    .line 11
    iget-object p1, p1, Le/a/k/c/a;->c:Ls1/w/f;

    new-instance v5, Le/a/k/c/z1;

    invoke-direct {v5, v3, v4}, Le/a/k/c/z1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 12
    :goto_1
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string p1, "video/mp4"

    .line 13
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v1, p0, Le/a/k/c/x1;->j:Le/a/k/c/a;

    iput-object v5, p0, Le/a/k/c/x1;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/k/c/x1;->f:Ljava/lang/Object;

    iput-wide v6, p0, Le/a/k/c/x1;->g:J

    iput-wide v3, p0, Le/a/k/c/x1;->h:J

    iput v2, p0, Le/a/k/c/x1;->i:I

    invoke-virtual {v1, v5, p0}, Le/a/k/c/a;->e(Ljava/io/File;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v2, p1

    move-object p1, v1

    move-object v1, v5

    move-wide v8, v3

    move-wide v3, v6

    move-wide v5, v8

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-instance p1, Le/a/k/c/r1;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Le/a/k/c/r1;-><init>(Ljava/io/File;Ljava/lang/String;JJZ)V

    return-object p1

    :cond_6
    return-object v4
.end method
