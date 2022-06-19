.class public Le/m/h/b/b/e/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/h/b/b/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/h/b/b/e/e$a;

.field public final b:Le/m/h/b/b/e/q$b;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/h/b/b/e/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/q$b;Le/m/h/b/b/e/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/b/b/e/q$a;->b:Le/m/h/b/b/e/q$b;

    .line 3
    iput-object p2, p0, Le/m/h/b/b/e/q$a;->a:Le/m/h/b/b/e/e$a;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/q$a;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Le/m/h/b/b/b;Z)Le/m/h/b/b/e/q;
    .locals 5

    .line 1
    invoke-virtual {p1}, Le/m/h/b/b/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/m/h/b/b/e/q$a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Le/m/h/b/b/e/q$a;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Le/m/h/b/b/e/q$a;->a:Le/m/h/b/b/e/e$a;

    invoke-virtual {v2, p1}, Le/m/h/b/b/e/e$a;->a(Le/m/h/b/b/b;)Le/m/h/b/b/e/e;

    move-result-object p1

    .line 5
    new-instance v2, Le/m/h/b/b/e/q;

    iget-object v3, p0, Le/m/h/b/b/e/q$a;->b:Le/m/h/b/b/e/q$b;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Le/m/h/b/b/e/q;-><init>(Le/m/h/b/b/e/e;Le/m/h/b/b/e/q$b;Le/m/h/b/b/e/t;)V

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p0, Le/m/h/b/b/e/q$a;->c:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    monitor-exit v1

    return-object v2

    .line 8
    :cond_1
    iget-object p1, p0, Le/m/h/b/b/e/q$a;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/h/b/b/e/q;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
