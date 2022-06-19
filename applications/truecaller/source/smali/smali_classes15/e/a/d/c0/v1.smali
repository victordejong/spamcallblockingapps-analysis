.class public final Le/a/d/c0/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/u1;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/d/p/a;

.field public final c:Le/a/d/c0/y0;

.field public final d:Le/a/d/c0/a2/a;

.field public final e:Le/a/d/c0/o1;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/p/a;Le/a/d/c0/y0;Le/a/d/c0/a2/a;Le/a/d/c0/o1;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restApi"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetDomainResolver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/v1;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/v1;->b:Le/a/d/p/a;

    iput-object p3, p0, Le/a/d/c0/v1;->c:Le/a/d/c0/y0;

    iput-object p4, p0, Le/a/d/c0/v1;->d:Le/a/d/c0/a2/a;

    iput-object p5, p0, Le/a/d/c0/v1;->e:Le/a/d/c0/o1;

    return-void
.end method


# virtual methods
.method public final a(Le/a/b0/b/e;JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/b/e;",
            "J",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/voip/api/CrossDcWakeUpDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Le/a/d/c0/v1$a;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Le/a/d/c0/v1$a;

    iget v1, v0, Le/a/d/c0/v1$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/v1$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/v1$a;

    invoke-direct {v0, p0, p5}, Le/a/d/c0/v1$a;-><init>(Le/a/d/c0/v1;Ls1/w/d;)V

    :goto_0
    iget-object p5, v0, Le/a/d/c0/v1$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/v1$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-wide p2, v0, Le/a/d/c0/v1$a;->j:J

    iget-object p1, v0, Le/a/d/c0/v1$a;->i:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Ljava/lang/String;

    iget-object p1, v0, Le/a/d/c0/v1$a;->h:Ljava/lang/Object;

    check-cast p1, Le/a/b0/b/e;

    iget-object v2, v0, Le/a/d/c0/v1$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/v1;

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p5, p0, Le/a/d/c0/v1;->c:Le/a/d/c0/y0;

    iput-object p0, v0, Le/a/d/c0/v1$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/c0/v1$a;->h:Ljava/lang/Object;

    iput-object p4, v0, Le/a/d/c0/v1$a;->i:Ljava/lang/Object;

    iput-wide p2, v0, Le/a/d/c0/v1$a;->j:J

    iput v4, v0, Le/a/d/c0/v1$a;->e:I

    invoke-interface {p5, v0}, Le/a/d/c0/y0;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p5, Ljava/lang/String;

    if-nez p5, :cond_5

    return-object v5

    .line 6
    :cond_5
    :try_start_1
    iget-object v2, v2, Le/a/d/c0/v1;->b:Le/a/d/p/a;

    new-instance v4, Lcom/truecaller/voip/api/CrossDcWakeUpRequestDto;

    invoke-direct {v4, p2, p3, p5, p4}, Lcom/truecaller/voip/api/CrossDcWakeUpRequestDto;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Le/a/d/c0/v1$a;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/d/c0/v1$a;->h:Ljava/lang/Object;

    iput-object v5, v0, Le/a/d/c0/v1$a;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/v1$a;->e:I

    invoke-interface {v2, p1, v4, v0}, Le/a/d/p/a;->e(Le/a/b0/b/e;Lcom/truecaller/voip/api/CrossDcWakeUpRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_6

    return-object v1

    .line 7
    :cond_6
    :goto_2
    check-cast p5, Lx3/a0;

    .line 8
    invoke-virtual {p5}, Lx3/a0;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 9
    iget-object p1, p5, Lx3/a0;->b:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/truecaller/voip/api/CrossDcWakeUpDto;

    move-object v5, p1

    goto :goto_3

    .line 11
    :cond_7
    iget-object p1, p5, Lx3/a0;->a:Lu3/k0;

    .line 12
    iget p1, p1, Lu3/k0;->e:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_3
    return-object v5
.end method

.method public final b(JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/d/c0/v1$b;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/d/c0/v1$b;

    iget v1, v0, Le/a/d/c0/v1$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/v1$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/v1$b;

    invoke-direct {v0, p0, p4}, Le/a/d/c0/v1$b;-><init>(Le/a/d/c0/v1;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/d/c0/v1$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/v1$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p4, p0, Le/a/d/c0/v1;->b:Le/a/d/p/a;

    new-instance v2, Lcom/truecaller/voip/api/WakeUpRequestDto;

    invoke-direct {v2, p1, p2, p3}, Lcom/truecaller/voip/api/WakeUpRequestDto;-><init>(JLjava/lang/String;)V

    iput v4, v0, Le/a/d/c0/v1$b;->e:I

    invoke-interface {p4, v2, v0}, Le/a/d/p/a;->k(Lcom/truecaller/voip/api/WakeUpRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p4, Lx3/a0;

    .line 6
    invoke-virtual {p4}, Lx3/a0;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    move v3, v4

    goto :goto_2

    .line 7
    :cond_4
    iget-object p1, p4, Lx3/a0;->a:Lu3/k0;

    .line 8
    iget p1, p1, Lu3/k0;->e:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :catch_0
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
