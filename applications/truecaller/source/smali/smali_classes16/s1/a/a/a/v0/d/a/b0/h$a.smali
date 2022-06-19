.class public final Ls1/a/a/a/v0/d/a/b0/h$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/b0/h;-><init>(Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/d/a/d0/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Map<",
        "Ls1/a/a/a/v0/f/e;",
        "+",
        "Ls1/a/a/a/v0/j/t/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/b0/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/b0/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/b0/h$a;->b:Ls1/a/a/a/v0/d/a/b0/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/d;->c:Ls1/a/a/a/v0/d/a/b0/d;

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/b0/h$a;->b:Ls1/a/a/a/v0/d/a/b0/h;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/b0/b;->c:Ls1/a/a/a/v0/d/a/f0/b;

    .line 3
    instance-of v1, v0, Ls1/a/a/a/v0/d/a/f0/m;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ls1/a/a/a/v0/d/a/f0/m;

    if-eqz v0, :cond_2

    .line 4
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/m;->d()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/f1/m;

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Ls1/a/a/a/v0/j/t/k;

    sget-object v3, Ls1/a/a/a/v0/a/k$a;->B:Ls1/a/a/a/v0/f/b;

    invoke-static {v3}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v3

    const-string v4, "ClassId.topLevel(Standar\u2026ames.annotationRetention)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v4, "Name.identifier(retention.name)"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Ls1/a/a/a/v0/j/t/k;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 6
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/c;->k:Ls1/a/a/a/v0/d/a/b0/c;

    .line 7
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/c;->h:Ls1/a/a/a/v0/f/e;

    .line 8
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, Ls1/u/t;->a:Ls1/u/t;

    :goto_2
    return-object v2
.end method
