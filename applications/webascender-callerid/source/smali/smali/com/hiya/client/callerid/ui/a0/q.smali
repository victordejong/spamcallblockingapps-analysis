.class final Lcom/hiya/client/callerid/ui/a0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lg/g/b/c/k;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/z/d;->g(II)Lkotlin/z/a;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/z/d;->i(Lkotlin/z/a;I)Lkotlin/z/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/z/a;->c()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/z/a;->g()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/z/a;->h()I

    move-result v0

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    if-gt v1, v2, :cond_4

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_4

    .line 2
    :goto_0
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/l;

    invoke-virtual {v4}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/l;

    invoke-virtual {v4}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 3
    sget-object v3, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    goto :goto_1

    .line 4
    :cond_1
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/l;

    invoke-virtual {v4}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_2

    if-nez v1, :cond_2

    .line 5
    sget-object v3, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    goto :goto_1

    .line 6
    :cond_2
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/l;

    invoke-virtual {v4}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_3

    if-nez v1, :cond_3

    .line 7
    sget-object v3, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    :cond_3
    if-eq v1, v2, :cond_4

    add-int/2addr v1, v0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v3
.end method

.method public final b(I)Lkotlin/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/l;

    .line 3
    invoke-virtual {v2}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 4
    :goto_1
    check-cast v1, Lkotlin/l;

    return-object v1
.end method

.method public final c(I)Z
    .locals 4

    if-lez p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/s/k;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/l;

    invoke-virtual {v0}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    new-instance v1, Lkotlin/l;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "history.toString()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
