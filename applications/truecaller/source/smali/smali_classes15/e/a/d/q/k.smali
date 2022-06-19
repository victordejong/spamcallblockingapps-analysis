.class public final Le/a/d/q/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/q/j;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/d/w/d;

.field public final d:Le/a/d/v/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/a/d/w/d;Le/a/d/v/d;)V
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

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invitationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/q/k;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/q/k;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/d/q/k;->c:Le/a/d/w/d;

    iput-object p4, p0, Le/a/d/q/k;->d:Le/a/d/v/d;

    return-void
.end method


# virtual methods
.method public a()Landroid/telecom/Connection;
    .locals 3

    .line 1
    new-instance v0, Le/a/d/q/k$a;

    invoke-direct {v0}, Le/a/d/q/k$a;-><init>()V

    .line 2
    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public b(Z)Le/a/d/q/i;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/q/k;->c:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Le/a/d/q/k;->d:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->l:Z

    if-nez v0, :cond_2

    .line 3
    sget-boolean v0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->l:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    .line 4
    :cond_2
    :goto_0
    new-instance v0, Le/a/d/q/b;

    .line 5
    iget-object v1, p0, Le/a/d/q/k;->a:Ls1/w/f;

    .line 6
    iget-object v2, p0, Le/a/d/q/k;->b:Landroid/content/Context;

    .line 7
    invoke-direct {v0, v1, v2, p1}, Le/a/d/q/b;-><init>(Ls1/w/f;Landroid/content/Context;Z)V

    move-object p1, v0

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    new-instance p1, Le/a/d/q/u;

    .line 9
    iget-object v0, p0, Le/a/d/q/k;->a:Ls1/w/f;

    .line 10
    iget-object v1, p0, Le/a/d/q/k;->d:Le/a/d/v/d;

    .line 11
    iget-object v2, p0, Le/a/d/q/k;->c:Le/a/d/w/d;

    .line 12
    invoke-direct {p1, v0, v1, v2}, Le/a/d/q/u;-><init>(Ls1/w/f;Le/a/d/v/d;Le/a/d/w/d;)V

    :goto_2
    return-object p1
.end method
