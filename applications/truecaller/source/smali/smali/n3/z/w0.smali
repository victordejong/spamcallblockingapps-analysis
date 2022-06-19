.class public final Ln3/z/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ln3/z/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/i0;

.field public final c:Ln3/z/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/b2<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ln3/z/a;


# direct methods
.method public constructor <init>(Lq3/a/i0;Ln3/z/b2;Ln3/z/a;I)V
    .locals 2

    and-int/lit8 p3, p4, 0x4

    const-string p3, "scope"

    .line 1
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/w0;->b:Lq3/a/i0;

    iput-object p2, p0, Ln3/z/w0;->c:Ln3/z/b2;

    const/4 p3, 0x0

    iput-object p3, p0, Ln3/z/w0;->d:Ln3/z/a;

    .line 3
    new-instance p4, Ln3/z/h;

    .line 4
    iget-object p2, p2, Ln3/z/b2;->a:Lq3/a/x2/f;

    .line 5
    new-instance v0, Ln3/z/u0;

    invoke-direct {v0, p0, p3}, Ln3/z/u0;-><init>(Ln3/z/w0;Ls1/w/d;)V

    .line 6
    new-instance v1, Lq3/a/x2/t;

    invoke-direct {v1, v0, p2}, Lq3/a/x2/t;-><init>(Ls1/z/b/p;Lq3/a/x2/f;)V

    .line 7
    new-instance p2, Ln3/z/v0;

    invoke-direct {p2, p0, p3}, Ln3/z/v0;-><init>(Ln3/z/w0;Ls1/w/d;)V

    .line 8
    new-instance p3, Lq3/a/x2/s;

    invoke-direct {p3, v1, p2}, Lq3/a/x2/s;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 9
    invoke-direct {p4, p3, p1}, Ln3/z/h;-><init>(Lq3/a/x2/f;Lq3/a/i0;)V

    iput-object p4, p0, Ln3/z/w0;->a:Ln3/z/h;

    return-void
.end method
