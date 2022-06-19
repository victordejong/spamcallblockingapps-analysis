.class public final Lp3/a/n1/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lp3/a/i0$d;

.field public b:Lp3/a/i0;

.field public c:Lp3/a/j0;

.field public final synthetic d:Lp3/a/n1/k;


# direct methods
.method public constructor <init>(Lp3/a/n1/k;Lp3/a/i0$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lp3/a/n1/k$b;->d:Lp3/a/n1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lp3/a/n1/k$b;->a:Lp3/a/i0$d;

    .line 3
    iget-object v0, p1, Lp3/a/n1/k;->a:Lp3/a/k0;

    .line 4
    iget-object v1, p1, Lp3/a/n1/k;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lp3/a/k0;->a(Ljava/lang/String;)Lp3/a/j0;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/k$b;->c:Lp3/a/j0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p2}, Lp3/a/i0$c;->a(Lp3/a/i0$d;)Lp3/a/i0;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/k$b;->b:Lp3/a/i0;

    return-void

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find policy \'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object p1, p1, Lp3/a/n1/k;->b:Ljava/lang/String;

    const-string v1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    .line 9
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
