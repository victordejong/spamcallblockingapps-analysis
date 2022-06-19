.class public abstract Le/k/a/c/g0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/n0/t;


# static fields
.field public static final a:Le/k/a/a/r$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    sput-object v0, Le/k/a/c/g0/s;->a:Le/k/a/a/r$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A()Z
.end method

.method public abstract B()Z
.end method

.method public C()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/s;->B()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/s;->o()Le/k/a/c/g0/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/g0/s;->v()Le/k/a/c/g0/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/c/g0/s;->q()Le/k/a/c/g0/g;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract d()Le/k/a/c/v;
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/s;->n()Le/k/a/c/g0/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract getMetadata()Le/k/a/c/u;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract h()Le/k/a/a/r$b;
.end method

.method public i()Le/k/a/c/g0/a0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Le/k/a/c/b$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Le/k/a/c/g0/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/s;->r()Le/k/a/c/g0/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/g0/s;->q()Le/k/a/c/g0/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract o()Le/k/a/c/g0/m;
.end method

.method public p()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/k/a/c/g0/m;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/n0/g;->c:Ljava/util/Iterator;

    return-object v0
.end method

.method public abstract q()Le/k/a/c/g0/g;
.end method

.method public abstract r()Le/k/a/c/g0/j;
.end method

.method public abstract s()Le/k/a/c/g0/i;
.end method

.method public abstract t()Le/k/a/c/i;
.end method

.method public abstract u()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract v()Le/k/a/c/g0/j;
.end method

.method public abstract w()Le/k/a/c/v;
.end method

.method public abstract x()Z
.end method

.method public abstract y()Z
.end method

.method public z(Le/k/a/c/v;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/s;->d()Le/k/a/c/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/k/a/c/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
