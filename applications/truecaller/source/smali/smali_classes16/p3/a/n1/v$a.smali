.class public final Lp3/a/n1/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lp3/a/a;

.field public c:Ljava/lang/String;

.field public d:Lp3/a/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown-authority"

    .line 2
    iput-object v0, p0, Lp3/a/n1/v$a;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lp3/a/a;->b:Lp3/a/a;

    iput-object v0, p0, Lp3/a/n1/v$a;->b:Lp3/a/a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lp3/a/n1/v$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lp3/a/n1/v$a;

    .line 3
    iget-object v0, p0, Lp3/a/n1/v$a;->a:Ljava/lang/String;

    iget-object v2, p1, Lp3/a/n1/v$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/n1/v$a;->b:Lp3/a/a;

    iget-object v2, p1, Lp3/a/n1/v$a;->b:Lp3/a/a;

    .line 4
    invoke-virtual {v0, v2}, Lp3/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/n1/v$a;->c:Ljava/lang/String;

    iget-object v2, p1, Lp3/a/n1/v$a;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/n1/v$a;->d:Lp3/a/z;

    iget-object p1, p1, Lp3/a/n1/v$a;->d:Lp3/a/z;

    .line 6
    invoke-static {v0, p1}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/a/n1/v$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/v$a;->b:Lp3/a/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/v$a;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/n1/v$a;->d:Lp3/a/z;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
