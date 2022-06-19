.class public final Lx3/s$b;
.super Lu3/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Lu3/l0;

.field public final d:Lv3/h;

.field public e:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lu3/l0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu3/l0;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/s$b;->c:Lu3/l0;

    .line 3
    new-instance v0, Lx3/s$b$a;

    invoke-virtual {p1}, Lu3/l0;->q()Lv3/h;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lx3/s$b$a;-><init>(Lx3/s$b;Lv3/b0;)V

    const-string p1, "$this$buffer"

    .line 4
    invoke-static {v0, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lv3/v;

    invoke-direct {p1, v0}, Lv3/v;-><init>(Lv3/b0;)V

    .line 6
    iput-object p1, p0, Lx3/s$b;->d:Lv3/h;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/s$b;->c:Lu3/l0;

    invoke-virtual {v0}, Lu3/l0;->close()V

    return-void
.end method

.method public k()J
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/s$b;->c:Lu3/l0;

    invoke-virtual {v0}, Lu3/l0;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()Lu3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/s$b;->c:Lu3/l0;

    invoke-virtual {v0}, Lu3/l0;->l()Lu3/c0;

    move-result-object v0

    return-object v0
.end method

.method public q()Lv3/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/s$b;->d:Lv3/h;

    return-object v0
.end method
