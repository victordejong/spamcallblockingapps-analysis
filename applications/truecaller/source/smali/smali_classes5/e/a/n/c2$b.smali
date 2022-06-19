.class public final Le/a/n/c2$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/c2;->Ij(Lcom/truecaller/backup/BackupResult;JLs1/w/d;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.backup.RestoreServicePresenter$handleDatabaseRestoreResult$2"
    f = "RestoreServicePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/n/c2;

.field public final synthetic f:Ls1/z/c/c0;

.field public final synthetic g:Ls1/z/c/y;

.field public final synthetic h:Ls1/z/c/b0;

.field public final synthetic i:J


# direct methods
.method public constructor <init>(Le/a/n/c2;Ls1/z/c/c0;Ls1/z/c/y;Ls1/z/c/b0;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    iput-object p2, p0, Le/a/n/c2$b;->f:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/n/c2$b;->g:Ls1/z/c/y;

    iput-object p4, p0, Le/a/n/c2$b;->h:Ls1/z/c/b0;

    iput-wide p5, p0, Le/a/n/c2$b;->i:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
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

    new-instance p1, Le/a/n/c2$b;

    iget-object v1, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    iget-object v2, p0, Le/a/n/c2$b;->f:Ls1/z/c/c0;

    iget-object v3, p0, Le/a/n/c2$b;->g:Ls1/z/c/y;

    iget-object v4, p0, Le/a/n/c2$b;->h:Ls1/z/c/b0;

    iget-wide v5, p0, Le/a/n/c2$b;->i:J

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le/a/n/c2$b;-><init>(Le/a/n/c2;Ls1/z/c/c0;Ls1/z/c/y;Ls1/z/c/b0;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/n/c2$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/n/c2$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/n/c2$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    .line 3
    iget-object p1, p1, Le/a/n/c2;->n:Le/a/h4/n;

    const-string v0, "backup"

    .line 4
    invoke-interface {p1, v0}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    .line 6
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/b2;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Le/a/n/c2$b;->f:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/backup/BackupResult;

    sget-object v2, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Le/a/n/b2;->f(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    .line 9
    iget-object v0, v0, Le/a/n/c2;->o:Le/a/b0/o/a;

    .line 10
    iget-object v1, p0, Le/a/n/c2$b;->f:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/backup/BackupResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "restoreDataBackupResult"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Le/a/n/c2$b;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/backup/BackupResult;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    .line 12
    iget-object v0, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    .line 13
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/b2;

    if-eqz v0, :cond_6

    .line 14
    invoke-interface {v0, p1}, Le/a/n/b2;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    .line 16
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/b2;

    if-eqz v1, :cond_6

    .line 17
    iget-object v0, v0, Le/a/n/c2;->l:Le/a/d4/a;

    .line 18
    invoke-interface {v0}, Le/a/d4/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Le/a/n/b2;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, p0, Le/a/n/c2$b;->g:Ls1/z/c/y;

    iget-boolean v0, v0, Ls1/z/c/y;->a:Z

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    .line 21
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/b2;

    if-eqz v0, :cond_6

    .line 22
    invoke-interface {v0, p1}, Le/a/n/b2;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_4
    iget-object v0, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    .line 24
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/b2;

    if-eqz v0, :cond_5

    .line 25
    invoke-interface {v0, p1}, Le/a/n/b2;->e(Ljava/lang/String;)V

    .line 26
    :cond_5
    iget-object p1, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    .line 27
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/b2;

    if-eqz p1, :cond_6

    const v0, 0x7f120ec6

    .line 28
    invoke-interface {p1, v0}, Le/a/n/b2;->a(I)V

    .line 29
    :cond_6
    :goto_1
    iget-object p1, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    iget-object v0, p0, Le/a/n/c2$b;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/truecaller/backup/BackupResult;

    iget-object v0, p0, Le/a/n/c2$b;->h:Ls1/z/c/b0;

    iget-wide v0, v0, Ls1/z/c/b0;->a:J

    iget-wide v4, p0, Le/a/n/c2$b;->i:J

    sub-long v4, v0, v4

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    .line 31
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;

    sget-object v2, Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;->RESTORE:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;-><init>(Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;Lcom/truecaller/backup/BackupResult;JLjava/lang/Long;Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;Ljava/lang/Integer;)V

    .line 34
    iget-object p1, p1, Le/a/n/c2;->j:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 35
    iget-object p1, p0, Le/a/n/c2$b;->e:Le/a/n/c2;

    .line 36
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/b2;

    if-eqz p1, :cond_7

    .line 37
    invoke-interface {p1}, Le/a/n/b2;->b()V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
