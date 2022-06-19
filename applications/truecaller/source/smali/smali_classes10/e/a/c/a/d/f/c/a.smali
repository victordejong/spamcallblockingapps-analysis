.class public final Le/a/c/a/d/f/c/a;
.super Ln3/z/w1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/w1<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le/a/c/h/h;

.field public final d:Le/a/b0/m/c/a;

.field public final e:Le/a/c/a/i/h;

.field public final f:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)V
    .locals 1
    .param p3    # Le/a/c/a/i/h;
        .annotation runtime Ljavax/inject/Named;
            value = "financepage_analytics_logger"
        .end annotation
    .end param

    const-string v0, "messageLocator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/a/b;

    invoke-direct {v0}, Le/a/c/a/a/b;-><init>()V

    invoke-direct {p0, v0}, Ln3/z/w1;-><init>(Ln3/b0/a/h$e;)V

    iput-object p1, p0, Le/a/c/a/d/f/c/a;->c:Le/a/c/h/h;

    iput-object p2, p0, Le/a/c/a/d/f/c/a;->d:Le/a/b0/m/c/a;

    iput-object p3, p0, Le/a/c/a/d/f/c/a;->e:Le/a/c/a/i/h;

    iput-object p4, p0, Le/a/c/a/d/f/c/a;->f:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ln3/z/w1;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v0, :cond_0

    sget p1, Lcom/truecaller/insights/ui/R$layout;->finance_reminder_item:I

    goto :goto_0

    .line 3
    :cond_0
    instance-of p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    if-eqz p1, :cond_1

    sget p1, Lcom/truecaller/insights/ui/R$layout;->date_header_item:I

    :goto_0
    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ViewHolder type not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Ln3/z/w1;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/a/a/a/a/j;

    .line 3
    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 4
    iget-object p2, p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    const-string v0, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.FinanceItem"

    .line 5
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/c/a/l/b$b;

    .line 6
    invoke-virtual {p1, p2}, Le/a/c/a/a/a/a/j;->V4(Le/a/c/a/l/b$b;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/c/a/a/a/a/g;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    invoke-virtual {p1, p2}, Le/a/c/a/a/a/a/g;->V4(Lcom/truecaller/insights/ui/models/AdapterItem$d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 8

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/insights/ui/R$layout;->finance_reminder_item:I

    if-ne p2, v0, :cond_0

    new-instance p2, Le/a/c/a/a/a/a/j;

    .line 2
    invoke-static {p1}, Le/a/c/a/a/a/a/j;->U4(Landroid/view/ViewGroup;)Le/a/c/a/g/b0;

    move-result-object v2

    .line 3
    iget-object v3, p0, Le/a/c/a/d/f/c/a;->c:Le/a/c/h/h;

    .line 4
    iget-object v4, p0, Le/a/c/a/d/f/c/a;->d:Le/a/b0/m/c/a;

    .line 5
    iget-object v5, p0, Le/a/c/a/d/f/c/a;->e:Le/a/c/a/i/h;

    .line 6
    new-instance v6, Le/a/c/a/a/a/a/b;

    const/4 p1, 0x0

    const-string v0, "finance_page_transactions"

    const-string v1, "finance_search_page"

    invoke-direct {v6, v0, v1, p1}, Le/a/c/a/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    iget-object v7, p0, Le/a/c/a/d/f/c/a;->f:Le/a/c/b/j;

    move-object v1, p2

    .line 8
    invoke-direct/range {v1 .. v7}, Le/a/c/a/a/a/a/j;-><init>(Le/a/c/a/g/b0;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/a/a/a/a/b;Le/a/c/b/j;)V

    goto :goto_0

    .line 9
    :cond_0
    sget v0, Lcom/truecaller/insights/ui/R$layout;->date_header_item:I

    if-ne p2, v0, :cond_1

    new-instance p2, Le/a/c/a/a/a/a/g;

    .line 10
    invoke-static {p1}, Le/a/c/a/a/a/a/g;->U4(Landroid/view/ViewGroup;)Le/a/c/a/g/v;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 11
    invoke-direct {p2, p1, v0, v1}, Le/a/c/a/a/a/a/g;-><init>(Le/a/c/a/g/v;Le/a/c/a/n/c/d/a;I)V

    :goto_0
    return-object p2

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ViewHolder type not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
