.class public final Ls1/a/a/a/v0/k/b/v$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/v;->j(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/b/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/j/t/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/v;

.field public final synthetic c:Ls1/a/a/a/v0/e/n;

.field public final synthetic d:Ls1/a/a/a/v0/k/b/g0/j;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/v;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/k/b/g0/j;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/v$c;->b:Ls1/a/a/a/v0/k/b/v;

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/v$c;->c:Ls1/a/a/a/v0/e/n;

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/v$c;->d:Ls1/a/a/a/v0/k/b/g0/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/v$c;->b:Ls1/a/a/a/v0/k/b/v;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    .line 4
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/k/b/v;->a(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/k/b/y;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/v$c;->b:Ls1/a/a/a/v0/k/b/v;

    .line 7
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 9
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->f:Ls1/a/a/a/v0/k/b/c;

    .line 10
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/v$c;->c:Ls1/a/a/a/v0/e/n;

    iget-object v3, p0, Ls1/a/a/a/v0/k/b/v$c;->d:Ls1/a/a/a/v0/k/b/g0/j;

    invoke-virtual {v3}, Ls1/a/a/a/v0/b/h1/e0;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    const-string v4, "property.returnType"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, v3}, Ls1/a/a/a/v0/k/b/c;->e(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/m/e0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/j/t/g;

    return-object v0
.end method
