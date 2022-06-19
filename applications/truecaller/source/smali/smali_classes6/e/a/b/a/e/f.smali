.class public final Le/a/b/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/e/b;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/e/f;->a:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public a(Le/a/b/a/e/a;)V
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/e/f;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 2
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    const-string v2, "bizmon"

    .line 3
    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 4
    invoke-virtual {p1}, Le/a/b/a/e/a;->b()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v2, v3}, Ls1/u/i;->X0(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    new-instance v2, Ls1/k;

    invoke-virtual {p1}, Le/a/b/a/e/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v4, "EventName"

    invoke-direct {v2, v4, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v2}, Ls1/u/i;->p0(Ljava/util/Map;Ls1/k;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 5
    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
