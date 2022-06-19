.class public final Ls1/a/a/a/v0/k/b/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/k/b/s;Ls1/a/a/a/v0/b/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/b;",
        "Ls1/a/a/a/v0/b/c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/a$a;->b:Ls1/a/a/a/v0/k/b/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/b;

    const-string v0, "fqName"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/a$a;->b:Ls1/a/a/a/v0/k/b/a;

    check-cast v1, Ls1/a/a/a/v0/a/p/k;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Ls1/a/a/a/v0/k/b/a;->d:Ls1/a/a/a/v0/k/b/s;

    .line 6
    invoke-interface {v0, p1}, Ls1/a/a/a/v0/k/b/s;->b(Ls1/a/a/a/v0/f/b;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7
    iget-object v3, v1, Ls1/a/a/a/v0/k/b/a;->c:Ls1/a/a/a/v0/l/m;

    .line 8
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/a;->e:Ls1/a/a/a/v0/b/a0;

    const/4 v4, 0x0

    .line 9
    invoke-static {p1, v3, v1, v0, v4}, Ls1/a/a/a/v0/k/b/f0/c;->O0(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ljava/io/InputStream;Z)Ls1/a/a/a/v0/k/b/f0/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/a$a;->b:Ls1/a/a/a/v0/k/b/a;

    .line 11
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/a;->a:Ls1/a/a/a/v0/k/b/j;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/k/b/o;->N0(Ls1/a/a/a/v0/k/b/j;)V

    move-object v2, p1

    goto :goto_1

    :cond_1
    const-string p1, "components"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    return-object v2
.end method
