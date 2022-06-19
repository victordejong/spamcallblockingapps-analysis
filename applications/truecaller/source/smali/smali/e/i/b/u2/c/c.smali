.class public abstract Le/i/b/u2/c/c;
.super Le/i/b/u2/c/o;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/i/b/u2/c/o;-><init>()V

    const-string v0, "Null url"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/i/b/u2/c/c;->a:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public a()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/c/c;->a:Ljava/net/URL;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Le/i/b/u2/c/o;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Le/i/b/u2/c/o;

    .line 3
    iget-object v0, p0, Le/i/b/u2/c/c;->a:Ljava/net/URL;

    invoke-virtual {p1}, Le/i/b/u2/c/o;->a()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/u2/c/c;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "NativeImage{url="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/i/b/u2/c/c;->a:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
