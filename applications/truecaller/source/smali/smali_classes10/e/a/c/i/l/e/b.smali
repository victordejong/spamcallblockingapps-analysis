.class public final Le/a/c/i/l/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/c/c0/o;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/c/c0/o;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/l/e/b;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/c/i/l/e/b;->b:Le/a/c/c0/o;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/c/i/l/e/b;->b:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->r0()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    .line 3
    new-instance v2, Le/a/c/i/l/e/b$a;

    invoke-direct {v2}, Le/a/c/i/l/e/b$a;-><init>()V

    invoke-virtual {v2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "object : TypeToken<T>() {}.type"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.fromJson(json, typeToken<T>())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/c/i/l/e/b;->b:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    .line 3
    new-instance v2, Le/a/c/i/l/e/b$b;

    invoke-direct {v2}, Le/a/c/i/l/e/b$b;-><init>()V

    invoke-virtual {v2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "object : TypeToken<T>() {}.type"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.fromJson(json, typeToken<T>())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/c/i/l/e/b;->b:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->w()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    .line 3
    new-instance v2, Le/a/c/i/l/e/b$c;

    invoke-direct {v2}, Le/a/c/i/l/e/b$c;-><init>()V

    invoke-virtual {v2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "object : TypeToken<T>() {}.type"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.fromJson(json, typeToken<T>())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    return-object v0
.end method
