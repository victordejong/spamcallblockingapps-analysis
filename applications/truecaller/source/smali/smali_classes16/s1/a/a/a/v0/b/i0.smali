.class public final Ls1/a/a/a/v0/b/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/b/i;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/b/i0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/i;Ljava/util/List;Ls1/a/a/a/v0/b/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/i;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;",
            "Ls1/a/a/a/v0/b/i0;",
            ")V"
        }
    .end annotation

    const-string v0, "classifierDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/i0;->a:Ls1/a/a/a/v0/b/i;

    iput-object p2, p0, Ls1/a/a/a/v0/b/i0;->b:Ljava/util/List;

    iput-object p3, p0, Ls1/a/a/a/v0/b/i0;->c:Ls1/a/a/a/v0/b/i0;

    return-void
.end method
