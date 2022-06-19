.class public final Le/a/k/c/r$h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r;->f(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/k/c/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$getCachedVideoFileInfo$2"
    f = "ExoPlayerUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k/c/r;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k/c/r;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/r$h;->e:Le/a/k/c/r;

    iput-object p2, p0, Le/a/k/c/r$h;->f:Ljava/lang/String;

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

    new-instance p1, Le/a/k/c/r$h;

    iget-object v0, p0, Le/a/k/c/r$h;->e:Le/a/k/c/r;

    iget-object v1, p0, Le/a/k/c/r$h;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/r$h;-><init>(Le/a/k/c/r;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/r$h;

    iget-object v0, p0, Le/a/k/c/r$h;->e:Le/a/k/c/r;

    iget-object v1, p0, Le/a/k/c/r$h;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/r$h;-><init>(Le/a/k/c/r;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/c/r$h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/c/r$h;->e:Le/a/k/c/r;

    invoke-static {p1}, Le/a/k/c/r;->l(Le/a/k/c/r;)Le/m/a/c/p1/h0/v;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/k/c/r$h;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/m/a/c/p1/h0/v;->k(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    const-string v0, "cache\n            .getCachedSpans(url)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/p1/h0/l;

    iget-wide v4, v4, Le/m/a/c/p1/h0/l;->c:J

    .line 5
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 6
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 11
    iget-object p1, p0, Le/a/k/c/r$h;->e:Le/a/k/c/r;

    invoke-static {p1}, Le/a/k/c/r;->l(Le/a/k/c/r;)Le/m/a/c/p1/h0/v;

    move-result-object p1

    iget-object v0, p0, Le/a/k/c/r$h;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/m/a/c/p1/h0/v;->a(Ljava/lang/String;)Le/m/a/c/p1/h0/q;

    move-result-object p1

    const/4 v0, -0x1

    int-to-long v0, v0

    .line 12
    check-cast p1, Le/m/a/c/p1/h0/s;

    const-string v2, "exo_len"

    invoke-virtual {p1, v2, v0, v1}, Le/m/a/c/p1/h0/s;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 13
    new-instance p1, Le/a/k/c/g;

    .line 14
    iget-object v3, p0, Le/a/k/c/r$h;->f:Ljava/lang/String;

    move-object v2, p1

    move-wide v6, v0

    .line 15
    invoke-direct/range {v2 .. v7}, Le/a/k/c/g;-><init>(Ljava/lang/String;JJ)V

    .line 16
    iget-object v2, p0, Le/a/k/c/r$h;->e:Le/a/k/c/r;

    .line 17
    iget-object v2, v2, Le/a/k/c/r;->h:Le/a/k/b/h;

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "videoFileInfo"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v3, v2, Le/a/k/b/h;->b:Le/a/k/c/i1;

    const-string v4, "debugVideoDownloadPercentage"

    invoke-interface {v3, v4}, Le/a/k/c/i1;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 20
    :cond_3
    iget-object v2, v2, Le/a/k/b/h;->b:Le/a/k/c/i1;

    const/16 v3, 0x64

    invoke-interface {v2, v4, v3}, Le/a/k/c/i1;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 21
    invoke-virtual {p1}, Le/a/k/c/g;->a()I

    move-result v3

    if-le v3, v2, :cond_4

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    long-to-double v0, v0

    mul-double/2addr v2, v0

    .line 22
    invoke-static {v2, v3}, Le/q/f/a/d/a;->K2(D)J

    move-result-wide v6

    .line 23
    iget-object v5, p1, Le/a/k/c/g;->a:Ljava/lang/String;

    iget-wide v8, p1, Le/a/k/c/g;->c:J

    const-string p1, "url"

    .line 24
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/g;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Le/a/k/c/g;-><init>(Ljava/lang/String;JJ)V

    :cond_4
    :goto_3
    return-object p1

    :cond_5
    return-object v1
.end method
