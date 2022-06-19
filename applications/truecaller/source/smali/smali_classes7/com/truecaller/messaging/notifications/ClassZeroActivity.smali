.class public Lcom/truecaller/messaging/notifications/ClassZeroActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/notifications/ClassZeroActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:J

.field public b:Ln3/b/a/g;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/content/DialogInterface$OnClickListener;

.field public final f:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->a:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->b:Ln3/b/a/g;

    .line 4
    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Lcom/truecaller/messaging/notifications/ClassZeroActivity$a;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/notifications/ClassZeroActivity$a;-><init>(Lcom/truecaller/messaging/notifications/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->d:Landroid/os/Handler;

    .line 6
    new-instance v0, Le/a/a/y0/b;

    invoke-direct {v0, p0}, Le/a/a/y0/b;-><init>(Lcom/truecaller/messaging/notifications/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    new-instance v0, Le/a/a/y0/a;

    invoke-direct {v0, p0}, Le/a/a/y0/a;-><init>(Lcom/truecaller/messaging/notifications/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->f:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0}, Le/a/l4/k;->l(Landroid/content/res/Resources$Theme;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    if-eqz p1, :cond_0

    const-string v0, "messages"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->ra(Landroid/content/Intent;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->pa(Lcom/truecaller/messaging/data/types/Message;)V

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->a:J

    if-eqz p1, :cond_3

    const-string v2, "timer_fire"

    .line 12
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->a:J

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->ra(Landroid/content/Intent;)V

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->pa(Lcom/truecaller/messaging/data/types/Message;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 3
    iget-wide v2, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->a:J

    const-string v0, "timer_fire"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    const-string v1, "messages"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->sa()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final pa(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->b:Ln3/b/a/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/a/p;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->b:Ln3/b/a/g;

    .line 4
    :cond_0
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const v1, 0x7f120732

    .line 6
    iget-object v2, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    iget-object v2, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 9
    invoke-static {p1}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 12
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->b:Ln3/b/a/g;

    return-void
.end method

.method public final qa()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->b:Ln3/b/a/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/a/p;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->b:Ln3/b/a/g;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->pa(Lcom/truecaller/messaging/data/types/Message;)V

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->a:J

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->sa()V

    :goto_0
    return-void
.end method

.method public final ra(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "extra_message_values"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final sa()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3
    iget-wide v4, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->a:J

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :goto_0
    return-void
.end method

.method public final ta(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v0

    .line 5
    iput-boolean p1, v0, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    .line 7
    invoke-interface {v1}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v0

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    :cond_0
    return-void
.end method
