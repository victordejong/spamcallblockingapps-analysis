.class public abstract Le/a/y2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ln3/m0/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/m0/f;->c:Ln3/m0/f;

    const-string v1, "Data.EMPTY"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/y2/k;->a:Ln3/m0/f;

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/work/ListenableWorker$a;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Le/a/y2/k;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    invoke-virtual {p0}, Le/a/y2/k;->b()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Le/a/y2/k;

    invoke-virtual {p1}, Le/a/y2/k;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/y2/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
