.class public abstract Le/m/a/b/j/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/m/d/r/k/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/m/d/r/k/h$a;

    invoke-direct {v0}, Le/m/d/r/k/h$a;-><init>()V

    .line 2
    const-class v1, Le/m/a/b/j/p;

    sget-object v2, Le/m/a/b/j/f;->a:Le/m/a/b/j/f;

    invoke-interface {v0, v1, v2}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    .line 3
    const-class v1, Le/m/a/b/j/a0/a/a;

    sget-object v2, Le/m/a/b/j/b;->a:Le/m/a/b/j/b;

    invoke-interface {v0, v1, v2}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    .line 4
    const-class v1, Le/m/a/b/j/a0/a/f;

    sget-object v2, Le/m/a/b/j/h;->a:Le/m/a/b/j/h;

    invoke-interface {v0, v1, v2}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    .line 5
    const-class v1, Le/m/a/b/j/a0/a/d;

    sget-object v2, Le/m/a/b/j/e;->a:Le/m/a/b/j/e;

    invoke-interface {v0, v1, v2}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    .line 6
    const-class v1, Le/m/a/b/j/a0/a/c;

    sget-object v2, Le/m/a/b/j/d;->a:Le/m/a/b/j/d;

    invoke-interface {v0, v1, v2}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    .line 7
    const-class v1, Le/m/a/b/j/a0/a/b;

    sget-object v2, Le/m/a/b/j/c;->a:Le/m/a/b/j/c;

    invoke-interface {v0, v1, v2}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    .line 8
    const-class v1, Le/m/a/b/j/a0/a/e;

    sget-object v2, Le/m/a/b/j/g;->a:Le/m/a/b/j/g;

    invoke-interface {v0, v1, v2}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    .line 9
    new-instance v1, Le/m/d/r/k/h;

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v0, Le/m/d/r/k/h$a;->a:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, v0, Le/m/d/r/k/h$a;->b:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v0, v0, Le/m/d/r/k/h$a;->c:Le/m/d/r/e;

    invoke-direct {v1, v2, v3, v0}, Le/m/d/r/k/h;-><init>(Ljava/util/Map;Ljava/util/Map;Le/m/d/r/e;)V

    .line 10
    sput-object v1, Le/m/a/b/j/p;->a:Le/m/d/r/k/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Le/m/a/b/j/a0/a/a;
.end method
