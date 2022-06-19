.class public final Ls1/a/a/a/v0/d/a/g0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f1/h;


# instance fields
.field public final a:Ls1/a/a/a/v0/f/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/b;)V
    .locals 1

    const-string v0, "fqNameToMatch"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/b;->a:Ls1/a/a/a/v0/f/b;

    return-void
.end method


# virtual methods
.method public Y1(Ls1/a/a/a/v0/f/b;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/q/f/a/d/a;->j1(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/b;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/r;->a:Ls1/u/r;

    return-object v0
.end method

.method public s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;
    .locals 1

    const-string v0, "fqName"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/b;->a:Ls1/a/a/a/v0/f/b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ls1/a/a/a/v0/d/a/g0/a;->a:Ls1/a/a/a/v0/d/a/g0/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
