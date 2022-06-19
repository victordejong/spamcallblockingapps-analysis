.class public final Lp3/a/n1/n1;
.super Lp3/a/i0$i;
.source "SourceFile"


# instance fields
.field public final a:Lp3/a/i0$e;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lp3/a/n1/n1;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Lp3/a/i0$i;-><init>()V

    .line 2
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v0, "Panic! This is a bug!"

    .line 3
    invoke-virtual {p1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    invoke-virtual {p1, p2}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    .line 4
    sget-object p2, Lp3/a/i0$e;->e:Lp3/a/i0$e;

    .line 5
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    const-string v1, "drop status shouldn\'t be OK"

    invoke-static {p2, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 6
    new-instance p2, Lp3/a/i0$e;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p1, v0}, Lp3/a/i0$e;-><init>(Lp3/a/i0$h;Lp3/a/j$a;Lp3/a/g1;Z)V

    .line 7
    iput-object p2, p0, Lp3/a/n1/n1;->a:Lp3/a/i0$e;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/i0$f;)Lp3/a/i0$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lp3/a/n1/n1;->a:Lp3/a/i0$e;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lp3/a/n1/n1;

    .line 2
    new-instance v1, Lcom/google/common/base/MoreObjects$ToStringHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$1;)V

    .line 3
    iget-object v0, p0, Lp3/a/n1/n1;->a:Lp3/a/i0$e;

    const-string v2, "panicPickResult"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    invoke-virtual {v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
