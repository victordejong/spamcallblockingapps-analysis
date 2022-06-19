.class public Ls1/a/a/a/k0;
.super Ls1/a/a/a/m0;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/m0<",
        "TT;>;",
        "Ls1/z/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ls1/z/b/a<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/m0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ls1/a/a/a/k0;->c:Ljava/lang/ref/SoftReference;

    .line 3
    iput-object p2, p0, Ls1/a/a/a/k0;->b:Ls1/z/b/a;

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ls1/a/a/a/k0;->c:Ljava/lang/ref/SoftReference;

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "initializer"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, "kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "<init>"

    aput-object v0, p1, p2

    const-string p2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 5
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/a/a/a/m0;->a:Ljava/lang/Object;

    iget-object v1, p0, Ls1/a/a/a/k0;->c:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 3
    :cond_1
    iget-object v1, p0, Ls1/a/a/a/k0;->b:Ls1/z/b/a;

    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Ls1/a/a/a/k0;->c:Ljava/lang/ref/SoftReference;

    return-object v1
.end method
