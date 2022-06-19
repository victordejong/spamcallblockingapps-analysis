.class public final Ls1/a/a/a/v0/d/a/d0/n/q;
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
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/d/a/d0/n/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/q;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/d0/n/q;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/n/q;->a:Ls1/a/a/a/v0/d/a/d0/n/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/e;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    const-string v0, "it.typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "it.typeConstructor.supertypes"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    sget-object v0, Ls1/a/a/a/v0/d/a/d0/n/p;->b:Ls1/a/a/a/v0/d/a/d0/n/p;

    invoke-static {p1, v0}, Ls1/e0/x;->l(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ls1/e0/x;->a(Ls1/e0/k;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
