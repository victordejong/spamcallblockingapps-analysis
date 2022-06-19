.class public final Ls1/a/a/a/v0/d/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/b/c;->s(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;Ljava/util/List;)Ls1/a/a/a/v0/d/b/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Ls1/a/a/a/v0/d/b/c;

.field public final synthetic c:Ls1/a/a/a/v0/b/e;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ls1/a/a/a/v0/b/r0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/c;Ls1/a/a/a/v0/b/e;Ljava/util/List;Ls1/a/a/a/v0/b/r0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/e;",
            "Ljava/util/List;",
            "Ls1/a/a/a/v0/b/r0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/b/c$a;->b:Ls1/a/a/a/v0/d/b/c;

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/c$a;->c:Ls1/a/a/a/v0/b/e;

    iput-object p3, p0, Ls1/a/a/a/v0/d/b/c$a;->d:Ljava/util/List;

    iput-object p4, p0, Ls1/a/a/a/v0/d/b/c$a;->e:Ls1/a/a/a/v0/b/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/c$a;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a;->d:Ljava/util/List;

    new-instance v1, Ls1/a/a/a/v0/b/f1/d;

    iget-object v2, p0, Ls1/a/a/a/v0/d/b/c$a;->c:Ls1/a/a/a/v0/b/e;

    invoke-interface {v2}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    iget-object v3, p0, Ls1/a/a/a/v0/d/b/c$a;->a:Ljava/util/HashMap;

    iget-object v4, p0, Ls1/a/a/a/v0/d/b/c$a;->e:Ls1/a/a/a/v0/b/r0;

    invoke-direct {v1, v2, v3, v4}, Ls1/a/a/a/v0/b/f1/d;-><init>(Ls1/a/a/a/v0/m/e0;Ljava/util/Map;Ls1/a/a/a/v0/b/r0;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a;->a:Ljava/util/HashMap;

    new-instance v1, Ls1/a/a/a/v0/j/t/k;

    invoke-direct {v1, p2, p3}, Ls1/a/a/a/v0/j/t/k;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l$a;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/d/b/c$a;->b:Ls1/a/a/a/v0/d/b/c;

    sget-object v2, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v3, "SourceElement.NO_SOURCE"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2, v0}, Ls1/a/a/a/v0/d/b/c;->s(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;Ljava/util/List;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object p2

    invoke-static {p2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ls1/a/a/a/v0/d/b/c$a$a;

    invoke-direct {v1, p0, p2, p1, v0}, Ls1/a/a/a/v0/d/b/c$a$a;-><init>(Ls1/a/a/a/v0/d/b/c$a;Ls1/a/a/a/v0/d/b/l$a;Ls1/a/a/a/v0/f/e;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public d(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/j/t/f;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a;->a:Ljava/util/HashMap;

    new-instance v1, Ls1/a/a/a/v0/j/t/s;

    invoke-direct {v1, p2}, Ls1/a/a/a/v0/j/t/s;-><init>(Ls1/a/a/a/v0/j/t/f;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c$a;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/b/c$a;->g(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)Ls1/a/a/a/v0/j/t/g;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public f(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/d/b/l$b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/b/c$a$b;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/d/b/c$a$b;-><init>(Ls1/a/a/a/v0/d/b/c$a;Ls1/a/a/a/v0/f/e;)V

    return-object v0
.end method

.method public final g(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)Ls1/a/a/a/v0/j/t/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Object;",
            ")",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ls1/a/a/a/v0/j/t/i;->b(Ljava/lang/Object;)Ls1/a/a/a/v0/j/t/g;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported annotation argument: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "message"

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Ls1/a/a/a/v0/j/t/l$a;

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/j/t/l$a;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method
