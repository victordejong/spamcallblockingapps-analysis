.class public final Le/a/g0/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g0/l/a;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/p5/g;

.field public final c:Le/a/v3/b;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/p5/g;Le/a/v3/b;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "pu+frs"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackSubject"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g0/l/b;->b:Le/a/p5/g;

    iput-object p2, p0, Le/a/g0/l/b;->c:Le/a/v3/b;

    iput-object p3, p0, Le/a/g0/l/b;->d:Ljava/lang/String;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/g0/l/b;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/g0/l/a$a;
    .locals 10

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p0, Le/a/g0/l/b;->d:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/g0/l/b;->b:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->g()Ljava/lang/String;

    move-result-object v7

    .line 3
    iget-object v8, p0, Le/a/g0/l/b;->c:Le/a/v3/b;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p3

    .line 4
    invoke-static/range {v1 .. v9}, Le/a/v3/c/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/v3/b;Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 6
    new-instance p2, Le/a/g0/l/a$a;

    const-string p3, "response"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result p3

    .line 7
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 8
    iget p1, p1, Lu3/k0;->e:I

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Le/a/g0/l/a$a;-><init>(ZLjava/lang/Integer;)V

    return-object p2
.end method

.method public b(Ljava/lang/String;Le/a/d4/e;Ljava/lang/String;)Le/a/g0/l/d;
    .locals 6

    const-class v0, Le/a/g0/l/c;

    const-string v1, "token"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "engine"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Le/a/b0/b/a/b;

    invoke-direct {p2}, Le/a/b0/b/a/b;-><init>()V

    .line 4
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {p2, v1, v0}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-virtual {v1, v2, p3}, Le/a/b0/b/g/b;->b(Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;)Le/a/b0/b/g/b;

    .line 6
    invoke-virtual {v1, v3}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 7
    invoke-static {v1}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object p3

    .line 8
    invoke-virtual {p2, p3}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 9
    invoke-virtual {p2, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/g0/l/c;

    .line 10
    new-instance p3, Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p3, p1, v0, v1, v4}, Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;-><init>(Ljava/lang/String;ZILs1/z/c/f;)V

    invoke-interface {p2, p3}, Le/a/g0/l/c;->a(Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;)Lx3/b;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    sget-object v2, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Le/a/g0/l/b;->b:Le/a/p5/g;

    invoke-interface {p2}, Le/a/p5/g;->i()Z

    move-result p2

    .line 12
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 14
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v1, v2, v0}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v2

    .line 15
    sget-object v5, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-virtual {v2, v5, p3}, Le/a/b0/b/g/b;->b(Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;)Le/a/b0/b/g/b;

    .line 16
    invoke-virtual {v2, v3}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 17
    invoke-static {v2}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object p3

    .line 18
    invoke-virtual {v1, p3}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 19
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/g0/l/c;

    .line 20
    new-instance v0, Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p3, v0}, Le/a/g0/l/c;->b(Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;)Lx3/b;

    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string p2, "response"

    .line 22
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 23
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 24
    check-cast p1, Le/a/g0/l/d;

    goto :goto_2

    .line 25
    :cond_1
    iget-object p1, p1, Lx3/a0;->c:Lu3/l0;

    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p1}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Le/a/g0/l/b;->a:Le/m/e/k;

    const-class p3, Lcom/truecaller/suspension/data/UnSuspendAccountErrorResponseDto;

    invoke-virtual {p2, p1, p3}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/suspension/data/UnSuspendAccountErrorResponseDto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v4}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v4, p2

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_2
    :goto_1
    move-object p1, v4

    :goto_2
    return-object p1

    .line 27
    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
