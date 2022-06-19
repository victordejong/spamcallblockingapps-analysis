.class public final Ls1/a/a/a/v0/a/p/l$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/p/l;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/l/m;Ls1/z/b/a;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/f1/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/a/p/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/p/l;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/l$e;->b:Ls1/a/a/a/v0/a/p/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/p/l$e;->b:Ls1/a/a/a/v0/a/p/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/a/p/l;->h:Ls1/a/a/a/v0/b/a0;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    const-string v1, "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version"

    .line 4
    sget-object v2, Ls1/a/a/a/v0/b/f1/g;->a:Ls1/a/a/a/v0/f/e;

    const-string v2, ""

    const-string v3, "WARNING"

    const-string v4, "$this$createDeprecatedAnnotation"

    .line 5
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "message"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "replaceWith"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "level"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Ls1/a/a/a/v0/b/f1/j;

    .line 7
    sget-object v5, Ls1/a/a/a/v0/a/k$a;->v:Ls1/a/a/a/v0/f/b;

    const/4 v6, 0x2

    new-array v7, v6, [Ls1/k;

    .line 8
    sget-object v8, Ls1/a/a/a/v0/b/f1/g;->d:Ls1/a/a/a/v0/f/e;

    new-instance v9, Ls1/a/a/a/v0/j/t/w;

    invoke-direct {v9, v2}, Ls1/a/a/a/v0/j/t/w;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v2, Ls1/k;

    invoke-direct {v2, v8, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 10
    sget-object v2, Ls1/a/a/a/v0/b/f1/g;->e:Ls1/a/a/a/v0/f/e;

    new-instance v9, Ls1/a/a/a/v0/j/t/b;

    sget-object v10, Ls1/u/s;->a:Ls1/u/s;

    new-instance v11, Ls1/a/a/a/v0/b/f1/f;

    invoke-direct {v11, v0}, Ls1/a/a/a/v0/b/f1/f;-><init>(Ls1/a/a/a/v0/a/g;)V

    invoke-direct {v9, v10, v11}, Ls1/a/a/a/v0/j/t/b;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    .line 11
    new-instance v10, Ls1/k;

    invoke-direct {v10, v2, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v10, v7, v2

    .line 12
    invoke-static {v7}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v7

    .line 13
    invoke-direct {v4, v0, v5, v7}, Ls1/a/a/a/v0/b/f1/j;-><init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/f/b;Ljava/util/Map;)V

    .line 14
    new-instance v5, Ls1/a/a/a/v0/b/f1/j;

    .line 15
    sget-object v7, Ls1/a/a/a/v0/a/k$a;->t:Ls1/a/a/a/v0/f/b;

    const/4 v9, 0x3

    new-array v9, v9, [Ls1/k;

    .line 16
    sget-object v10, Ls1/a/a/a/v0/b/f1/g;->a:Ls1/a/a/a/v0/f/e;

    new-instance v11, Ls1/a/a/a/v0/j/t/w;

    invoke-direct {v11, v1}, Ls1/a/a/a/v0/j/t/w;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v1, Ls1/k;

    invoke-direct {v1, v10, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v9, v8

    .line 18
    sget-object v1, Ls1/a/a/a/v0/b/f1/g;->b:Ls1/a/a/a/v0/f/e;

    new-instance v8, Ls1/a/a/a/v0/j/t/a;

    invoke-direct {v8, v4}, Ls1/a/a/a/v0/j/t/a;-><init>(Ls1/a/a/a/v0/b/f1/c;)V

    .line 19
    new-instance v4, Ls1/k;

    invoke-direct {v4, v1, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v9, v2

    .line 20
    sget-object v1, Ls1/a/a/a/v0/b/f1/g;->c:Ls1/a/a/a/v0/f/e;

    new-instance v2, Ls1/a/a/a/v0/j/t/k;

    .line 21
    sget-object v4, Ls1/a/a/a/v0/a/k$a;->u:Ls1/a/a/a/v0/f/b;

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v8, "ClassId.topLevel(Standar\u2026FqNames.deprecationLevel)"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    const-string v8, "Name.identifier(level)"

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {v2, v4, v3}, Ls1/a/a/a/v0/j/t/k;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V

    .line 24
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v9, v6

    .line 25
    invoke-static {v9}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    .line 26
    invoke-direct {v5, v0, v7, v1}, Ls1/a/a/a/v0/b/f1/j;-><init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/f/b;Ljava/util/Map;)V

    .line 27
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/b/f1/h$a;->a(Ljava/util/List;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    return-object v0
.end method
