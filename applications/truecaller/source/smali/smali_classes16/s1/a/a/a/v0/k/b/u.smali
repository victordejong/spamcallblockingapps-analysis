.class public final synthetic Ls1/a/a/a/v0/k/b/u;
.super Ls1/z/c/v;
.source "SourceFile"


# static fields
.field public static final h:Ls1/a/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/k/b/u;

    invoke-direct {v0}, Ls1/a/a/a/v0/k/b/u;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/k/b/u;->h:Ls1/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls1/z/c/v;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ls1/a/a/a/v0/m/i1;

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/a/f;->h(Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "isSuspendFunctionType"

    return-object v0
.end method

.method public getOwner()Ls1/a/e;
    .locals 3

    const-class v0, Ls1/a/a/a/v0/a/f;

    .line 1
    sget-object v1, Ls1/z/c/d0;->a:Ls1/z/c/e0;

    const-string v2, "deserialization"

    invoke-virtual {v1, v0, v2}, Ls1/z/c/e0;->c(Ljava/lang/Class;Ljava/lang/String;)Ls1/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "isSuspendFunctionType(Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    return-object v0
.end method
