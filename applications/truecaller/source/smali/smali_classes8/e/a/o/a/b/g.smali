.class public final Le/a/o/a/b/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/o/a/b/f;",
        ">;",
        "Le/a/o/a/b/e;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/o/p/b/d;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/o/f;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/o/p/b/d;Lo3/a;Le/a/o/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/o/p/b/d;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;",
            "Le/a/o/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenNumberRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/a/b/g;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/o/a/b/g;->e:Le/a/o/p/b/d;

    iput-object p3, p0, Le/a/o/a/b/g;->f:Lo3/a;

    iput-object p4, p0, Le/a/o/a/b/g;->g:Le/a/o/f;

    return-void
.end method


# virtual methods
.method public final Ij()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/o/a/b/g$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/o/a/b/g$a;-><init>(Le/a/o/a/b/g;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/o/a/b/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const-string p1, "OnBoardingHiddenContacts"

    const-string v0, "viewId"

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, p1, v1, v1}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/o/a/b/g;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "analytics.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 6
    invoke-virtual {p0}, Le/a/o/a/b/g;->Ij()Lq3/a/p1;

    return-void
.end method

.method public qe(Le/a/o/a/b/j;)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "contact"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Le/a/o/a/b/g;->g:Le/a/o/f;

    .line 2
    iget-object v5, v0, Le/a/o/a/b/j;->a:Ljava/lang/String;

    .line 3
    iget-object v6, v0, Le/a/o/a/b/j;->b:Ljava/lang/String;

    .line 4
    iget-object v7, v0, Le/a/o/a/b/j;->c:Ljava/lang/String;

    .line 5
    check-cast v2, Le/a/o/h;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Le/a/v/p/n;->a:Le/a/v/p/n;

    .line 8
    iget-object v4, v2, Le/a/o/h;->f:Landroid/content/Context;

    .line 9
    sget-object v10, Lcom/truecaller/details_view/analytics/SourceType;->ContextCallHiddenContact:Lcom/truecaller/details_view/analytics/SourceType;

    const-string v8, ""

    const-string v9, ""

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x1e

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c00

    move-object v3, v0

    .line 10
    invoke-static/range {v3 .. v17}, Le/a/v/p/n;->d(Le/a/v/p/n;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/details_view/analytics/SourceType;ZZILjava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 11
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    iget-object v2, v2, Le/a/o/h;->f:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Le/a/v/p/n;->e(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public w4(Le/a/o/a/b/j;)V
    .locals 7

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/o/a/b/g$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/o/a/b/g$b;-><init>(Le/a/o/a/b/g;Le/a/o/a/b/j;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
