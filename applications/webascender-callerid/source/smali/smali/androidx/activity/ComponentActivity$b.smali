.class Landroidx/activity/ComponentActivity$b;
.super Landroidx/activity/result/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$b;->h:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Landroidx/activity/result/d;-><init>()V

    return-void
.end method


# virtual methods
.method public f(ILandroidx/activity/result/g/a;Ljava/lang/Object;Landroidx/core/app/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/activity/result/g/a<",
            "TI;TO;>;TI;",
            "Landroidx/core/app/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$b;->h:Landroidx/activity/ComponentActivity;

    .line 2
    invoke-virtual {p2, v0, p3}, Landroidx/activity/result/g/a;->b(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/g/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Landroidx/activity/ComponentActivity$b$a;

    invoke-direct {p3, p0, p1, v1}, Landroidx/activity/ComponentActivity$b$a;-><init>(Landroidx/activity/ComponentActivity$b;ILandroidx/activity/result/g/a$a;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2, v0, p3}, Landroidx/activity/result/g/a;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 5
    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p4

    .line 7
    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object v7, p4

    goto :goto_0

    :cond_1
    if-nez p4, :cond_8

    move-object v7, v2

    .line 8
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string p4, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 9
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 10
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    array-length p4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_4

    aget-object v3, p2, v2

    .line 12
    iget-object v4, p0, Landroidx/activity/ComponentActivity$b;->h:Landroidx/activity/ComponentActivity;

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 14
    invoke-virtual {v4, v3, v5, v6}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    new-array p2, v1, [Ljava/lang/String;

    .line 17
    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 18
    invoke-static {v0, p2, p1}, Landroidx/core/app/a;->p(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string p4, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 20
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/activity/result/f;

    .line 21
    :try_start_0
    invoke-virtual {p2}, Landroidx/activity/result/f;->d()Landroid/content/IntentSender;

    move-result-object v1

    .line 22
    invoke-virtual {p2}, Landroidx/activity/result/f;->a()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/activity/result/f;->b()I

    move-result v4

    .line 23
    invoke-virtual {p2}, Landroidx/activity/result/f;->c()I

    move-result v5

    const/4 v6, 0x0

    move v2, p1

    .line 24
    invoke-static/range {v0 .. v7}, Landroidx/core/app/a;->s(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 25
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Landroidx/activity/ComponentActivity$b$b;

    invoke-direct {p4, p0, p1, p2}, Landroidx/activity/ComponentActivity$b$b;-><init>(Landroidx/activity/ComponentActivity$b;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 26
    :cond_6
    invoke-static {v0, p2, p1, v7}, Landroidx/core/app/a;->r(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_7
    :goto_2
    return-void

    .line 27
    :cond_8
    invoke-virtual {p4}, Landroidx/core/app/b;->a()Landroid/os/Bundle;

    throw v2
.end method
