.class public final Ls1/a/a/a/v0/k/b/g0/d$c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d$c;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V
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
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/d$c;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d$c;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$c$a;->b:Ls1/a/a/a/v0/k/b/g0/d$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v2, p1

    check-cast v2, Ls1/a/a/a/v0/f/e;

    const-string p1, "name"

    .line 2
    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$c$a;->b:Ls1/a/a/a/v0/k/b/g0/d$c;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/g0/d$c;->a:Ljava/util/Map;

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/g;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$c$a;->b:Ls1/a/a/a/v0/k/b/g0/d$c;

    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/d$c;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 7
    iget-object v3, v1, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 9
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 10
    iget-object v4, v0, Ls1/a/a/a/v0/k/b/g0/d$c;->c:Ls1/a/a/a/v0/l/i;

    .line 11
    new-instance v5, Ls1/a/a/a/v0/k/b/g0/a;

    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$c$a;->b:Ls1/a/a/a/v0/k/b/g0/d$c;

    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d$c;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 12
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 13
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 14
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 15
    new-instance v6, Ls1/a/a/a/v0/k/b/g0/e;

    invoke-direct {v6, p1, p0, v2}, Ls1/a/a/a/v0/k/b/g0/e;-><init>(Ls1/a/a/a/v0/e/g;Ls1/a/a/a/v0/k/b/g0/d$c$a;Ls1/a/a/a/v0/f/e;)V

    invoke-direct {v5, v0, v6}, Ls1/a/a/a/v0/k/b/g0/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    .line 16
    sget-object p1, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    .line 17
    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/b/h1/p;->N0(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/l/i;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/p;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
