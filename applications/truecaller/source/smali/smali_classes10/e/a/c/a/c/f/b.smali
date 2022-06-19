.class public final Le/a/c/a/c/f/b;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Ls1/s;",
        "Le/a/c/a/c/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/q/d;

.field public final c:Ls1/w/f;

.field public final d:Le/a/c/b/j;

.field public final e:Le/a/c/c0/o;

.field public final f:Le/a/c/a/d/d/a;

.field public final g:Le/a/c/e/c;


# direct methods
.method public constructor <init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/d/d/a;Le/a/c/e/c;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "businessInsightsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "financeBoundaryUseCase"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/c/f/b;->b:Le/a/c/q/d;

    iput-object p2, p0, Le/a/c/a/c/f/b;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/c/f/b;->d:Le/a/c/b/j;

    iput-object p4, p0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    iput-object p5, p0, Le/a/c/a/c/f/b;->f:Le/a/c/a/d/d/a;

    iput-object p6, p0, Le/a/c/a/c/f/b;->g:Le/a/c/e/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 12

    .line 1
    new-instance v0, Le/a/c/a/c/g/a;

    .line 2
    new-instance v11, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 3
    sget v2, Lcom/truecaller/insights/ui/R$string;->transactions:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Le/a/c/a/c/f/b;->d(I)Le/a/c/a/c/g/c;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x56

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v11

    .line 5
    invoke-direct/range {v1 .. v10}, Lcom/truecaller/insights/ui/models/AdapterItem$i;-><init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v11, v1}, Le/a/c/a/c/g/a;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Le/a/c/a/l/b$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 1

    .line 1
    check-cast p1, Ls1/s;

    const-string v0, "input"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Le/a/c/a/c/f/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Le/a/c/a/c/f/a;-><init>(Le/a/c/a/c/f/b;Ls1/w/d;)V

    .line 4
    new-instance v0, Lq3/a/x2/d1;

    invoke-direct {v0, p1}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    return-object v0
.end method

.method public final d(I)Le/a/c/a/c/g/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/c/f/b;->d:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 2
    new-instance p1, Le/a/c/a/c/g/c;

    sget v0, Lcom/truecaller/insights/ui/R$string;->view_all:I

    sget-object v1, Le/a/c/a/c/f/b$a;->b:Le/a/c/a/c/f/b$a;

    invoke-direct {p1, v0, v1}, Le/a/c/a/c/g/c;-><init>(ILs1/z/b/l;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final e(Ljava/util/List;)Le/a/c/a/c/g/a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/q/c;",
            ">;)",
            "Le/a/c/a/c/g/a;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 2
    sget v2, Lcom/truecaller/insights/ui/R$string;->transactions:I

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/truecaller/insights/ui/R$string;->finance_subtitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    const-wide/16 v6, 0x0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Le/a/c/a/c/f/b;->d(I)Le/a/c/a/c/g/c;

    move-result-object v8

    const/4 v9, 0x0

    .line 5
    iget-object v1, p0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->l0()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/truecaller/insights/ui/R$string;->tap_to_hide_transactions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object v10, v4

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 7
    iget-object v11, p0, Le/a/c/a/c/f/b;->d:Le/a/c/b/j;

    invoke-interface {v11}, Le/a/c/b/j;->Y()Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v1, :cond_6

    .line 8
    iget-object v1, p0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->D()Lcom/truecaller/insights/utils/HideTrxTempState;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/insights/utils/HideTrxTempState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Le/a/c/a/c/f/b;->e:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->k0()Z

    move-result v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/truecaller/insights/utils/HideTrxTempState;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 10
    sget v1, Lcom/truecaller/insights/ui/R$string;->show_trx:I

    goto :goto_3

    :cond_4
    sget v1, Lcom/truecaller/insights/ui/R$string;->hide_trx:I

    :goto_3
    if-eqz v3, :cond_5

    .line 11
    sget v3, Lcom/truecaller/insights/ui/R$drawable;->ic_item_shown:I

    goto :goto_4

    :cond_5
    sget v3, Lcom/truecaller/insights/ui/R$drawable;->ic_item_hidden:I

    .line 12
    :goto_4
    new-instance v4, Le/a/c/a/c/g/b;

    .line 13
    new-instance v11, Le/a/c/a/c/f/c;

    invoke-direct {v11, p0}, Le/a/c/a/c/f/c;-><init>(Le/a/c/a/c/f/b;)V

    .line 14
    invoke-direct {v4, v1, v3, v11}, Le/a/c/a/c/g/b;-><init>(IILs1/z/b/l;)V

    :cond_6
    move-object v11, v4

    const/4 v12, 0x4

    move-object v1, v0

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v8

    move-object v7, v11

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    .line 15
    invoke-direct/range {v1 .. v10}, Lcom/truecaller/insights/ui/models/AdapterItem$i;-><init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    const-wide/16 v1, -0x2f59

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 18
    check-cast v4, Le/a/c/q/c;

    .line 19
    new-instance v5, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    invoke-static {v4}, Le/a/c/a/c/h/m/a;->d(Le/a/c/q/c;)Le/a/c/a/l/b$b;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    invoke-direct {v5, v4, v6, v7, v8}, Lcom/truecaller/insights/ui/models/AdapterItem$j;-><init>(Le/a/c/a/l/b;JI)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    new-instance p1, Le/a/c/a/l/b$a;

    invoke-direct {p1, v1, v2, v3}, Le/a/c/a/l/b$a;-><init>(JLjava/util/List;)V

    .line 20
    new-instance v1, Le/a/c/a/c/g/a;

    invoke-direct {v1, v0, p1}, Le/a/c/a/c/g/a;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Le/a/c/a/l/b$a;)V

    return-object v1
.end method
