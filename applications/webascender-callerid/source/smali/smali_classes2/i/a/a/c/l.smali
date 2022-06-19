.class final Li/a/a/c/l;
.super Li/a/a/c/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/a/c/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Li/a/a/c/h;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Li/a/a/c/h;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/a/a/c/g;-><init>()V

    const-string v0, "Null getType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Li/a/a/c/l;->a:Li/a/a/c/h;

    .line 4
    iput-object p2, p0, Li/a/a/c/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a/c/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Li/a/a/c/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Li/a/a/c/g;

    .line 3
    iget-object v1, p0, Li/a/a/c/l;->a:Li/a/a/c/h;

    invoke-interface {p1}, Li/a/a/c/f;->getType()Li/a/a/c/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Li/a/a/c/l;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Li/a/a/c/g;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Li/a/a/c/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getType()Li/a/a/c/h;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a/c/l;->a:Li/a/a/c/h;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/a/c/l;->a:Li/a/a/c/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v1, p0, Li/a/a/c/l;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method
