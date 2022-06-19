.class public final Ln3/v/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/v0;


# instance fields
.field public a:Z

.field public final b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ln3/v/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/i0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Ln3/v/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;",
            "Ln3/v/i0<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediator"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/v/l;->b:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Ln3/v/l;->c:Ln3/v/i0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    sget-object v0, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v0, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 2
    invoke-virtual {v0}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    new-instance v4, Ln3/v/l$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Ln3/v/l$a;-><init>(Ln3/v/l;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
