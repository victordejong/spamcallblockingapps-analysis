.class final Lcom/hiya/stingray/manager/e4$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/e4;->i(Lcom/hiya/stingray/t/c1;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/b1;",
        ">;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/e4;

.field final synthetic g:Lcom/hiya/stingray/t/c1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/e4$e;->f:Lcom/hiya/stingray/manager/e4;

    iput-object p2, p0, Lcom/hiya/stingray/manager/e4$e;->g:Lcom/hiya/stingray/t/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Li/c/b0/b/i;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/b1;",
            ">;)",
            "Li/c/b0/b/i;"
        }
    .end annotation

    const-string v0, "categories"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hiya/stingray/t/b1;

    invoke-virtual {v4}, Lcom/hiya/stingray/t/b1;->b()I

    move-result v4

    iget-object v5, p0, Lcom/hiya/stingray/manager/e4$e;->g:Lcom/hiya/stingray/t/c1;

    invoke-virtual {v5}, Lcom/hiya/stingray/t/c1;->b()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    check-cast v0, Lcom/hiya/stingray/t/b1;

    const-string p1, "SpamReportManager"

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/t/b1;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3
    iget-object v4, p0, Lcom/hiya/stingray/manager/e4$e;->f:Lcom/hiya/stingray/manager/e4;

    invoke-static {v4}, Lcom/hiya/stingray/manager/e4;->a(Lcom/hiya/stingray/manager/e4;)Lcom/hiya/stingray/t/i1/l0;

    move-result-object v4

    iget-object v5, p0, Lcom/hiya/stingray/manager/e4$e;->g:Lcom/hiya/stingray/t/c1;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/b1;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v6, "category.name!!"

    invoke-static {v0, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v0}, Lcom/hiya/stingray/t/i1/l0;->a(Lcom/hiya/stingray/t/c1;Ljava/lang/String;)Lg/g/b/c/m;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 4
    invoke-static {p1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Lg/g/b/c/m;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Adding local override:\n%s"

    invoke-virtual {p1, v1, v0}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/manager/e4$e;->f:Lcom/hiya/stingray/manager/e4;

    invoke-static {p1}, Lcom/hiya/stingray/manager/e4;->b(Lcom/hiya/stingray/manager/e4;)Lcom/hiya/stingray/manager/w2;

    move-result-object v7

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/manager/e4$e;->g:Lcom/hiya/stingray/t/c1;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->e()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string p1, "report.parsedPhone!!"

    invoke-static {v8, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 7
    invoke-static/range {v7 .. v12}, Lcom/hiya/stingray/manager/w2;->m(Lcom/hiya/stingray/manager/w2;Ljava/lang/String;Lg/g/b/c/m;Ljava/lang/String;ILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/hiya/stingray/manager/e4$e$a;->f:Lcom/hiya/stingray/manager/e4$e$a;

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->A(Li/c/b0/d/p;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 10
    :cond_4
    invoke-static {p1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Unable to map to local override id: not creating local override"

    invoke-virtual {p1, v1, v0}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 13
    :cond_6
    invoke-static {p1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Can\'t find category or category name is empty: not creating local override"

    invoke-virtual {p1, v1, v0}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/e4$e;->a(Ljava/util/List;)Li/c/b0/b/i;

    move-result-object p1

    return-object p1
.end method
