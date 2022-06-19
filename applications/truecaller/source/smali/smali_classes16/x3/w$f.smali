.class public final Lx3/w$f;
.super Lx3/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx3/w<",
        "Lu3/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx3/w;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/w$f;->a:Ljava/lang/reflect/Method;

    .line 3
    iput p2, p0, Lx3/w$f;->b:I

    return-void
.end method


# virtual methods
.method public a(Lx3/y;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lu3/z;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p1, Lx3/y;->f:Lu3/z$a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "headers"

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lu3/z;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    invoke-virtual {p2, v0}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lu3/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lx3/w$f;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Lx3/w$f;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Headers parameter must not be null."

    invoke-static {p1, p2, v1, v0}, Lx3/f0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
