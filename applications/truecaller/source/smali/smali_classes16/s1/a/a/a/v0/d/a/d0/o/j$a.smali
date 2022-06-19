.class public final Ls1/a/a/a/v0/d/a/d0/o/j$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/o/j;->i(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/l1/e;",
        "Ls1/a/a/a/v0/m/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/e;

.field public final synthetic c:Ls1/a/a/a/v0/m/l0;

.field public final synthetic d:Ls1/a/a/a/v0/d/a/d0/o/a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/d/a/d0/o/a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/j$a;->b:Ls1/a/a/a/v0/b/e;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/o/j$a;->c:Ls1/a/a/a/v0/m/l0;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/o/j$a;->d:Ls1/a/a/a/v0/d/a/d0/o/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/l1/e;

    const-string v0, "kotlinTypeRefiner"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/o/j$a;->b:Ls1/a/a/a/v0/b/e;

    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->g(Ls1/a/a/a/v0/b/h;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l1/e;->a(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/o/j$a;->b:Ls1/a/a/a/v0/b/e;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/d/a/d0/o/j;->d:Ls1/a/a/a/v0/d/a/d0/o/j;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/o/j$a;->c:Ls1/a/a/a/v0/m/l0;

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/o/j$a;->d:Ls1/a/a/a/v0/d/a/d0/o/a;

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Ls1/a/a/a/v0/d/a/d0/o/j;->i(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/k;

    move-result-object p1

    .line 8
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    move-object v2, p1

    check-cast v2, Ls1/a/a/a/v0/m/l0;

    :cond_2
    :goto_0
    return-object v2
.end method
