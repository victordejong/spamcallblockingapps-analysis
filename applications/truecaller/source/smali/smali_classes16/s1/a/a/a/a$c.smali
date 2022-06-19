.class public final synthetic Ls1/a/a/a/a$c;
.super Ls1/z/c/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/a;->h(I)Ls1/a/a/a/v0/b/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/i;",
        "Ls1/z/b/p<",
        "Ls1/a/a/a/v0/k/b/v;",
        "Ls1/a/a/a/v0/e/n;",
        "Ls1/a/a/a/v0/b/k0;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Ls1/a/a/a/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/a$c;

    invoke-direct {v0}, Ls1/a/a/a/a$c;-><init>()V

    sput-object v0, Ls1/a/a/a/a$c;->j:Ls1/a/a/a/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ls1/z/c/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "loadProperty"

    return-object v0
.end method

.method public final getOwner()Ls1/a/e;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/k/b/v;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;"

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/k/b/v;

    check-cast p2, Ls1/a/a/a/v0/e/n;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/k/b/v;->j(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/b/k0;

    move-result-object p1

    return-object p1
.end method
