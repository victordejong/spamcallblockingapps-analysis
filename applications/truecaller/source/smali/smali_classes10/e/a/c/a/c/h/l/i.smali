.class public final Le/a/c/a/c/h/l/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/c/h/l/g;

.field public final synthetic b:Le/a/c/a/l/c;

.field public final synthetic c:Le/a/c/a/l/b$g;


# direct methods
.method public constructor <init>(Le/a/c/a/c/h/l/g;Le/a/c/a/l/c;Le/a/c/a/l/b$g;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/l/i;->a:Le/a/c/a/c/h/l/g;

    iput-object p2, p0, Le/a/c/a/c/h/l/i;->b:Le/a/c/a/l/c;

    iput-object p3, p0, Le/a/c/a/c/h/l/i;->c:Le/a/c/a/l/b$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/a/c/h/l/i;->b:Le/a/c/a/l/c;

    .line 2
    invoke-virtual {v1}, Le/a/c/a/l/c;->a()V

    .line 3
    iget-object v2, v0, Le/a/c/a/c/h/l/i;->a:Le/a/c/a/c/h/l/g;

    iget-object v3, v0, Le/a/c/a/c/h/l/i;->c:Le/a/c/a/l/b$g;

    .line 4
    iget-object v1, v1, Le/a/c/a/l/c;->b:Le/a/c/r/j/a;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    instance-of v4, v1, Le/a/c/r/j/a$a$b;

    const-string v5, "context"

    const-string v6, "itemView"

    if-eqz v4, :cond_0

    check-cast v1, Le/a/c/r/j/a$a$b;

    .line 7
    iget-object v1, v1, Le/a/c/r/j/a$a$b;->k:Le/a/c/r/j/c;

    const-string v3, "null cannot be cast to non-null type com.truecaller.insights.models.smartcards.PayBillUseCase"

    .line 8
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/c/r/j/u;

    iget-object v3, v2, Le/a/c/a/c/h/l/g;->m:Le/a/c/j/b;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "itemView.context"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deeplinkEnricher"

    .line 9
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v1, Le/a/c/r/j/u;->k:Le/a/c/j/f;

    .line 11
    new-instance v4, Le/a/c/r/j/t;

    invoke-direct {v4, v2}, Le/a/c/r/j/t;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v1, v4}, Le/a/c/j/b;->a(Le/a/c/j/f;Ls1/z/b/l;)V

    goto/16 :goto_2

    .line 12
    :cond_0
    instance-of v4, v1, Le/a/c/r/j/a$e;

    if-eqz v4, :cond_4

    .line 13
    move-object v4, v1

    check-cast v4, Le/a/c/r/j/a$e;

    .line 14
    iget-object v4, v4, Le/a/c/r/j/a$e;->d:Ljava/lang/String;

    .line 15
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v9

    :goto_0
    if-eqz v4, :cond_4

    .line 16
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Le/a/b0/q/t;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    invoke-virtual {v1}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9, v8}, Le/a/c/p/a;->n3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 18
    iget-object v1, v2, Le/a/c/a/c/h/l/g;->j:Le/a/c/a/i/h;

    const-string v4, ""

    .line 19
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v7, "feature"

    .line 20
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "eventCategory"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "eventInfo"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionType"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionInfo"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "propertyMap"

    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v4, v2, Le/a/c/a/c/h/l/g;->k:Le/a/c/a/a/a/a/b;

    .line 22
    iget-object v4, v4, Le/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    const-string v5, "<set-?>"

    .line 23
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v7, v3, Le/a/c/a/l/b$g;->p:Ljava/lang/String;

    const-string v9, "click"

    move-object v10, v7

    move-object v11, v5

    move-object v12, v9

    move-object v13, v5

    move-object/from16 v14, v16

    move-object v15, v5

    .line 25
    invoke-static/range {v10 .. v15}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v10, v3, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    .line 27
    iget-boolean v3, v3, Le/a/c/a/l/b$g;->r:Z

    .line 28
    invoke-static {v10, v3}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-static {v13, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v2, v2, Le/a/c/a/c/h/l/g;->k:Le/a/c/a/a/a/a/b;

    .line 31
    iget-object v14, v2, Le/a/c/a/a/a/a/b;->b:Ljava/lang/String;

    .line 32
    invoke-static {v14, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_3

    .line 34
    new-instance v2, Le/a/c/r/d/b;

    .line 35
    new-instance v3, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1c0

    const/16 v22, 0x0

    move-object v10, v3

    move-object v11, v4

    move-object v12, v7

    move-object v15, v9

    invoke-direct/range {v10 .. v22}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 36
    invoke-static {v6}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 37
    invoke-direct {v2, v3, v4}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 38
    invoke-interface {v1, v2}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    goto :goto_2

    .line 39
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    return-void
.end method
