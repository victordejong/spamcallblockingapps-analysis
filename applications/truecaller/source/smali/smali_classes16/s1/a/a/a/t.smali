.class public final Ls1/a/a/a/t;
.super Ls1/a/a/a/y;
.source "SourceFile"

# interfaces
.implements Ls1/a/l;
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/y<",
        "TD;TE;TV;>;",
        "Ljava/lang/Object<",
        "TD;TE;TV;>;"
    }
.end annotation


# instance fields
.field public final k:Ls1/a/a/a/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/l0<",
            "Ls1/a/a/a/t$a<",
            "TD;TE;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/y;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    .line 2
    new-instance p1, Ls1/a/a/a/t$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/t$b;-><init>(Ls1/a/a/a/t;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Setter(this) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/t;->k:Ls1/a/a/a/l0;

    return-void
.end method
