.class public final synthetic Ls1/a/a/a/v0/d/a/d0/n/g$a;
.super Ls1/z/c/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/g;->l(Ljava/util/Collection;Ls1/a/a/a/v0/f/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/i;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/e;",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/b/q0;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/g;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ls1/z/c/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/e;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 3
    invoke-static {v0, p1}, Ls1/a/a/a/v0/d/a/d0/n/g;->u(Ls1/a/a/a/v0/d/a/d0/n/g;Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "searchMethodsByNameWithoutBuiltinMagic"

    return-object v0
.end method

.method public final getOwner()Ls1/a/e;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/d/a/d0/n/g;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;"

    return-object v0
.end method
