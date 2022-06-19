.class final Li/a/d/f/b0/c;
.super Li/a/d/f/b0/d;
.source "SourceFile"


# instance fields
.field private final c:Li/a/d/f/b0/i;

.field private final d:Li/a/a/c/j;


# direct methods
.method constructor <init>(Li/a/d/f/b0/i;Li/a/a/c/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/a/d/f/b0/d;-><init>()V

    const-string v0, "Null decision"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Li/a/d/f/b0/c;->c:Li/a/d/f/b0/i;

    const-string p1, "Null attributes"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Li/a/d/f/b0/c;->d:Li/a/a/c/j;

    return-void
.end method


# virtual methods
.method public a()Li/a/a/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/b0/c;->d:Li/a/a/c/j;

    return-object v0
.end method

.method public c()Li/a/d/f/b0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/b0/c;->c:Li/a/d/f/b0/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Li/a/d/f/b0/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Li/a/d/f/b0/d;

    .line 3
    iget-object v1, p0, Li/a/d/f/b0/c;->c:Li/a/d/f/b0/i;

    invoke-virtual {p1}, Li/a/d/f/b0/d;->c()Li/a/d/f/b0/i;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/a/d/f/b0/c;->d:Li/a/a/c/j;

    .line 4
    invoke-virtual {p1}, Li/a/d/f/b0/d;->a()Li/a/a/c/j;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/f/b0/c;->c:Li/a/d/f/b0/i;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v1, p0, Li/a/d/f/b0/c;->d:Li/a/a/c/j;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImmutableSamplingResult{decision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/d/f/b0/c;->c:Li/a/d/f/b0/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/d/f/b0/c;->d:Li/a/a/c/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
