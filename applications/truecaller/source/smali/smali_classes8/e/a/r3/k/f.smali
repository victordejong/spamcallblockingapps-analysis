.class public final Le/a/r3/k/f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.dynamicfeaturesupport.qm.DynamicFeaturePanelPresenter$install$1"
    f = "DynamicFeaturePanelPresenter.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r3/k/g;

.field public final synthetic g:Landroid/app/Activity;

.field public final synthetic h:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;


# direct methods
.method public constructor <init>(Le/a/r3/k/g;Landroid/app/Activity;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r3/k/f;->f:Le/a/r3/k/g;

    iput-object p2, p0, Le/a/r3/k/f;->g:Landroid/app/Activity;

    iput-object p3, p0, Le/a/r3/k/f;->h:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/r3/k/f;

    iget-object v0, p0, Le/a/r3/k/f;->f:Le/a/r3/k/g;

    iget-object v1, p0, Le/a/r3/k/f;->g:Landroid/app/Activity;

    iget-object v2, p0, Le/a/r3/k/f;->h:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/r3/k/f;-><init>(Le/a/r3/k/g;Landroid/app/Activity;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r3/k/f;

    iget-object v0, p0, Le/a/r3/k/f;->f:Le/a/r3/k/g;

    iget-object v1, p0, Le/a/r3/k/f;->g:Landroid/app/Activity;

    iget-object v2, p0, Le/a/r3/k/f;->h:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/r3/k/f;-><init>(Le/a/r3/k/g;Landroid/app/Activity;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r3/k/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r3/k/f;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    iget-object p1, p0, Le/a/r3/k/f;->g:Landroid/app/Activity;

    iget-object v1, p0, Le/a/r3/k/f;->f:Le/a/r3/k/g;

    .line 5
    iget-object v1, v1, Le/a/r3/k/g;->f:Le/a/r3/g;

    .line 6
    iget-object v3, p0, Le/a/r3/k/f;->h:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    iput v2, p0, Le/a/r3/k/f;->e:I

    invoke-static {p1, v1, v3, v2, p0}, Le/a/m0/a1$k;->Q0(Landroid/app/Activity;Le/a/r3/g;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7
    iget-object v0, p0, Le/a/r3/k/f;->f:Le/a/r3/k/g;

    .line 8
    invoke-virtual {v0}, Le/a/r3/k/g;->Ij()V

    if-eqz p1, :cond_3

    const-string p1, "done."

    goto :goto_1

    :cond_3
    const-string p1, "failed!"
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "canceled!"

    .line 9
    :goto_1
    iget-object v0, p0, Le/a/r3/k/f;->f:Le/a/r3/k/g;

    .line 10
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r3/k/e;

    if-eqz v0, :cond_4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/a/r3/k/f;->h:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-virtual {v2}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " module installation is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/r3/k/e;->m(Ljava/lang/String;)V

    .line 12
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
