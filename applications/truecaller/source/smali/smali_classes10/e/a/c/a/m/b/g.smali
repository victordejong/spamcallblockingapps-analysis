.class public final Le/a/c/a/m/b/g;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/m/b/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/c/a/m/b/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/c/v/f/b/a;

.field public final c:Le/a/c/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/v/f/b/a;Le/a/c/j/e;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/v/f/b/a;",
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actionHandler"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLinkFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/c/a/m/b/g;->b:Le/a/c/v/f/b/a;

    iput-object p2, p0, Le/a/c/a/m/b/g;->c:Le/a/c/j/e;

    iput-object p3, p0, Le/a/c/a/m/b/g;->d:Ls1/z/b/l;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/c/a/m/b/g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/a/m/b/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 8

    .line 1
    check-cast p1, Le/a/c/a/m/b/g$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/m/b/g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/models/InsightsReminder;

    const-string v0, "reminder"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Le/a/c/a/m/b/g$a;->a:Le/a/c/a/g/y1;

    .line 6
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    invoke-virtual {v1, v2, v3}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 7
    sget-object v2, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v3

    new-instance v4, Lw3/b/a/b;

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getDueDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v3, v4}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v2

    new-instance v4, Lw3/b/a/b;

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getGeneratedDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v2, v4}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v4, Lw3/b/a/b;

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getGeneratedDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v4}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v4

    .line 10
    new-instance v5, Lw3/b/a/b;

    invoke-direct {v5}, Lw3/b/a/b;-><init>()V

    .line 11
    invoke-virtual {v5}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v5

    invoke-static {v4, v5}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v4

    const-string v5, "Days.daysBetween(DateTim\u2026Time.now().toLocalDate())"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget v4, v4, Lw3/b/a/e0/i;->a:I

    .line 13
    iget-object v5, v0, Le/a/c/a/g/y1;->c:Landroid/widget/TextView;

    const-string v6, "billerName"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getVendorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v5, v0, Le/a/c/a/g/y1;->b:Landroid/widget/TextView;

    const-string v6, "accountId"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v5, v0, Le/a/c/a/g/y1;->g:Landroid/widget/TextView;

    const-string v6, "dueAmt"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getBillAmount()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, v0, Le/a/c/a/g/y1;->h:Landroid/widget/TextView;

    const-string v5, "dueDate"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, v0, Le/a/c/a/g/y1;->i:Landroid/widget/TextView;

    const-string v3, "genDate"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, v0, Le/a/c/a/g/y1;->e:Landroid/widget/TextView;

    const-string v2, "datesUtil"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getTimesNotified()I

    move-result v1

    .line 20
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 21
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getPendingNotification()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    iget-object v3, v0, Le/a/c/a/g/y1;->j:Landroid/widget/TextView;

    sget v4, Lcom/truecaller/insights/ui/R$color;->amountRed:I

    .line 23
    sget-object v5, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 24
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 25
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 26
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getDismissed()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEN<>DIS<>"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEN<>UN-DIS<>"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 27
    :cond_1
    iget-object v3, v0, Le/a/c/a/g/y1;->j:Landroid/widget/TextView;

    sget v4, Lcom/truecaller/insights/ui/R$color;->amountGreen:I

    .line 28
    sget-object v5, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 29
    invoke-static {v2, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 30
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 31
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getDismissed()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTI<>DIS<>"

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFIED<>UN-DIS<>"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    :goto_2
    iget-object v2, v0, Le/a/c/a/g/y1;->j:Landroid/widget/TextView;

    const-string v3, "notified"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v1, Le/a/c/a/m/b/f;

    invoke-direct {v1, v0}, Le/a/c/a/m/b/f;-><init>(Le/a/c/a/g/y1;)V

    .line 34
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/c/p/a;->T1(Ljava/lang/String;)Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 35
    new-instance v3, Le/a/c/v/i/g;

    .line 36
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v4

    .line 37
    sget-object v5, Le/a/c/v/h/e$a;->c:Le/a/c/v/h/e$a;

    const/4 v6, 0x1

    .line 38
    invoke-direct {v3, v2, v4, v5, v6}, Le/a/c/v/i/g;-><init>(Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;Ljava/lang/String;Le/a/c/v/h/e;I)V

    .line 39
    iget-object v2, v3, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 40
    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getBillAmount()Ljava/lang/Double;

    move-result-object v2

    .line 41
    iget-object v4, p1, Le/a/c/a/m/b/g$a;->c:Le/a/c/j/e;

    .line 42
    iget-object v5, v3, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 43
    invoke-virtual {v5}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getVendorName()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v2, v6

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 45
    :goto_3
    iget-object v6, v3, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 46
    invoke-virtual {v6}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-static {v3}, Le/a/c/p/a;->n0(Le/a/c/v/i/g;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-interface {v4, v5, v2, v6, v3}, Le/a/c/j/e;->c(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)Le/a/c/j/f;

    move-result-object v2

    check-cast v2, Le/a/c/j/f$a;

    .line 49
    iget-object v3, p1, Le/a/c/a/m/b/g$a;->b:Le/a/c/v/f/b/a;

    .line 50
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "dlCallback"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 51
    iget-object v3, v3, Le/a/c/v/f/b/a;->a:Le/a/c/j/b;

    invoke-interface {v3, v2, v1}, Le/a/c/j/b;->a(Le/a/c/j/f;Ls1/z/b/l;)V

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Le/a/c/a/m/b/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_5
    :goto_4
    iget-object v0, v0, Le/a/c/a/g/y1;->d:Landroid/widget/Button;

    new-instance v1, Le/a/c/a/m/b/e;

    invoke-direct {v1, p1, p2}, Le/a/c/a/m/b/e;-><init>(Le/a/c/a/m/b/g$a;Lcom/truecaller/insights/models/InsightsReminder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 13

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/c/a/m/b/g$a;

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 5
    sget v1, Lcom/truecaller/insights/ui/R$layout;->qa_reminder_item:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    sget p2, Lcom/truecaller/insights/ui/R$id;->accountId:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 8
    sget p2, Lcom/truecaller/insights/ui/R$id;->billerName:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 10
    sget p2, Lcom/truecaller/insights/ui/R$id;->button:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 12
    sget p2, Lcom/truecaller/insights/ui/R$id;->datesUtil:I

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 14
    sget p2, Lcom/truecaller/insights/ui/R$id;->deepLink:I

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 16
    sget p2, Lcom/truecaller/insights/ui/R$id;->dueAmt:I

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 18
    sget p2, Lcom/truecaller/insights/ui/R$id;->dueDate:I

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 20
    sget p2, Lcom/truecaller/insights/ui/R$id;->genDate:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 22
    sget p2, Lcom/truecaller/insights/ui/R$id;->notified:I

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 24
    new-instance p2, Le/a/c/a/g/y1;

    move-object v3, p1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, p2

    invoke-direct/range {v2 .. v12}, Le/a/c/a/g/y1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string p1, "QaReminderItemBinding.in\u2026.context), parent, false)"

    .line 25
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Le/a/c/a/m/b/g;->b:Le/a/c/v/f/b/a;

    iget-object v1, p0, Le/a/c/a/m/b/g;->c:Le/a/c/j/e;

    iget-object v2, p0, Le/a/c/a/m/b/g;->d:Ls1/z/b/l;

    invoke-direct {v0, p2, p1, v1, v2}, Le/a/c/a/m/b/g$a;-><init>(Le/a/c/a/g/y1;Le/a/c/v/f/b/a;Le/a/c/j/e;Ls1/z/b/l;)V

    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
