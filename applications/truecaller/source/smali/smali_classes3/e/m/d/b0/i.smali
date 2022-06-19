.class public final synthetic Le/m/d/b0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final synthetic a:Le/m/d/b0/i;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/b0/i;

    invoke-direct {v0}, Le/m/d/b0/i;-><init>()V

    sput-object v0, Le/m/d/b0/i;->a:Le/m/d/b0/i;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v6, Le/m/d/b0/q;

    const-class v0, Landroid/content/Context;

    .line 2
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Le/m/d/g;

    .line 3
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/m/d/g;

    const-class v0, Le/m/d/w/i;

    .line 4
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/m/d/w/i;

    const-class v0, Le/m/d/j/d/b;

    .line 5
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/j/d/b;

    const-string v4, "frc"

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v5, v0, Le/m/d/j/d/b;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8
    iget-object v5, v0, Le/m/d/j/d/b;->a:Ljava/util/Map;

    .line 9
    new-instance v7, Le/m/d/j/c;

    iget-object v8, v0, Le/m/d/j/d/b;->c:Le/m/d/v/b;

    invoke-direct {v7, v8, v4}, Le/m/d/j/c;-><init>(Le/m/d/v/b;Ljava/lang/String;)V

    .line 10
    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    iget-object v5, v0, Le/m/d/j/d/b;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/d/j/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 12
    const-class v0, Le/m/d/k/a/a;

    .line 13
    invoke-interface {p1, v0}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/m/d/b0/q;-><init>(Landroid/content/Context;Le/m/d/g;Le/m/d/w/i;Le/m/d/j/c;Le/m/d/v/b;)V

    return-object v6

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0

    throw p1
.end method
