.class public final Le/a/l/p2/p1$d;
.super Le/a/l/p2/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/p2/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/l/p2/p1;-><init>(Ls1/z/c/f;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a/l/p2/p1$d;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Le/a/l/p2/p1;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Le/a/l/p2/p1$d;->a:Z

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p2}, Le/a/l/p2/p1;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Le/a/l/p2/p1$d;->a:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/p2/p1$d;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/p2/p1$d;

    iget-boolean v0, p0, Le/a/l/p2/p1$d;->a:Z

    iget-boolean p1, p1, Le/a/l/p2/p1$d;->a:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Le/a/l/p2/p1$d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PendingPurchase(isWebPayment="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/l/p2/p1$d;->a:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
