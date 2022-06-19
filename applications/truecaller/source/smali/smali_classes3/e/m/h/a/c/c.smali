.class public Le/m/h/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/h/a/c/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Le/m/h/a/c/b;",
            ">;",
            "Le/m/d/v/b<",
            "+",
            "Le/m/h/a/d/n/h<",
            "+",
            "Le/m/h/a/c/b;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Le/m/h/a/c/c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/m/h/a/c/c;->a:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/h/a/c/c$a;

    .line 4
    iget-object v1, p0, Le/m/h/a/c/c;->a:Ljava/util/Map;

    .line 5
    iget-object v2, v0, Le/m/h/a/c/c$a;->a:Ljava/lang/Class;

    .line 6
    iget-object v0, v0, Le/m/h/a/c/c$a;->b:Le/m/d/v/b;

    .line 7
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Le/m/h/a/c/c;
    .locals 2

    const-class v0, Le/m/h/a/c/c;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Le/m/h/a/d/g;->c()Le/m/h/a/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/m/h/a/d/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/h/a/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Le/m/h/a/d/n/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Le/m/h/a/c/b;",
            ">;)",
            "Le/m/h/a/d/n/h<",
            "Le/m/h/a/c/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/h/a/c/c;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/d/v/b;

    invoke-interface {p1}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/h/a/d/n/h;

    return-object p1
.end method
