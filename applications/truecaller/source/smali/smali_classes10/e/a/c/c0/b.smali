.class public final Le/a/c/c0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c0/a;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/c/c0/m;


# direct methods
.method public constructor <init>(Le/a/c/c0/m;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fileIoUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/c/c0/b;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a()Le/a/c/r/j/x;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    const-string v2, "smartcards/row_smart_card_allowed_grammers.json"

    invoke-interface {v1, v2}, Le/a/c/c0/m;->b(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/c/c0/b;->a:Le/m/e/k;

    new-instance v2, Le/a/c/c0/b$a;

    invoke-direct {v2}, Le/a/c/c0/b$a;-><init>()V

    invoke-virtual {v2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Le/m/e/k;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gson.fromJson(bufferRead\u2026edBaseFilters>() {}.type)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/c/r/j/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3
    :catch_0
    :try_start_1
    new-instance v1, Le/a/c/r/j/x;

    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    invoke-direct {v1, v2}, Le/a/c/r/j/x;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    iget-object v2, p0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v2, v0}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    return-object v1

    :goto_1
    iget-object v2, p0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v2, v0}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public b()Le/a/c/r/j/y;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    const-string v2, "smartcards/semicard_allowed_grammars.json"

    invoke-interface {v1, v2}, Le/a/c/c0/m;->b(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/c/c0/b;->a:Le/m/e/k;

    new-instance v2, Le/a/c/c0/b$b;

    invoke-direct {v2}, Le/a/c/c0/b$b;-><init>()V

    invoke-virtual {v2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Le/m/e/k;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gson.fromJson(bufferRead\u2026edBaseFilters>() {}.type)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/c/r/j/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3
    :catch_0
    :try_start_1
    new-instance v1, Le/a/c/r/j/y;

    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    invoke-direct {v1, v2}, Le/a/c/r/j/y;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    iget-object v2, p0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v2, v0}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    return-object v1

    :goto_1
    iget-object v2, p0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v2, v0}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    throw v1
.end method
