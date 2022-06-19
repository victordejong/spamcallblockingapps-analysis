.class public final Le/a/z3/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/p/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/z3/b;


# direct methods
.method public constructor <init>(Le/a/z3/b;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/z3/g/g;->a:Le/a/z3/b;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Le/f/a/n/p/r;)Le/f/a/n/p/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/r;",
            ")",
            "Le/f/a/n/p/n<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-string v0, "multiFactory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/z3/g/f;

    .line 2
    iget-object v1, p0, Le/a/z3/g/g;->a:Le/a/z3/b;

    .line 3
    const-class v2, Le/f/a/n/p/g;

    const-class v3, Ljava/io/InputStream;

    invoke-virtual {p1, v2, v3}, Le/f/a/n/p/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Le/f/a/n/p/n;

    move-result-object v2

    const-string v3, "multiFactory.build(Glide\u2026 InputStream::class.java)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    invoke-virtual {p1, v3, v4}, Le/f/a/n/p/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Le/f/a/n/p/n;

    move-result-object p1

    const-string v3, "multiFactory.build(Uri::\u2026 InputStream::class.java)"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {v0, v1, v2, p1}, Le/a/z3/g/f;-><init>(Le/a/z3/b;Le/f/a/n/p/n;Le/f/a/n/p/n;)V

    return-object v0
.end method
