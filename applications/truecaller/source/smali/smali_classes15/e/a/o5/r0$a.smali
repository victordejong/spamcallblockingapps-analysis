.class public final Le/a/o5/r0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o5/r0;->b(DDLjava/lang/String;)Le/a/r2/x;
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
        "Ls1/k<",
        "+",
        "Landroid/net/Uri;",
        "+",
        "Ljava/lang/Long;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.util.MediaHelperImpl$locationEntity$1"
    f = "MediaHelperImpl.kt"
    l = {
        0x129
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o5/r0;

.field public final synthetic g:D

.field public final synthetic h:D


# direct methods
.method public constructor <init>(Le/a/o5/r0;DDLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o5/r0$a;->f:Le/a/o5/r0;

    iput-wide p2, p0, Le/a/o5/r0$a;->g:D

    iput-wide p4, p0, Le/a/o5/r0$a;->h:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/o5/r0$a;

    iget-object v1, p0, Le/a/o5/r0$a;->f:Le/a/o5/r0;

    iget-wide v2, p0, Le/a/o5/r0$a;->g:D

    iget-wide v4, p0, Le/a/o5/r0$a;->h:D

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/o5/r0$a;-><init>(Le/a/o5/r0;DDLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v6, p2

    check-cast v6, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v6, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o5/r0$a;

    iget-object v1, p0, Le/a/o5/r0$a;->f:Le/a/o5/r0;

    iget-wide v2, p0, Le/a/o5/r0$a;->g:D

    iget-wide v4, p0, Le/a/o5/r0$a;->h:D

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Le/a/o5/r0$a;-><init>(Le/a/o5/r0;DDLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o5/r0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o5/r0$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Le/a/o5/r0$a;->f:Le/a/o5/r0;

    .line 5
    iget-object v3, p1, Le/a/o5/r0;->g:Le/a/a/k/a/g2/a;

    .line 6
    iget-wide v4, p0, Le/a/o5/r0$a;->g:D

    iget-wide v6, p0, Le/a/o5/r0$a;->h:D

    iput v2, p0, Le/a/o5/r0$a;->e:I

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Le/a/a/k/a/g2/a;->a(DDLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 8
    iget-object v1, p0, Le/a/o5/r0$a;->f:Le/a/o5/r0;

    .line 9
    iget-object v1, v1, Le/a/o5/r0;->h:Le/a/a/k/a/h;

    const-string v5, "application/vnd.truecaller.location"

    .line 10
    check-cast v1, Le/a/a/k/a/k;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uri"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mimeType"

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lu3/g0$a;

    invoke-direct {v2}, Lu3/g0$a;-><init>()V

    invoke-virtual {v2, p1}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    invoke-virtual {v2}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object p1

    .line 13
    iget-object v2, v1, Le/a/a/k/a/k;->c:Lu3/e0;

    invoke-virtual {v2, p1}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object p1

    check-cast p1, Lu3/p0/g/e;

    invoke-virtual {p1}, Lu3/p0/g/e;->execute()Lu3/k0;

    move-result-object p1

    .line 14
    :try_start_0
    iget-object v2, p1, Lu3/k0;->h:Lu3/l0;

    .line 15
    invoke-virtual {p1}, Lu3/k0;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iget-object v1, v1, Le/a/a/k/a/k;->g:Le/a/b0/q/b;

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Le/a/a/k/a/i;

    invoke-direct {v8, v2}, Le/a/a/k/a/i;-><init>(Lu3/l0;)V

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v10}, Le/a/n/g0;->L0(Le/a/b0/q/b;JLjava/lang/String;ZILs1/z/b/l;ILjava/lang/Object;)Ls1/k;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 18
    :cond_4
    :goto_1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_2
    return-object v0
.end method
