.class public final Ls1/a/a/a/v0/j/v/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/o/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/o/c<",
        "Ls1/a/a/a/v0/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Ls1/a/a/a/v0/j/v/c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, Ls1/a/a/a/v0/b/b;

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/j/v/c;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->a()Ls1/a/a/a/v0/b/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object p1
.end method
