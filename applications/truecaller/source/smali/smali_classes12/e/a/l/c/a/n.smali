.class public final Le/a/l/c/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/l/c/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/l/c2;


# direct methods
.method public constructor <init>(Le/a/l/c2;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/n;->c:Le/a/l/c2;

    .line 2
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    iput-object v0, p0, Le/a/l/c/a/n;->a:Le/m/e/k;

    .line 3
    invoke-interface {p1}, Le/a/l/c2;->y2()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v2, Le/a/l/c/a/n$a;

    invoke-direct {v2}, Le/a/l/c/a/n$a;-><init>()V

    invoke-virtual {v2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "object : TypeToken<T>() {}.type"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "this.fromJson(json, typeToken<T>())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map;

    .line 7
    :goto_1
    iput-object v1, p0, Le/a/l/c/a/n;->b:Ljava/util/Map;

    .line 8
    invoke-virtual {v0, v1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gson.toJson(data)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/l/c2;->t(Ljava/lang/String;)V

    return-void
.end method
