.class public final Lp3/a/n1/c2;
.super Lp3/a/i0$f;
.source "SourceFile"


# instance fields
.field public final a:Lp3/a/c;

.field public final b:Lp3/a/o0;

.field public final c:Lp3/a/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/p0<",
            "**>;",
            "Lp3/a/o0;",
            "Lp3/a/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp3/a/i0$f;-><init>()V

    const-string v0, "method"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/p0;

    iput-object p1, p0, Lp3/a/n1/c2;->c:Lp3/a/p0;

    const-string p1, "headers"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lp3/a/o0;

    iput-object p2, p0, Lp3/a/n1/c2;->b:Lp3/a/o0;

    const-string p1, "callOptions"

    .line 4
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lp3/a/c;

    iput-object p3, p0, Lp3/a/n1/c2;->a:Lp3/a/c;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lp3/a/n1/c2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lp3/a/n1/c2;

    .line 3
    iget-object v2, p0, Lp3/a/n1/c2;->a:Lp3/a/c;

    iget-object v3, p1, Lp3/a/n1/c2;->a:Lp3/a/c;

    invoke-static {v2, v3}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp3/a/n1/c2;->b:Lp3/a/o0;

    iget-object v3, p1, Lp3/a/n1/c2;->b:Lp3/a/o0;

    .line 4
    invoke-static {v2, v3}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp3/a/n1/c2;->c:Lp3/a/p0;

    iget-object p1, p1, Lp3/a/n1/c2;->c:Lp3/a/p0;

    .line 5
    invoke-static {v2, p1}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/a/n1/c2;->a:Lp3/a/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/c2;->b:Lp3/a/o0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/c2;->c:Lp3/a/p0;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[method="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp3/a/n1/c2;->c:Lp3/a/p0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/a/n1/c2;->b:Lp3/a/o0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/a/n1/c2;->a:Lp3/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
