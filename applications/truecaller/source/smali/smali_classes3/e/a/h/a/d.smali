.class public final Le/a/h/a/d;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/h/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/h/a/c;",
        ">;",
        "Le/a/h/a/b;"
    }
.end annotation


# instance fields
.field public d:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

.field public final e:Ls1/w/f;

.field public final f:Le/a/q2/a;

.field public final g:Le/a/h5/m;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/q2/a;Le/a/h5/m;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleRequester"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/h/a/d;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/h/a/d;->f:Le/a/q2/a;

    iput-object p3, p0, Le/a/h/a/d;->g:Le/a/h5/m;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/h/a/d;->f:Le/a/q2/a;

    .line 2
    new-instance v8, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    .line 3
    iget-object v1, p0, Le/a/h/a/d;->d:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->DefaultDialerPromo:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    :goto_0
    move-object v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object v1, v8

    move-object v3, p1

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 5
    invoke-interface {v0, v8}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public M6(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V
    .locals 1

    const-string v0, "analyticsType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/h/a/d;->d:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h/a/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Shown:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, p1}, Le/a/h/a/d;->Ij(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void
.end method

.method public ah()V
    .locals 6

    .line 1
    new-instance v3, Le/a/h/a/d$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/h/a/d$a;-><init>(Le/a/h/a/d;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Cancelled:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, v0}, Le/a/h/a/d;->Ij(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedNegative:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, v0}, Le/a/h/a/d;->Ij(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/a/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/a/c;->t()V

    :cond_0
    return-void
.end method
