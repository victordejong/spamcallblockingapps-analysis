.class public final synthetic Ls1/a/a/a/v0/k/b/g0/d$g;
.super Ls1/z/c/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d;-><init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/b/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/i;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/l1/e;",
        "Ls1/a/a/a/v0/k/b/g0/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ls1/z/c/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/l1/e;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls1/a/a/a/v0/k/b/g0/d$a;

    iget-object v1, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/v0/k/b/g0/d;

    .line 3
    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/k/b/g0/d$a;-><init>(Ls1/a/a/a/v0/k/b/g0/d;Ls1/a/a/a/v0/m/l1/e;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>"

    return-object v0
.end method

.method public final getOwner()Ls1/a/e;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/k/b/g0/d$a;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V"

    return-object v0
.end method
