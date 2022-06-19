.class public final Le/a/k/c/u1;
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
    c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$getLatestOwnVideoFileInfo$2"
    f = "VideoFileUtil.kt"
    l = {
        0x77
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:J

.field public f:J

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/k/c/a;


# direct methods
.method public constructor <init>(Le/a/k/c/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/u1;->j:Le/a/k/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/u1;

    iget-object v1, p0, Le/a/k/c/u1;->j:Le/a/k/c/a;

    invoke-direct {v0, v1, p1}, Le/a/k/c/u1;-><init>(Le/a/k/c/a;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/c/u1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance v0, Le/a/k/c/u1;

    iget-object v1, p0, Le/a/k/c/u1;->j:Le/a/k/c/a;

    invoke-direct {v0, v1, p1}, Le/a/k/c/u1;-><init>(Le/a/k/c/a;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/c/u1;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-wide v0, p0, Le/a/k/c/u1;->f:J

    iget-wide v2, p0, Le/a/k/c/u1;->e:J

    iget-object v4, p0, Le/a/k/c/u1;->h:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    iget-object v5, p0, Le/a/k/c/u1;->g:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide v7, v0

    move-wide v9, v2

    move-object v6, v5

    move-object v3, p1

    :goto_0
    move-object v5, v4

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le/a/k/c/u1;->j:Le/a/k/c/a;

    invoke-static {v1}, Le/a/k/c/a;->a(Le/a/k/c/a;)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v1, v7

    const-string v9, "it"

    .line 8
    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "it.name"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    const-string v11, "recording_own"

    invoke-static {v9, v11, v6, v10}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    .line 9
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 10
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v2

    goto :goto_2

    .line 13
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    move-object v5, v4

    check-cast v5, Ljava/io/File;

    .line 16
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 17
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 18
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 19
    move-object v6, v5

    check-cast v6, Ljava/io/File;

    .line 20
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 21
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 22
    invoke-interface {v7, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_7

    move-object v4, v5

    move-object v7, v6

    .line 23
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 24
    :goto_2
    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_9

    .line 25
    iget-object v1, p0, Le/a/k/c/u1;->j:Le/a/k/c/a;

    .line 26
    invoke-static {v1, v4}, Le/a/k/c/a;->c(Le/a/k/c/a;Ljava/io/File;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 27
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-string v5, "video/mp4"

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v8, p0, Le/a/k/c/u1;->j:Le/a/k/c/a;

    iput-object v5, p0, Le/a/k/c/u1;->g:Ljava/lang/Object;

    iput-object v4, p0, Le/a/k/c/u1;->h:Ljava/lang/Object;

    iput-wide v1, p0, Le/a/k/c/u1;->e:J

    iput-wide v6, p0, Le/a/k/c/u1;->f:J

    iput v3, p0, Le/a/k/c/u1;->i:I

    invoke-virtual {v8, v4, p0}, Le/a/k/c/a;->e(Ljava/io/File;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_8

    return-object v0

    :cond_8
    move-wide v9, v1

    move-wide v7, v6

    move-object v6, v5

    goto/16 :goto_0

    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    new-instance v0, Le/a/k/c/r1;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Le/a/k/c/r1;-><init>(Ljava/io/File;Ljava/lang/String;JJZ)V

    move-object v2, v0

    :cond_9
    return-object v2
.end method
