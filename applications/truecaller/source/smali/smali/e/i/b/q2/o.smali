.class public Le/i/b/q2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/q2/o$a;
    }
.end annotation


# instance fields
.field public final a:Le/i/b/z1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/z1/u<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/i/b/i2/g;

.field public final c:Le/i/b/s2/f;

.field public final d:Le/i/b/s2/b;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Le/i/b/z1/u;Le/i/b/i2/g;Le/i/b/s2/f;Le/i/b/s2/b;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/z1/u<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;",
            "Le/i/b/i2/g;",
            "Le/i/b/s2/f;",
            "Le/i/b/s2/b;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "sendingQueue"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildConfigWrapper"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingInfo"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/q2/o;->a:Le/i/b/z1/u;

    iput-object p2, p0, Le/i/b/q2/o;->b:Le/i/b/i2/g;

    iput-object p3, p0, Le/i/b/q2/o;->c:Le/i/b/s2/f;

    iput-object p4, p0, Le/i/b/q2/o;->d:Le/i/b/s2/b;

    iput-object p5, p0, Le/i/b/q2/o;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/i/b/q2/o;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Le/i/b/q2/o$a;

    iget-object v2, p0, Le/i/b/q2/o;->a:Le/i/b/z1/u;

    iget-object v3, p0, Le/i/b/q2/o;->b:Le/i/b/i2/g;

    iget-object v4, p0, Le/i/b/q2/o;->c:Le/i/b/s2/f;

    iget-object v5, p0, Le/i/b/q2/o;->d:Le/i/b/s2/b;

    invoke-direct {v1, v2, v3, v4, v5}, Le/i/b/q2/o$a;-><init>(Le/i/b/z1/u;Le/i/b/i2/g;Le/i/b/s2/f;Le/i/b/s2/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
