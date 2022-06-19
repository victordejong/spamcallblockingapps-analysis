.class public final Le/a/d5/h/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final b:Le/a/z4/d;

.field public final c:Le/a/b0/q/l0;

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/z4/d;Le/a/b0/q/l0;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/z4/d;",
            "Le/a/b0/q/l0;",
            "Ljavax/inject/Provider<",
            "Le/a/k/h;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "generalSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/u;->b:Le/a/z4/d;

    iput-object p2, p0, Le/a/d5/h/u;->c:Le/a/b0/q/l0;

    iput-object p3, p0, Le/a/d5/h/u;->d:Ljavax/inject/Provider;

    .line 2
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->DIALOG_WHATS_NEW:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/u;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

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

.method public b()Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/u;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/u;->b:Le/a/z4/d;

    const-string v1, "whatsNewDialogShownRevision"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Le/a/d5/h/u;->b:Le/a/z4/d;

    iget-object v1, p0, Le/a/d5/h/u;->c:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    const-string v3, "whatsNewShownTimestamp"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/d5/h/u;->b:Le/a/z4/d;

    const/4 v0, 0x0

    const-string v1, "whatsNewDialogShownRevision"

    invoke-interface {p1, v1, v0}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/d5/h/u;->d:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->z()Z

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    new-instance v0, Le/a/d5/g/p;

    invoke-direct {v0}, Le/a/d5/g/p;-><init>()V

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
