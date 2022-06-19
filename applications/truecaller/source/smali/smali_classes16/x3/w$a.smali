.class public final Lx3/w$a;
.super Lx3/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lx3/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:I

.field public final c:Lx3/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/j<",
            "TT;",
            "Lu3/j0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;ILx3/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lx3/j<",
            "TT;",
            "Lu3/j0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lx3/w;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/w$a;->a:Ljava/lang/reflect/Method;

    .line 3
    iput p2, p0, Lx3/w$a;->b:I

    .line 4
    iput-object p3, p0, Lx3/w$a;->c:Lx3/j;

    return-void
.end method


# virtual methods
.method public a(Lx3/y;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/y;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object v1, p0, Lx3/w$a;->c:Lx3/j;

    invoke-interface {v1, p2}, Lx3/j;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu3/j0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iput-object v1, p1, Lx3/y;->k:Lu3/j0;

    return-void

    :catch_0
    move-exception p1

    .line 3
    iget-object v1, p0, Lx3/w$a;->a:Ljava/lang/reflect/Method;

    iget v2, p0, Lx3/w$a;->b:I

    const-string v3, "Unable to convert "

    const-string v4, " to RequestBody"

    invoke-static {v3, p2, v4}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, p2, v0}, Lx3/f0;->m(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4
    :cond_0
    iget-object p1, p0, Lx3/w$a;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Lx3/w$a;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Body parameter value must not be null."

    invoke-static {p1, p2, v1, v0}, Lx3/f0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
