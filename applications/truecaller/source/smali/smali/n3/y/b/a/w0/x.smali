.class public final Ln3/y/b/a/w0/x;
.super Ln3/y/b/a/w0/w;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Ln3/y/b/a/w0/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ln3/y/b/a/w0/k;",
            ")V"
        }
    .end annotation

    const/16 p2, 0x1a

    const-string v0, "Response code: "

    .line 1
    invoke-static {p2, v0, p1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Ln3/y/b/a/w0/w;-><init>(Ljava/lang/String;Ln3/y/b/a/w0/k;I)V

    .line 2
    iput p1, p0, Ln3/y/b/a/w0/x;->a:I

    .line 3
    iput-object p3, p0, Ln3/y/b/a/w0/x;->b:Ljava/util/Map;

    return-void
.end method
