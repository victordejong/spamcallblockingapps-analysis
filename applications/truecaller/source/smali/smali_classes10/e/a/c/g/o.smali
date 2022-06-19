.class public final Le/a/c/g/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/n;


# instance fields
.field public final a:Lw3/e/a/c/a;

.field public final b:Le/a/c/b/e;


# direct methods
.method public constructor <init>(Le/a/c/b/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "environmentHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/g/o;->b:Le/a/c/b/e;

    .line 2
    new-instance p1, Lw3/e/a/c/a;

    invoke-direct {p1}, Lw3/e/a/c/a;-><init>()V

    iput-object p1, p0, Le/a/c/g/o;->a:Lw3/e/a/c/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/c/g/o;->b:Le/a/c/b/e;

    invoke-interface {v0}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EG"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/g/o;->a:Lw3/e/a/c/a;

    invoke-virtual {v0, p1}, Lw3/e/a/c/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Le/a/c/h/l/b;->c(Le/a/c/h/l/b;Ljava/lang/Throwable;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-object p1
.end method
