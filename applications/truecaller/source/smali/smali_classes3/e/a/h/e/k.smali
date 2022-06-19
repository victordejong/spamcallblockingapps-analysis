.class public final Le/a/h/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/e/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/p5/j0;

.field public final c:Le/a/o/c;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/w4/t/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e3/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/j0;Le/a/o/c;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/p5/j0;",
            "Le/a/o/c;",
            "Lo3/a<",
            "Le/a/w4/t/b/b;",
            ">;",
            "Lo3/a<",
            "Le/a/h/e/h;",
            ">;",
            "Lo3/a<",
            "Le/a/e3/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiateCallRouter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlert"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/e/k;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/h/e/k;->b:Le/a/p5/j0;

    iput-object p3, p0, Le/a/h/e/k;->c:Le/a/o/c;

    iput-object p4, p0, Le/a/h/e/k;->d:Lo3/a;

    iput-object p5, p0, Le/a/h/e/k;->e:Lo3/a;

    iput-object p6, p0, Le/a/h/e/k;->f:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/h/e/k$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/h/e/k$a;

    iget v1, v0, Le/a/h/e/k$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h/e/k$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h/e/k$a;

    invoke-direct {v0, p0, p4}, Le/a/h/e/k$a;-><init>(Le/a/h/e/k;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/h/e/k$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/h/e/k$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

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
    iget-object p4, p0, Le/a/h/e/k;->c:Le/a/o/c;

    invoke-interface {p4}, Le/a/o/c;->i()Lq3/a/x2/a1;

    move-result-object p4

    const/4 v2, 0x0

    invoke-interface {p4, v2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object p4, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    if-eqz p4, :cond_a

    .line 6
    iget-object p4, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->i:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    .line 7
    instance-of v2, p4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    instance-of v2, p4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnDemand;

    if-eqz v2, :cond_6

    .line 9
    invoke-virtual {p0, p1}, Le/a/h/e/k;->c(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 10
    invoke-virtual {p0}, Le/a/h/e/k;->d()V

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 11
    iget-object p2, p0, Le/a/h/e/k;->e:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/h/e/h;

    iget-object p3, p0, Le/a/h/e/k;->a:Landroid/content/Context;

    invoke-interface {p2, p3, p1}, Le/a/h/e/h;->g(Landroid/content/Context;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    :cond_5
    move v3, v4

    goto :goto_2

    .line 12
    :cond_6
    instance-of v2, p4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    if-eqz v2, :cond_8

    iput v4, v0, Le/a/h/e/k$a;->e:I

    invoke-virtual {p0, p1, p2, p3, v0}, Le/a/h/e/k;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_7

    return-object v1

    :cond_7
    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2

    .line 13
    :cond_8
    instance-of p1, p4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;

    if-eqz p1, :cond_9

    .line 14
    iget-object p1, p0, Le/a/h/e/k;->c:Le/a/o/c;

    invoke-interface {p1}, Le/a/o/c;->i()Lq3/a/x2/a1;

    move-result-object p1

    check-cast p4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;

    .line 15
    iget-object p2, p4, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;->a:Lcom/truecaller/data/entity/CallContextMessage;

    .line 16
    invoke-interface {p1, p2}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    .line 17
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 18
    :cond_9
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 19
    :cond_a
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/h/e/k$b;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/h/e/k$b;

    iget v1, v0, Le/a/h/e/k$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h/e/k$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h/e/k$b;

    invoke-direct {v0, p0, p4}, Le/a/h/e/k$b;-><init>(Le/a/h/e/k;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/h/e/k$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/h/e/k$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p3, v0, Le/a/h/e/k$b;->j:Z

    iget-object p1, v0, Le/a/h/e/k$b;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Le/a/h/e/k$b;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    iget-object v0, v0, Le/a/h/e/k$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/h/e/k;

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
    iget-object p4, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    if-eqz p4, :cond_d

    .line 5
    iget-object v2, p0, Le/a/h/e/k;->c:Le/a/o/c;

    iput-object p0, v0, Le/a/h/e/k$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/h/e/k$b;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/h/e/k$b;->i:Ljava/lang/Object;

    iput-boolean p3, v0, Le/a/h/e/k$b;->j:Z

    iput v3, v0, Le/a/h/e/k$b;->e:I

    invoke-interface {v2, p4, v0}, Le/a/o/c;->p(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    check-cast p4, Le/a/o/b/i;

    .line 7
    instance-of v1, p4, Le/a/o/b/i$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {v0, p1}, Le/a/h/e/k;->c(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_b

    .line 9
    iget-object p2, v0, Le/a/h/e/k;->e:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/h/e/h;

    iget-object p3, v0, Le/a/h/e/k;->a:Landroid/content/Context;

    invoke-interface {p2, p3, p1}, Le/a/h/e/h;->g(Landroid/content/Context;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    goto :goto_5

    .line 10
    :cond_4
    invoke-virtual {v0}, Le/a/h/e/k;->d()V

    goto :goto_4

    .line 11
    :cond_5
    instance-of p1, p4, Le/a/o/b/i$b;

    if-eqz p1, :cond_c

    .line 12
    check-cast p4, Le/a/o/b/i$b;

    .line 13
    iget-boolean p1, p4, Le/a/o/b/i$b;->a:Z

    if-eqz p1, :cond_a

    .line 14
    iget-object p1, v0, Le/a/h/e/k;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/w4/t/b/b;

    invoke-virtual {p1, p2}, Le/a/w4/t/b/b;->c(Ljava/lang/String;)Le/a/l4/e;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 15
    iget-object p2, p1, Le/a/l4/e;->c:Lcom/truecaller/api/services/presence/v1/models/Flash;

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p2}, Lcom/truecaller/api/services/presence/v1/models/Flash;->getEnabled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_2

    :cond_6
    move-object p2, p3

    :goto_2
    invoke-static {p2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 17
    iget-object p1, p1, Le/a/l4/e;->f:Lcom/truecaller/api/services/presence/v1/models/Voip;

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/truecaller/api/services/presence/v1/models/Voip;->getDisabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    :cond_7
    invoke-static {p3}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move v3, v2

    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    .line 19
    iget-object v4, v0, Le/a/h/e/k;->b:Le/a/p5/j0;

    const v5, 0x7f1209bd

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    :cond_a
    :goto_4
    move v3, v2

    .line 20
    :cond_b
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 21
    :cond_c
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 22
    :cond_d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final c(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Le/a/h/e/k;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e3/a;

    invoke-interface {v0, p1}, Le/a/e3/a;->b(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final d()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/h/e/k;->a:Landroid/content/Context;

    const v2, 0x7f1209bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Le/a/h/e/k;->a:Landroid/content/Context;

    const v2, 0x7f1209be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object v2, p0, Le/a/h/e/k;->b:Le/a/p5/j0;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    return-void
.end method
