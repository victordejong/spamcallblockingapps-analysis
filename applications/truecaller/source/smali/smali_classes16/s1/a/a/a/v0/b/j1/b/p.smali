.class public final synthetic Ls1/a/a/a/v0/b/j1/b/p;
.super Ls1/z/c/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/i;",
        "Ls1/z/b/l<",
        "Ljava/lang/reflect/Method;",
        "Ls1/a/a/a/v0/b/j1/b/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Ls1/a/a/a/v0/b/j1/b/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/b/j1/b/p;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/j1/b/p;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/j1/b/p;->j:Ls1/a/a/a/v0/b/j1/b/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/reflect/Method;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls1/a/a/a/v0/b/j1/b/z;

    .line 3
    invoke-direct {v0, p1}, Ls1/a/a/a/v0/b/j1/b/z;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>"

    return-object v0
.end method

.method public final getOwner()Ls1/a/e;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/b/j1/b/z;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>(Ljava/lang/reflect/Method;)V"

    return-object v0
.end method
