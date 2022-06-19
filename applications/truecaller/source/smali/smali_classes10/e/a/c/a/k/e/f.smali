.class public final Le/a/c/a/k/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/k/e/e;


# direct methods
.method public constructor <init>(Le/a/c/a/k/e/e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/e/f;->a:Le/a/c/a/k/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/c/a/k/e/f;->a:Le/a/c/a/k/e/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln3/v/c0;

    .line 3
    iget-object v0, v0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 4
    sget-object v1, Ln3/v/u$b;->e:Ln3/v/u$b;

    const/4 v2, 0x0

    const-string v3, "it"

    if-ne v0, v1, :cond_0

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Le/a/c/a/k/e/f;->a:Le/a/c/a/k/e/e;

    .line 6
    sget-object v0, Le/a/c/a/k/e/e;->e:[Ls1/a/l;

    .line 7
    invoke-virtual {p1}, Le/a/c/a/k/e/e;->OA()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v2}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->h(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Le/a/c/a/k/e/f;->a:Le/a/c/a/k/e/e;

    .line 10
    sget-object v1, Le/a/c/a/k/e/e;->e:[Ls1/a/l;

    .line 11
    invoke-virtual {v0}, Le/a/c/a/k/e/e;->OA()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object v0

    .line 12
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 13
    iget-object v1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->i:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->d()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->i:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    iget-object v0, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->j:Le/a/c/h/d;

    invoke-interface {v0, p1, v2}, Le/a/c/h/d;->a(ZI)V

    :cond_1
    :goto_0
    return-void
.end method
