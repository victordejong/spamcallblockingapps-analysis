.class public final Le/m/a/b/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/a/b/j/a0/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/m/a/b/j/c;

.field public static final b:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Le/m/d/r/k/f$a;->a:Le/m/d/r/k/f$a;

    new-instance v1, Le/m/a/b/j/c;

    invoke-direct {v1}, Le/m/a/b/j/c;-><init>()V

    sput-object v1, Le/m/a/b/j/c;->a:Le/m/a/b/j/c;

    const/4 v1, 0x1

    .line 2
    new-instance v2, Le/m/d/r/k/c;

    invoke-direct {v2, v1, v0}, Le/m/d/r/k/c;-><init>(ILe/m/d/r/k/f$a;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Le/m/d/r/d;

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    const-string v2, "storageMetrics"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 8
    sput-object v1, Le/m/a/b/j/c;->b:Le/m/d/r/d;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/a/b/j/a0/a/b;

    check-cast p2, Le/m/d/r/f;

    .line 2
    sget-object v0, Le/m/a/b/j/c;->b:Le/m/d/r/d;

    .line 3
    iget-object p1, p1, Le/m/a/b/j/a0/a/b;->a:Le/m/a/b/j/a0/a/e;

    .line 4
    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
