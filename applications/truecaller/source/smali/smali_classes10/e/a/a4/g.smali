.class public abstract Le/a/a4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a4/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Application;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/a4/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/a4/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ls1/w/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/p5/m0;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lo3/a;Lo3/a;Lo3/a;Le/a/p5/m0;)V
    .locals 1
    .param p1    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ls1/w/f;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Lo3/a<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Le/a/p5/m0;",
            ")V"
        }
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a4/g;->c:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/a4/g;->d:Lo3/a;

    iput-object p3, p0, Le/a/a4/g;->e:Lo3/a;

    iput-object p4, p0, Le/a/a4/g;->f:Lo3/a;

    iput-object p5, p0, Le/a/a4/g;->g:Le/a/p5/m0;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a4/g;->a:Ljava/util/List;

    .line 3
    sget-object p1, Le/a/a4/g$b;->b:Le/a/a4/g$b;

    iput-object p1, p0, Le/a/a4/g;->b:Ls1/z/b/l;

    return-void
.end method

.method public static synthetic f(Le/a/a4/g;ZILjava/lang/Object;)Le/a/a4/m;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Le/a/a4/g;->e(Z)Le/a/a4/m;

    move-result-object p0

    return-object p0
.end method

.method public static g(Le/a/a4/g;Le/a/u3/b;ZZILjava/lang/Object;)Le/a/a4/l;
    .locals 0

    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p0, p4, 0x4

    if-eqz p0, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string p0, "feature"

    .line 1
    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Le/a/a4/l;

    invoke-direct {p0, p1, p2, p3}, Le/a/a4/l;-><init>(Le/a/u3/b;ZZ)V

    return-object p0
.end method

.method public static synthetic i(Le/a/a4/g;Ljava/lang/String;Le/a/a4/m;Ls1/z/b/a;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/a/a4/g;->h(Ljava/lang/String;Le/a/a4/m;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Le/a/a4/g;Ljava/lang/String;Ls1/w/f;Le/a/a4/m;JLs1/z/b/l;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x0

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    .line 1
    invoke-virtual/range {v0 .. v6}, Le/a/a4/g;->j(Ljava/lang/String;Ls1/w/f;Le/a/a4/m;JLs1/z/b/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static l(Le/a/a4/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, Le/a/a4/g$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a4/g$d;

    iget v1, v0, Le/a/a4/g$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a4/g$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a4/g$d;

    invoke-direct {v0, p0, p1}, Le/a/a4/g$d;-><init>(Le/a/a4/g;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a4/g$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a4/g$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/a/a4/g$d;->h:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object v2, v0, Le/a/a4/g$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/a4/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a4/g;->b:Ls1/z/b/l;

    const-string v2, "Re-trying app init. Defferred invocations: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Le/a/a4/g;->a:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Le/a/a4/g$e;->b:Le/a/a4/g$e;

    const/16 v11, 0x1e

    const-string v5, "\n"

    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Le/a/a4/g;->a:Ljava/util/List;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 9
    move-object v6, v5

    check-cast v6, Le/a/a4/c;

    .line 10
    invoke-virtual {v6}, Le/a/a4/c;->a()Le/a/a4/m;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Le/a/a4/m;->b()Z

    move-result v6

    .line 11
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_2

    :cond_3
    move v6, v3

    .line 13
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_5
    invoke-static {v4}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/a4/g;->a:Ljava/util/List;

    .line 18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p0

    move-object p0, p1

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a4/c;

    .line 19
    instance-of v4, p1, Le/a/a4/p;

    if-eqz v4, :cond_7

    check-cast p1, Le/a/a4/p;

    iget-object v4, v2, Le/a/a4/g;->g:Le/a/p5/m0;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "traceUtil"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v5, p1, Le/a/a4/p;->c:Ls1/z/b/a;

    .line 22
    iget-object p1, p1, Le/a/a4/p;->a:Ljava/lang/String;

    .line 23
    invoke-static {v5, p1, v4}, Le/a/m0/a1$k;->s0(Ls1/z/b/a;Ljava/lang/String;Le/a/p5/m0;)V

    goto :goto_3

    .line 24
    :cond_7
    instance-of v4, p1, Le/a/a4/r;

    if-eqz v4, :cond_6

    move-object v4, p1

    check-cast v4, Le/a/a4/r;

    .line 25
    iget-object v4, v4, Le/a/a4/r;->c:Ls1/w/f;

    .line 26
    new-instance v5, Le/a/a4/g$c;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6, v2, v0}, Le/a/a4/g$c;-><init>(Le/a/a4/c;Ls1/w/d;Le/a/a4/g;Ls1/w/d;)V

    iput-object v2, v0, Le/a/a4/g$d;->g:Ljava/lang/Object;

    iput-object p0, v0, Le/a/a4/g$d;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/a4/g$d;->e:I

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 27
    :cond_8
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/a4/g;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "uiContext.get()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ls1/w/f;

    new-instance v3, Le/a/a4/g$f;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/a4/g$f;-><init>(Le/a/a4/g;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Le/a/a4/g;->l(Le/a/a4/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Z)Le/a/a4/m;
    .locals 2

    .line 1
    new-instance v0, Le/a/a4/b;

    iget-object v1, p0, Le/a/a4/g;->d:Lo3/a;

    invoke-direct {v0, v1, p1}, Le/a/a4/b;-><init>(Lo3/a;Z)V

    return-object v0
.end method

.method public final e(Z)Le/a/a4/m;
    .locals 2

    .line 1
    new-instance v0, Le/a/a4/f;

    iget-object v1, p0, Le/a/a4/g;->d:Lo3/a;

    invoke-direct {v0, v1, p1}, Le/a/a4/f;-><init>(Lo3/a;Z)V

    return-object v0
.end method

.method public final h(Ljava/lang/String;Le/a/a4/m;Ls1/z/b/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/a4/m;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "actionName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Le/a/a4/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Le/a/a4/m;->a()Z

    move-result v0

    const/16 v1, 0x5d

    const-string v2, "  "

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a4/g;->b:Ls1/z/b/l;

    const-string v3, " invocation is postponed due to missed conditions ["

    invoke-static {v2, p1, v3}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Le/a/a4/m;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a4/g;->a:Ljava/util/List;

    new-instance v1, Le/a/a4/p;

    invoke-direct {v1, p1, p2, p3}, Le/a/a4/p;-><init>(Ljava/lang/String;Le/a/a4/m;Ls1/z/b/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p3, p0, Le/a/a4/g;->b:Ls1/z/b/l;

    const-string v0, " invocation is skipped due to missed conditions ["

    invoke-static {v2, p1, v0}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p2}, Le/a/a4/m;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p2, p0, Le/a/a4/g;->g:Le/a/p5/m0;

    invoke-static {p3, p1, p2}, Le/a/m0/a1$k;->s0(Ls1/z/b/a;Ljava/lang/String;Le/a/p5/m0;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    :goto_1
    return-object p1
.end method

.method public final j(Ljava/lang/String;Ls1/w/f;Le/a/a4/m;JLs1/z/b/l;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/f;",
            "Le/a/a4/m;",
            "J",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v7, p0

    move-object v5, p1

    move-object v8, p2

    move-object v0, p3

    move-object/from16 v4, p6

    const-string v1, "actionName"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "coroutineContext"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 1
    invoke-interface {p3}, Le/a/a4/m;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p3}, Le/a/a4/m;->a()Z

    move-result v1

    const/16 v2, 0x5d

    const-string v3, "  "

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v7, Le/a/a4/g;->b:Ls1/z/b/l;

    const-string v6, " invocation is postponed due to missed conditions ["

    invoke-static {v3, p1, v6}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Le/a/a4/m;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v7, Le/a/a4/g;->a:Ljava/util/List;

    new-instance v2, Le/a/a4/r;

    invoke-direct {v2, p1, p3, p2, v4}, Le/a/a4/r;-><init>(Ljava/lang/String;Le/a/a4/m;Ls1/w/f;Ls1/z/b/l;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v7, Le/a/a4/g;->b:Ls1/z/b/l;

    const-string v4, " invocation is skipped due to missed conditions ["

    invoke-static {v3, p1, v4}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Le/a/a4/m;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    sget-object v9, Lq3/a/h1;->a:Lq3/a/h1;

    const/4 v10, 0x0

    new-instance v11, Le/a/a4/g$a;

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, p0

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Le/a/a4/g$a;-><init>(Le/a/a4/g;JLs1/z/b/l;Ljava/lang/String;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p2

    move-object v2, v10

    move-object v3, v11

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final m(Ljava/lang/String;Ls1/z/b/a;)Le/a/a4/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Le/a/a4/m;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condition"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/a4/g$g;

    invoke-direct {v0, p2, p1}, Le/a/a4/g$g;-><init>(Ls1/z/b/a;Ljava/lang/String;)V

    return-object v0
.end method
