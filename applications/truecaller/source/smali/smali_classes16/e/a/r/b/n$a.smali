.class public final Le/a/r/b/n$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/b/n;->Oj(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.wizard.adschoices.BaseAdsChoicesPresenter$setChoice$1"
    f = "BaseAdsChoicesPresenter.kt"
    l = {
        0x86
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/b/n;

.field public final synthetic g:Z

.field public final synthetic h:Lcom/truecaller/wizard/adschoices/AdsChoice;


# direct methods
.method public constructor <init>(Le/a/r/b/n;ZLcom/truecaller/wizard/adschoices/AdsChoice;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    iput-boolean p2, p0, Le/a/r/b/n$a;->g:Z

    iput-object p3, p0, Le/a/r/b/n$a;->h:Lcom/truecaller/wizard/adschoices/AdsChoice;

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

    new-instance p1, Le/a/r/b/n$a;

    iget-object v0, p0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    iget-boolean v1, p0, Le/a/r/b/n$a;->g:Z

    iget-object v2, p0, Le/a/r/b/n$a;->h:Lcom/truecaller/wizard/adschoices/AdsChoice;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/r/b/n$a;-><init>(Le/a/r/b/n;ZLcom/truecaller/wizard/adschoices/AdsChoice;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/b/n$a;

    iget-object v0, p0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    iget-boolean v1, p0, Le/a/r/b/n$a;->g:Z

    iget-object v2, p0, Le/a/r/b/n$a;->h:Lcom/truecaller/wizard/adschoices/AdsChoice;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/r/b/n$a;-><init>(Le/a/r/b/n;ZLcom/truecaller/wizard/adschoices/AdsChoice;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/b/n$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/b/n$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    new-instance p1, Ls1/z/c/y;

    invoke-direct {p1}, Ls1/z/c/y;-><init>()V

    iget-boolean v1, p0, Le/a/r/b/n$a;->g:Z

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Le/a/r/b/n$a;->h:Lcom/truecaller/wizard/adschoices/AdsChoice;

    invoke-virtual {v1}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getOptIn()Ls1/z/b/l;

    move-result-object v1

    iget-object v3, p0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 6
    iget-object v3, v3, Le/a/r/b/n;->g:Le/a/b0/b/l/a;

    .line 7
    invoke-interface {v1, v3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    .line 8
    iget-object v1, p0, Le/a/r/b/n$a;->h:Lcom/truecaller/wizard/adschoices/AdsChoice;

    invoke-virtual {v1}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getOptOut()Ls1/z/b/l;

    move-result-object v1

    iget-object v3, p0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 9
    iget-object v3, v3, Le/a/r/b/n;->g:Le/a/b0/b/l/a;

    .line 10
    invoke-interface {v1, v3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    iput-boolean v1, p1, Ls1/z/c/y;->a:Z

    .line 11
    iget-object v1, p0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 12
    iget-object v1, v1, Le/a/r/b/n;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 14
    iget-object v1, p0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 15
    iget-object v1, v1, Le/a/r/b/n;->h:Ls1/w/f;

    .line 16
    new-instance v3, Le/a/r/b/n$a$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Le/a/r/b/n$a$a;-><init>(Le/a/r/b/n$a;Ls1/z/c/y;Ls1/w/d;)V

    iput v2, p0, Le/a/r/b/n$a;->e:I

    invoke-static {v1, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 17
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 18
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
