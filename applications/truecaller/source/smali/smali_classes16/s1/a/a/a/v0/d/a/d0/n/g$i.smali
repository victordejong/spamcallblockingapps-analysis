.class public final Ls1/a/a/a/v0/d/a/d0/n/g$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/g;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/f0/g;ZLs1/a/a/a/v0/d/a/d0/n/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/e;",
        "Ls1/a/a/a/v0/b/h1/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/g;

.field public final synthetic c:Ls1/a/a/a/v0/d/a/d0/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/g;Ls1/a/a/a/v0/d/a/d0/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v2, p1

    check-cast v2, Ls1/a/a/a/v0/f/e;

    const-string p1, "name"

    .line 2
    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/n/g;->o:Ls1/a/a/a/v0/l/i;

    .line 5
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/n/g;->p:Ls1/a/a/a/v0/l/i;

    .line 8
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/f0/n;

    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 10
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 11
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 12
    new-instance v1, Ls1/a/a/a/v0/d/a/d0/n/h;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/d/a/d0/n/h;-><init>(Ls1/a/a/a/v0/d/a/d0/n/g$i;)V

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object v3

    .line 13
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 14
    iget-object v1, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 15
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 16
    iget-object v4, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 17
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 18
    invoke-static {v0, p1}, Le/q/f/a/d/a;->B2(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v5

    .line 19
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 20
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 21
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    .line 22
    invoke-interface {v0, p1}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object p1

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, p1

    .line 23
    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/b/h1/p;->N0(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/l/i;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/p;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 25
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 26
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->b:Ls1/a/a/a/v0/d/a/p;

    .line 27
    new-instance v1, Ls1/a/a/a/v0/d/a/p$a;

    .line 28
    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 29
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 30
    invoke-static {v3}, Ls1/a/a/a/v0/j/v/b;->g(Ls1/a/a/a/v0/b/h;)Ls1/a/a/a/v0/f/a;

    move-result-object v3

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ls1/a/a/a/v0/f/a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    const-string v3, "ownerDescriptor.classId!\u2026createNestedClassId(name)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 32
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    const/4 v4, 0x2

    .line 33
    invoke-direct {v1, v2, v0, v3, v4}, Ls1/a/a/a/v0/d/a/p$a;-><init>(Ls1/a/a/a/v0/f/a;[BLs1/a/a/a/v0/d/a/f0/g;I)V

    .line 34
    invoke-interface {p1, v1}, Ls1/a/a/a/v0/d/a/p;->c(Ls1/a/a/a/v0/d/a/p$a;)Ls1/a/a/a/v0/d/a/f0/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    new-instance v1, Ls1/a/a/a/v0/d/a/d0/n/e;

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 36
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 37
    invoke-direct {v1, v2, v3, p1, v0}, Ls1/a/a/a/v0/d/a/d0/n/e;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/g;Ls1/a/a/a/v0/b/e;)V

    .line 38
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g$i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 39
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 40
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->s:Ls1/a/a/a/v0/d/a/q;

    .line 41
    invoke-interface {p1, v1}, Ls1/a/a/a/v0/d/a/q;->a(Ls1/a/a/a/v0/d/a/c0/d;)V

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0
.end method
