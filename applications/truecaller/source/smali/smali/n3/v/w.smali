.class public abstract Ln3/v/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ln3/v/u;
.end method

.method public final b(Ls1/z/b/p;)Lq3/a/p1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/p<",
            "-",
            "Lq3/a/i0;",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lq3/a/p1;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Ln3/v/w$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Ln3/v/w$a;-><init>(Ln3/v/w;Ls1/z/b/p;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method
