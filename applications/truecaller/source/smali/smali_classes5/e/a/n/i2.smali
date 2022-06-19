.class public Le/a/n/i2;
.super Le/a/n/v1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/n/v1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/n/v1;-><init>()V

    iput-object p1, p0, Le/a/n/i2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    instance-of v1, p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Le/a/n/v1;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Le/a/n/i2;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Le/a/n/i2;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/i2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/i2;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/n/i2;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
