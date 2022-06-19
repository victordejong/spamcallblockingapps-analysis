.class public final Le/m/a/c/n1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Le/m/a/c/v0;

.field public final c:Le/m/a/c/n1/g;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Le/m/a/c/v0;[Le/m/a/c/n1/f;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/n1/i;->b:[Le/m/a/c/v0;

    .line 3
    new-instance v0, Le/m/a/c/n1/g;

    invoke-direct {v0, p2}, Le/m/a/c/n1/g;-><init>([Le/m/a/c/n1/f;)V

    iput-object v0, p0, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    .line 4
    iput-object p3, p0, Le/m/a/c/n1/i;->d:Ljava/lang/Object;

    .line 5
    array-length p1, p1

    iput p1, p0, Le/m/a/c/n1/i;->a:I

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/n1/i;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Le/m/a/c/n1/i;->b:[Le/m/a/c/v0;

    aget-object v1, v1, p2

    iget-object v2, p1, Le/m/a/c/n1/i;->b:[Le/m/a/c/v0;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    .line 2
    iget-object v1, v1, Le/m/a/c/n1/g;->b:[Le/m/a/c/n1/f;

    aget-object v1, v1, p2

    .line 3
    iget-object p1, p1, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    .line 4
    iget-object p1, p1, Le/m/a/c/n1/g;->b:[Le/m/a/c/n1/f;

    aget-object p1, p1, p2

    .line 5
    invoke-static {v1, p1}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/n1/i;->b:[Le/m/a/c/v0;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
