.class public final Ls1/a/a/a/d;
.super Ls1/a/a/a/n;
.source "SourceFile"


# static fields
.field public static final c:Ls1/a/a/a/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/d;

    invoke-direct {v0}, Ls1/a/a/a/d;-><init>()V

    sput-object v0, Ls1/a/a/a/d;->c:Ls1/a/a/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/d;->s()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/j;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/d;->s()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public g(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/v;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/d;->s()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public h(I)Ls1/a/a/a/v0/b/k0;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/d;->s()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public final s()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/i0;

    const-string v1, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    invoke-direct {v0, v1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
