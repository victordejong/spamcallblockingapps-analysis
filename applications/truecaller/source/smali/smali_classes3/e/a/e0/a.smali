.class public final Le/a/e0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e0/b;
.implements Le/a/e0/d;


# instance fields
.field public a:Ln3/b/a/h;

.field public final b:Le/a/e0/e;

.field public final c:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/e0/e;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e0/a;->b:Le/a/e0/e;

    iput-object p2, p0, Le/a/e0/a;->c:Le/a/p5/c0;

    .line 2
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/e0/a;->a:Ln3/b/a/h;

    .line 2
    iget-object p1, p0, Le/a/e0/a;->b:Le/a/e0/e;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p2, p1, Le/a/e0/e;->b:Ljava/lang/String;

    .line 5
    iget-object p2, p1, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast p2, Le/a/g/j/m0;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 7
    iget-object p2, p2, Le/a/g/j/m0;->a:Le/a/h0/m;

    invoke-interface {p2}, Le/a/h0/m;->u()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e0/d;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/e0/d;->b()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p1, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast p2, Le/a/g/j/m0;

    .line 10
    iget-object p2, p2, Le/a/g/j/m0;->b:Le/a/a/k0;

    invoke-interface {p2}, Le/a/a/k0;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e0/d;

    if-eqz p1, :cond_4

    invoke-interface {p1, p3, p4, p6}, Le/a/e0/d;->e(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p2, p1, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast p2, Le/a/g/j/m0;

    .line 13
    iget-object p2, p2, Le/a/g/j/m0;->c:Le/a/l/t2/d;

    invoke-virtual {p2}, Le/a/l/t2/d;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e0/d;

    if-eqz p2, :cond_4

    iget-object p1, p1, Le/a/e0/e;->c:Le/a/e0/c;

    invoke-interface {p2, p1}, Le/a/e0/d;->c(Le/a/e0/c;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p2, p1, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast p2, Le/a/g/j/m0;

    invoke-virtual {p2}, Le/a/g/j/m0;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e0/d;

    if-eqz p2, :cond_4

    iget-object p1, p1, Le/a/e0/e;->c:Le/a/e0/c;

    invoke-interface {p2, p3, p4, p1}, Le/a/e0/d;->d(Ljava/lang/String;Ljava/lang/String;Le/a/e0/c;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b()V
    .locals 14

    .line 1
    sget-object v0, Le/a/b0/a/a/h;->k:Le/a/b0/a/a/h$c;

    .line 2
    iget-object v1, p0, Le/a/e0/a;->a:Ln3/b/a/h;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Le/a/e0/a;->c:Le/a/p5/c0;

    sget v3, Lcom/truecaller/afterblockpromos/R$string;->AfterCallTopSpammersDialogTitle:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026llTopSpammersDialogTitle)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Le/a/e0/a;->c:Le/a/p5/c0;

    sget v5, Lcom/truecaller/afterblockpromos/R$string;->AfterCallTopSpammersDialogDetails:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "resourceProvider.getStri\u2026TopSpammersDialogDetails)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v5, p0, Le/a/e0/a;->c:Le/a/p5/c0;

    sget v6, Lcom/truecaller/afterblockpromos/R$string;->StrYes:I

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getString(R.string.StrYes)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v6, p0, Le/a/e0/a;->c:Le/a/p5/c0;

    sget v7, Lcom/truecaller/afterblockpromos/R$string;->StrNo:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v6, v7, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 7
    new-instance v8, Le/a/e0/a$b;

    invoke-direct {v8, p0}, Le/a/e0/a$b;-><init>(Le/a/e0/a;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7a0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move v12, v13

    .line 8
    invoke-static/range {v0 .. v12}, Le/a/b0/a/a/h$c;->b(Le/a/b0/a/a/h$c;Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;ZLe/a/b0/a/a/h;I)V

    return-void

    :cond_0
    const-string v0, "activity"

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Le/a/e0/c;)V
    .locals 2

    const-string v0, "afterBlockHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/e0/a;->a:Ln3/b/a/h;

    if-eqz p1, :cond_0

    const-string v0, "context"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Le/a/l/v2/b;

    invoke-direct {v0}, Le/a/l/v2/b;-><init>()V

    .line 5
    invoke-virtual {p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "(context as AppCompatAct\u2026y).supportFragmentManager"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-class v1, Le/a/l/v2/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Le/a/l/v2/b;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "activity"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Le/a/e0/c;)V
    .locals 4

    const-string v0, "afterBlockHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Le/a/e0/a;->a:Ln3/b/a/h;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    new-instance v1, Le/a/e0/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Le/a/e0/a$a;-><init>(ILjava/lang/Object;)V

    .line 3
    new-instance v2, Le/a/e0/a$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Le/a/e0/a$a;-><init>(ILjava/lang/Object;)V

    const-string v3, "context"

    .line 4
    invoke-static {p3, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "positiveAction"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "negativeAction"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Le/a/e/a/i4;

    invoke-direct {v3, p3, p1, p2, v0}, Le/a/e/a/i4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Le/a/g/j/l0;

    invoke-direct {p1, v1, v2}, Le/a/g/j/l0;-><init>(Ls1/z/b/a;Ls1/z/b/a;)V

    invoke-virtual {v3, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const-string p1, "activity"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Le/a/b0/a/a/h;->k:Le/a/b0/a/a/h$c;

    .line 2
    iget-object v3, v0, Le/a/e0/a;->a:Ln3/b/a/h;

    if-eqz v3, :cond_0

    .line 3
    iget-object v4, v0, Le/a/e0/a;->c:Le/a/p5/c0;

    sget v5, Lcom/truecaller/afterblockpromos/R$string;->BlockAlsoBlockSms:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026lsoBlockSms, spammerName)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v5, v0, Le/a/e0/a;->c:Le/a/p5/c0;

    sget v6, Lcom/truecaller/afterblockpromos/R$string;->OSNotificationBlock:I

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026ring.OSNotificationBlock)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v6, v0, Le/a/e0/a;->c:Le/a/p5/c0;

    sget v8, Lcom/truecaller/afterblockpromos/R$string;->StrNotNow:I

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v8, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 6
    new-instance v8, Le/a/e0/a$c;

    move/from16 v9, p3

    invoke-direct {v8, p0, v9}, Le/a/e0/a$c;-><init>(Le/a/e0/a;I)V

    const/4 v9, 0x0

    .line 7
    new-instance v10, Le/a/e0/a$d;

    move-object/from16 v11, p2

    invoke-direct {v10, p0, v1, v11}, Le/a/e0/a$d;-><init>(Le/a/e0/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x6a0

    const-string v14, ""

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v14

    .line 8
    invoke-static/range {v1 .. v13}, Le/a/b0/a/a/h$c;->b(Le/a/b0/a/a/h$c;Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;ZLe/a/b0/a/a/h;I)V

    return-void

    :cond_0
    const-string v1, "activity"

    .line 9
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method
