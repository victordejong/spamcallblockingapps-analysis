.class public final Le/a/o/a/g/i/g;
.super Le/a/o/a/g/b;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/g/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o/a/g/b<",
        "Le/a/o/a/g/i/e;",
        ">;",
        "Le/a/o/a/g/i/d;"
    }
.end annotation


# instance fields
.field public final e:Le/a/p5/c0;

.field public final f:Le/a/o/b/b;

.field public final g:Le/a/o/f;

.field public final h:Le/a/o/p/e/e;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/o/b/b;Le/a/o/f;Le/a/o/p/e/e;Lo3/a;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/c0;",
            "Le/a/o/b/b;",
            "Le/a/o/f;",
            "Le/a/o/p/e/e;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callReasonRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p6}, Le/a/o/a/g/b;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/a/g/i/g;->e:Le/a/p5/c0;

    iput-object p2, p0, Le/a/o/a/g/i/g;->f:Le/a/o/b/b;

    iput-object p3, p0, Le/a/o/a/g/i/g;->g:Le/a/o/f;

    iput-object p4, p0, Le/a/o/a/g/i/g;->h:Le/a/o/p/e/e;

    iput-object p5, p0, Le/a/o/a/g/i/g;->i:Lo3/a;

    iput-object p6, p0, Le/a/o/a/g/i/g;->j:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public G0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/i/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/g/f;->s()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/o/a/g/i/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/o/a/g/i/e;->T3()Lcom/truecaller/contextcall/db/reason/CallReason;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/contextcall/db/reason/CallReason;->getReasonText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/o/a/g/f;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public w1(Ljava/lang/String;)V
    .locals 6

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
    if-nez v1, :cond_2

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v3, Le/a/o/a/g/i/f;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/o/a/g/i/f;-><init>(Le/a/o/a/g/i/g;Ljava/lang/String;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_2

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/i/e;

    if-eqz p1, :cond_3

    iget-object v1, p0, Le/a/o/a/g/i/g;->e:Le/a/p5/c0;

    sget v2, Lcom/truecaller/contextcall/R$string;->call_context_empty_message:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026ll_context_empty_message)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/o/a/g/f;->a5(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
