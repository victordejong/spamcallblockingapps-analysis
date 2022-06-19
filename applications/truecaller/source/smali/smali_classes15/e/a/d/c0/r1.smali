.class public final Le/a/d/c0/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/q1;


# instance fields
.field public final a:Le/a/d/c0/y0;

.field public final b:Le/a/d/c0/j1;


# direct methods
.method public constructor <init>(Le/a/d/c0/y0;Le/a/d/c0/j1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "voipIdProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/r1;->a:Le/a/d/c0/y0;

    iput-object p2, p0, Le/a/d/c0/r1;->b:Le/a/d/c0/j1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/util/VoipSearchDirection;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/voip/VoipUser;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/d/c0/r1$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/d/c0/r1$a;

    iget v1, v0, Le/a/d/c0/r1$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/r1$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/r1$a;

    invoke-direct {v0, p0, p3}, Le/a/d/c0/r1$a;-><init>(Le/a/d/c0/r1;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/d/c0/r1$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/r1$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/c0/r1$a;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/truecaller/voip/util/VoipSearchDirection;

    iget-object p1, v0, Le/a/d/c0/r1$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/d/c0/r1$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/r1;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/d/c0/r1;->a:Le/a/d/c0/y0;

    iput-object p0, v0, Le/a/d/c0/r1$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/c0/r1$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/c0/r1$a;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/d/c0/r1$a;->e:I

    invoke-interface {p3, p1, v0}, Le/a/d/c0/y0;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p3, Ljava/lang/String;

    const/4 v4, 0x0

    if-nez p3, :cond_5

    return-object v4

    .line 6
    :cond_5
    iput-object v4, v0, Le/a/d/c0/r1$a;->g:Ljava/lang/Object;

    iput-object v4, v0, Le/a/d/c0/r1$a;->h:Ljava/lang/Object;

    iput-object v4, v0, Le/a/d/c0/r1$a;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/r1$a;->e:I

    invoke-virtual {v2, p1, p3, p2, v0}, Le/a/d/c0/r1;->c(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object p3
.end method

.method public b(Le/a/d/c0/f1;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/f1;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/voip/VoipUser;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/r1$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/r1$b;

    iget v1, v0, Le/a/d/c0/r1$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/r1$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/r1$b;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/r1$b;-><init>(Le/a/d/c0/r1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/r1$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/r1$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c0/r1$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/f1;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Le/a/d/c0/f1;->e:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Le/a/d/c0/r1;->a:Le/a/d/c0/y0;

    iput-object p1, v0, Le/a/d/c0/r1$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/r1$b;->e:I

    invoke-interface {v2, p2, v0}, Le/a/d/c0/y0;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_4

    .line 7
    iget-object p1, p1, Le/a/d/c0/f1;->e:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_4
    invoke-static {p1, p2}, Le/a/p5/s0/g;->Q1(Le/a/d/c0/f1;Ljava/lang/String;)Lcom/truecaller/voip/VoipUser;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/util/VoipSearchDirection;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/voip/VoipUser;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/d/c0/r1$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/d/c0/r1$c;

    iget v1, v0, Le/a/d/c0/r1$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/r1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/r1$c;

    invoke-direct {v0, p0, p4}, Le/a/d/c0/r1$c;-><init>(Le/a/d/c0/r1;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/d/c0/r1$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/r1$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c0/r1$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Le/a/d/c0/r1$c;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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
    iget-object p4, p0, Le/a/d/c0/r1;->b:Le/a/d/c0/j1;

    iput-object p1, v0, Le/a/d/c0/r1$c;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/c0/r1$c;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/r1$c;->e:I

    invoke-interface {p4, p2, p3, v0}, Le/a/d/c0/j1;->E(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p4, Le/a/d/c0/f1;

    if-nez p4, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_4
    invoke-static {p4, p1}, Le/a/p5/s0/g;->Q1(Le/a/d/c0/f1;Ljava/lang/String;)Lcom/truecaller/voip/VoipUser;

    move-result-object p1

    return-object p1
.end method
