.class public final Lw0;
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

    iput p1, p0, Lw0;->a:I

    iput-object p2, p0, Lw0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lw0;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lw0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/j/e/a;

    .line 2
    sget-object v0, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object p1

    .line 4
    iget-object v0, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5
    iget-object v0, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->i:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-virtual {v0}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a()V

    .line 6
    iget-object v0, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f:Ljava/util/Set;

    iget-object v1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-virtual {v1}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v0, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->i:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    iget-object v1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-virtual {v1}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->d()Ljava/util/Set;

    move-result-object v1

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "newFilters"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a:Lq3/a/x2/a1;

    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lq3/a/x2/a1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-virtual {v0}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applied Filters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->c:Ln3/v/k0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    const-string v0, "apply_filter"

    .line 13
    invoke-virtual {p1, v0}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->d(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lw0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/j/e/a;

    invoke-virtual {p1}, Le/a/c/a/j/e/a;->dismiss()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 15
    throw p1

    .line 16
    :cond_1
    iget-object p1, p0, Lw0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/j/e/a;

    .line 17
    sget-object v0, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 18
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object p1

    const-string v0, "dismiss"

    .line 19
    invoke-virtual {p1, v0}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->c(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lw0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/j/e/a;

    invoke-virtual {p1}, Le/a/c/a/j/e/a;->dismiss()V

    return-void
.end method
