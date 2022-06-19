.class public final Le/a/n/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/h;


# instance fields
.field public final a:Le/a/b0/o/a;

.field public final b:Le/a/n/k0;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Le/a/n/k0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupWorkerHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/i;->a:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/n/i;->b:Le/a/n/k0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/n/i;->a:Le/a/b0/o/a;

    const-string v3, "backup_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object v2, p0, Le/a/n/i;->a:Le/a/b0/o/a;

    const-string v3, "key_backup_frequency_hours"

    invoke-interface {v2, v3, v0, v1}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object v0, p0, Le/a/n/i;->a:Le/a/b0/o/a;

    const-string v1, "key_backup_last_success"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 5
    iget-object v0, p0, Le/a/n/i;->b:Le/a/n/k0;

    invoke-interface {v0}, Le/a/n/k0;->a()V

    return-void
.end method
