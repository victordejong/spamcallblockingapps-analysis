.class final Lcom/hiya/stingray/manager/u3$j0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3$j0$a;->a(Lcom/android/billingclient/api/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lkotlin/l<",
        "+",
        "Lcom/android/billingclient/api/g;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/u3$j0$a;

.field final synthetic g:Lcom/android/billingclient/api/Purchase$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$j0$a;Lcom/android/billingclient/api/Purchase$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->f:Lcom/hiya/stingray/manager/u3$j0$a;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->g:Lcom/android/billingclient/api/Purchase$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/l<",
            "Lcom/android/billingclient/api/g;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/billingclient/api/g;

    .line 2
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-virtual {v2}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->f:Lcom/hiya/stingray/manager/u3$j0$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$j0$a;->g:Li/c/b0/b/f;

    new-instance v0, Lcom/hiya/stingray/manager/u3$d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$d;-><init>(Lcom/android/billingclient/api/g;Ljava/lang/String;ZZILkotlin/w/c/g;)V

    invoke-interface {p1, v0}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->f:Lcom/hiya/stingray/manager/u3$j0$a;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$j0$a;->f:Lcom/hiya/stingray/manager/u3$j0;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$j0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3;->H()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->f:Lcom/hiya/stingray/manager/u3$j0$a;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$j0$a;->f:Lcom/hiya/stingray/manager/u3$j0;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$j0;->a:Lcom/hiya/stingray/manager/u3;

    if-eqz p1, :cond_6

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 11
    iget-object v4, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->g:Lcom/android/billingclient/api/Purchase$a;

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase$a;->b()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/billingclient/api/Purchase;

    const-string v8, "it"

    invoke-static {v7, v8}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v6

    :cond_3
    check-cast v5, Lcom/android/billingclient/api/Purchase;

    :cond_4
    if-eqz v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/hiya/stingray/manager/u3$l;

    invoke-direct {v5, v3, v4}, Lcom/hiya/stingray/manager/u3$l;-><init>(Lcom/android/billingclient/api/PurchaseHistoryRecord;Ljava/lang/Boolean;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_6
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v2

    :cond_7
    invoke-static {v1, v2}, Lcom/hiya/stingray/manager/u3;->p(Lcom/hiya/stingray/manager/u3;Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->f:Lcom/hiya/stingray/manager/u3$j0$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$j0$a;->f:Lcom/hiya/stingray/manager/u3$j0;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$j0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->H()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 14
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->f:Lcom/hiya/stingray/manager/u3$j0$a;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$j0$a;->f:Lcom/hiya/stingray/manager/u3$j0;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$j0;->a:Lcom/hiya/stingray/manager/u3;

    new-instance v2, Lcom/hiya/stingray/manager/u3$m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4}, Lcom/hiya/stingray/manager/u3$m;-><init>(Ljava/util/List;J)V

    invoke-static {v1, v2}, Lcom/hiya/stingray/manager/u3;->n(Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/u3$m;)V

    .line 15
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->f:Lcom/hiya/stingray/manager/u3$j0$a;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$j0$a;->f:Lcom/hiya/stingray/manager/u3$j0;

    iget-object v1, v1, Lcom/hiya/stingray/manager/u3$j0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v1, p1, v0}, Lcom/hiya/stingray/manager/u3;->q(Lcom/hiya/stingray/manager/u3;Ljava/util/List;Ljava/util/List;)V

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3$j0$a$a;->f:Lcom/hiya/stingray/manager/u3$j0$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/u3$j0$a;->g:Li/c/b0/b/f;

    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V

    :goto_3
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u3$j0$a$a;->a(Lkotlin/l;)V

    return-void
.end method
