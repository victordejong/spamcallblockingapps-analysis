.class public final Le/a/c/a/d/g/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/d/g/h;


# direct methods
.method public constructor <init>(Le/a/c/a/d/g/h;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/g/j;->a:Le/a/c/a/d/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/c/a/d/g/j;->a:Le/a/c/a/d/g/h;

    .line 2
    iget-boolean v0, p1, Le/a/c/a/d/g/h;->d:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Le/a/c/a/d/g/h;->OA(Le/a/c/a/d/g/h;)Le/a/c/a/d/a/a;

    move-result-object p1

    iget-object v0, p0, Le/a/c/a/d/g/j;->a:Le/a/c/a/d/g/h;

    .line 4
    iget-object v0, v0, Le/a/c/a/d/g/h;->c:Ljava/util/List;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accounts"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Le/a/c/a/d/a/a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p1, Le/a/c/a/d/a/a;->j:Z

    .line 8
    iget-object v1, p1, Le/a/c/a/d/a/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9
    iget-object v1, p1, Le/a/c/a/d/a/a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, p1, Le/a/c/a/d/a/a;->e:Ln3/v/i0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p1, Le/a/c/a/d/a/a;->e:Ln3/v/i0;

    const-string v2, "it"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/c/a/d/a/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 12
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/c/a/d/g/j;->a:Le/a/c/a/d/g/h;

    invoke-static {p1}, Le/a/c/a/d/g/h;->OA(Le/a/c/a/d/g/h;)Le/a/c/a/d/a/a;

    move-result-object p1

    .line 13
    iget-boolean v0, p1, Le/a/c/a/d/a/a;->j:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Le/a/c/a/d/a/a;->d()V

    .line 15
    iget-object v0, p1, Le/a/c/a/d/a/a;->m:Le/a/c/a/i/j;

    sget-object v1, Le/a/c/a/d/e/a;->e:Le/a/c/a/d/e/a;

    .line 16
    sget-object v1, Le/a/c/a/d/e/a;->a:Le/a/c/r/d/b;

    .line 17
    invoke-virtual {v0, v1}, Le/a/c/a/i/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p1, Le/a/c/a/d/a/a;->f:Ln3/v/k0;

    iget-object p1, p1, Le/a/c/a/d/a/a;->g:Ljava/util/List;

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 19
    :goto_1
    iget-object p1, p0, Le/a/c/a/d/g/j;->a:Le/a/c/a/d/g/h;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
