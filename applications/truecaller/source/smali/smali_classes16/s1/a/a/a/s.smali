.class public final Ls1/a/a/a/s;
.super Ls1/a/a/a/x;
.source "SourceFile"

# interfaces
.implements Ls1/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/x<",
        "TT;TV;>;",
        "Ls1/a/h<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final k:Ls1/a/a/a/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/l0<",
            "Ls1/a/a/a/s$a<",
            "TT;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ls1/a/a/a/x;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ls1/a/a/a/s$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/s$b;-><init>(Ls1/a/a/a/s;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Setter(this) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/s;->k:Ls1/a/a/a/l0;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/x;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    .line 4
    new-instance p1, Ls1/a/a/a/s$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/s$b;-><init>(Ls1/a/a/a/s;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Setter(this) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/s;->k:Ls1/a/a/a/l0;

    return-void
.end method
