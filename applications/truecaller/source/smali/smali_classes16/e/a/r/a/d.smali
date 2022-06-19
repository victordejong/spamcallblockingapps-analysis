.class public final Le/a/r/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/a/d;->a:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent;

    invoke-direct {v0, p1}, Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent;-><init>(Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;)V

    iget-object p1, p0, Le/a/r/a/d;->a:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Le/a/r/a/j/a;

    invoke-direct {v0, p1}, Le/a/r/a/j/a;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Le/a/r/a/d;->a:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method
