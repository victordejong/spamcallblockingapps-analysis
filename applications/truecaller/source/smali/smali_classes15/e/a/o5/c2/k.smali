.class public abstract Le/a/o5/c2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o5/c2/k$b;,
        Le/a/o5/c2/k$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Le/a/o5/c2/k$b;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget v0, p0, Le/a/o5/c2/k$b;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Le/a/o5/c2/k$b;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Le/a/o5/c2/k$b;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Le/a/o5/c2/k$b;->e:I

    if-lez v0, :cond_0

    iget p0, p0, Le/a/o5/c2/k$b;->f:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Le/a/o5/c2/k$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Le/a/o5/c2/k$c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/o5/c2/k;->d()Z

    move-result v0

    .line 2
    new-instance v1, Le/a/o5/c2/k$a;

    invoke-direct {v1, p0, p1, v0}, Le/a/o5/c2/k$a;-><init>(Le/a/o5/c2/k;Landroid/content/Context;Z)V

    return-object v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
