.class public final Le/a/o5/a2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/y2/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/backup/worker/BackupWorker;->g:Lcom/truecaller/backup/worker/BackupWorker$a;

    .line 2
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/o5/a2/i;->a:Ljava/util/List;

    return-void
.end method
