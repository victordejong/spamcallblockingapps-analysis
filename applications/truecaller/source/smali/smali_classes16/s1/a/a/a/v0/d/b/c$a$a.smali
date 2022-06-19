.class public final Ls1/a/a/a/v0/d/b/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/b/c$a;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/d/b/l$a;

.field public final synthetic b:Ls1/a/a/a/v0/d/b/c$a;

.field public final synthetic c:Ls1/a/a/a/v0/d/b/l$a;

.field public final synthetic d:Ls1/a/a/a/v0/f/e;

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/c$a;Ls1/a/a/a/v0/d/b/l$a;Ls1/a/a/a/v0/f/e;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/b/l$a;",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/ArrayList;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/b/c$a$a;->b:Ls1/a/a/a/v0/d/b/c$a;

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/c$a$a;->c:Ls1/a/a/a/v0/d/b/l$a;

    iput-object p3, p0, Ls1/a/a/a/v0/d/b/c$a$a;->d:Ls1/a/a/a/v0/f/e;

    iput-object p4, p0, Ls1/a/a/a/v0/d/b/c$a$a;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/c$a$a;->a:Ls1/a/a/a/v0/d/b/l$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$a;->c:Ls1/a/a/a/v0/d/b/l$a;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/b/l$a;->a()V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$a;->b:Ls1/a/a/a/v0/d/b/c$a;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/b/c$a;->a:Ljava/util/HashMap;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/d/b/c$a$a;->d:Ls1/a/a/a/v0/f/e;

    new-instance v2, Ls1/a/a/a/v0/j/t/a;

    iget-object v3, p0, Ls1/a/a/a/v0/d/b/c$a$a;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/f1/c;

    invoke-direct {v2, v3}, Ls1/a/a/a/v0/j/t/a;-><init>(Ls1/a/a/a/v0/b/f1/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$a;->a:Ls1/a/a/a/v0/d/b/l$a;

    invoke-interface {v0, p1, p2, p3}, Ls1/a/a/a/v0/d/b/l$a;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V

    return-void
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$a;->a:Ls1/a/a/a/v0/d/b/l$a;

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/d/b/l$a;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/j/t/f;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$a;->a:Ls1/a/a/a/v0/d/b/l$a;

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/d/b/l$a;->d(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/j/t/f;)V

    return-void
.end method

.method public e(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$a;->a:Ls1/a/a/a/v0/d/b/l$a;

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/d/b/l$a;->e(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/d/b/l$b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a$a;->a:Ls1/a/a/a/v0/d/b/l$a;

    invoke-interface {v0, p1}, Ls1/a/a/a/v0/d/b/l$a;->f(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/d/b/l$b;

    move-result-object p1

    return-object p1
.end method
