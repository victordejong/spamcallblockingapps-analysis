.class public Ls1/a/a/a/v0/d/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TA;>;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/d/b/o;

.field public final synthetic c:Ls1/a/a/a/v0/d/b/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/b;Ls1/a/a/a/v0/d/b/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/b/o;",
            ")V"
        }
    .end annotation

    const-string v0, "signature"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/b/b$b;->c:Ls1/a/a/a/v0/d/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/b$b;->b:Ls1/a/a/a/v0/d/b/o;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/b$b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/b/l$a;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/b$b;->c:Ls1/a/a/a/v0/d/b/b;

    iget-object v0, v0, Ls1/a/a/a/v0/d/b/b;->a:Ls1/a/a/a/v0/d/b/a;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/b$b;->a:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, v1}, Ls1/a/a/a/v0/d/b/a;->k(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;Ljava/util/List;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/b$b;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/b$b;->c:Ls1/a/a/a/v0/d/b/b;

    iget-object v0, v0, Ls1/a/a/a/v0/d/b/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/b$b;->b:Ls1/a/a/a/v0/d/b/o;

    iget-object v2, p0, Ls1/a/a/a/v0/d/b/b$b;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
