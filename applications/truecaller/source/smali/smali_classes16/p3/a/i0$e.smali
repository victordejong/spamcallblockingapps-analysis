.class public final Lp3/a/i0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final e:Lp3/a/i0$e;


# instance fields
.field public final a:Lp3/a/i0$h;

.field public final b:Lp3/a/j$a;

.field public final c:Lp3/a/g1;

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lp3/a/i0$e;

    sget-object v1, Lp3/a/g1;->f:Lp3/a/g1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lp3/a/i0$e;-><init>(Lp3/a/i0$h;Lp3/a/j$a;Lp3/a/g1;Z)V

    sput-object v0, Lp3/a/i0$e;->e:Lp3/a/i0$e;

    return-void
.end method

.method public constructor <init>(Lp3/a/i0$h;Lp3/a/j$a;Lp3/a/g1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/i0$e;->a:Lp3/a/i0$h;

    .line 3
    iput-object p2, p0, Lp3/a/i0$e;->b:Lp3/a/j$a;

    const-string p1, "status"

    .line 4
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lp3/a/g1;

    iput-object p3, p0, Lp3/a/i0$e;->c:Lp3/a/g1;

    .line 5
    iput-boolean p4, p0, Lp3/a/i0$e;->d:Z

    return-void
.end method

.method public static a(Lp3/a/g1;)Lp3/a/i0$e;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp3/a/g1;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error status shouldn\'t be OK"

    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lp3/a/i0$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p0, v1}, Lp3/a/i0$e;-><init>(Lp3/a/i0$h;Lp3/a/j$a;Lp3/a/g1;Z)V

    return-object v0
.end method

.method public static b(Lp3/a/i0$h;)Lp3/a/i0$e;
    .locals 4

    .line 1
    new-instance v0, Lp3/a/i0$e;

    const-string v1, "subchannel"

    .line 2
    invoke-static {p0, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lp3/a/g1;->f:Lp3/a/g1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lp3/a/i0$e;-><init>(Lp3/a/i0$h;Lp3/a/j$a;Lp3/a/g1;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lp3/a/i0$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lp3/a/i0$e;

    .line 3
    iget-object v0, p0, Lp3/a/i0$e;->a:Lp3/a/i0$h;

    iget-object v2, p1, Lp3/a/i0$e;->a:Lp3/a/i0$h;

    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/i0$e;->c:Lp3/a/g1;

    iget-object v2, p1, Lp3/a/i0$e;->c:Lp3/a/g1;

    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/i0$e;->b:Lp3/a/j$a;

    iget-object v2, p1, Lp3/a/i0$e;->b:Lp3/a/j$a;

    .line 4
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lp3/a/i0$e;->d:Z

    iget-boolean p1, p1, Lp3/a/i0$e;->d:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/a/i0$e;->a:Lp3/a/i0$h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/i0$e;->c:Lp3/a/g1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/i0$e;->b:Lp3/a/j$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lp3/a/i0$e;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/i0$e;->a:Lp3/a/i0$h;

    const-string v2, "subchannel"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    iget-object v1, p0, Lp3/a/i0$e;->b:Lp3/a/j$a;

    const-string v2, "streamTracerFactory"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    iget-object v1, p0, Lp3/a/i0$e;->c:Lp3/a/g1;

    const-string v2, "status"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 7
    iget-boolean v1, p0, Lp3/a/i0$e;->d:Z

    const-string v2, "drop"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
