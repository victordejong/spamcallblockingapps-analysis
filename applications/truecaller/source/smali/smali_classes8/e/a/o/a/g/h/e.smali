.class public final Le/a/o/a/g/h/e;
.super Le/a/o/a/g/b;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/g/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o/a/g/b<",
        "Le/a/o/a/g/h/d;",
        ">;",
        "Le/a/o/a/g/h/c;"
    }
.end annotation


# instance fields
.field public final e:Le/a/p5/c0;

.field public final f:Le/a/o/p/e/e;

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/o/p/e/e;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reasonRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/o/a/g/b;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/a/g/h/e;->e:Le/a/p5/c0;

    iput-object p2, p0, Le/a/o/a/g/h/e;->f:Le/a/o/p/e/e;

    iput-object p3, p0, Le/a/o/a/g/h/e;->g:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public G0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/h/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/g/f;->s()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/o/a/g/h/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/o/a/g/h/d;->T3()Lcom/truecaller/contextcall/db/reason/CallReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/contextcall/db/reason/CallReason;->getReasonText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/o/a/g/f;->l(Ljava/lang/String;)V

    return-void
.end method

.method public w1(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/h/d;

    if-eqz p1, :cond_2

    iget-object v1, p0, Le/a/o/a/g/h/e;->e:Le/a/p5/c0;

    sget v2, Lcom/truecaller/contextcall/R$string;->call_context_empty_message:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026ll_context_empty_message)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/o/a/g/f;->a5(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    new-instance v5, Le/a/o/a/g/h/e$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/o/a/g/h/e$a;-><init>(Le/a/o/a/g/h/e;Ljava/lang/String;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
