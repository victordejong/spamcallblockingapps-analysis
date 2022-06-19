.class public final Ls1/a/a/a/u$a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/u$a;-><init>(Ls1/a/a/a/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/u$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/u$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/u$a$d;->b:Ls1/a/a/a/u$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u$a$d;->b:Ls1/a/a/a/u$a;

    invoke-static {v0}, Ls1/a/a/a/u$a;->a(Ls1/a/a/a/u$a;)Ls1/a/a/a/v0/b/j1/a/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/b/j1/a/e;->b:Ls1/a/a/a/v0/d/b/w/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/d/b/w/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 5
    iget-object v1, p0, Ls1/a/a/a/u$a$d;->b:Ls1/a/a/a/u$a;

    iget-object v1, v1, Ls1/a/a/a/u$a;->h:Ls1/a/a/a/u;

    .line 6
    iget-object v1, v1, Ls1/a/a/a/u;->d:Ljava/lang/Class;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v4, 0x2e

    const/4 v5, 0x4

    invoke-static {v0, v2, v4, v3, v5}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :cond_2
    return-object v1
.end method
