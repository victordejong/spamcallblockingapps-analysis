.class public final synthetic Ls1/a/a/a/v0/d/a/a$c;
.super Ls1/z/c/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/o/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/i;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/e;",
        "Ls1/a/a/a/v0/b/f1/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ls1/z/c/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/e;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/d/a/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    .line 5
    sget-object v2, Ls1/a/a/a/v0/d/a/b;->a:Ls1/a/a/a/v0/f/b;

    .line 6
    invoke-interface {v1, v2}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ls1/a/a/a/v0/b/f1/c;

    .line 10
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/d/a/a;->d(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_2
    :goto_0
    return-object v2
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "computeTypeQualifierNickname"

    return-object v0
.end method

.method public final getOwner()Ls1/a/e;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/d/a/a;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "computeTypeQualifierNickname(Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;)Lorg/jetbrains/kotlin/descriptors/annotations/AnnotationDescriptor;"

    return-object v0
.end method
