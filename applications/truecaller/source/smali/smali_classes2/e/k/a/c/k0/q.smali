.class public Le/k/a/c/k0/q;
.super Le/k/a/c/k0/v;
.source "SourceFile"


# static fields
.field public static final a:Le/k/a/c/k0/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/k0/q;

    invoke-direct {v0}, Le/k/a/c/k0/q;-><init>()V

    sput-object v0, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

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
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    return-object v0
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p0, :cond_1

    .line 1
    instance-of p1, p1, Le/k/a/c/k0/q;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    return-object v0
.end method

.method public v()Le/k/a/c/k0/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/m;->e:Le/k/a/c/k0/m;

    return-object v0
.end method
