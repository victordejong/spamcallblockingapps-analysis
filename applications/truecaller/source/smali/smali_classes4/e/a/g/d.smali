.class public final Le/a/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/g/j/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/g/j/m;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUIHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/d;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/g/d;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/g/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/acs/ui/fullscreen/AfterCallScreenActivity;->d:Lcom/truecaller/acs/ui/fullscreen/AfterCallScreenActivity$a;

    iget-object v1, p0, Le/a/g/d;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/truecaller/acs/ui/fullscreen/AfterCallScreenActivity$a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "ARG_CLOSE_FACS"

    .line 5
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Lcom/truecaller/acs/data/AfterCallHistoryEvent;)V
    .locals 2

    const-string v0, "afterCallHistoryEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/g/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/acs/ui/fullscreen/AfterCallScreenActivity;->d:Lcom/truecaller/acs/ui/fullscreen/AfterCallScreenActivity$a;

    iget-object v1, p0, Le/a/g/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/truecaller/acs/ui/fullscreen/AfterCallScreenActivity$a;->b(Landroid/content/Context;Lcom/truecaller/acs/data/AfterCallHistoryEvent;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g/j/m;

    invoke-interface {v0}, Le/a/g/j/m;->a()Z

    move-result v0

    return v0
.end method

.method public d(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;Z)V
    .locals 2

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterMatch"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->g:Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$b;

    iget-object v1, p0, Le/a/g/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$b;->b(Landroid/content/Context;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;Z)V

    return-void
.end method
