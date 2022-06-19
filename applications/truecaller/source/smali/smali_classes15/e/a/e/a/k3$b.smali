.class public Le/a/e/a/k3$b;
.super Le/a/e/a/k3$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/k3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Le/a/e/a/k3;


# direct methods
.method public varargs constructor <init>(Le/a/e/a/k3;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/a/e/a/k3$b;->e:Le/a/e/a/k3;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Le/a/e/a/k3$i;-><init>(Le/a/e/a/k3;[Ljava/lang/String;Le/a/e/a/k3$a;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/notifications/enhancing/SourcedContact;",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/notifications/enhancing/SourcedContact;

    .line 4
    iget-object v4, v4, Lcom/truecaller/notifications/enhancing/SourcedContact;->c:Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    if-nez v4, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v0, v3

    move v3, v5

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.truecaller.ACTION_ENHANCED_NOTIFICATION_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ids"

    .line 7
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Le/a/e/a/k3$b;->e:Le/a/e/a/k3;

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    new-instance v3, Ljava/util/LinkedHashSet;

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-static {v0, v3}, Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;->pa(Landroid/content/Context;Ljava/util/LinkedHashSet;)Landroid/content/Intent;

    move-result-object v0

    .line 12
    iget-object v3, p0, Le/a/e/a/k3$b;->e:Le/a/e/a/k3;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 13
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const v7, 0x7f10000e

    invoke-virtual {v3, v7, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v2

    invoke-virtual {v3, v7, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f120272

    .line 15
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Ln3/k/a/q;

    iget-object v6, p0, Le/a/e/a/k3$b;->e:Le/a/e/a/k3;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v6

    iget-object v7, p0, Le/a/e/a/k3$b;->e:Le/a/e/a/k3;

    .line 17
    iget-object v7, v7, Le/a/e/a/k3;->g0:Le/a/h4/n;

    .line 18
    invoke-interface {v7}, Le/a/h4/n;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v4}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 20
    invoke-virtual {v3, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 21
    invoke-virtual {v3, v2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 22
    iget-object p1, p0, Le/a/e/a/k3$b;->e:Le/a/e/a/k3;

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const v2, 0x7f0a0e3e

    const/high16 v4, 0x14000000

    .line 24
    invoke-static {p1, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 25
    iget-object v1, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p1, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const p1, 0x7f0816fb

    .line 26
    iput p1, v1, Landroid/app/Notification;->icon:I

    const/16 p1, 0x10

    .line 27
    invoke-virtual {v3, p1, v5}, Ln3/k/a/q;->p(IZ)V

    .line 28
    iget-object p1, p0, Le/a/e/a/k3$b;->e:Le/a/e/a/k3;

    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const v1, 0x7f0a0e3f

    .line 30
    invoke-static {p1, v1, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 31
    iput-object p1, v3, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 32
    iget-object p1, p0, Le/a/e/a/k3$b;->e:Le/a/e/a/k3;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const v0, 0x7f060024

    .line 33
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 34
    invoke-static {p1, v0}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 35
    iput p1, v3, Ln3/k/a/q;->D:I

    .line 36
    iget-object p1, p0, Le/a/e/a/k3$b;->e:Le/a/e/a/k3;

    .line 37
    iget-object p1, p1, Le/a/e/a/k3;->g0:Le/a/h4/n;

    const/16 v0, 0xc8

    .line 38
    invoke-virtual {v3}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method
