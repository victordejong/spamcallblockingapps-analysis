.class public final Ls0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ls0;->a:I

    iput-object p2, p0, Ls0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget p1, p0, Ls0;->a:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1
    iget-object p1, p0, Ls0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/d/g/h;

    .line 2
    iget-object p1, p1, Le/a/c/a/d/g/h;->c:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Ls0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/d/g/h;

    .line 5
    iput-boolean v0, p1, Le/a/c/a/d/g/h;->d:Z

    .line 6
    invoke-virtual {p1, v0}, Le/a/c/a/d/g/h;->SA(Z)V

    .line 7
    iget-object p1, p0, Ls0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/d/g/h;

    invoke-static {p1}, Le/a/c/a/d/g/h;->OA(Le/a/c/a/d/g/h;)Le/a/c/a/d/a/a;

    move-result-object p1

    .line 8
    iget-object p1, p1, Le/a/c/a/d/a/a;->e:Ln3/v/i0;

    .line 9
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    const-string v0, "financePageViewModel.get\u2026return@setOnClickListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Ls0;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/d/g/h;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 13
    move-object v3, v2

    check-cast v3, Le/a/c/a/l/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x6f

    .line 14
    invoke-static/range {v3 .. v11}, Le/a/c/a/l/a;->a(Le/a/c/a/l/a;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/insights/ui/models/AccountType;ZLjava/lang/String;ZI)Le/a/c/a/l/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0, v1}, Le/a/c/a/d/g/h;->PA(Le/a/c/a/d/g/h;Ljava/util/List;)V

    .line 16
    iget-object p1, p0, Ls0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/d/g/h;

    .line 17
    iget-object p1, p1, Le/a/c/a/d/g/h;->c:Ljava/util/List;

    .line 18
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 19
    iget-object p1, p0, Ls0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/d/g/h;

    invoke-static {p1}, Le/a/c/a/d/g/h;->OA(Le/a/c/a/d/g/h;)Le/a/c/a/d/a/a;

    move-result-object p1

    .line 20
    iget-object p1, p1, Le/a/c/a/d/a/a;->m:Le/a/c/a/i/j;

    sget-object v0, Le/a/c/a/d/e/a;->e:Le/a/c/a/d/e/a;

    .line 21
    sget-object v0, Le/a/c/a/d/e/a;->c:Le/a/c/r/d/b;

    .line 22
    invoke-virtual {p1, v0}, Le/a/c/a/i/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 23
    throw p1

    .line 24
    :cond_3
    iget-object p1, p0, Ls0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/d/g/h;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
