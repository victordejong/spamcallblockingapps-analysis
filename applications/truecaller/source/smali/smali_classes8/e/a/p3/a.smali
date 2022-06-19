.class public final Le/a/p3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q3/h;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p3/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "auto"

    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p3/a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Le/a/j4/b/a/h;->k(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p3/a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Le/a/j4/b/a/h;->k(Landroid/content/Context;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Le/a/j4/b/a/h;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
