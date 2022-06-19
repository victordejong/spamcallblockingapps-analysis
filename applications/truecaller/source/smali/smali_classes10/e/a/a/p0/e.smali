.class public final Le/a/a/p0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/b/j;

.field public final b:Le/a/c/i/c/c;

.field public final c:Le/a/c/i/i/a;

.field public final d:Le/a/c/i/m/a;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/b/j;Le/a/c/i/c/c;Le/a/c/i/i/a;Le/a/c/i/m/a;Ls1/w/f;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsStatusProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsSmsSyncManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/p0/e;->a:Le/a/c/b/j;

    iput-object p2, p0, Le/a/a/p0/e;->b:Le/a/c/i/c/c;

    iput-object p3, p0, Le/a/a/p0/e;->c:Le/a/c/i/i/a;

    iput-object p4, p0, Le/a/a/p0/e;->d:Le/a/c/i/m/a;

    iput-object p5, p0, Le/a/a/p0/e;->e:Ls1/w/f;

    return-void
.end method
