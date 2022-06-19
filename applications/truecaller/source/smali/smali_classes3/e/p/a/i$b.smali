.class public final Le/p/a/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Le/p/a/i;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-boolean v0, p1, Le/p/a/i;->a:Z

    .line 5
    iput-boolean v0, p0, Le/p/a/i$b;->a:Z

    .line 6
    iget-object v0, p1, Le/p/a/i;->c:[Ljava/lang/String;

    .line 7
    iput-object v0, p0, Le/p/a/i$b;->b:[Ljava/lang/String;

    .line 8
    iget-object v0, p1, Le/p/a/i;->d:[Ljava/lang/String;

    .line 9
    iput-object v0, p0, Le/p/a/i$b;->c:[Ljava/lang/String;

    .line 10
    iget-boolean p1, p1, Le/p/a/i;->b:Z

    .line 11
    iput-boolean p1, p0, Le/p/a/i$b;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Le/p/a/i$b;->a:Z

    return-void
.end method


# virtual methods
.method public a()Le/p/a/i;
    .locals 2

    .line 1
    new-instance v0, Le/p/a/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/p/a/i;-><init>(Le/p/a/i$b;Le/p/a/i$a;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Le/p/a/i$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/p/a/i$b;->a:Z

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Le/p/a/i$b;->b:[Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs c([Le/p/a/x;)Le/p/a/i$b;
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/p/a/i$b;->a:Z

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p1, v1

    iget-object v2, v2, Le/p/a/x;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Le/p/a/i$b;->d([Ljava/lang/String;)Le/p/a/i$b;

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs d([Ljava/lang/String;)Le/p/a/i$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/p/a/i$b;->a:Z

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Le/p/a/i$b;->c:[Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
