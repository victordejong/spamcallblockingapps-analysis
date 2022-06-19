.class public Ln3/e/a/e/k2/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/e/b/j1/g1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Ln3/e/a/e/k2/p/a;

    invoke-virtual {p1, v0}, Ln3/e/b/j1/g1;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object p1

    check-cast p1, Ln3/e/a/e/k2/p/a;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ln3/e/a/e/k2/q/a;->a:Landroid/util/Range;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Ln3/e/a/e/k2/p/a;->a:Landroid/util/Range;

    .line 5
    iput-object p1, p0, Ln3/e/a/e/k2/q/a;->a:Landroid/util/Range;

    :goto_0
    return-void
.end method
