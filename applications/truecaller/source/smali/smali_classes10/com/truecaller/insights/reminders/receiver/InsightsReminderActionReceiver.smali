.class public final Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;
.super Le/a/c/v/i/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008#\u0010\u0019J#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR(\u0010\u001a\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u0012\u0010\u0013\u0012\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Le/a/u3/g;",
        "e",
        "Le/a/u3/g;",
        "getFeaturesRegistry",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "featuresRegistry",
        "Ls1/w/f;",
        "d",
        "Ls1/w/f;",
        "getCoroutineContext",
        "()Ls1/w/f;",
        "setCoroutineContext",
        "(Ls1/w/f;)V",
        "getCoroutineContext$annotations",
        "()V",
        "coroutineContext",
        "Le/a/c/v/a;",
        "c",
        "Le/a/c/v/a;",
        "getReminderManager",
        "()Le/a/c/v/a;",
        "setReminderManager",
        "(Le/a/c/v/a;)V",
        "reminderManager",
        "<init>",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public c:Le/a/c/v/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c/v/i/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2}, Le/a/c/v/i/d;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 2
    :goto_0
    instance-of v2, v1, Le/a/b0/g/a;

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    .line 3
    check-cast v1, Le/a/b0/g/a;

    invoke-virtual {v1}, Le/a/b0/g/a;->W()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;->e:Le/a/u3/g;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Le/a/u3/g;->Z()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v1, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver$a;-><init>(Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;Landroid/content/Intent;Landroid/content/Context;Ls1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1, v0}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string p1, "featuresRegistry"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method
