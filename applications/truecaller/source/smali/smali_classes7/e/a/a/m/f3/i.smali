.class public final Le/a/a/m/f3/i;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/x0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/b2;",
        ">;",
        "Le/a/a/m/x0;"
    }
.end annotation


# instance fields
.field public c:Le/a/a/m/d1;

.field public d:Z

.field public e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/k/h;

.field public final h:Le/a/a/m/b2$a;

.field public final i:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/k/h;Le/a/a/m/b2$a;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/f3/i;->f:Le/a/p5/c0;

    iput-object p3, p0, Le/a/a/m/f3/i;->g:Le/a/k/h;

    iput-object p4, p0, Le/a/a/m/f3/i;->h:Le/a/a/m/b2$a;

    iput-object p5, p0, Le/a/a/m/f3/i;->i:Le/a/q2/a;

    .line 2
    sget-object p1, Le/a/a/m/d1$p;->b:Le/a/a/m/d1$p;

    iput-object p1, p0, Le/a/a/m/f3/i;->c:Le/a/a/m/d1;

    .line 3
    sget-object p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->VideoCallerIdPromo:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    iput-object p1, p0, Le/a/a/m/f3/i;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Le/a/a/m/d1$a0;

    .line 2
    iget-boolean v1, p0, Le/a/a/m/f3/i;->d:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/a/m/f3/i;->c:Le/a/a/m/d1;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Le/a/a/m/f3/i;->d:Z

    .line 4
    :cond_0
    iput-object p1, p0, Le/a/a/m/f3/i;->c:Le/a/a/m/d1;

    return v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 9

    .line 1
    check-cast p1, Le/a/a/m/b2;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/f3/i;->f:Le/a/p5/c0;

    const v0, 0x7f120e7b

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f12106a

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {p2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {p2, v0, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getStri\u2026.string.video_caller_id))"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/b2;->setTitle(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Le/a/a/m/f3/i;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v3, :cond_0

    .line 5
    iget-boolean p1, p0, Le/a/a/m/f3/i;->d:Z

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Le/a/a/m/f3/i;->i:Le/a/q2/a;

    new-instance p2, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    sget-object v4, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Shown:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    invoke-interface {p1, p2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 7
    iput-boolean v1, p0, Le/a/a/m/f3/i;->d:Z

    :cond_0
    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2b1b124

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x2c7dc988

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_OPEN_VIDEO_CALLER_ID_PROMO"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/f3/i;->g:Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->c()V

    .line 5
    iget-object p1, p0, Le/a/a/m/f3/i;->h:Le/a/a/m/b2$a;

    invoke-interface {p1}, Le/a/a/m/b2$a;->pi()V

    .line 6
    iget-object v4, p0, Le/a/a/m/f3/i;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v4, :cond_3

    .line 7
    iget-object p1, p0, Le/a/a/m/f3/i;->i:Le/a/q2/a;

    new-instance v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    sget-object v5, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedPositive:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_DISMISS_VIDEO_CALLER_ID_PROMO"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Le/a/a/m/f3/i;->g:Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->c()V

    .line 10
    iget-object p1, p0, Le/a/a/m/f3/i;->h:Le/a/a/m/b2$a;

    invoke-interface {p1}, Le/a/a/m/b2$a;->Bj()V

    .line 11
    iget-object v4, p0, Le/a/a/m/f3/i;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v4, :cond_3

    .line 12
    iget-object p1, p0, Le/a/a/m/f3/i;->i:Le/a/q2/a;

    new-instance v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    sget-object v5, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedNegative:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method
