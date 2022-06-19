.class public final Le/m/a/b/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/a/b/j/a0/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/m/a/b/j/b;

.field public static final b:Le/m/d/r/d;

.field public static final c:Le/m/d/r/d;

.field public static final d:Le/m/d/r/d;

.field public static final e:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Le/m/d/r/k/f$a;->a:Le/m/d/r/k/f$a;

    new-instance v1, Le/m/a/b/j/b;

    invoke-direct {v1}, Le/m/a/b/j/b;-><init>()V

    sput-object v1, Le/m/a/b/j/b;->a:Le/m/a/b/j/b;

    const/4 v1, 0x1

    .line 2
    new-instance v2, Le/m/d/r/k/c;

    invoke-direct {v2, v1, v0}, Le/m/d/r/k/c;-><init>(ILe/m/d/r/k/f$a;)V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Le/m/d/r/d;

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    const-string v3, "window"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 8
    sput-object v2, Le/m/a/b/j/b;->b:Le/m/d/r/d;

    const/4 v1, 0x2

    .line 9
    new-instance v2, Le/m/d/r/k/c;

    invoke-direct {v2, v1, v0}, Le/m/d/r/k/c;-><init>(ILe/m/d/r/k/f$a;)V

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Le/m/d/r/d;

    if-nez v1, :cond_1

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_1
    const-string v3, "logSourceMetrics"

    invoke-direct {v2, v3, v1, v4}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 15
    sput-object v2, Le/m/a/b/j/b;->c:Le/m/d/r/d;

    const/4 v1, 0x3

    .line 16
    new-instance v2, Le/m/d/r/k/c;

    invoke-direct {v2, v1, v0}, Le/m/d/r/k/c;-><init>(ILe/m/d/r/k/f$a;)V

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Le/m/d/r/d;

    if-nez v1, :cond_2

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 21
    :cond_2
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_2
    const-string v3, "globalMetrics"

    invoke-direct {v2, v3, v1, v4}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 22
    sput-object v2, Le/m/a/b/j/b;->d:Le/m/d/r/d;

    const/4 v1, 0x4

    .line 23
    new-instance v2, Le/m/d/r/k/c;

    invoke-direct {v2, v1, v0}, Le/m/d/r/k/c;-><init>(ILe/m/d/r/k/f$a;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Le/m/d/r/d;

    if-nez v0, :cond_3

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_3

    .line 28
    :cond_3
    invoke-static {v0}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    :goto_3
    const-string v2, "appNamespace"

    invoke-direct {v1, v2, v0, v4}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 29
    sput-object v1, Le/m/a/b/j/b;->e:Le/m/d/r/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/a/b/j/a0/a/a;

    check-cast p2, Le/m/d/r/f;

    .line 2
    sget-object v0, Le/m/a/b/j/b;->b:Le/m/d/r/d;

    .line 3
    iget-object v1, p1, Le/m/a/b/j/a0/a/a;->a:Le/m/a/b/j/a0/a/f;

    .line 4
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 5
    sget-object v0, Le/m/a/b/j/b;->c:Le/m/d/r/d;

    .line 6
    iget-object v1, p1, Le/m/a/b/j/a0/a/a;->b:Ljava/util/List;

    .line 7
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 8
    sget-object v0, Le/m/a/b/j/b;->d:Le/m/d/r/d;

    .line 9
    iget-object v1, p1, Le/m/a/b/j/a0/a/a;->c:Le/m/a/b/j/a0/a/b;

    .line 10
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 11
    sget-object v0, Le/m/a/b/j/b;->e:Le/m/d/r/d;

    .line 12
    iget-object p1, p1, Le/m/a/b/j/a0/a/a;->d:Ljava/lang/String;

    .line 13
    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
