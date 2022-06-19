.class public final Le/a/c0/c;
.super Le/a/c0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Le/a/c0/f<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final d:Le/a/c0/d;

.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final f:Le/a/u3/a;


# direct methods
.method public constructor <init>(Le/a/c0/d;Ljava/lang/Class;Le/a/u3/a;Le/a/s4/a;Le/a/q2/d1/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c0/d;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Le/a/u3/a;",
            "Le/a/s4/a;",
            "Le/a/q2/d1/d;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsWrapper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p4, p5, v0}, Le/a/c0/f;-><init>(Le/a/c0/g;Le/a/s4/a;Le/a/q2/d1/d;Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/c0/c;->d:Le/a/c0/d;

    iput-object p2, p0, Le/a/c0/c;->e:Ljava/lang/Class;

    iput-object p3, p0, Le/a/c0/c;->f:Le/a/u3/a;

    return-void
.end method


# virtual methods
.method public a()Le/a/c0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c0/c;->d:Le/a/c0/d;

    return-object v0
.end method

.method public f()Ljava/lang/Enum;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c0/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Le/a/c0/f;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public final g()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c0/c;->d:Le/a/c0/d;

    .line 2
    iget-boolean v0, v0, Le/a/c0/d;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/c0/c;->f:Le/a/u3/a;

    invoke-interface {v0}, Le/a/u3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/c0/c;->f()Ljava/lang/Enum;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v3, Le/a/c0/b;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method
