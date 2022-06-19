.class public final Lp3/a/n1/a2$b;
.super Lp3/a/i0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lp3/a/i0$e;


# direct methods
.method public constructor <init>(Lp3/a/i0$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp3/a/i0$i;-><init>()V

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/i0$e;

    iput-object p1, p0, Lp3/a/n1/a2$b;->a:Lp3/a/i0$e;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/i0$f;)Lp3/a/i0$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lp3/a/n1/a2$b;->a:Lp3/a/i0$e;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lp3/a/n1/a2$b;

    .line 2
    new-instance v1, Lcom/google/common/base/MoreObjects$ToStringHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$1;)V

    .line 3
    iget-object v0, p0, Lp3/a/n1/a2$b;->a:Lp3/a/i0$e;

    const-string v2, "result"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    invoke-virtual {v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
