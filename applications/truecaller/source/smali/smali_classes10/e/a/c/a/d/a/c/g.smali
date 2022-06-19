.class public final Le/a/c/a/d/a/c/g;
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
.field public c:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

.field public final d:Le/a/c/h/h;

.field public final e:Le/a/b0/m/c/a;

.field public final f:Le/a/c/a/i/h;

.field public final g:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

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

    iput-object p1, p0, Le/a/c/a/d/a/c/g;->d:Le/a/c/h/h;

    iput-object p2, p0, Le/a/c/a/d/a/c/g;->e:Le/a/b0/m/c/a;

    iput-object p3, p0, Le/a/c/a/d/a/c/g;->f:Le/a/c/a/i/h;

    iput-object p4, p0, Le/a/c/a/d/a/c/g;->g:Le/a/c/b/j;

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
    .locals 10

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/insights/ui/R$layout;->finance_reminder_item:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v0, :cond_4

    new-instance p2, Le/a/c/a/a/a/a/j;

    .line 2
    invoke-static {p1}, Le/a/c/a/a/a/a/j;->U4(Landroid/view/ViewGroup;)Le/a/c/a/g/b0;

    move-result-object v4

    .line 3
    iget-object v5, p0, Le/a/c/a/d/a/c/g;->d:Le/a/c/h/h;

    .line 4
    iget-object v6, p0, Le/a/c/a/d/a/c/g;->e:Le/a/b0/m/c/a;

    .line 5
    iget-object v7, p0, Le/a/c/a/d/a/c/g;->f:Le/a/c/a/i/h;

    .line 6
    iget-object p1, p0, Le/a/c/a/d/a/c/g;->c:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    const-string p1, "debit_tab"

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string p1, "credit_tab"

    goto :goto_0

    :cond_2
    const-string p1, "all_tab"

    .line 8
    :goto_0
    new-instance v8, Le/a/c/a/a/a/a/b;

    const/4 v0, 0x0

    const-string v1, "finance_page_transactions"

    invoke-direct {v8, v1, p1, v0}, Le/a/c/a/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iget-object v9, p0, Le/a/c/a/d/a/c/g;->g:Le/a/c/b/j;

    move-object v3, p2

    .line 10
    invoke-direct/range {v3 .. v9}, Le/a/c/a/a/a/a/j;-><init>(Le/a/c/a/g/b0;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/a/a/a/a/b;Le/a/c/b/j;)V

    goto :goto_1

    :cond_3
    const-string p1, "financeTab"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_4
    sget v0, Lcom/truecaller/insights/ui/R$layout;->date_header_item:I

    if-ne p2, v0, :cond_5

    new-instance p2, Le/a/c/a/a/a/a/g;

    .line 13
    invoke-static {p1}, Le/a/c/a/a/a/a/g;->U4(Landroid/view/ViewGroup;)Le/a/c/a/g/v;

    move-result-object p1

    .line 14
    invoke-direct {p2, p1, v2, v1}, Le/a/c/a/a/a/a/g;-><init>(Le/a/c/a/g/v;Le/a/c/a/n/c/d/a;I)V

    :goto_1
    return-object p2

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ViewHolder type not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
