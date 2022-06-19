.class public Ls1/a/a/a/l0;
.super Ls1/a/a/a/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/m0<",
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

.field public volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/z/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/m0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ls1/a/a/a/l0;->c:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ls1/a/a/a/l0;->b:Ls1/z/b/a;

    return-void

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "initializer"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "kotlin/reflect/jvm/internal/ReflectProperties$LazyVal"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "<init>"

    aput-object v1, p1, v0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 4
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/a/a/a/m0;->a:Ljava/lang/Object;

    iget-object v1, p0, Ls1/a/a/a/l0;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 2
    :cond_1
    iget-object v1, p0, Ls1/a/a/a/l0;->b:Ls1/z/b/a;

    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3
    :goto_0
    iput-object v0, p0, Ls1/a/a/a/l0;->c:Ljava/lang/Object;

    return-object v1
.end method
