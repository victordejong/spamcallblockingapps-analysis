.class public final Le/a/h/f/f;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/f/e;",
        ">;",
        "Le/a/h/f/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/h/f/c;

.field public final c:Le/a/h/f/e$b;

.field public final d:Lcom/truecaller/settings/CallingSettings;

.field public final e:Le/a/n/m;

.field public final f:Le/a/q2/a;

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/n/e;


# direct methods
.method public constructor <init>(Le/a/h/f/c;Le/a/h/f/e$b;Lcom/truecaller/settings/CallingSettings;Le/a/n/m;Le/a/q2/a;Le/a/p5/c0;Le/a/n/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "backupFlowStarter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoRefresher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupAvailabilityProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/h/f/f;->b:Le/a/h/f/c;

    iput-object p2, p0, Le/a/h/f/f;->c:Le/a/h/f/e$b;

    iput-object p3, p0, Le/a/h/f/f;->d:Lcom/truecaller/settings/CallingSettings;

    iput-object p4, p0, Le/a/h/f/f;->e:Le/a/n/m;

    iput-object p5, p0, Le/a/h/f/f;->f:Le/a/q2/a;

    iput-object p6, p0, Le/a/h/f/f;->g:Le/a/p5/c0;

    iput-object p7, p0, Le/a/h/f/f;->h:Le/a/n/e;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/f/f;->d:Lcom/truecaller/settings/CallingSettings;

    const/4 v1, 0x0

    const-string v2, "contactListPromoteBackupCount"

    invoke-interface {v0, v2, v1}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Le/a/h/f/f;->h:Le/a/n/e;

    invoke-interface {v0}, Le/a/n/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/h/f/f;->e:Le/a/n/m;

    invoke-interface {v0}, Le/a/n/m;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/f/f;->e:Le/a/n/m;

    invoke-interface {v0}, Le/a/n/m;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;->BACKUP_PROMO_CLICKED:Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;

    const-string v2, "contacts"

    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->b(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    iget-object v1, p0, Le/a/h/f/f;->f:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 3
    iget-object v0, p0, Le/a/h/f/f;->b:Le/a/h/f/c;

    invoke-interface {v0}, Le/a/h/f/c;->zf()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/h/f/f;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "contactListPromoteBackupCount"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->l(Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Le/a/h/f/f;->c:Le/a/h/f/e$b;

    invoke-interface {v0}, Le/a/h/f/e$b;->H2()V

    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/h/f/e;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/h/f/f;->g:Le/a/p5/c0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f120021

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/h/f/e;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;->BACKUP_PROMO_DISMISSED:Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;

    const-string v2, "contacts"

    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->b(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    iget-object v1, p0, Le/a/h/f/f;->f:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 2
    iget-object v0, p0, Le/a/h/f/f;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "contactListPromoteBackupCount"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->l(Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Le/a/h/f/f;->c:Le/a/h/f/e$b;

    invoke-interface {v0}, Le/a/h/f/e$b;->H2()V

    return-void
.end method
