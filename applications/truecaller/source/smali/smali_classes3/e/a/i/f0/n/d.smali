.class public final Le/a/i/f0/n/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v1, "headline"

    const-string v3, "body"

    const-string v5, "cta"

    const-string v7, "link"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Le/d/c/a/a;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/n/d;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/i/f0/n/d;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/i/f0/n/d;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/i/f0/n/d;->d:Ljava/lang/String;

    iput-object p5, p0, Le/a/i/f0/n/d;->e:Ljava/lang/String;

    iput-object p6, p0, Le/a/i/f0/n/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Le/a/i/f0/n/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.truecaller.ads.provider.house.HouseAd"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/i/f0/n/d;

    .line 3
    iget-object v1, p0, Le/a/i/f0/n/d;->a:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/f0/n/d;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Le/a/i/f0/n/d;->b:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/f0/n/d;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Le/a/i/f0/n/d;->c:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/f0/n/d;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget-object v1, p0, Le/a/i/f0/n/d;->d:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/f0/n/d;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_6

    return v2

    .line 7
    :cond_6
    iget-object v1, p0, Le/a/i/f0/n/d;->e:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/f0/n/d;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_7

    return v2

    .line 8
    :cond_7
    iget-object v1, p0, Le/a/i/f0/n/d;->f:Ljava/lang/String;

    iget-object p1, p1, Le/a/i/f0/n/d;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/f0/n/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/a/i/f0/n/d;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/i/f0/n/d;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Le/a/i/f0/n/d;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-object v1, p0, Le/a/i/f0/n/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Le/a/i/f0/n/d;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method
