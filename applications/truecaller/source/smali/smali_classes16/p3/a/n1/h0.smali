.class public final Lp3/a/n1/h0;
.super Lp3/a/n1/x1;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final c:Lp3/a/g1;

.field public final d:Lp3/a/n1/t$a;


# direct methods
.method public constructor <init>(Lp3/a/g1;)V
    .locals 3

    .line 1
    sget-object v0, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    .line 2
    invoke-direct {p0}, Lp3/a/n1/x1;-><init>()V

    .line 3
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "error must not be OK"

    invoke-static {v1, v2}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lp3/a/n1/h0;->c:Lp3/a/g1;

    .line 5
    iput-object v0, p0, Lp3/a/n1/h0;->d:Lp3/a/n1/t$a;

    return-void
.end method

.method public constructor <init>(Lp3/a/g1;Lp3/a/n1/t$a;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lp3/a/n1/x1;-><init>()V

    .line 7
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lp3/a/n1/h0;->c:Lp3/a/g1;

    .line 9
    iput-object p2, p0, Lp3/a/n1/h0;->d:Lp3/a/n1/t$a;

    return-void
.end method


# virtual methods
.method public l(Lp3/a/n1/z0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/h0;->c:Lp3/a/g1;

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lp3/a/n1/z0;->b(Ljava/lang/String;Ljava/lang/Object;)Lp3/a/n1/z0;

    iget-object v0, p0, Lp3/a/n1/h0;->d:Lp3/a/n1/t$a;

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Lp3/a/n1/z0;->b(Ljava/lang/String;Ljava/lang/Object;)Lp3/a/n1/z0;

    return-void
.end method

.method public n(Lp3/a/n1/t;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/h0;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v0, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lp3/a/n1/h0;->b:Z

    .line 3
    iget-object v0, p0, Lp3/a/n1/h0;->c:Lp3/a/g1;

    iget-object v1, p0, Lp3/a/n1/h0;->d:Lp3/a/n1/t$a;

    new-instance v2, Lp3/a/o0;

    invoke-direct {v2}, Lp3/a/o0;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lp3/a/n1/t;->e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V

    return-void
.end method
