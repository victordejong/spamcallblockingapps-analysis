.class public final Ls1/a/a/a/v0/d/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/b/b$a;,
        Ls1/a/a/a/v0/d/b/b$b;
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/d/b/a;

.field public final synthetic b:Ljava/util/HashMap;

.field public final synthetic c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/a;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/util/HashMap;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/b/b;->a:Ls1/a/a/a/v0/d/b/a;

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/b;->b:Ljava/util/HashMap;

    iput-object p3, p0, Ls1/a/a/a/v0/d/b/b;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/e;Ljava/lang/String;Ljava/lang/Object;)Ls1/a/a/a/v0/d/b/l$c;
    .locals 2

    const-string p3, "name"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "name.asString()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p3, Ls1/a/a/a/v0/d/b/o;

    const/16 v0, 0x23

    invoke-static {p1, v0, p2}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p3, p1, p2}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    .line 4
    new-instance p1, Ls1/a/a/a/v0/d/b/b$b;

    invoke-direct {p1, p0, p3}, Ls1/a/a/a/v0/d/b/b$b;-><init>(Ls1/a/a/a/v0/d/b/b;Ls1/a/a/a/v0/d/b/o;)V

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/f/e;Ljava/lang/String;)Ls1/a/a/a/v0/d/b/l$e;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ls1/a/a/a/v0/d/b/b$a;

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p1

    const-string v3, "name.asString()"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ls1/a/a/a/v0/d/b/o;

    invoke-static {p1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    .line 4
    invoke-direct {v2, p0, v0}, Ls1/a/a/a/v0/d/b/b$a;-><init>(Ls1/a/a/a/v0/d/b/b;Ls1/a/a/a/v0/d/b/o;)V

    return-object v2
.end method
