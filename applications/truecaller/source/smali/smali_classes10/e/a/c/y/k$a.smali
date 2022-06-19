.class public final Le/a/c/y/k$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/y/k;-><init>(Le/a/c/c0/a;Le/a/b0/e/r/a;Le/a/c/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/y/k;


# direct methods
.method public constructor <init>(Le/a/c/y/k;)V
    .locals 0

    iput-object p1, p0, Le/a/c/y/k$a;->b:Le/a/c/y/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    iget-object v1, p0, Le/a/c/y/k$a;->b:Le/a/c/y/k;

    .line 2
    iget-object v1, v1, Le/a/c/y/k;->d:Le/a/c/b/j;

    .line 3
    invoke-interface {v1}, Le/a/c/b/j;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/c/y/k$a;->b:Le/a/c/y/k;

    .line 5
    iget-object v1, v1, Le/a/c/y/k;->c:Le/a/b0/e/r/a;

    const-string v2, "profileCountryIso"

    .line 6
    invoke-interface {v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "accountSettings.getStrin\u2026: return@lazy emptyList()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Le/a/c/y/k$a;->b:Le/a/c/y/k;

    .line 8
    iget-object v2, v2, Le/a/c/y/k;->b:Le/a/c/c0/a;

    .line 9
    check-cast v2, Le/a/c/c0/b;

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 11
    :try_start_0
    iget-object v4, v2, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    const-string v5, "smartcards/smart_card_with_message.json"

    invoke-interface {v4, v5}, Le/a/c/c0/m;->b(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v3

    .line 12
    iget-object v4, v2, Le/a/c/c0/b;->a:Le/m/e/k;

    new-instance v5, Le/a/c/c0/e;

    invoke-direct {v5}, Le/a/c/c0/e;-><init>()V

    invoke-virtual {v5}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Le/m/e/k;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "gson.fromJson(bufferRead\u2026List<String>>>() {}.type)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 13
    :catch_0
    :try_start_1
    sget-object v4, Ls1/u/t;->a:Ls1/u/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    iget-object v2, v2, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v2, v3}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    .line 15
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_2

    .line 16
    :goto_1
    iget-object v1, v2, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v1, v3}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method
