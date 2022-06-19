.class public final Lg/g/b/a/g/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/b/a/g/b/a$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lg/g/b/a/g/b/a$a;


# direct methods
.method public constructor <init>(ZLg/g/b/a/g/b/a$a;)V
    .locals 1

    const-string v0, "cacheDownloadPref"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/g/b/a/g/b/a;->a:Z

    iput-object p2, p0, Lg/g/b/a/g/b/a;->b:Lg/g/b/a/g/b/a$a;

    return-void
.end method


# virtual methods
.method public final a()Lg/g/b/a/g/b/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/a/g/b/a;->b:Lg/g/b/a/g/b/a$a;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/g/b/a/g/b/a;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lg/g/b/a/g/b/a;

    if-eqz v0, :cond_0

    check-cast p1, Lg/g/b/a/g/b/a;

    iget-boolean v0, p0, Lg/g/b/a/g/b/a;->a:Z

    iget-boolean v1, p1, Lg/g/b/a/g/b/a;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/g/b/a/g/b/a;->b:Lg/g/b/a/g/b/a$a;

    iget-object p1, p1, Lg/g/b/a/g/b/a;->b:Lg/g/b/a/g/b/a$a;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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
    .locals 2

    iget-boolean v0, p0, Lg/g/b/a/g/b/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/g/b/a/g/b/a;->b:Lg/g/b/a/g/b/a$a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheDownloadSetting(isCacheDownloadEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/g/b/a/g/b/a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheDownloadPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/b/a/g/b/a;->b:Lg/g/b/a/g/b/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
