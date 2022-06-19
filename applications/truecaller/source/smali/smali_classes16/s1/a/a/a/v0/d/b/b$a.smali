.class public final Ls1/a/a/a/v0/d/b/b$a;
.super Ls1/a/a/a/v0/d/b/b$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Ls1/a/a/a/v0/d/b/b;


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
    iput-object p1, p0, Ls1/a/a/a/v0/d/b/b$a;->d:Ls1/a/a/a/v0/d/b/b;

    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/d/b/b$b;-><init>(Ls1/a/a/a/v0/d/b/b;Ls1/a/a/a/v0/d/b/o;)V

    return-void
.end method


# virtual methods
.method public c(ILs1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/b/l$a;
    .locals 3

    const-string v0, "classId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/b$b;->b:Ls1/a/a/a/v0/d/b/o;

    const-string v1, "signature"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ls1/a/a/a/v0/d/b/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/b/o;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    .line 6
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/b$a;->d:Ls1/a/a/a/v0/d/b/b;

    iget-object p1, p1, Ls1/a/a/a/v0/d/b/b;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/b$a;->d:Ls1/a/a/a/v0/d/b/b;

    iget-object v0, v0, Ls1/a/a/a/v0/d/b/b;->b:Ljava/util/HashMap;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/b$a;->d:Ls1/a/a/a/v0/d/b/b;

    iget-object v0, v0, Ls1/a/a/a/v0/d/b/b;->a:Ls1/a/a/a/v0/d/b/a;

    invoke-static {v0, p2, p3, p1}, Ls1/a/a/a/v0/d/b/a;->k(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;Ljava/util/List;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object p1

    return-object p1
.end method
