.class public final Lu3/i0;
.super Lu3/j0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lv3/i;

.field public final synthetic c:Lu3/c0;


# direct methods
.method public constructor <init>(Lv3/i;Lu3/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3/i0;->b:Lv3/i;

    iput-object p2, p0, Lu3/i0;->c:Lu3/c0;

    invoke-direct {p0}, Lu3/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/i0;->b:Lv3/i;

    .line 2
    invoke-virtual {v0}, Lv3/i;->f()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lu3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/i0;->c:Lu3/c0;

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/i0;->b:Lv3/i;

    invoke-interface {p1, v0}, Lv3/g;->E0(Lv3/i;)Lv3/g;

    return-void
.end method
