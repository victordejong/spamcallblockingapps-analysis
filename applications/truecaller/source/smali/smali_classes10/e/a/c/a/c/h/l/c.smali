.class public final Le/a/c/a/c/h/l/c;
.super Ln3/b0/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/p<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/c/h/h;

.field public final b:Le/a/b0/m/c/a;

.field public final c:Le/a/c/a/i/h;

.field public final d:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)V
    .locals 1

    const-string v0, "messageLocator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/c/h/l/b;

    invoke-direct {v0}, Le/a/c/a/c/h/l/b;-><init>()V

    invoke-direct {p0, v0}, Ln3/b0/a/p;-><init>(Ln3/b0/a/h$e;)V

    iput-object p1, p0, Le/a/c/a/c/h/l/c;->a:Le/a/c/h/h;

    iput-object p2, p0, Le/a/c/a/c/h/l/c;->b:Le/a/b0/m/c/a;

    iput-object p3, p0, Le/a/c/a/c/h/l/c;->c:Le/a/c/a/i/h;

    iput-object p4, p0, Le/a/c/a/c/h/l/c;->d:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    const-string v1, "ViewHolder type not supported"

    if-eqz v0, :cond_1

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 3
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 4
    instance-of p1, p1, Le/a/c/a/l/b$b;

    if-eqz p1, :cond_0

    sget p1, Lcom/truecaller/insights/ui/R$layout;->finance_reminder_item:I

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 3
    iget-object p2, p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 4
    instance-of v0, p1, Le/a/c/a/a/a/a/j;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/a/a/a/a/j;

    const-string v0, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.FinanceItem"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/c/a/l/b$b;

    invoke-virtual {p1, p2}, Le/a/c/a/a/a/a/j;->V4(Le/a/c/a/l/b$b;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not implemented for this type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

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
    iget-object v3, p0, Le/a/c/a/c/h/l/c;->a:Le/a/c/h/h;

    .line 4
    iget-object v4, p0, Le/a/c/a/c/h/l/c;->b:Le/a/b0/m/c/a;

    .line 5
    iget-object v5, p0, Le/a/c/a/c/h/l/c;->c:Le/a/c/a/i/h;

    .line 6
    new-instance v6, Le/a/c/a/a/a/a/b;

    const/4 p1, 0x1

    const-string v0, "recent_transactions"

    const-string v1, "insights_tab"

    .line 7
    invoke-direct {v6, v0, v1, p1}, Le/a/c/a/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    iget-object v7, p0, Le/a/c/a/c/h/l/c;->d:Le/a/c/b/j;

    move-object v1, p2

    .line 9
    invoke-direct/range {v1 .. v7}, Le/a/c/a/a/a/a/j;-><init>(Le/a/c/a/g/b0;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/a/a/a/a/b;Le/a/c/b/j;)V

    return-object p2

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not implemented for this type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
