.class public final Le/a/c/a/p/e/n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Le/a/c/a/j/b/d;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;Le/a/c/a/j/c/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/n;->b:Le/a/c/a/p/e/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Le/a/c/a/j/b/d;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "filterItem"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    .line 3
    iget-object v4, v3, Le/a/c/a/p/e/n;->b:Le/a/c/a/p/e/f;

    .line 4
    sget-object v5, Le/a/c/a/p/e/f;->m:[Ls1/a/l;

    .line 5
    invoke-virtual {v4}, Le/a/c/a/p/e/f;->RA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v4

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 7
    sget-object v2, Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;->ADD:Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;->REMOVE:Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;

    .line 8
    :goto_0
    instance-of v5, v0, Le/a/c/a/j/b/c;

    if-eqz v5, :cond_1

    .line 9
    iget-object v6, v4, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->i:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    move-object v7, v0

    check-cast v7, Le/a/c/a/j/b/c;

    .line 10
    iget-object v7, v7, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 11
    invoke-virtual {v6, v7, v2}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->b(Lcom/truecaller/insights/insightsui/CategoryModel;Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;)V

    goto :goto_3

    .line 12
    :cond_1
    instance-of v6, v0, Le/a/c/a/j/b/j;

    if-eqz v6, :cond_4

    .line 13
    move-object v6, v0

    check-cast v6, Le/a/c/a/j/b/j;

    .line 14
    iget-object v7, v6, Le/a/c/a/j/b/j;->c:Le/a/c/q/h;

    .line 15
    iget-object v7, v7, Le/a/c/q/h;->b:Ljava/util/Set;

    .line 16
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 18
    check-cast v10, Ljava/lang/String;

    .line 19
    new-instance v11, Le/a/c/w/o0/k/e$c;

    invoke-direct {v11, v10}, Le/a/c/w/o0/k/e$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v8}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 20
    iget-object v6, v6, Le/a/c/a/j/b/j;->c:Le/a/c/q/h;

    .line 21
    iget-object v6, v6, Le/a/c/q/h;->c:Ljava/util/Set;

    .line 22
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 24
    check-cast v9, Ljava/lang/String;

    .line 25
    new-instance v10, Le/a/c/w/o0/k/e$c;

    invoke-direct {v10, v9}, Le/a/c/w/o0/k/e$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v8}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 26
    iget-object v8, v4, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->i:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-static {v7, v6}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v8, v6, v2}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->c(Ljava/util/Set;Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;)V

    .line 27
    :cond_4
    :goto_3
    iget-object v2, v4, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 28
    iget-object v2, v4, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f:Ljava/util/Set;

    iget-object v6, v4, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->i:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-virtual {v6}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->d()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    iget-object v2, v4, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->c:Ln3/v/k0;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 30
    sget-object v2, Le/a/c/a/j/b/g;->b:Le/a/c/a/j/b/g;

    const-string v2, "$this$toQuickFilterEvent"

    .line 31
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    const-string v1, "select"

    goto :goto_4

    :cond_5
    const-string v1, "unselect"

    :goto_4
    move-object v8, v1

    const/4 v1, 0x0

    if-eqz v5, :cond_6

    .line 32
    check-cast v0, Le/a/c/a/j/b/c;

    .line 33
    iget-object v0, v0, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 34
    invoke-virtual {v0}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/smartcards/SmartCardCategory;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 35
    :cond_6
    instance-of v2, v0, Le/a/c/a/j/b/j;

    if-eqz v2, :cond_7

    check-cast v0, Le/a/c/a/j/b/j;

    .line 36
    iget-object v0, v0, Le/a/c/a/j/b/j;->d:Ljava/lang/String;

    :goto_5
    move-object v9, v0

    goto :goto_6

    .line 37
    :cond_7
    instance-of v0, v0, Le/a/c/a/j/b/e;

    if-eqz v0, :cond_a

    move-object v9, v1

    :goto_6
    if-eqz v9, :cond_8

    const-string v12, ""

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "feature"

    .line 39
    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventCategory"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventInfo"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionType"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionInfo"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "propertyMap"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "quick_filter"

    const-string v1, "<set-?>"

    .line 40
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "insights_smart_feed"

    .line 43
    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "click"

    .line 44
    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v1, Le/a/c/r/d/b;

    .line 46
    new-instance v2, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c0

    const/16 v18, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v18}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 47
    invoke-static {v0}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 48
    invoke-direct {v1, v2, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    :cond_8
    if-eqz v1, :cond_9

    .line 49
    iget-object v0, v4, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->w:Le/a/c/a/i/h;

    invoke-interface {v0, v1}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    .line 50
    :cond_9
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    .line 51
    :cond_a
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
