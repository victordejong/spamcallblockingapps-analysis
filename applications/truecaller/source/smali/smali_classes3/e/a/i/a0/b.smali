.class public final Le/a/i/a0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/a0/b;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/i/a0/b;->b:Ljava/lang/String;

    iput p3, p0, Le/a/i/a0/b;->c:I

    iput-wide p4, p0, Le/a/i/a0/b;->d:J

    iput-wide p6, p0, Le/a/i/a0/b;->e:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Le/a/i/a0/b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/i/a0/b;

    iget-object v0, p1, Le/a/i/a0/b;->a:Ljava/lang/String;

    iget-object v1, p0, Le/a/i/a0/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Le/a/i/a0/b;->b:Ljava/lang/String;

    iget-object v1, p0, Le/a/i/a0/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Le/a/i/a0/b;->c:I

    iget v1, p0, Le/a/i/a0/b;->c:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Le/a/i/a0/b;->d:J

    iget-wide v2, p0, Le/a/i/a0/b;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Le/a/i/a0/b;->e:J

    iget-wide v2, p0, Le/a/i/a0/b;->e:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/a0/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
