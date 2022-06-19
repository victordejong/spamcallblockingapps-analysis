.class public abstract Le/m/a/b/j/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/b/j/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/m/a/b/j/n$a;
    .locals 2

    .line 1
    new-instance v0, Le/m/a/b/j/i$b;

    invoke-direct {v0}, Le/m/a/b/j/i$b;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iput-object v1, v0, Le/m/a/b/j/i$b;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/b/j/n;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Integer;
.end method

.method public abstract e()Le/m/a/b/j/m;
.end method

.method public abstract f()J
.end method

.method public final g(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/b/j/n;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()J
.end method

.method public j()Le/m/a/b/j/n$a;
    .locals 3

    .line 1
    new-instance v0, Le/m/a/b/j/i$b;

    invoke-direct {v0}, Le/m/a/b/j/i$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/m/a/b/j/n;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/a/b/j/i$b;->f(Ljava/lang/String;)Le/m/a/b/j/n$a;

    .line 3
    invoke-virtual {p0}, Le/m/a/b/j/n;->d()Ljava/lang/Integer;

    move-result-object v1

    .line 4
    iput-object v1, v0, Le/m/a/b/j/i$b;->b:Ljava/lang/Integer;

    .line 5
    invoke-virtual {p0}, Le/m/a/b/j/n;->e()Le/m/a/b/j/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/a/b/j/i$b;->d(Le/m/a/b/j/m;)Le/m/a/b/j/n$a;

    .line 6
    invoke-virtual {p0}, Le/m/a/b/j/n;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/m/a/b/j/i$b;->e(J)Le/m/a/b/j/n$a;

    .line 7
    invoke-virtual {p0}, Le/m/a/b/j/n;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/m/a/b/j/i$b;->g(J)Le/m/a/b/j/n$a;

    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-virtual {p0}, Le/m/a/b/j/n;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    iput-object v1, v0, Le/m/a/b/j/i$b;->f:Ljava/util/Map;

    return-object v0
.end method
