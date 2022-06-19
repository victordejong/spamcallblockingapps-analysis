.class public final synthetic Le/a/e/a/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/u0;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Le/a/e/a/u0;->a:Le/a/e/a/k3;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->h3()Le/a/h/q0/a;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p2

    invoke-virtual {p2}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object p2

    invoke-interface {p2}, Le/a/b0/c;->L()Le/a/b0/e/l;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object p2

    .line 5
    iget-object p2, p2, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {v0, p2, p2, v1, v2}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 7
    invoke-interface {p1, v0}, Le/a/h/q0/a;->a(Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p1, Le/a/e/a/k3;->q0:Le/a/d0/t;

    invoke-interface {p1}, Le/a/d0/t;->e()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p1, Le/a/e/a/k3;->q0:Le/a/d0/t;

    invoke-interface {p1}, Le/a/d0/t;->a()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p1, Le/a/e/a/k3;->q0:Le/a/d0/t;

    invoke-interface {p1}, Le/a/d0/t;->g()V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p1, Le/a/e/a/k3;->q0:Le/a/d0/t;

    invoke-interface {p1}, Le/a/d0/t;->f()V

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p1, Le/a/e/a/k3;->q0:Le/a/d0/t;

    invoke-interface {p1}, Le/a/d0/t;->b()V

    :goto_0
    return-void
.end method
