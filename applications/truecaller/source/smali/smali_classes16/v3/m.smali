.class public Lv3/m;
.super Lv3/c0;
.source "SourceFile"


# instance fields
.field public e:Lv3/c0;


# direct methods
.method public constructor <init>(Lv3/c0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lv3/c0;-><init>()V

    iput-object p1, p0, Lv3/m;->e:Lv3/c0;

    return-void
.end method


# virtual methods
.method public a()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/m;->e:Lv3/c0;

    invoke-virtual {v0}, Lv3/c0;->a()Lv3/c0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/m;->e:Lv3/c0;

    invoke-virtual {v0}, Lv3/c0;->b()Lv3/c0;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/m;->e:Lv3/c0;

    invoke-virtual {v0}, Lv3/c0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/m;->e:Lv3/c0;

    invoke-virtual {v0, p1, p2}, Lv3/c0;->d(J)Lv3/c0;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/m;->e:Lv3/c0;

    invoke-virtual {v0}, Lv3/c0;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/m;->e:Lv3/c0;

    invoke-virtual {v0}, Lv3/c0;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lv3/m;->e:Lv3/c0;

    invoke-virtual {v0, p1, p2, p3}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    move-result-object p1

    return-object p1
.end method
