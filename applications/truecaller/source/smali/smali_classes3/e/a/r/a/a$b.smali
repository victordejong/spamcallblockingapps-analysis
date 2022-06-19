.class public final Le/a/r/a/a$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/a;->T5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/r/a/a$b;->a:I

    iput-object p2, p0, Le/a/r/a/a$b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget p2, p0, Le/a/r/a/a$b;->a:I

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Le/a/r/a/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/r/a/a;

    invoke-virtual {p1}, Le/a/r/a/a;->SA()Le/a/r/a/g;

    move-result-object p1

    check-cast p1, Le/a/r/a/i;

    .line 3
    iget-object p2, p1, Le/a/r/a/i;->m:Le/a/r/a/d;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;->ACTION_SKIPPED:Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;

    invoke-virtual {p2, v0}, Le/a/r/a/d;->a(Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;)V

    .line 6
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/r/a/h;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Le/a/r/a/h;->i()V

    .line 7
    :cond_0
    iget-object p2, p1, Le/a/r/a/i;->p:Le/a/b0/o/a;

    sget-object v0, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;->SKIP:Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;

    invoke-virtual {v0}, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "restoreDataBackupPendingAction"

    invoke-interface {p2, v2, v0}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v1}, Le/a/r/a/i;->Kj(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    throw v1

    .line 10
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 11
    iget-object p1, p0, Le/a/r/a/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/r/a/a;

    invoke-virtual {p1}, Le/a/r/a/a;->SA()Le/a/r/a/g;

    move-result-object p1

    iget-object p2, p0, Le/a/r/a/a$b;->b:Ljava/lang/Object;

    check-cast p2, Le/a/r/a/a;

    invoke-virtual {p1, p2}, Le/a/r/a/g;->Jj(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
