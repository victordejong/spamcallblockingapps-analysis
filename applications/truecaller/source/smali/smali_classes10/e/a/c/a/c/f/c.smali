.class public final synthetic Le/a/c/a/c/f/c;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Landroid/content/Context;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/b;)V
    .locals 7

    const-class v3, Le/a/c/a/c/f/b;

    const/4 v1, 0x1

    const-string v4, "secondaryAction"

    const-string v5, "secondaryAction(Landroid/content/Context;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/content/Context;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/c/f/b;

    .line 3
    iget-object v1, v0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->C0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {p1}, Le/a/m0/a1$k;->i(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ln3/b/a/h;

    invoke-virtual {p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "(context.activity() as A\u2026y).supportFragmentManager"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v1, Le/a/c/a/c/a/a;->g:Le/a/c/a/c/a/a$c;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Le/a/c/a/c/a/a;

    invoke-direct {v1}, Le/a/c/a/c/a/a;-><init>()V

    .line 8
    sget-object v2, Le/a/c/a/c/a/a;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, p1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 10
    iget-object p1, v0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Le/a/c/c0/o;->q(Z)V

    .line 11
    :cond_0
    iget-object p1, v0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->D()Lcom/truecaller/insights/utils/HideTrxTempState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/insights/utils/HideTrxTempState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, v0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->k0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, v0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    sget-object v1, Lcom/truecaller/insights/utils/HideTrxTempState;->SHOWN:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-interface {p1, v1}, Le/a/c/c0/o;->M(Lcom/truecaller/insights/utils/HideTrxTempState;)V

    .line 14
    iget-object p1, v0, Le/a/c/a/c/f/b;->g:Le/a/c/e/c;

    sget-object v0, Le/a/c/a/c/i/a;->i:Le/a/c/a/c/i/a;

    .line 15
    sget-object v0, Le/a/c/a/c/i/a;->b:Le/a/c/r/d/b;

    .line 16
    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, v0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    sget-object v1, Lcom/truecaller/insights/utils/HideTrxTempState;->HIDDEN:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-interface {p1, v1}, Le/a/c/c0/o;->M(Lcom/truecaller/insights/utils/HideTrxTempState;)V

    .line 18
    iget-object p1, v0, Le/a/c/a/c/f/b;->g:Le/a/c/e/c;

    sget-object v0, Le/a/c/a/c/i/a;->i:Le/a/c/a/c/i/a;

    .line 19
    sget-object v0, Le/a/c/a/c/i/a;->a:Le/a/c/r/d/b;

    .line 20
    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, v0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->D()Lcom/truecaller/insights/utils/HideTrxTempState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/insights/utils/HideTrxTempState;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    iget-object p1, v0, Le/a/c/a/c/f/b;->g:Le/a/c/e/c;

    sget-object v1, Le/a/c/a/c/i/a;->i:Le/a/c/a/c/i/a;

    .line 23
    sget-object v1, Le/a/c/a/c/i/a;->a:Le/a/c/r/d/b;

    .line 24
    invoke-interface {p1, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 25
    iget-object p1, v0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    sget-object v0, Lcom/truecaller/insights/utils/HideTrxTempState;->HIDDEN:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-interface {p1, v0}, Le/a/c/c0/o;->M(Lcom/truecaller/insights/utils/HideTrxTempState;)V

    goto :goto_0

    .line 26
    :cond_3
    iget-object p1, v0, Le/a/c/a/c/f/b;->g:Le/a/c/e/c;

    sget-object v1, Le/a/c/a/c/i/a;->i:Le/a/c/a/c/i/a;

    .line 27
    sget-object v1, Le/a/c/a/c/i/a;->b:Le/a/c/r/d/b;

    .line 28
    invoke-interface {p1, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 29
    iget-object p1, v0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    sget-object v0, Lcom/truecaller/insights/utils/HideTrxTempState;->SHOWN:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-interface {p1, v0}, Le/a/c/c0/o;->M(Lcom/truecaller/insights/utils/HideTrxTempState;)V

    .line 30
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
