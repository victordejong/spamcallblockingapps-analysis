.class public final Lx3/w$g;
.super Lx3/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
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

.field public final c:Lu3/z;

.field public final d:Lx3/j;
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
.method public constructor <init>(Ljava/lang/reflect/Method;ILu3/z;Lx3/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lu3/z;",
            "Lx3/j<",
            "TT;",
            "Lu3/j0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lx3/w;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/w$g;->a:Ljava/lang/reflect/Method;

    .line 3
    iput p2, p0, Lx3/w$g;->b:I

    .line 4
    iput-object p3, p0, Lx3/w$g;->c:Lu3/z;

    .line 5
    iput-object p4, p0, Lx3/w$g;->d:Lx3/j;

    return-void
.end method


# virtual methods
.method public a(Lx3/y;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/y;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lx3/w$g;->d:Lx3/j;

    invoke-interface {v0, p2}, Lx3/j;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/j0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p2, p0, Lx3/w$g;->c:Lu3/z;

    invoke-virtual {p1, p2, v0}, Lx3/y;->c(Lu3/z;Lu3/j0;)V

    return-void

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lx3/w$g;->a:Ljava/lang/reflect/Method;

    iget v1, p0, Lx3/w$g;->b:I

    const-string v2, "Unable to convert "

    const-string v3, " to RequestBody"

    invoke-static {v2, p2, v3}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, p2, v2}, Lx3/f0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
