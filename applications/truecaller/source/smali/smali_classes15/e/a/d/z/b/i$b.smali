.class public final Le/a/d/z/b/i$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/z/b/i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Le/a/d/v/h;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.service.call.CallServicePresenter$setNotificationDescription$1$invokeSuspend$$inlined$flatMapLatest$1"
    f = "CallServicePresenter.kt"
    l = {
        0xe4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/z/b/i;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/d/z/b/i;)V
    .locals 0

    iput-object p2, p0, Le/a/d/z/b/i$b;->h:Le/a/d/z/b/i;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 1
    new-instance v0, Le/a/d/z/b/i$b;

    iget-object v1, p0, Le/a/d/z/b/i$b;->h:Le/a/d/z/b/i;

    invoke-direct {v0, p3, v1}, Le/a/d/z/b/i$b;-><init>(Ls1/w/d;Le/a/d/z/b/i;)V

    iput-object p1, v0, Le/a/d/z/b/i$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/z/b/i$b;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/z/b/i$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/z/b/i$b;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/z/b/i$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/d/z/b/i$b;->f:Ljava/lang/Object;

    .line 4
    check-cast v1, Le/a/d/v/h;

    .line 5
    iget-object v3, p0, Le/a/d/z/b/i$b;->h:Le/a/d/z/b/i;

    iget-object v3, v3, Le/a/d/z/b/i;->f:Le/a/d/z/b/c;

    .line 6
    iget-object v3, v3, Le/a/d/z/b/c;->f:Le/a/d/v/d;

    .line 7
    invoke-interface {v3}, Le/a/d/v/d;->f()Lq3/a/x2/i1;

    move-result-object v3

    invoke-interface {v3}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    instance-of v1, v1, Le/a/d/v/h$b;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Le/a/d/z/b/i$b;->h:Le/a/d/z/b/i;

    iget-object v1, v1, Le/a/d/z/b/i;->f:Le/a/d/z/b/c;

    sget v3, Lcom/truecaller/voip/R$string;->voip_status_call_ended:I

    invoke-static {v1, v3}, Le/a/d/z/b/c;->Jj(Le/a/d/z/b/c;I)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v3, Lq3/a/x2/k;

    invoke-direct {v3, v1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Le/a/d/z/b/i$b;->h:Le/a/d/z/b/i;

    iget-object v1, v1, Le/a/d/z/b/i;->f:Le/a/d/z/b/c;

    sget v3, Lcom/truecaller/voip/R$string;->voip_status_ending:I

    invoke-static {v1, v3}, Le/a/d/z/b/c;->Jj(Le/a/d/z/b/c;I)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v3, Lq3/a/x2/k;

    invoke-direct {v3, v1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_3
    instance-of v3, v1, Le/a/d/v/h$a;

    if-eqz v3, :cond_4

    iget-object v1, p0, Le/a/d/z/b/i$b;->h:Le/a/d/z/b/i;

    iget-object v1, v1, Le/a/d/z/b/i;->f:Le/a/d/z/b/c;

    invoke-static {v1}, Le/a/d/z/b/c;->Ij(Le/a/d/z/b/c;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v3, Lq3/a/x2/k;

    invoke-direct {v3, v1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_4
    instance-of v3, v1, Le/a/d/v/h$c;

    if-eqz v3, :cond_5

    iget-object v1, p0, Le/a/d/z/b/i$b;->h:Le/a/d/z/b/i;

    iget-object v3, v1, Le/a/d/z/b/i;->f:Le/a/d/z/b/c;

    iget-object v1, v1, Le/a/d/z/b/i;->g:Le/a/d/v/b;

    .line 16
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {v1}, Le/a/d/v/b;->a()Lq3/a/x2/i1;

    move-result-object v1

    .line 18
    new-instance v4, Le/a/d/z/b/d;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Le/a/d/z/b/d;-><init>(Ls1/w/d;Le/a/d/z/b/c;)V

    invoke-static {v1, v4}, Ls1/a/a/a/v0/f/d;->P3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object v3

    goto :goto_0

    .line 19
    :cond_5
    instance-of v1, v1, Le/a/d/v/h$b;

    if-eqz v1, :cond_7

    iget-object v1, p0, Le/a/d/z/b/i$b;->h:Le/a/d/z/b/i;

    iget-object v1, v1, Le/a/d/z/b/i;->f:Le/a/d/z/b/c;

    sget v3, Lcom/truecaller/voip/R$string;->voip_status_call_ended:I

    invoke-static {v1, v3}, Le/a/d/z/b/c;->Jj(Le/a/d/z/b/c;I)Ljava/lang/String;

    move-result-object v1

    .line 20
    new-instance v3, Lq3/a/x2/k;

    invoke-direct {v3, v1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    .line 21
    :goto_0
    iput v2, p0, Le/a/d/z/b/i$b;->g:I

    invoke-interface {v3, p1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 22
    :cond_6
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 23
    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
