.class public final Le/a/o5/j1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lu3/f;

.field public b:Le/a/o5/j1$b;

.field public final synthetic c:Le/a/o5/j1;


# direct methods
.method public constructor <init>(Le/a/o5/j1;Lu3/a0;)V
    .locals 3

    .line 1
    iput-object p1, p0, Le/a/o5/j1$c;->c:Le/a/o5/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lu3/g0$a;

    invoke-direct {p1}, Lu3/g0$a;-><init>()V

    invoke-virtual {p1, p2}, Lu3/g0$a;->j(Lu3/a0;)Lu3/g0$a;

    const-string p2, "GET"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Lu3/g0$a;->e(Ljava/lang/String;Lu3/j0;)Lu3/g0$a;

    .line 4
    invoke-virtual {p1}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object p1

    .line 5
    invoke-static {}, Le/a/b0/b/a/a;->c()Lu3/e0;

    move-result-object p2

    invoke-virtual {p2}, Lu3/e0;->b()Lu3/e0$a;

    move-result-object p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1b58

    .line 6
    invoke-virtual {p2, v1, v2, v0}, Lu3/e0$a;->b(JLjava/util/concurrent/TimeUnit;)Lu3/e0$a;

    .line 7
    new-instance v0, Lu3/e0;

    invoke-direct {v0, p2}, Lu3/e0;-><init>(Lu3/e0$a;)V

    .line 8
    invoke-virtual {v0, p1}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object p1

    iput-object p1, p0, Le/a/o5/j1$c;->a:Lu3/f;

    return-void
.end method


# virtual methods
.method public final a(Le/a/o5/j1$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/o5/j1$c;->b:Le/a/o5/j1$b;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Le/a/o5/j1$c;->b:Le/a/o5/j1$b;

    .line 3
    iget-object v0, p0, Le/a/o5/j1$c;->c:Le/a/o5/j1;

    .line 4
    iget-object v0, v0, Le/a/o5/j1;->c:Le/a/q2/a;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Result"

    .line 7
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p1, Le/a/q2/g$b$a;

    const/4 v2, 0x0

    const-string v3, "SaveContactPhoto"

    invoke-direct {p1, v3, v2, v1, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public onFailure(Lu3/f;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lu3/f;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Le/a/o5/j1$b;->c:Le/a/o5/j1$b;

    invoke-virtual {p0, p1}, Le/a/o5/j1$c;->a(Le/a/o5/j1$b;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Le/a/o5/j1$b;->d:Le/a/o5/j1$b;

    invoke-virtual {p0, p1}, Le/a/o5/j1$c;->a(Le/a/o5/j1$b;)V

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/o5/j1$c;->c:Le/a/o5/j1;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Le/a/o5/j1;->OA(Le/a/o5/j1;[B)V

    return-void
.end method

.method public onResponse(Lu3/f;Lu3/k0;)V
    .locals 4

    .line 1
    sget-object v0, Le/a/o5/j1$b;->c:Le/a/o5/j1$b;

    invoke-interface {p1}, Lu3/f;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lu3/k0;->j()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Content-Type"

    const-string v2, ""

    const-string v3, "name"

    .line 3
    invoke-static {v1, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p2, Lu3/k0;->g:Lu3/z;

    invoke-virtual {v3, v1}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    :cond_2
    const-string v1, "image/"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, p2, Lu3/k0;->h:Lu3/l0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Le/a/o5/j1$c;->a(Le/a/o5/j1$b;)V

    .line 8
    iget-object p2, p0, Le/a/o5/j1$c;->c:Le/a/o5/j1;

    invoke-static {p2, p1}, Le/a/o5/j1;->OA(Le/a/o5/j1;[B)V

    return-void

    .line 9
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lu3/l0;->d()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object p2, p2, Lu3/k0;->j:Lu3/k0;

    if-nez p2, :cond_5

    .line 11
    sget-object p2, Le/a/o5/j1$b;->a:Le/a/o5/j1$b;

    invoke-virtual {p0, p2}, Le/a/o5/j1$c;->a(Le/a/o5/j1$b;)V

    goto :goto_1

    .line 12
    :cond_5
    sget-object p2, Le/a/o5/j1$b;->b:Le/a/o5/j1$b;

    invoke-virtual {p0, p2}, Le/a/o5/j1$c;->a(Le/a/o5/j1$b;)V

    .line 13
    :goto_1
    iget-object p2, p0, Le/a/o5/j1$c;->c:Le/a/o5/j1;

    invoke-static {p2, p1}, Le/a/o5/j1;->OA(Le/a/o5/j1;[B)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 14
    :try_start_2
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-virtual {p0, v0}, Le/a/o5/j1$c;->a(Le/a/o5/j1$b;)V

    .line 16
    iget-object p2, p0, Le/a/o5/j1$c;->c:Le/a/o5/j1;

    invoke-static {p2, p1}, Le/a/o5/j1;->OA(Le/a/o5/j1;[B)V

    :goto_2
    return-void

    .line 17
    :goto_3
    invoke-virtual {p0, v0}, Le/a/o5/j1$c;->a(Le/a/o5/j1$b;)V

    .line 18
    iget-object v0, p0, Le/a/o5/j1$c;->c:Le/a/o5/j1;

    invoke-static {v0, p1}, Le/a/o5/j1;->OA(Le/a/o5/j1;[B)V

    .line 19
    throw p2
.end method
