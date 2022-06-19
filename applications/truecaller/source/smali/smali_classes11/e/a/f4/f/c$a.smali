.class public Le/a/f4/f/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f4/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/f4/f/c$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Le/a/f4/f/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Le/a/f4/f/c$a$a;
    .annotation runtime Le/m/e/d0/b;
        value = "e"
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "a"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/f4/f/c$a;)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    iget-object p1, p1, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_2
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le/a/f4/f/c$a;

    invoke-virtual {p0, p1}, Le/a/f4/f/c$a;->a(Le/a/f4/f/c$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/a/f4/f/c$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Le/a/f4/f/c$a;

    if-eq p1, p0, :cond_0

    .line 3
    iget-object v0, p1, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    iget-object v2, p0, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    invoke-static {v0, v2}, Lw3/c/a/a/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    iget-object v0, p0, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    invoke-static {p1, v0}, Lw3/c/a/a/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    aget-object v5, v1, v2

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "NotificationDto{envelope="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
