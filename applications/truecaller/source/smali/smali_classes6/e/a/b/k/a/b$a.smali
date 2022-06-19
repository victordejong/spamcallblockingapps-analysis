.class public final Le/a/b/k/a/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/a/b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.covidDirectory.config.CovidDirectoryConfigManagerImpl$saveDataToDbAsync$2$1"
    f = "CovidDirectoryConfigManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/b/k/a/b;


# direct methods
.method public constructor <init>(Le/a/b/k/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/a/b$a;->f:Le/a/b/k/a/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/k/a/b$a;

    iget-object v1, p0, Le/a/b/k/a/b$a;->f:Le/a/b/k/a/b;

    invoke-direct {v0, v1, p2}, Le/a/b/k/a/b$a;-><init>(Le/a/b/k/a/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/k/a/b$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/k/a/b$a;

    iget-object v1, p0, Le/a/b/k/a/b$a;->f:Le/a/b/k/a/b;

    invoke-direct {v0, v1, p2}, Le/a/b/k/a/b$a;-><init>(Le/a/b/k/a/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/k/a/b$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b/k/a/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/k/a/b$a;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 2
    iget-object v0, p0, Le/a/b/k/a/b$a;->f:Le/a/b/k/a/b;

    iget-object v0, v0, Le/a/b/k/a/b;->f:Le/a/b/k/a/d;

    .line 3
    iget-object v0, v0, Le/a/b/k/a/d;->f:Lcom/truecaller/bizmon/covidDirectory/db/CovidDirectoryDb;

    .line 4
    new-instance v1, Le/a/b/k/a/b$a$a;

    invoke-direct {v1, p0, p1}, Le/a/b/k/a/b$a$a;-><init>(Le/a/b/k/a/b$a;Lq3/a/i0;)V

    invoke-virtual {v0, v1}, Ln3/c0/q;->runInTransaction(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Le/a/b/k/a/b$a;->f:Le/a/b/k/a/b;

    iget-object p1, p1, Le/a/b/k/a/b;->f:Le/a/b/k/a/d;

    .line 6
    iget-object p1, p1, Le/a/b/k/a/d;->g:Le/a/b/p/c;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "covid_dir_last_sync_time"

    invoke-interface {p1, v2, v0, v1}, Le/a/b/p/c;->putLong(Ljava/lang/String;J)V

    .line 8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
