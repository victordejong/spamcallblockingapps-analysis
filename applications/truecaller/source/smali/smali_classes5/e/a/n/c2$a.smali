.class public final Le/a/n/c2$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/c2;->Ij(Lcom/truecaller/backup/BackupResult;JLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.backup.RestoreServicePresenter"
    f = "RestoreServicePresenter.kt"
    l = {
        0x49,
        0x4c,
        0x5a
    }
    m = "handleDatabaseRestoreResult"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/n/c2;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:J


# direct methods
.method public constructor <init>(Le/a/n/c2;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/c2$a;->f:Le/a/n/c2;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Le/a/n/c2$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/n/c2$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/n/c2$a;->e:I

    iget-object p1, p0, Le/a/n/c2$a;->f:Le/a/n/c2;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Le/a/n/c2;->Ij(Lcom/truecaller/backup/BackupResult;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
