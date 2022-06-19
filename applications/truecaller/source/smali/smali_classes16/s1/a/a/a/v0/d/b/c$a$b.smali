.class public final Ls1/a/a/a/v0/d/b/c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/b/c$a;->f(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/d/b/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Ls1/a/a/a/v0/d/b/c$a;

.field public final synthetic c:Ls1/a/a/a/v0/f/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/c$a;Ls1/a/a/a/v0/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/b/c$a$b;->b:Ls1/a/a/a/v0/d/b/c$a;

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/c$a$b;->c:Ls1/a/a/a/v0/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/c$a$b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$b;->c:Ls1/a/a/a/v0/f/e;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/c$a$b;->b:Ls1/a/a/a/v0/d/b/c$a;

    iget-object v1, v1, Ls1/a/a/a/v0/d/b/c$a;->c:Ls1/a/a/a/v0/b/e;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->C0(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/b/b1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/d/b/c$a$b;->b:Ls1/a/a/a/v0/d/b/c$a;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/d/b/c$a;->a:Ljava/util/HashMap;

    .line 4
    iget-object v2, p0, Ls1/a/a/a/v0/d/b/c$a$b;->c:Ls1/a/a/a/v0/f/e;

    iget-object v3, p0, Ls1/a/a/a/v0/d/b/c$a$b;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->i0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    const-string v4, "parameter.type"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "value"

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "type"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Ls1/a/a/a/v0/j/t/b;

    new-instance v5, Ls1/a/a/a/v0/j/t/h;

    invoke-direct {v5, v0}, Ls1/a/a/a/v0/j/t/h;-><init>(Ls1/a/a/a/v0/m/e0;)V

    invoke-direct {v4, v3, v5}, Ls1/a/a/a/v0/j/t/b;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    .line 7
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$b;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/c$a$b;->b:Ls1/a/a/a/v0/d/b/c$a;

    iget-object v2, p0, Ls1/a/a/a/v0/d/b/c$a$b;->c:Ls1/a/a/a/v0/f/e;

    .line 2
    invoke-virtual {v1, v2, p1}, Ls1/a/a/a/v0/d/b/c$a;->g(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)Ls1/a/a/a/v0/j/t/g;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V
    .locals 2

    const-string v0, "enumClassId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$b;->a:Ljava/util/ArrayList;

    new-instance v1, Ls1/a/a/a/v0/j/t/k;

    invoke-direct {v1, p1, p2}, Ls1/a/a/a/v0/j/t/k;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ls1/a/a/a/v0/j/t/f;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$b;->a:Ljava/util/ArrayList;

    new-instance v1, Ls1/a/a/a/v0/j/t/s;

    invoke-direct {v1, p1}, Ls1/a/a/a/v0/j/t/s;-><init>(Ls1/a/a/a/v0/j/t/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
