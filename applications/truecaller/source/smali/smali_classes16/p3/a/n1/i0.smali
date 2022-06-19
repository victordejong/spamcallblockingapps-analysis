.class public Lp3/a/n1/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/u;


# instance fields
.field public final a:Lp3/a/g1;

.field public final b:Lp3/a/n1/t$a;


# direct methods
.method public constructor <init>(Lp3/a/g1;Lp3/a/n1/t$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lp3/a/n1/i0;->a:Lp3/a/g1;

    .line 4
    iput-object p2, p0, Lp3/a/n1/i0;->b:Lp3/a/n1/t$a;

    return-void
.end method


# virtual methods
.method public b()Lp3/a/e0;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a real transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/p0<",
            "**>;",
            "Lp3/a/o0;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/n1/s;"
        }
    .end annotation

    .line 1
    new-instance p1, Lp3/a/n1/h0;

    iget-object p2, p0, Lp3/a/n1/i0;->a:Lp3/a/g1;

    iget-object p3, p0, Lp3/a/n1/i0;->b:Lp3/a/n1/t$a;

    invoke-direct {p1, p2, p3}, Lp3/a/n1/h0;-><init>(Lp3/a/g1;Lp3/a/n1/t$a;)V

    return-object p1
.end method
