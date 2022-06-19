.class public Le/f/a/n/o/k$a;
.super Le/f/a/n/o/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/a/n/o/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Le/f/a/n/a;)Z
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/a;->b:Le/f/a/n/a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(ZLe/f/a/n/a;Le/f/a/n/c;)Z
    .locals 0

    .line 1
    sget-object p1, Le/f/a/n/a;->d:Le/f/a/n/a;

    if-eq p2, p1, :cond_0

    sget-object p1, Le/f/a/n/a;->e:Le/f/a/n/a;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
