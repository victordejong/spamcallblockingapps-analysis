.class public final Le/k/a/c/k0/o;
.super Le/k/a/c/k0/v;
.source "SourceFile"


# static fields
.field public static final a:Le/k/a/c/k0/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/k0/o;

    invoke-direct {v0}, Le/k/a/c/k0/o;-><init>()V

    sput-object v0, Le/k/a/c/k0/o;->a:Le/k/a/c/k0/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->i:Le/k/a/b/m;

    return-object v0
.end method

.method public b(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/g;->D0()V

    return-void
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/g;->D0()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/o;->a:Le/k/a/c/k0/o;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public v()Le/k/a/c/k0/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/m;->d:Le/k/a/c/k0/m;

    return-object v0
.end method
