.class public final Ls1/a/a/a/v0/k/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/g;


# instance fields
.field public final a:Ls1/a/a/a/v0/b/d0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/d0;)V
    .locals 1

    const-string v0, "packageFragmentProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/m;->a:Ls1/a/a/a/v0/b/d0;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/k/b/f;
    .locals 3

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/m;->a:Ls1/a/a/a/v0/b/d0;

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v2, "classId.packageFqName"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->g2(Ls1/a/a/a/v0/b/d0;Ls1/a/a/a/v0/f/b;)Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/c0;

    .line 3
    instance-of v2, v1, Ls1/a/a/a/v0/k/b/n;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast v1, Ls1/a/a/a/v0/k/b/n;

    invoke-virtual {v1}, Ls1/a/a/a/v0/k/b/n;->w0()Ls1/a/a/a/v0/k/b/g;

    move-result-object v1

    invoke-interface {v1, p1}, Ls1/a/a/a/v0/k/b/g;->a(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/k/b/f;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
