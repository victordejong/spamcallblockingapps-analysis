.class public final Le/a/c/a/c/h/l/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/r/j/p;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Le/a/c/r/j/p;ZLandroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/l/e;->b:Le/a/c/r/j/p;

    iput-boolean p2, p0, Le/a/c/a/c/h/l/e;->c:Z

    iput-object p3, p0, Le/a/c/a/c/h/l/e;->d:Landroidx/fragment/app/FragmentManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/truecaller/insights/models/pdo/SmsBackupMessage;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/c/i/e/a;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackupMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackupMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lw3/b/a/b;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/SmsBackupMessage;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lw3/b/a/b;-><init>(J)V

    .line 5
    iget-object v6, p0, Le/a/c/a/c/h/l/e;->b:Le/a/c/r/j/p;

    .line 6
    iget-boolean v7, p0, Le/a/c/a/c/h/l/e;->c:Z

    const/4 v4, 0x0

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v7}, Le/a/c/i/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Le/a/c/r/j/p;Z)V

    .line 8
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/c/i/e/a;

    .line 10
    iget-object v2, v2, Le/a/c/i/e/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 11
    :goto_1
    check-cast v1, Le/a/c/i/e/a;

    if-eqz v1, :cond_3

    .line 12
    iget-object v0, v1, Le/a/c/i/e/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 13
    sget-object v1, Le/a/c/a/b/a/v;->k:Le/a/c/a/b/a/v$b;

    .line 14
    iget-boolean v2, p0, Le/a/c/a/c/h/l/e;->c:Z

    .line 15
    invoke-virtual {v1, p1, v0, v2}, Le/a/c/a/b/a/v$b;->a(Ljava/util/List;Ljava/lang/String;Z)Le/a/c/a/b/a/v;

    move-result-object p1

    .line 16
    iget-object v0, p0, Le/a/c/a/c/h/l/e;->d:Landroidx/fragment/app/FragmentManager;

    sget-object v1, Le/a/c/a/b/a/v;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 17
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
