.class public final Ls1/a/a/a/v0/b/z0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/k;",
        "Ls1/e0/k<",
        "+",
        "Ls1/a/a/a/v0/b/w0;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/b/z0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/b/z0;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/z0;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/z0;->b:Ls1/a/a/a/v0/b/z0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ls1/a/a/a/v0/b/k;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p1, Ls1/a/a/a/v0/b/a;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    const-string v0, "(it as CallableDescriptor).typeParameters"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    return-object p1
.end method
