.class abstract Li/a/d/e/a;
.super Li/a/d/e/d;
.source "SourceFile"


# instance fields
.field private final d:Li/a/a/c/j;


# direct methods
.method constructor <init>(Li/a/a/c/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/a/d/e/d;-><init>()V

    const-string v0, "Null attributes"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Li/a/d/e/a;->d:Li/a/a/c/j;

    return-void
.end method


# virtual methods
.method public c()Li/a/a/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/e/a;->d:Li/a/a/c/j;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Li/a/d/e/d;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Li/a/d/e/d;

    .line 3
    iget-object v0, p0, Li/a/d/e/a;->d:Li/a/a/c/j;

    invoke-virtual {p1}, Li/a/d/e/d;->c()Li/a/a/c/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/e/a;->d:Li/a/a/c/j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource{attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/d/e/a;->d:Li/a/a/c/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
