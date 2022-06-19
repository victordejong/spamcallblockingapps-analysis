.class public final Le/a/r/z/s$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/s;->Wj()V
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
    c = "com.truecaller.wizard.verification.VerificationPresenterImpl$requestNextToken$1"
    f = "VerificationPresenter.kt"
    l = {
        0x13a,
        0x143
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/r/z/s;

.field public final synthetic i:Le/a/r/z/f;


# direct methods
.method public constructor <init>(Le/a/r/z/s;Le/a/r/z/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    iput-object p2, p0, Le/a/r/z/s$b;->i:Le/a/r/z/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/z/s$b;

    iget-object v0, p0, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    iget-object v1, p0, Le/a/r/z/s$b;->i:Le/a/r/z/f;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/z/s$b;-><init>(Le/a/r/z/s;Le/a/r/z/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/z/s$b;

    iget-object v0, p0, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    iget-object v1, p0, Le/a/r/z/s$b;->i:Le/a/r/z/f;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/z/s$b;-><init>(Le/a/r/z/s;Le/a/r/z/f;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/z/s$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/z/s$b;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

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
    iget-object v1, p0, Le/a/r/z/s$b;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v3, p0, Le/a/r/z/s$b;->e:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    .line 5
    iget-object p1, p1, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    .line 6
    check-cast p1, Le/a/r/z/d0/e;

    .line 7
    iget-object v1, p1, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v4, Le/a/r/z/d0/b;

    iget-object p1, p1, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-direct {v4, p1}, Le/a/r/z/d0/b;-><init>(Lcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v1, v4}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 8
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    iget-object p1, p0, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    .line 9
    iget-object v4, p1, Le/a/r/z/s;->Q:Le/a/p5/q0/e;

    const/4 v5, 0x3

    const-wide/16 v6, 0x1f4

    .line 10
    new-instance v8, Le/a/r/z/s$b$b;

    invoke-direct {v8, p0}, Le/a/r/z/s$b$b;-><init>(Le/a/r/z/s$b;)V

    iput-object v1, p0, Le/a/r/z/s$b;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/r/z/s$b;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/r/z/s$b;->g:I

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Le/a/p5/q0/e;->b(IJLs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    .line 11
    :goto_0
    check-cast p1, Le/a/r/r/a;

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    .line 13
    iget-object p1, p1, Le/a/r/z/s;->A:Ls1/w/f;

    .line 14
    new-instance v1, Le/a/r/z/s$b$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Le/a/r/z/s$b$a;-><init>(Le/a/r/z/s$b;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v4, p0, Le/a/r/z/s$b;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/r/z/s$b;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/r/z/s$b;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 15
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
