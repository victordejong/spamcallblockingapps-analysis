.class public final Le/a/a/m/f3/b;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/h1;",
        ">;",
        "Le/a/a/m/b0;"
    }
.end annotation


# instance fields
.field public c:Le/a/a/m/d1;

.field public d:Z

.field public e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

.field public final f:Le/a/a/m/h1$a;

.field public final g:Le/a/o/c;

.field public final h:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/h1$a;Le/a/o/c;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/f3/b;->f:Le/a/a/m/h1$a;

    iput-object p3, p0, Le/a/a/m/f3/b;->g:Le/a/o/c;

    iput-object p4, p0, Le/a/a/m/f3/b;->h:Le/a/q2/a;

    .line 2
    sget-object p1, Le/a/a/m/d1$p;->b:Le/a/a/m/d1$p;

    iput-object p1, p0, Le/a/a/m/f3/b;->c:Le/a/a/m/d1;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Le/a/a/m/d1$e;

    .line 2
    iget-boolean v1, p0, Le/a/a/m/f3/b;->d:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/a/m/f3/b;->c:Le/a/a/m/d1;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Le/a/a/m/f3/b;->d:Z

    .line 4
    :cond_0
    iput-object p1, p0, Le/a/a/m/f3/b;->c:Le/a/a/m/d1;

    return v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 8

    .line 1
    check-cast p1, Le/a/a/m/h1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/f3/b;->c:Le/a/a/m/d1;

    instance-of v0, p2, Le/a/a/m/d1$e;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Le/a/a/m/d1$e;

    if-eqz p2, :cond_3

    .line 4
    iget-object p2, p2, Le/a/a/m/d1$e;->b:Lcom/truecaller/contextcall/utils/ContextCallPromoType;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p1}, Le/a/a/m/h1;->h2()V

    .line 7
    iget-object p1, p0, Le/a/a/m/f3/b;->g:Le/a/o/c;

    invoke-interface {p1}, Le/a/o/c;->c()V

    .line 8
    sget-object p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->ContextCallReminderPromo:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p1}, Le/a/a/m/h1;->J2()V

    .line 10
    iget-object p1, p0, Le/a/a/m/f3/b;->g:Le/a/o/c;

    invoke-interface {p1}, Le/a/o/c;->c()V

    .line 11
    sget-object p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->ContextCallNewUserPromo:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    :goto_0
    move-object v2, p1

    .line 12
    iput-object v2, p0, Le/a/a/m/f3/b;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v2, :cond_3

    .line 13
    iget-boolean p1, p0, Le/a/a/m/f3/b;->d:Z

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Le/a/a/m/f3/b;->h:Le/a/q2/a;

    new-instance p2, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    sget-object v3, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Shown:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    invoke-interface {p1, p2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 15
    iput-boolean v0, p0, Le/a/a/m/f3/b;->d:Z

    :cond_3
    :goto_1
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

    const v1, -0x5299203c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x1af276e5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_DISMISS_CONTEXT_CALL"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/f3/b;->g:Le/a/o/c;

    invoke-interface {p1}, Le/a/o/c;->m()V

    .line 5
    iget-object p1, p0, Le/a/a/m/f3/b;->f:Le/a/a/m/h1$a;

    invoke-interface {p1}, Le/a/a/m/h1$a;->Yi()Z

    .line 6
    iget-object v4, p0, Le/a/a/m/f3/b;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v4, :cond_3

    .line 7
    iget-object p1, p0, Le/a/a/m/f3/b;->h:Le/a/q2/a;

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

    :cond_1
    const-string v0, "ItemEvent.ACTION_CONTINUE_CONTEXT_CALL"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Le/a/a/m/f3/b;->f:Le/a/a/m/h1$a;

    invoke-interface {p1}, Le/a/a/m/h1$a;->u8()Z

    .line 10
    iget-object v4, p0, Le/a/a/m/f3/b;->e:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v4, :cond_3

    .line 11
    iget-object p1, p0, Le/a/a/m/f3/b;->h:Le/a/q2/a;

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

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method
