.class public Ln/m;
.super Ln/e0;
.source "SourceFile"


# instance fields
.field private e:Ln/e0;


# direct methods
.method public constructor <init>(Ln/e0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln/e0;-><init>()V

    iput-object p1, p0, Ln/m;->e:Ln/e0;

    return-void
.end method


# virtual methods
.method public a()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/m;->e:Ln/e0;

    invoke-virtual {v0}, Ln/e0;->a()Ln/e0;

    move-result-object v0

    return-object v0
.end method

.method public b()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/m;->e:Ln/e0;

    invoke-virtual {v0}, Ln/e0;->b()Ln/e0;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln/m;->e:Ln/e0;

    invoke-virtual {v0}, Ln/e0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/m;->e:Ln/e0;

    invoke-virtual {v0, p1, p2}, Ln/e0;->d(J)Ln/e0;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln/m;->e:Ln/e0;

    invoke-virtual {v0}, Ln/e0;->e()Z

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
    iget-object v0, p0, Ln/m;->e:Ln/e0;

    invoke-virtual {v0}, Ln/e0;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Ln/e0;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln/m;->e:Ln/e0;

    invoke-virtual {v0, p1, p2, p3}, Ln/e0;->g(JLjava/util/concurrent/TimeUnit;)Ln/e0;

    move-result-object p1

    return-object p1
.end method

.method public final i()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/m;->e:Ln/e0;

    return-object v0
.end method

.method public final j(Ln/e0;)Ln/m;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Ln/m;->e:Ln/e0;

    return-object p0
.end method
