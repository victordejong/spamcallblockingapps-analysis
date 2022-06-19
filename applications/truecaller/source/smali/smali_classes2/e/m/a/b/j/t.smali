.class public final Le/m/a/b/j/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/m/a/b/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/b/j/r;

.field public final b:Ljava/lang/String;

.field public final c:Le/m/a/b/b;

.field public final d:Le/m/a/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/b/e<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field public final e:Le/m/a/b/j/u;


# direct methods
.method public constructor <init>(Le/m/a/b/j/r;Ljava/lang/String;Le/m/a/b/b;Le/m/a/b/e;Le/m/a/b/j/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/b/j/r;",
            "Ljava/lang/String;",
            "Le/m/a/b/b;",
            "Le/m/a/b/e<",
            "TT;[B>;",
            "Le/m/a/b/j/u;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/t;->a:Le/m/a/b/j/r;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/t;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/t;->c:Le/m/a/b/b;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/t;->d:Le/m/a/b/e;

    .line 6
    iput-object p5, p0, Le/m/a/b/j/t;->e:Le/m/a/b/j/u;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/b/c;Le/m/a/b/h;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/b/c<",
            "TT;>;",
            "Le/m/a/b/h;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/b/j/t;->e:Le/m/a/b/j/u;

    .line 2
    iget-object v1, p0, Le/m/a/b/j/t;->a:Le/m/a/b/j/r;

    const-string v2, "Null transportContext"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Null event"

    .line 4
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Le/m/a/b/j/t;->b:Ljava/lang/String;

    const-string v3, "Null transportName"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Le/m/a/b/j/t;->d:Le/m/a/b/e;

    const-string v4, "Null transformer"

    .line 8
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v4, p0, Le/m/a/b/j/t;->c:Le/m/a/b/b;

    const-string v5, "Null encoding"

    .line 10
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    check-cast v0, Le/m/a/b/j/v;

    .line 12
    iget-object v5, v0, Le/m/a/b/j/v;->c:Le/m/a/b/j/c0/e;

    .line 13
    invoke-virtual {p1}, Le/m/a/b/c;->c()Le/m/a/b/d;

    move-result-object v6

    .line 14
    invoke-static {}, Le/m/a/b/j/r;->a()Le/m/a/b/j/r$a;

    move-result-object v7

    .line 15
    invoke-virtual {v1}, Le/m/a/b/j/r;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Le/m/a/b/j/r$a;->b(Ljava/lang/String;)Le/m/a/b/j/r$a;

    .line 16
    invoke-virtual {v7, v6}, Le/m/a/b/j/r$a;->c(Le/m/a/b/d;)Le/m/a/b/j/r$a;

    .line 17
    invoke-virtual {v1}, Le/m/a/b/j/r;->c()[B

    move-result-object v1

    check-cast v7, Le/m/a/b/j/j$b;

    .line 18
    iput-object v1, v7, Le/m/a/b/j/j$b;->b:[B

    .line 19
    invoke-virtual {v7}, Le/m/a/b/j/j$b;->a()Le/m/a/b/j/r;

    move-result-object v1

    .line 20
    invoke-static {}, Le/m/a/b/j/n;->a()Le/m/a/b/j/n$a;

    move-result-object v6

    iget-object v7, v0, Le/m/a/b/j/v;->a:Le/m/a/b/j/e0/a;

    .line 21
    invoke-interface {v7}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Le/m/a/b/j/n$a;->e(J)Le/m/a/b/j/n$a;

    iget-object v0, v0, Le/m/a/b/j/v;->b:Le/m/a/b/j/e0/a;

    .line 22
    invoke-interface {v0}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Le/m/a/b/j/n$a;->g(J)Le/m/a/b/j/n$a;

    .line 23
    invoke-virtual {v6, v2}, Le/m/a/b/j/n$a;->f(Ljava/lang/String;)Le/m/a/b/j/n$a;

    new-instance v0, Le/m/a/b/j/m;

    .line 24
    invoke-virtual {p1}, Le/m/a/b/c;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Le/m/a/b/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 25
    invoke-direct {v0, v4, v2}, Le/m/a/b/j/m;-><init>(Le/m/a/b/b;[B)V

    invoke-virtual {v6, v0}, Le/m/a/b/j/n$a;->d(Le/m/a/b/j/m;)Le/m/a/b/j/n$a;

    .line 26
    invoke-virtual {p1}, Le/m/a/b/c;->a()Ljava/lang/Integer;

    move-result-object p1

    check-cast v6, Le/m/a/b/j/i$b;

    .line 27
    iput-object p1, v6, Le/m/a/b/j/i$b;->b:Ljava/lang/Integer;

    .line 28
    invoke-virtual {v6}, Le/m/a/b/j/i$b;->b()Le/m/a/b/j/n;

    move-result-object p1

    .line 29
    invoke-interface {v5, v1, p1, p2}, Le/m/a/b/j/c0/e;->a(Le/m/a/b/j/r;Le/m/a/b/j/n;Le/m/a/b/h;)V

    return-void
.end method
