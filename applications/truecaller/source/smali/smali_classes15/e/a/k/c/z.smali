.class public final Le/a/k/c/z;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.HttpClientWrapperImpl$uploadFile$2"
    f = "HttpClientWrapper.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/c/a0;

.field public final synthetic g:Le/a/k/c/x;


# direct methods
.method public constructor <init>(Le/a/k/c/a0;Le/a/k/c/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/z;->f:Le/a/k/c/a0;

    iput-object p2, p0, Le/a/k/c/z;->g:Le/a/k/c/x;

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

    new-instance p1, Le/a/k/c/z;

    iget-object v0, p0, Le/a/k/c/z;->f:Le/a/k/c/a0;

    iget-object v1, p0, Le/a/k/c/z;->g:Le/a/k/c/x;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/z;-><init>(Le/a/k/c/a0;Le/a/k/c/x;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/z;

    iget-object v0, p0, Le/a/k/c/z;->f:Le/a/k/c/a0;

    iget-object v1, p0, Le/a/k/c/z;->g:Le/a/k/c/x;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/z;-><init>(Le/a/k/c/a0;Le/a/k/c/x;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/c/z;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/c/z;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File upload process is started. Request: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/c/z;->g:Le/a/k/c/x;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    new-instance p1, Le/a/k/c/w;

    .line 6
    iget-object v1, p0, Le/a/k/c/z;->g:Le/a/k/c/x;

    .line 7
    iget-object v3, v1, Le/a/k/c/x;->a:Ljava/io/File;

    .line 8
    iget-wide v4, v1, Le/a/k/c/x;->b:J

    .line 9
    iget-object v1, v1, Le/a/k/c/x;->c:Ljava/lang/String;

    .line 10
    invoke-direct {p1, v3, v4, v5, v1}, Le/a/k/c/w;-><init>(Ljava/io/File;JLjava/lang/String;)V

    .line 11
    new-instance v1, Lu3/d0$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lu3/d0$a;-><init>(Ljava/lang/String;I)V

    .line 12
    sget-object v3, Lu3/d0;->h:Lu3/c0;

    invoke-virtual {v1, v3}, Lu3/d0$a;->e(Lu3/c0;)Lu3/d0$a;

    .line 13
    iget-object v3, p0, Le/a/k/c/z;->g:Le/a/k/c/x;

    .line 14
    iget-object v3, v3, Le/a/k/c/x;->e:Ljava/util/Map;

    .line 15
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v5, v4}, Lu3/d0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/d0$a;

    goto :goto_0

    .line 17
    :cond_2
    iget-object v3, p0, Le/a/k/c/z;->g:Le/a/k/c/x;

    .line 18
    iget-object v3, v3, Le/a/k/c/x;->a:Ljava/io/File;

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v1, v4, v3, p1}, Lu3/d0$a;->b(Ljava/lang/String;Ljava/lang/String;Lu3/j0;)Lu3/d0$a;

    .line 20
    invoke-virtual {v1}, Lu3/d0$a;->d()Lu3/d0;

    move-result-object p1

    .line 21
    new-instance v1, Lu3/g0$a;

    invoke-direct {v1}, Lu3/g0$a;-><init>()V

    .line 22
    iget-object v3, p0, Le/a/k/c/z;->g:Le/a/k/c/x;

    .line 23
    iget-object v3, v3, Le/a/k/c/x;->d:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v3}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    .line 25
    invoke-virtual {v1, p1}, Lu3/g0$a;->f(Lu3/j0;)Lu3/g0$a;

    .line 26
    invoke-virtual {v1}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object p1

    .line 27
    :try_start_1
    iget-object v1, p0, Le/a/k/c/z;->f:Le/a/k/c/a0;

    .line 28
    iget-object v1, v1, Le/a/k/c/a0;->b:Lu3/e0;

    .line 29
    invoke-virtual {v1, p1}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object p1

    .line 30
    iput v2, p0, Le/a/k/c/z;->e:I

    .line 31
    new-instance v1, Lq3/a/o;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 32
    invoke-virtual {v1}, Lq3/a/o;->z()V

    .line 33
    new-instance v3, Le/a/p5/s0/p;

    invoke-direct {v3, v1}, Le/a/p5/s0/p;-><init>(Lq3/a/n;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, p1

    check-cast v4, Lu3/p0/g/e;

    :try_start_2
    invoke-virtual {v4, v3}, Lu3/p0/g/e;->M1(Lu3/g;)V

    .line 34
    new-instance v3, Le/a/p5/s0/o;

    invoke-direct {v3, p1}, Le/a/p5/s0/o;-><init>(Lu3/f;)V

    invoke-virtual {v1, v3}, Lq3/a/o;->r(Ls1/z/b/l;)V

    .line 35
    invoke-virtual {v1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    const-string v1, "frame"

    .line 36
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-ne p1, v0, :cond_4

    return-object v0

    .line 37
    :cond_4
    :goto_1
    check-cast p1, Lu3/k0;

    .line 38
    invoke-virtual {p1}, Lu3/k0;->j()Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_5

    goto :goto_2

    :catch_0
    :cond_5
    const/4 v2, 0x0

    .line 39
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
