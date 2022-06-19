.class public final Le/a/s/s/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s/s/a;


# instance fields
.field public final a:Lq3/a/b3/c;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/s/o/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/o4/g;

.field public final d:Le/a/s/s/c;

.field public final e:Le/a/p5/c;

.field public final f:Le/a/e4/p;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/o4/g;Le/a/s/s/c;Le/a/p5/c;Le/a/e4/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/s/o/d;",
            ">;",
            "Le/a/o4/g;",
            "Le/a/s/s/c;",
            "Le/a/p5/c;",
            "Le/a/e4/p;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "restAdapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushIdProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/s/s/b;->b:Lo3/a;

    iput-object p2, p0, Le/a/s/s/b;->c:Le/a/o4/g;

    iput-object p3, p0, Le/a/s/s/b;->d:Le/a/s/s/c;

    iput-object p4, p0, Le/a/s/s/b;->e:Le/a/p5/c;

    iput-object p5, p0, Le/a/s/s/b;->f:Le/a/e4/p;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/s/s/b;->a:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/s/s/b$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/s/s/b$c;

    iget v1, v0, Le/a/s/s/b$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/s/s/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/s/s/b$c;

    invoke-direct {v0, p0, p1}, Le/a/s/s/b$c;-><init>(Le/a/s/s/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/s/s/b$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/s/s/b$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Le/a/s/s/b;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/s/o/d;

    iput v3, v0, Le/a/s/s/b$c;->e:I

    invoke-interface {p1, v0}, Le/a/s/o/f;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/truecaller/callhero_assistant/data/DisableServiceResponseDto;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/DisableServiceResponseDto;->getSuccess()Z

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/s/s/b$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/s/s/b$d;

    iget v1, v0, Le/a/s/s/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/s/s/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/s/s/b$d;

    invoke-direct {v0, p0, p1}, Le/a/s/s/b$d;-><init>(Le/a/s/s/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/s/s/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/s/s/b$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Le/a/s/s/b;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/s/o/d;

    iput v3, v0, Le/a/s/s/b$d;->e:I

    invoke-interface {p1, v0}, Le/a/s/o/f;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/truecaller/callhero_assistant/data/EnableServiceResponseDto;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/EnableServiceResponseDto;->getSuccess()Z

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public c(Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/s/s/b$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/s/s/b$g;

    iget v1, v0, Le/a/s/s/b$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/s/s/b$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/s/s/b$g;

    invoke-direct {v0, p0, p2}, Le/a/s/s/b$g;-><init>(Le/a/s/s/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/s/s/b$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/s/s/b$g;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    iget-object p2, p0, Le/a/s/s/b;->b:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/s/o/d;

    iput v3, v0, Le/a/s/s/b$g;->e:I

    invoke-interface {p2, p1, v0}, Le/a/s/o/f;->c(Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/truecaller/callhero_assistant/data/UpdatePreferencesResponseDto;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/callhero_assistant/data/UpdatePreferencesResponseDto;->getSuccess()Z

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/s/s/b$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/s/s/b$e;

    iget v1, v0, Le/a/s/s/b$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/s/s/b$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/s/s/b$e;

    invoke-direct {v0, p0, p1}, Le/a/s/s/b$e;-><init>(Le/a/s/s/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/s/s/b$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/s/s/b$e;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Le/a/s/s/b$e;->h:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    iget-object v0, v0, Le/a/s/s/b$e;->g:Ljava/lang/Object;

    check-cast v0, Le/a/s/s/b;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/s/s/b$e;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v4, v0, Le/a/s/s/b$e;->g:Ljava/lang/Object;

    check-cast v4, Le/a/s/s/b;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    :cond_3
    iget-object v2, v0, Le/a/s/s/b$e;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v7, v0, Le/a/s/s/b$e;->g:Ljava/lang/Object;

    check-cast v7, Le/a/s/s/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/s/s/b;->a:Lq3/a/b3/c;

    .line 5
    iput-object p0, v0, Le/a/s/s/b$e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/s/s/b$e;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/s/s/b$e;->e:I

    invoke-interface {p1, v6, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, p0

    move-object v2, p1

    .line 6
    :goto_1
    :try_start_2
    iget-object p1, v7, Le/a/s/s/b;->d:Le/a/s/s/c;

    invoke-interface {p1}, Le/a/s/s/c;->getAuthToken()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_6

    .line 7
    invoke-interface {v2, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    .line 8
    :cond_6
    :try_start_3
    iput-object v7, v0, Le/a/s/s/b$e;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/s/s/b$e;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/s/s/b$e;->e:I

    .line 9
    const-class p1, Le/a/n2/a/c;

    new-instance v8, Le/a/b0/b/a/b;

    invoke-direct {v8}, Le/a/b0/b/a/b;-><init>()V

    .line 10
    sget-object v9, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v8, v9}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 11
    invoke-virtual {v8, p1}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 12
    new-instance v9, Le/a/b0/b/g/b;

    invoke-direct {v9}, Le/a/b0/b/g/b;-><init>()V

    .line 13
    sget-object v10, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-static {v9, v10, v6, v4, v6}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 14
    invoke-virtual {v9, v5}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 15
    new-instance v4, Le/a/b0/b/g/a$h;

    invoke-direct {v4, v5}, Le/a/b0/b/g/a$h;-><init>(Z)V

    iput-object v4, v9, Le/a/b0/b/g/b;->f:Le/a/b0/b/g/a$h;

    .line 16
    invoke-static {v9}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v4

    .line 17
    invoke-virtual {v8, v4}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 18
    invoke-virtual {v8, p1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/n2/a/c;

    .line 19
    invoke-interface {p1, v0}, Le/a/n2/a/c;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v4, v7

    .line 20
    :goto_2
    check-cast p1, Lcom/truecaller/account/network/CallHeroTokenDto;

    invoke-virtual {p1}, Lcom/truecaller/account/network/CallHeroTokenDto;->getToken()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :try_start_4
    new-instance v5, Lcom/truecaller/callhero_assistant/data/SignupTcRequestDto;

    .line 22
    iget-object v7, v4, Le/a/s/s/b;->f:Le/a/e4/p;

    invoke-interface {v7}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object v7, v6

    .line 23
    :goto_3
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, v4, Le/a/s/s/b;->e:Le/a/p5/c;

    invoke-interface {v9}, Le/a/p5/c;->d()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    .line 24
    invoke-direct {v5, p1, v7, v8, v9}, Lcom/truecaller/callhero_assistant/data/SignupTcRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    :try_start_5
    iget-object p1, v4, Le/a/s/s/b;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/s/o/d;

    iput-object v4, v0, Le/a/s/s/b$e;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/s/s/b$e;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/s/s/b$e;->e:I

    invoke-interface {p1, v5, v0}, Le/a/s/o/f;->g(Lcom/truecaller/callhero_assistant/data/SignupTcRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v1, v2

    move-object v0, v4

    :goto_4
    :try_start_6
    check-cast p1, Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 26
    :try_start_7
    iget-object v2, v0, Le/a/s/s/b;->d:Le/a/s/s/c;

    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/s/s/c;->J(Ljava/lang/String;)V

    .line 27
    iget-object v0, v0, Le/a/s/s/b;->d:Le/a/s/s/c;

    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;->getCarrier()Lcom/truecaller/callhero_assistant/data/Carrier;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/Carrier;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_a
    move-object v2, v6

    :goto_5
    invoke-interface {v0, v2}, Le/a/s/s/c;->F(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;->getToken()Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 29
    invoke-interface {v1, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :goto_6
    move-object v2, v1

    goto :goto_7

    :catch_0
    move-object v1, v2

    :catch_1
    invoke-interface {v1, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v6

    :catch_2
    invoke-interface {v2, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v6

    :goto_7
    invoke-interface {v2, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/s/s/b$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/s/s/b$f;

    iget v1, v0, Le/a/s/s/b$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/s/s/b$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/s/s/b$f;

    invoke-direct {v0, p0, p2}, Le/a/s/s/b$f;-><init>(Le/a/s/s/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/s/s/b$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/s/s/b$f;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    iget-object p2, p0, Le/a/s/s/b;->b:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/s/o/d;

    new-instance v2, Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;

    invoke-direct {v2, p1}, Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;-><init>(Ljava/lang/String;)V

    iput v3, v0, Le/a/s/s/b$f;->e:I

    invoke-interface {p2, v2, v0}, Le/a/s/o/f;->d(Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/truecaller/callhero_assistant/data/SaveCarrierResponseDto;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/callhero_assistant/data/SaveCarrierResponseDto;->getDid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p1, Le/a/s/s/b$a;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/s/s/b$a;

    iget v2, v1, Le/a/s/s/b$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/s/s/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/s/s/b$a;

    invoke-direct {v1, p0, p1}, Le/a/s/s/b$a;-><init>(Le/a/s/s/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/s/s/b$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/s/s/b$a;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v1, Le/a/s/s/b$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/s/s/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lq3/a/t0;->d:Lq3/a/g0;

    .line 5
    new-instance v3, Le/a/s/s/b$b;

    invoke-direct {v3, p0, v4}, Le/a/s/s/b$b;-><init>(Le/a/s/s/b;Ls1/w/d;)V

    iput-object p0, v1, Le/a/s/s/b$a;->g:Ljava/lang/Object;

    iput v6, v1, Le/a/s/s/b$a;->e:I

    invoke-static {p1, v3, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v3, p0

    :goto_1
    check-cast p1, Le/a/o4/d;

    if-eqz p1, :cond_7

    .line 6
    iget-object v6, p1, Le/a/o4/d;->b:Le/a/d4/e;

    .line 7
    instance-of v6, v6, Le/a/d4/e$a;

    if-nez v6, :cond_5

    return-object v0

    .line 8
    :cond_5
    :try_start_1
    iget-object v3, v3, Le/a/s/s/b;->b:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/s/o/d;

    new-instance v6, Le/a/s/k/a;

    .line 9
    iget-object p1, p1, Le/a/o4/d;->a:Ljava/lang/String;

    .line 10
    invoke-direct {v6, p1}, Le/a/s/k/a;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Le/a/s/s/b$a;->g:Ljava/lang/Object;

    iput v5, v1, Le/a/s/s/b$a;->e:I

    invoke-interface {v3, v6, v1}, Le/a/s/o/f;->e(Le/a/s/k/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    return-object v2

    :cond_6
    :goto_2
    check-cast p1, Le/a/s/k/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :catch_0
    :cond_7
    return-object v0
.end method
