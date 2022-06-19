.class public abstract Ls1/z/c/t;
.super Ls1/z/c/x;
.source "SourceFile"

# interfaces
.implements Ls1/a/j;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Ls1/z/c/x;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()Ls1/a/b;
    .locals 1

    .line 1
    invoke-static {p0}, Ls1/z/c/d0;->c(Ls1/z/c/t;)Ls1/a/j;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Ls1/a/j$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/z/c/x;->c()Ls1/a/l;

    move-result-object v0

    check-cast v0, Ls1/a/j;

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
