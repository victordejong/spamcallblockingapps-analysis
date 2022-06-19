.class public final Le/m/a/b/j/c0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/b/j/c0/h/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/c0/f;->a:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/f;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/b/j/e0/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v2, Le/m/a/b/d;->a:Le/m/a/b/d;

    .line 4
    invoke-static {}, Le/m/a/b/j/c0/h/s$a;->a()Le/m/a/b/j/c0/h/s$a$a;

    move-result-object v3

    const-wide/16 v4, 0x7530

    .line 5
    invoke-virtual {v3, v4, v5}, Le/m/a/b/j/c0/h/s$a$a;->b(J)Le/m/a/b/j/c0/h/s$a$a;

    const-wide/32 v4, 0x5265c00

    .line 6
    invoke-virtual {v3, v4, v5}, Le/m/a/b/j/c0/h/s$a$a;->c(J)Le/m/a/b/j/c0/h/s$a$a;

    .line 7
    invoke-virtual {v3}, Le/m/a/b/j/c0/h/s$a$a;->a()Le/m/a/b/j/c0/h/s$a;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Le/m/a/b/d;->c:Le/m/a/b/d;

    .line 10
    invoke-static {}, Le/m/a/b/j/c0/h/s$a;->a()Le/m/a/b/j/c0/h/s$a$a;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    .line 11
    invoke-virtual {v3, v6, v7}, Le/m/a/b/j/c0/h/s$a$a;->b(J)Le/m/a/b/j/c0/h/s$a$a;

    .line 12
    invoke-virtual {v3, v4, v5}, Le/m/a/b/j/c0/h/s$a$a;->c(J)Le/m/a/b/j/c0/h/s$a$a;

    .line 13
    invoke-virtual {v3}, Le/m/a/b/j/c0/h/s$a$a;->a()Le/m/a/b/j/c0/h/s$a;

    move-result-object v3

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v2, Le/m/a/b/d;->b:Le/m/a/b/d;

    .line 16
    invoke-static {}, Le/m/a/b/j/c0/h/s$a;->a()Le/m/a/b/j/c0/h/s$a$a;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v4, v5}, Le/m/a/b/j/c0/h/s$a$a;->b(J)Le/m/a/b/j/c0/h/s$a$a;

    .line 18
    invoke-virtual {v3, v4, v5}, Le/m/a/b/j/c0/h/s$a$a;->c(J)Le/m/a/b/j/c0/h/s$a$a;

    const/4 v4, 0x2

    new-array v4, v4, [Le/m/a/b/j/c0/h/s$b;

    const/4 v5, 0x0

    sget-object v6, Le/m/a/b/j/c0/h/s$b;->a:Le/m/a/b/j/c0/h/s$b;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Le/m/a/b/j/c0/h/s$b;->b:Le/m/a/b/j/c0/h/s$b;

    aput-object v6, v4, v5

    .line 19
    new-instance v5, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 20
    check-cast v3, Le/m/a/b/j/c0/h/q$b;

    const-string v5, "Null flags"

    .line 21
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iput-object v4, v3, Le/m/a/b/j/c0/h/q$b;->c:Ljava/util/Set;

    .line 23
    invoke-virtual {v3}, Le/m/a/b/j/c0/h/q$b;->a()Le/m/a/b/j/c0/h/s$a;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "missing required property: clock"

    .line 25
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {}, Le/m/a/b/d;->values()[Le/m/a/b/d;

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 28
    new-instance v2, Le/m/a/b/j/c0/h/p;

    invoke-direct {v2, v0, v1}, Le/m/a/b/j/c0/h/p;-><init>(Le/m/a/b/j/e0/a;Ljava/util/Map;)V

    return-object v2

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all priorities have been configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
