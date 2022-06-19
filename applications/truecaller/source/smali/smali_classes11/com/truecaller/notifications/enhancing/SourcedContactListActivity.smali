.class public Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# instance fields
.field public a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method

.method public static pa(Landroid/content/Context;Ljava/util/LinkedHashSet;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/truecaller/notifications/enhancing/SourcedContact;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p0, 0x8000

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x800000

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x80000

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "sourcedContacts"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0}, Le/a/l4/k;->l(Landroid/content/res/Resources$Theme;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v2

    iput-object v2, p0, Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;->a:Le/a/r2/f;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "sourcedContacts"

    .line 8
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x0

    if-nez p1, :cond_5

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/notifications/enhancing/SourcedContact;

    .line 12
    iget-object v5, v5, Lcom/truecaller/notifications/enhancing/SourcedContact;->c:Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-nez v5, :cond_3

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_1
    aput-wide v7, p1, v4

    move v4, v6

    goto :goto_0

    .line 14
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.truecaller.ACTION_ENHANCED_NOTIFICATION_DELETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ids"

    .line 15
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    const p1, 0x7f0d0502

    .line 17
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    const p1, 0x7f0a0405

    .line 18
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07048a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 20
    sget v4, Le/a/o5/j0;->b:I

    .line 21
    new-instance v4, Le/a/o5/b;

    invoke-direct {v4, p1, v3, v3}, Le/a/o5/b;-><init>(Landroid/view/View;II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    new-instance v3, Le/a/i4/x/c;

    invoke-direct {v3, p0}, Le/a/i4/x/c;-><init>(Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance p1, Le/a/i4/x/e;

    invoke-static {p0}, Le/a/m0/a1$k;->N1(Ln3/r/a/l;)Le/a/z3/e;

    move-result-object v3

    new-instance v4, Le/a/i4/x/b;

    invoke-direct {v4, p0}, Le/a/i4/x/b;-><init>(Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;)V

    invoke-direct {p1, v3, v0, v4}, Le/a/i4/x/e;-><init>(Le/a/z3/e;Ljava/util/List;Le/a/i4/x/e$a;)V

    const v0, 0x7f0a0e8f

    .line 24
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 26
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_3

    .line 27
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    :goto_3
    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p1

    const-string v0, "sourcedContactList"

    invoke-static {v0}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
