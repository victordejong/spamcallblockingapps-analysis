.class public final Le/a/a/m/f3/j;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/y0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/c2;",
        ">;",
        "Le/a/a/m/y0;"
    }
.end annotation


# instance fields
.field public c:Le/a/a/m/d1;

.field public d:Z

.field public e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/k/h;

.field public final h:Le/a/a/m/c2$a;

.field public final i:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/k/h;Le/a/a/m/c2$a;Le/a/q2/a;)V
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

    iput-object p2, p0, Le/a/a/m/f3/j;->f:Le/a/p5/c0;

    iput-object p3, p0, Le/a/a/m/f3/j;->g:Le/a/k/h;

    iput-object p4, p0, Le/a/a/m/f3/j;->h:Le/a/a/m/c2$a;

    iput-object p5, p0, Le/a/a/m/f3/j;->i:Le/a/q2/a;

    .line 2
    sget-object p1, Le/a/a/m/d1$p;->b:Le/a/a/m/d1$p;

    iput-object p1, p0, Le/a/a/m/f3/j;->c:Le/a/a/m/d1;

    .line 3
    sget-object p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->VideoCallerIdUpdatePromo:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    iput-object p1, p0, Le/a/a/m/f3/j;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Le/a/a/m/d1$b0;

    .line 2
    iget-boolean v1, p0, Le/a/a/m/f3/j;->d:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/a/m/f3/j;->c:Le/a/a/m/d1;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Le/a/a/m/f3/j;->d:Z

    .line 4
    :cond_0
    iput-object p1, p0, Le/a/a/m/f3/j;->c:Le/a/a/m/d1;

    return v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 7

    .line 1
    check-cast p1, Le/a/a/m/c2;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/f3/j;->g:Le/a/k/h;

    invoke-interface {p2}, Le/a/k/h;->i()Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;->getSubtitleText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/m/c2;->k(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/m/c2;->setTitle(Ljava/lang/String;)V

    .line 6
    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    .line 7
    instance-of v1, v0, Le/a/i5/d$c;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    instance-of v1, v0, Le/a/i5/d$a;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;->getImageLight()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/m/c2;->r(Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_1
    instance-of v1, v0, Le/a/i5/d$d;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    instance-of v0, v0, Le/a/i5/d$b;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2}, Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;->getImageDark()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/m/c2;->r(Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p2}, Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;->getImageLight()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/m/c2;->r(Ljava/lang/String;)V

    .line 12
    :cond_4
    :goto_2
    iget-object v1, p0, Le/a/a/m/f3/j;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v1, :cond_5

    .line 13
    iget-boolean p1, p0, Le/a/a/m/f3/j;->d:Z

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Le/a/a/m/f3/j;->i:Le/a/q2/a;

    new-instance p2, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    sget-object v2, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Shown:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    invoke-interface {p1, p2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Le/a/a/m/f3/j;->d:Z

    :cond_5
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

    const v1, -0x75b0afdc

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x4cd240c0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_OPEN_VIDEO_CALLER_ID_UPDATE_PROMO"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/f3/j;->g:Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->D()V

    .line 5
    iget-object p1, p0, Le/a/a/m/f3/j;->h:Le/a/a/m/c2$a;

    invoke-interface {p1}, Le/a/a/m/c2$a;->g8()V

    .line 6
    iget-object v4, p0, Le/a/a/m/f3/j;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v4, :cond_3

    .line 7
    iget-object p1, p0, Le/a/a/m/f3/j;->i:Le/a/q2/a;

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
    const-string v0, "ItemEvent.ACTION_DISMISS_VIDEO_CALLER_ID_UPDATE_PROMO"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Le/a/a/m/f3/j;->g:Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->D()V

    .line 10
    iget-object p1, p0, Le/a/a/m/f3/j;->h:Le/a/a/m/c2$a;

    invoke-interface {p1}, Le/a/a/m/c2$a;->og()V

    .line 11
    iget-object v4, p0, Le/a/a/m/f3/j;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v4, :cond_3

    .line 12
    iget-object p1, p0, Le/a/a/m/f3/j;->i:Le/a/q2/a;

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
