.class public final Ls1/a/a/a/v0/a/p/q;
.super Ls1/a/a/a/v0/o/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/o/b<",
        "Ls1/a/a/a/v0/b/e;",
        "Ls1/a/a/a/v0/a/p/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/z/c/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/a/p/q;->a:Ljava/lang/String;

    iput-object p2, p0, Ls1/a/a/a/v0/a/p/q;->b:Ls1/z/c/c0;

    invoke-direct {p0}, Ls1/a/a/a/v0/o/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/p/q;->b:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/a/p/l$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/a/a/a/v0/a/p/l$a;->c:Ls1/a/a/a/v0/a/p/l$a;

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/e;

    const-string v0, "javaClassDescriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls1/a/a/a/v0/d/b/s;->a:Ls1/a/a/a/v0/d/b/s;

    iget-object v1, p0, Ls1/a/a/a/v0/a/p/q;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Le/q/f/a/d/a;->P2(Ls1/a/a/a/v0/d/b/s;Ls1/a/a/a/v0/b/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Ls1/a/a/a/v0/a/p/t;->g:Ls1/a/a/a/v0/a/p/t;

    .line 5
    sget-object v0, Ls1/a/a/a/v0/a/p/t;->b:Ljava/util/Set;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ls1/a/a/a/v0/a/p/q;->b:Ls1/z/c/c0;

    sget-object v0, Ls1/a/a/a/v0/a/p/l$a;->a:Ls1/a/a/a/v0/a/p/l$a;

    iput-object v0, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/a/p/t;->c:Ljava/util/Set;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ls1/a/a/a/v0/a/p/q;->b:Ls1/z/c/c0;

    sget-object v0, Ls1/a/a/a/v0/a/p/l$a;->b:Ls1/a/a/a/v0/a/p/l$a;

    iput-object v0, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/a/p/t;->a:Ljava/util/Set;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ls1/a/a/a/v0/a/p/q;->b:Ls1/z/c/c0;

    sget-object v0, Ls1/a/a/a/v0/a/p/l$a;->d:Ls1/a/a/a/v0/a/p/l$a;

    iput-object v0, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Ls1/a/a/a/v0/a/p/q;->b:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/a/p/l$a;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
