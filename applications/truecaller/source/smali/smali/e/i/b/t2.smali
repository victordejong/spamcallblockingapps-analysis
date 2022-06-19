.class public Le/i/b/t2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/u2/a;

.field public final b:Le/i/b/u2/y;

.field public final c:Lcom/criteo/publisher/Criteo;

.field public final d:Le/i/b/g2/a;

.field public final e:Le/i/b/o2/d;


# direct methods
.method public constructor <init>(Le/i/b/u2/a;Le/i/b/g2/a;Lcom/criteo/publisher/Criteo;Le/i/b/o2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/t2;->a:Le/i/b/u2/a;

    .line 3
    iput-object p2, p0, Le/i/b/t2;->d:Le/i/b/g2/a;

    .line 4
    iput-object p3, p0, Le/i/b/t2;->c:Lcom/criteo/publisher/Criteo;

    .line 5
    invoke-virtual {p3}, Lcom/criteo/publisher/Criteo;->getDeviceInfo()Le/i/b/u2/y;

    move-result-object p1

    iput-object p1, p0, Le/i/b/t2;->b:Le/i/b/u2/y;

    .line 6
    iput-object p4, p0, Le/i/b/t2;->e:Le/i/b/o2/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v2, p0, Le/i/b/t2;->a:Le/i/b/u2/a;

    iget-object v3, p0, Le/i/b/t2;->b:Le/i/b/u2/y;

    iget-object v4, p0, Le/i/b/t2;->e:Le/i/b/o2/d;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->o()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 4
    new-instance v7, Le/i/b/o2/e;

    iget-object v5, v2, Le/i/b/u2/a;->d:Le/i/b/i2/g;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Le/i/b/o2/e;-><init>(Ljava/lang/String;Le/i/b/u2/a;Le/i/b/u2/y;Le/i/b/o2/d;Le/i/b/i2/g;)V

    .line 5
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/t2;->e:Le/i/b/o2/d;

    sget-object v1, Le/i/b/v2;->b:Le/i/b/v2;

    invoke-virtual {v0, v1}, Le/i/b/o2/d;->a(Le/i/b/v2;)V

    return-void
.end method
