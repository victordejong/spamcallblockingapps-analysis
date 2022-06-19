.class public abstract Ls1/z/c/n;
.super Ls1/z/c/r;
.source "SourceFile"

# interfaces
.implements Ls1/a/g;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Ls1/z/c/r;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()Ls1/a/b;
    .locals 1

    .line 1
    sget-object v0, Ls1/z/c/d0;->a:Ls1/z/c/e0;

    invoke-virtual {v0, p0}, Ls1/z/c/e0;->d(Ls1/z/c/n;)Ls1/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Ls1/a/j$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/z/c/x;->c()Ls1/a/l;

    move-result-object v0

    check-cast v0, Ls1/a/g;

    invoke-interface {v0}, Ls1/a/j;->getGetter()Ls1/a/j$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Ls1/a/j;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
