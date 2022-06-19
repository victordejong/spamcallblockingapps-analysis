.class public Ls1/a/a/a/v0/l/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/l/e$g<",
        "TK;TV;>;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/l/e$g;

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/l/e$g;->b:Ls1/z/b/a;

    .line 3
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
