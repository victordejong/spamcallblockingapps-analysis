.class public final Le/a/f/a/b/t$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/t;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/data/entity/CallContextMessage;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$registerOutgoingCallContextListeners$1$1"
    f = "OngoingCallPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/f/a/b/t;


# direct methods
.method public constructor <init>(Le/a/f/a/b/t;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/t$a;->f:Le/a/f/a/b/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/b/t$a;

    iget-object v1, p0, Le/a/f/a/b/t$a;->f:Le/a/f/a/b/t;

    invoke-direct {v0, v1, p2}, Le/a/f/a/b/t$a;-><init>(Le/a/f/a/b/t;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/b/t$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/f/a/b/t$a;->f:Le/a/f/a/b/t;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p1, Lcom/truecaller/data/entity/CallContextMessage;->d:Lcom/truecaller/data/entity/FeatureType;

    .line 5
    sget-object v2, Lcom/truecaller/data/entity/FeatureType;->MID_CALL:Lcom/truecaller/data/entity/FeatureType;

    if-ne p2, v2, :cond_1

    .line 6
    iget-object p2, p1, Lcom/truecaller/data/entity/CallContextMessage;->b:Ljava/lang/String;

    .line 7
    iget-object v2, v1, Le/a/f/a/b/t;->f:Le/a/f/a/b/j;

    .line 8
    iget-object v2, v2, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    .line 9
    invoke-interface {v2}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, v1, Le/a/f/a/b/t;->f:Le/a/f/a/b/j;

    invoke-static {p2, p1}, Le/a/f/a/b/j;->Qj(Le/a/f/a/b/j;Lcom/truecaller/data/entity/CallContextMessage;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, v1, Le/a/f/a/b/t;->f:Le/a/f/a/b/j;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1}, Le/a/f/a/b/i;->M1()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/b/t$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/truecaller/data/entity/CallContextMessage;->d:Lcom/truecaller/data/entity/FeatureType;

    .line 3
    sget-object v1, Lcom/truecaller/data/entity/FeatureType;->MID_CALL:Lcom/truecaller/data/entity/FeatureType;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p1, Lcom/truecaller/data/entity/CallContextMessage;->b:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Le/a/f/a/b/t$a;->f:Le/a/f/a/b/t;

    iget-object v1, v1, Le/a/f/a/b/t;->f:Le/a/f/a/b/j;

    .line 6
    iget-object v1, v1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    .line 7
    invoke-interface {v1}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/a/f/a/b/t$a;->f:Le/a/f/a/b/t;

    iget-object v0, v0, Le/a/f/a/b/t;->f:Le/a/f/a/b/j;

    invoke-static {v0, p1}, Le/a/f/a/b/j;->Qj(Le/a/f/a/b/j;Lcom/truecaller/data/entity/CallContextMessage;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Le/a/f/a/b/t$a;->f:Le/a/f/a/b/t;

    iget-object p1, p1, Le/a/f/a/b/t;->f:Le/a/f/a/b/j;

    .line 10
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Le/a/f/a/b/i;->M1()V

    .line 12
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
