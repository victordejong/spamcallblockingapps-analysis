.class public abstract Ls1/z/c/v;
.super Ls1/z/c/x;
.source "SourceFile"

# interfaces
.implements Ls1/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/z/c/x;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Ls1/z/c/x;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()Ls1/a/b;
    .locals 1

    .line 1
    invoke-static {p0}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ls1/a/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGetter()Ls1/a/k$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/z/c/x;->c()Ls1/a/l;

    move-result-object v0

    check-cast v0, Ls1/a/k;

    invoke-interface {v0}, Ls1/a/k;->getGetter()Ls1/a/k$a;

    move-result-object v0

    return-object v0
.end method
