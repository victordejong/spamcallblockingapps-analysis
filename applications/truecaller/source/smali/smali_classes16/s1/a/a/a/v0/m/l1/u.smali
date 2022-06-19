.class public final synthetic Ls1/a/a/a/v0/m/l1/u;
.super Ls1/z/c/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/i;",
        "Ls1/z/b/p<",
        "Ls1/a/a/a/v0/m/e0;",
        "Ls1/a/a/a/v0/m/e0;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l1/l;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ls1/z/c/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "equalTypes"

    return-object v0
.end method

.method public final getOwner()Ls1/a/e;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/m/l1/l;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/e0;

    check-cast p2, Ls1/a/a/a/v0/m/e0;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/m/l1/l;

    .line 3
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/m/l1/l;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
