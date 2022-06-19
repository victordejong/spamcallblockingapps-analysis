.class public Ls1/a/a/a/v0/d/a/b0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/b0/a;->a(Ls1/a/a/a/v0/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/d/a/b0/a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/b0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/a/b0/a$a;->a:Ls1/a/a/a/v0/d/a/b0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/b0/a$a;->a:Ls1/a/a/a/v0/d/a/b0/a;

    iget-object v0, v0, Ls1/a/a/a/v0/d/a/b0/a;->a:Ls1/a/a/a/v0/k/b/p;

    invoke-interface {v0, p1}, Ls1/a/a/a/v0/k/b/p;->a(Ls1/a/a/a/v0/b/b;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "descriptor"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "invoke"

    aput-object v1, p1, v0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 4
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
