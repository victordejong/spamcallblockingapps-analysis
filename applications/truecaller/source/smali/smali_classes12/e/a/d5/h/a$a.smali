.class public final Le/a/d5/h/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d5/h/a;-><init>(Le/a/b0/e/l;Le/a/n/e;Le/a/b0/o/a;Le/a/z4/d;Le/a/n/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d5/h/a;


# direct methods
.method public constructor <init>(Le/a/d5/h/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d5/h/a$a;->b:Le/a/d5/h/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;->Companion:Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction$a;

    iget-object v1, p0, Le/a/d5/h/a$a;->b:Le/a/d5/h/a;

    .line 2
    iget-object v1, v1, Le/a/d5/h/a;->h:Le/a/b0/o/a;

    const-string v2, "restoreDataBackupPendingAction"

    .line 3
    invoke-interface {v1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;->values()[Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method
