.class public final Le/a/n/j0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/j0;->e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.backup.BackupUtilImpl$maybeFetchAndStoreBackupDate$2"
    f = "BackupUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/n/j0;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/n/j0;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/j0$a;->e:Le/a/n/j0;

    iput-object p2, p0, Le/a/n/j0$a;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/n/j0$a;

    iget-object v0, p0, Le/a/n/j0$a;->e:Le/a/n/j0;

    iget-object v1, p0, Le/a/n/j0$a;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/n/j0$a;-><init>(Le/a/n/j0;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/n/j0$a;->e:Le/a/n/j0;

    iget-object v0, p0, Le/a/n/j0$a;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 5
    :try_start_0
    const-class v1, Le/a/n/u;

    new-instance v2, Le/a/b0/b/a/b;

    invoke-direct {v2}, Le/a/b0/b/a/b;-><init>()V

    .line 6
    sget-object v3, Lcom/truecaller/common/network/util/KnownEndpoints;->BACKUP:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v2, v3}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 7
    invoke-virtual {v2, v1}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 8
    new-instance v3, Le/a/b0/b/g/b;

    invoke-direct {v3}, Le/a/b0/b/g/b;-><init>()V

    .line 9
    sget-object v4, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-virtual {v3, v4, v0}, Le/a/b0/b/g/b;->b(Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;)Le/a/b0/b/g/b;

    .line 10
    invoke-static {v3}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    .line 11
    invoke-virtual {v2, v0}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 12
    invoke-virtual {v2, v1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n/u;

    .line 13
    invoke-interface {v0}, Le/a/n/u;->a()Lx3/b;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 16
    check-cast v0, Lcom/truecaller/backup/BackupDto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/backup/BackupDto;->a()J

    move-result-wide v0

    .line 17
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v2, p2

    .line 18
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backup timestamp is fetched. Timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 20
    iget-object p1, p1, Le/a/n/j0;->f:Le/a/b0/o/a;

    const-string v3, "key_backup_fetched_timestamp"

    .line 21
    invoke-interface {p1, v3, v0, v1}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/n/j0$a;->f:Ljava/lang/String;

    .line 3
    const-class v1, Le/a/n/u;

    new-instance v2, Le/a/b0/b/a/b;

    invoke-direct {v2}, Le/a/b0/b/a/b;-><init>()V

    .line 4
    sget-object v3, Lcom/truecaller/common/network/util/KnownEndpoints;->BACKUP:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v2, v3}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 5
    invoke-virtual {v2, v1}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 6
    new-instance v3, Le/a/b0/b/g/b;

    invoke-direct {v3}, Le/a/b0/b/g/b;-><init>()V

    .line 7
    sget-object v4, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-virtual {v3, v4, v0}, Le/a/b0/b/g/b;->b(Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;)Le/a/b0/b/g/b;

    .line 8
    invoke-static {v3}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    .line 9
    invoke-virtual {v2, v0}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 10
    invoke-virtual {v2, v1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n/u;

    .line 11
    invoke-interface {v0}, Le/a/n/u;->a()Lx3/b;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 14
    check-cast v0, Lcom/truecaller/backup/BackupDto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/backup/BackupDto;->a()J

    move-result-wide v0

    .line 15
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 16
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backup timestamp is fetched. Timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 18
    iget-object v3, p0, Le/a/n/j0$a;->e:Le/a/n/j0;

    .line 19
    iget-object v3, v3, Le/a/n/j0;->f:Le/a/b0/o/a;

    const-string v4, "key_backup_fetched_timestamp"

    .line 20
    invoke-interface {v3, v4, v0, v1}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object p1
.end method
