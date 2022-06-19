.class public abstract Le/a/d5/h/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/z4/d;

.field public final c:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/z4/d;Le/a/b0/q/l0;)V
    .locals 1

    const-string v0, "lastShowtimeTimestampKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/t;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/d5/h/t;->b:Le/a/z4/d;

    iput-object p3, p0, Le/a/d5/h/t;->c:Le/a/b0/q/l0;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    const-string v0, "fromActivity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/l4/k;->o(Landroid/app/Activity;)Landroid/content/Intent;

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;->USER_PRESSED_DISMISS_BUTTON:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/d5/h/t;->b:Le/a/z4/d;

    const-wide/16 v0, 0xe

    const-string v2, "feature_unimportant_promo_dismissed_delay_days"

    invoke-interface {p1, v2, v0, v1}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Le/a/d5/h/t;->c:Le/a/b0/q/l0;

    invoke-virtual {p1}, Le/a/b0/q/l0;->c()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 4
    iget-object p1, p0, Le/a/d5/h/t;->b:Le/a/z4/d;

    iget-object v2, p0, Le/a/d5/h/t;->a:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/t;->c:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/d5/h/t;->b:Le/a/z4/d;

    const-string v3, "key_unimportant_promo_last_time"

    invoke-interface {v2, v3, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 3
    iget-object v2, p0, Le/a/d5/h/t;->b:Le/a/z4/d;

    iget-object v3, p0, Le/a/d5/h/t;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public h(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
