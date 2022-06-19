.class public final Le/a/f/a/t/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/t/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/f/a/t/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/f/a/t/b;",
        ">;",
        "Le/a/f/a/t/a;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/p1;

.field public e:Le/a/f/a/t/c$a;

.field public final f:Ls1/w/f;

.field public final g:Le/a/f/y/c;

.field public final h:Le/a/f/z/b;

.field public final i:Le/a/f/w/c;

.field public final j:Le/a/k/c/c2;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/f/y/c;Le/a/f/z/b;Le/a/f/w/c;Le/a/k/c/c2;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenProfilePictureHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerInfoRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPlayerConfigProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/f/a/t/c;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/f/a/t/c;->g:Le/a/f/y/c;

    iput-object p3, p0, Le/a/f/a/t/c;->h:Le/a/f/z/b;

    iput-object p4, p0, Le/a/f/a/t/c;->i:Le/a/f/w/c;

    iput-object p5, p0, Le/a/f/a/t/c;->j:Le/a/k/c/c2;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/incallui/service/CallState;)Lcom/truecaller/incallui/callui/callergradient/GradientColors;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->FULL_SCREEN_PROFILE_PICTURE_INCOMING:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->FULL_SCREEN_PROFILE_PICTURE_ONGOING:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    :goto_0
    return-object p1
.end method

.method public final Jj(Le/a/f/w/f;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/w/f;",
            "Lcom/truecaller/incallui/service/CallState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p3, Le/a/f/a/t/c$b;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/f/a/t/c$b;

    iget v2, v1, Le/a/f/a/t/c$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/t/c$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/t/c$b;

    invoke-direct {v1, p0, p3}, Le/a/f/a/t/c$b;-><init>(Le/a/f/a/t/c;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/f/a/t/c$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/a/t/c$b;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/f/a/t/c$b;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/truecaller/incallui/service/CallState;

    iget-object p1, v1, Le/a/f/a/t/c$b;->h:Ljava/lang/Object;

    check-cast p1, Le/a/f/w/f;

    iget-object v3, v1, Le/a/f/a/t/c$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/t/c;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    instance-of p3, p1, Le/a/f/w/f$b;

    if-nez p3, :cond_5

    move-object p3, v8

    goto :goto_1

    :cond_5
    move-object p3, p1

    :goto_1
    check-cast p3, Le/a/f/w/f$b;

    if-eqz p3, :cond_c

    .line 5
    iget-object p3, p3, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 6
    iput-object p0, v1, Le/a/f/a/t/c$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/f/a/t/c$b;->h:Ljava/lang/Object;

    iput-object p2, v1, Le/a/f/a/t/c$b;->i:Ljava/lang/Object;

    iput v6, v1, Le/a/f/a/t/c$b;->e:I

    invoke-virtual {p0, p3, v1}, Le/a/f/a/t/c;->Lj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_6

    return-object v2

    :cond_6
    move-object v3, p0

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, v3, Le/a/f/a/t/c;->g:Le/a/f/y/c;

    invoke-interface {p3}, Le/a/f/y/c;->x()Lcom/truecaller/incallui/service/CallType;

    move-result-object p3

    sget-object v6, Lcom/truecaller/incallui/service/CallType;->OUTGOING:Lcom/truecaller/incallui/service/CallType;

    if-ne p3, v6, :cond_7

    goto :goto_3

    .line 7
    :cond_7
    iget-object p3, v3, Le/a/f/a/t/c;->d:Lq3/a/p1;

    if-eqz p3, :cond_8

    invoke-static {p3, v8, v7, v8}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    :cond_8
    iget-object p3, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/f/a/t/b;

    if-eqz p3, :cond_9

    .line 9
    invoke-interface {p3}, Le/a/f/a/t/b;->getVideoPlayingState()Lq3/a/x2/i1;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 10
    new-instance v1, Le/a/f/a/t/c$c;

    invoke-direct {v1, v3, p2, p1, v8}, Le/a/f/a/t/c$c;-><init>(Le/a/f/a/t/c;Lcom/truecaller/incallui/service/CallState;Le/a/f/w/f;Ls1/w/d;)V

    .line 11
    new-instance p1, Lq3/a/x2/u0;

    invoke-direct {p1, p3, v1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 12
    invoke-static {p1, v3}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    move-result-object v8

    :cond_9
    iput-object v8, v3, Le/a/f/a/t/c;->d:Lq3/a/p1;

    return-object v0

    .line 13
    :cond_a
    :goto_3
    iput-object v8, v1, Le/a/f/a/t/c$b;->g:Ljava/lang/Object;

    iput-object v8, v1, Le/a/f/a/t/c$b;->h:Ljava/lang/Object;

    iput-object v8, v1, Le/a/f/a/t/c$b;->i:Ljava/lang/Object;

    iput v5, v1, Le/a/f/a/t/c$b;->e:I

    invoke-virtual {v3, p2, p1, v4, v1}, Le/a/f/a/t/c;->Kj(Lcom/truecaller/incallui/service/CallState;Le/a/f/w/f;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_b

    return-object v2

    :cond_b
    :goto_4
    return-object v0

    .line 14
    :cond_c
    iput v7, v1, Le/a/f/a/t/c$b;->e:I

    invoke-virtual {p0, p2, p1, v4, v1}, Le/a/f/a/t/c;->Kj(Lcom/truecaller/incallui/service/CallState;Le/a/f/w/f;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_d

    return-object v2

    :cond_d
    :goto_5
    return-object v0
.end method

.method public final Kj(Lcom/truecaller/incallui/service/CallState;Le/a/f/w/f;ZLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/incallui/service/CallState;",
            "Le/a/f/w/f;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p4, Le/a/f/a/t/c$d;

    if-eqz v1, :cond_0

    move-object v1, p4

    check-cast v1, Le/a/f/a/t/c$d;

    iget v2, v1, Le/a/f/a/t/c$d;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/t/c$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/t/c$d;

    invoke-direct {v1, p0, p4}, Le/a/f/a/t/c$d;-><init>(Le/a/f/a/t/c;Ls1/w/d;)V

    :goto_0
    iget-object p4, v1, Le/a/f/a/t/c$d;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/a/t/c$d;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v6, :cond_1

    iget-boolean p3, v1, Le/a/f/a/t/c$d;->j:Z

    iget-object p1, v1, Le/a/f/a/t/c$d;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Le/a/f/w/f;

    iget-object p1, v1, Le/a/f/a/t/c$d;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    iget-object v1, v1, Le/a/f/a/t/c$d;->g:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/t/c;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    .line 4
    sget-object p4, Lcom/truecaller/incallui/service/CallState;->STATE_DISCONNECTED:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, p4, :cond_3

    if-nez p3, :cond_3

    goto/16 :goto_a

    .line 5
    :cond_3
    instance-of p4, p2, Le/a/f/w/f$b;

    if-nez p4, :cond_4

    move-object p4, v5

    goto :goto_1

    :cond_4
    move-object p4, p2

    :goto_1
    check-cast p4, Le/a/f/w/f$b;

    if-eqz p4, :cond_6

    .line 6
    iget-object v3, p0, Le/a/f/a/t/c;->h:Le/a/f/z/b;

    .line 7
    iget-object p4, p4, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 8
    iget-object v7, p0, Le/a/f/a/t/c;->g:Le/a/f/y/c;

    invoke-interface {v7}, Le/a/f/y/c;->c()Z

    move-result v7

    iput-object p0, v1, Le/a/f/a/t/c$d;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/f/a/t/c$d;->h:Ljava/lang/Object;

    iput-object p2, v1, Le/a/f/a/t/c$d;->i:Ljava/lang/Object;

    iput-boolean p3, v1, Le/a/f/a/t/c$d;->j:Z

    iput v6, v1, Le/a/f/a/t/c$d;->e:I

    check-cast v3, Le/a/f/z/c;

    invoke-virtual {v3, p4, v7, v1}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v2, :cond_5

    return-object v2

    :cond_5
    move-object v1, p0

    :goto_2
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 9
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 10
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    goto :goto_3

    :cond_6
    move-object v1, p0

    :cond_7
    move p4, v4

    :goto_3
    if-nez p1, :cond_8

    goto/16 :goto_6

    .line 11
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    const/4 v3, 0x5

    if-eq v2, v3, :cond_9

    const/4 v3, 0x6

    if-eq v2, v3, :cond_9

    goto/16 :goto_6

    .line 12
    :cond_9
    iget-object v2, v1, Le/a/f/a/t/c;->g:Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->c()Z

    move-result v2

    .line 13
    instance-of v3, p2, Le/a/f/w/f$b;

    if-nez v3, :cond_a

    goto/16 :goto_6

    .line 14
    :cond_a
    check-cast p2, Le/a/f/w/f$b;

    .line 15
    iget-object p2, p2, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    if-eqz v2, :cond_b

    goto/16 :goto_6

    :cond_b
    if-eqz p3, :cond_c

    .line 16
    sget-object v2, Lcom/truecaller/incallui/service/CallState;->STATE_RINGING:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, v2, :cond_c

    iget-object v2, v1, Le/a/f/a/t/c;->e:Le/a/f/a/t/c$a;

    sget-object v3, Le/a/f/a/t/c$a;->a:Le/a/f/a/t/c$a;

    if-ne v2, v3, :cond_c

    sget-object v5, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->FULL_SCREEN_PROFILE_PICTURE_INCOMING:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto/16 :goto_6

    :cond_c
    if-eqz p3, :cond_d

    .line 17
    iget-object v2, v1, Le/a/f/a/t/c;->e:Le/a/f/a/t/c$a;

    sget-object v3, Le/a/f/a/t/c$a;->b:Le/a/f/a/t/c$a;

    if-ne v2, v3, :cond_d

    invoke-virtual {v1, p1}, Le/a/f/a/t/c;->Ij(Lcom/truecaller/incallui/service/CallState;)Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    move-result-object v5

    goto/16 :goto_6

    .line 18
    :cond_d
    invoke-static {p2}, Le/a/m0/a1$k;->L0(Le/a/f/a/g;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v5, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->VERIFIED_BUSINESS:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto/16 :goto_6

    .line 19
    :cond_e
    invoke-static {p2}, Le/a/m0/a1$k;->z0(Le/a/f/a/g;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz p4, :cond_f

    invoke-virtual {v1, p1}, Le/a/f/a/t/c;->Ij(Lcom/truecaller/incallui/service/CallState;)Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    move-result-object v5

    goto/16 :goto_6

    .line 20
    :cond_f
    invoke-static {p2}, Le/a/m0/a1$k;->z0(Le/a/f/a/g;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez p4, :cond_10

    sget-object v5, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->GOLD:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto :goto_6

    .line 21
    :cond_10
    iget-boolean v2, p2, Le/a/f/a/g;->k:Z

    if-nez v2, :cond_12

    .line 22
    iget-object v2, p2, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v2, :cond_11

    goto :goto_4

    :cond_11
    move v2, v4

    goto :goto_5

    :cond_12
    :goto_4
    move v2, v6

    :goto_5
    if-eqz v2, :cond_13

    .line 23
    sget-object v5, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->SPAM:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto :goto_6

    .line 24
    :cond_13
    iget-boolean v2, p2, Le/a/f/a/g;->u:Z

    if-eqz v2, :cond_14

    if-nez p4, :cond_14

    .line 25
    sget-object v5, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->CRED_PRIVILEGE:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto :goto_6

    .line 26
    :cond_14
    invoke-static {p2}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz p4, :cond_15

    invoke-virtual {v1, p1}, Le/a/f/a/t/c;->Ij(Lcom/truecaller/incallui/service/CallState;)Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    move-result-object v5

    goto :goto_6

    .line 27
    :cond_15
    invoke-static {p2}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez p4, :cond_16

    sget-object v5, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->GOLD:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto :goto_6

    .line 28
    :cond_16
    iget-boolean v2, p2, Le/a/f/a/g;->r:Z

    if-eqz v2, :cond_17

    .line 29
    sget-object v5, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->PRIORITY:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto :goto_6

    .line 30
    :cond_17
    iget-boolean v2, p2, Le/a/f/a/g;->t:Z

    if-eqz v2, :cond_18

    .line 31
    sget-object v5, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->VERIFIED_BUSINESS:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto :goto_6

    .line 32
    :cond_18
    iget-boolean v2, p2, Le/a/f/a/g;->o:Z

    if-nez v2, :cond_19

    .line 33
    iget-boolean p2, p2, Le/a/f/a/g;->p:Z

    if-nez p2, :cond_19

    move v4, v6

    :cond_19
    if-eqz v4, :cond_1a

    .line 34
    sget-object v5, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->IDENTIFIED:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    goto :goto_6

    :cond_1a
    if-eqz p4, :cond_1b

    .line 35
    invoke-virtual {v1, p1}, Le/a/f/a/t/c;->Ij(Lcom/truecaller/incallui/service/CallState;)Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    move-result-object v5

    :cond_1b
    :goto_6
    if-nez v5, :cond_1d

    .line 36
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/t/b;

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Le/a/f/a/t/b;->b()V

    :cond_1c
    return-object v0

    :cond_1d
    if-nez p4, :cond_21

    if-eqz p3, :cond_1e

    goto :goto_7

    .line 37
    :cond_1e
    sget-object p2, Lcom/truecaller/incallui/service/CallState;->STATE_RINGING:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, p2, :cond_1f

    const p1, 0x3f4ccccd    # 0.8f

    goto :goto_8

    .line 38
    :cond_1f
    sget-object p2, Lcom/truecaller/incallui/service/CallState;->STATE_DIALING:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, p2, :cond_20

    if-nez p4, :cond_20

    const p1, 0x3f47ae14    # 0.78f

    goto :goto_8

    :cond_20
    const p1, 0x3f0ccccd    # 0.55f

    goto :goto_8

    :cond_21
    :goto_7
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_8
    if-eqz p4, :cond_22

    const-wide/16 p2, 0x0

    goto :goto_9

    :cond_22
    const-wide/16 p2, 0x12c

    .line 39
    :goto_9
    iget-object p4, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/f/a/t/b;

    if-eqz p4, :cond_23

    invoke-interface {p4, v5, p1, p2, p3}, Le/a/f/a/t/b;->a(Lcom/truecaller/incallui/callui/callergradient/GradientColors;FJ)V

    :cond_23
    :goto_a
    return-object v0
.end method

.method public final Lj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/f/a/t/c$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/f/a/t/c$e;

    iget v1, v0, Le/a/f/a/t/c$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/a/t/c$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/a/t/c$e;

    invoke-direct {v0, p0, p2}, Le/a/f/a/t/c$e;-><init>(Le/a/f/a/t/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/f/a/t/c$e;->d:Ljava/lang/Object;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v0, Le/a/f/a/t/c$e;->e:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v10, :cond_2

    if-ne v1, v9, :cond_1

    iget-object p1, v0, Le/a/f/a/t/c$e;->g:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/t/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/f/a/t/c$e;->h:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/g;

    iget-object v1, v0, Le/a/f/a/t/c$e;->g:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/t/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, v11

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le/a/f/a/t/c;->j:Le/a/k/c/c2;

    .line 5
    iget-boolean v2, p1, Le/a/f/a/g;->p:Z

    .line 6
    iget-object v3, p1, Le/a/f/a/g;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 7
    iput-object p0, v0, Le/a/f/a/t/c$e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/f/a/t/c$e;->h:Ljava/lang/Object;

    iput v10, v0, Le/a/f/a/t/c$e;->e:I

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Le/a/p5/s0/g;->v1(Le/a/k/c/c2;ZLjava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v8, :cond_4

    return-object v8

    :cond_4
    move-object v1, p2

    move-object p2, p1

    move-object p1, p0

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    sget-object v2, Le/a/f/a/t/c$a;->b:Le/a/f/a/t/c$a;

    iput-object v2, p1, Le/a/f/a/t/c;->e:Le/a/f/a/t/c$a;

    .line 9
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 10
    iget-object v1, p1, Le/a/f/a/t/c;->j:Le/a/k/c/c2;

    .line 11
    iget-object p2, p2, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    .line 12
    iput-object p1, v0, Le/a/f/a/t/c$e;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/f/a/t/c$e;->h:Ljava/lang/Object;

    iput v9, v0, Le/a/f/a/t/c$e;->e:I

    invoke-interface {v1, p2, v0}, Le/a/k/c/c2;->d(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v8, :cond_6

    return-object v8

    :cond_6
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    sget-object v0, Le/a/f/a/t/c$a;->a:Le/a/f/a/t/c$a;

    iput-object v0, p1, Le/a/f/a/t/c;->e:Le/a/f/a/t/c$a;

    .line 14
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    .line 15
    :cond_9
    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/f/a/t/b;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance p1, Ls1/z/c/c0;

    invoke-direct {p1}, Ls1/z/c/c0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    iput-object v0, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Le/a/f/a/t/c;->g:Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object v2

    new-instance v3, Le/a/f/a/t/d;

    invoke-direct {v3, p0, p1, v1, v0}, Le/a/f/a/t/d;-><init>(Le/a/f/a/t/c;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {p0, v2, v3}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 7
    iget-object v2, p0, Le/a/f/a/t/c;->i:Le/a/f/w/c;

    invoke-interface {v2}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object v2

    new-instance v3, Le/a/f/a/t/e;

    invoke-direct {v3, p0, v1, p1, v0}, Le/a/f/a/t/e;-><init>(Le/a/f/a/t/c;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {p0, v2, v3}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    return-void
.end method
