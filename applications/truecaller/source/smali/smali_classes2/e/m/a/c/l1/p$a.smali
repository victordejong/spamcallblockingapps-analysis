.class public final Le/m/a/c/l1/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/l1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/m/a/c/l1/p$a;->b:I

    .line 4
    iput p1, p0, Le/m/a/c/l1/p$a;->c:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Le/m/a/c/l1/p$a;->d:J

    .line 6
    iput p1, p0, Le/m/a/c/l1/p$a;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    .line 9
    iput p2, p0, Le/m/a/c/l1/p$a;->b:I

    .line 10
    iput p3, p0, Le/m/a/c/l1/p$a;->c:I

    .line 11
    iput-wide p4, p0, Le/m/a/c/l1/p$a;->d:J

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Le/m/a/c/l1/p$a;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Le/m/a/c/l1/p$a;->b:I

    .line 16
    iput p1, p0, Le/m/a/c/l1/p$a;->c:I

    .line 17
    iput-wide p2, p0, Le/m/a/c/l1/p$a;->d:J

    .line 18
    iput p1, p0, Le/m/a/c/l1/p$a;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Le/m/a/c/l1/p$a;->b:I

    .line 22
    iput p1, p0, Le/m/a/c/l1/p$a;->c:I

    .line 23
    iput-wide p2, p0, Le/m/a/c/l1/p$a;->d:J

    .line 24
    iput p4, p0, Le/m/a/c/l1/p$a;->e:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Le/m/a/c/l1/p$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Le/m/a/c/l1/p$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Le/m/a/c/l1/p$a;

    .line 3
    iget-object v2, p0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    iget-object v3, p1, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Le/m/a/c/l1/p$a;->b:I

    iget v3, p1, Le/m/a/c/l1/p$a;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Le/m/a/c/l1/p$a;->c:I

    iget v3, p1, Le/m/a/c/l1/p$a;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Le/m/a/c/l1/p$a;->d:J

    iget-wide v4, p1, Le/m/a/c/l1/p$a;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Le/m/a/c/l1/p$a;->e:I

    iget p1, p1, Le/m/a/c/l1/p$a;->e:I

    if-ne v2, p1, :cond_2

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

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Le/m/a/c/l1/p$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Le/m/a/c/l1/p$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Le/m/a/c/l1/p$a;->d:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Le/m/a/c/l1/p$a;->e:I

    add-int/2addr v0, v1

    return v0
.end method
