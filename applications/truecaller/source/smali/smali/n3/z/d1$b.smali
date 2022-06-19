.class public final Ln3/z/d1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/z/h3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/z/h3;"
    }
.end annotation


# instance fields
.field public final a:Ln3/z/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/g1<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/z/d1;Ln3/z/g1;Ln3/z/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/g1<",
            "TKey;TValue;>;",
            "Ln3/z/s<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string p1, "pageFetcherSnapshot"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "retryEventBus"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln3/z/d1$b;->a:Ln3/z/g1;

    return-void
.end method


# virtual methods
.method public a(Ln3/z/i3;)V
    .locals 2

    const-string v0, "viewportHint"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Ln3/z/d1$b;->a:Ln3/z/g1;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Ln3/z/i3$a;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Ln3/z/i3$a;

    iput-object v0, v1, Ln3/z/g1;->b:Ln3/z/i3$a;

    .line 5
    :cond_0
    iget-object v0, v1, Ln3/z/g1;->a:Lq3/a/x2/z0;

    invoke-interface {v0, p1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method
