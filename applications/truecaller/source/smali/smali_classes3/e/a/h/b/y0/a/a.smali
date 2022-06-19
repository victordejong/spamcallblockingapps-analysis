.class public final Le/a/h/b/y0/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/data/entity/Contact;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Long;

.field public final d:Lcom/truecaller/blocking/FilterMatch;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/blocking/FilterMatch;)V
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matchedValue"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/y0/a/a;->a:Lcom/truecaller/data/entity/Contact;

    iput-object p2, p0, Le/a/h/b/y0/a/a;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/h/b/y0/a/a;->c:Ljava/lang/Long;

    iput-object p4, p0, Le/a/h/b/y0/a/a;->d:Lcom/truecaller/blocking/FilterMatch;

    return-void
.end method

.method public static a(Le/a/h/b/y0/a/a;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/blocking/FilterMatch;I)Le/a/h/b/y0/a/a;
    .locals 1

    and-int/lit8 p2, p5, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Le/a/h/b/y0/a/a;->a:Lcom/truecaller/data/entity/Contact;

    :cond_0
    and-int/lit8 p2, p5, 0x2

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Le/a/h/b/y0/a/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    iget-object p3, p0, Le/a/h/b/y0/a/a;->c:Ljava/lang/Long;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Le/a/h/b/y0/a/a;->d:Lcom/truecaller/blocking/FilterMatch;

    .line 1
    :cond_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "contact"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "matchedValue"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Le/a/h/b/y0/a/a;

    invoke-direct {p0, p1, p2, p3, p4}, Le/a/h/b/y0/a/a;-><init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/blocking/FilterMatch;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/h/b/y0/a/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/h/b/y0/a/a;

    iget-object v0, p0, Le/a/h/b/y0/a/a;->a:Lcom/truecaller/data/entity/Contact;

    iget-object v1, p1, Le/a/h/b/y0/a/a;->a:Lcom/truecaller/data/entity/Contact;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/y0/a/a;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/h/b/y0/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/y0/a/a;->c:Ljava/lang/Long;

    iget-object v1, p1, Le/a/h/b/y0/a/a;->c:Ljava/lang/Long;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/y0/a/a;->d:Lcom/truecaller/blocking/FilterMatch;

    iget-object p1, p1, Le/a/h/b/y0/a/a;->d:Lcom/truecaller/blocking/FilterMatch;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Le/a/h/b/y0/a/a;->a:Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/y0/a/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/y0/a/a;->c:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/y0/a/a;->d:Lcom/truecaller/blocking/FilterMatch;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/truecaller/blocking/FilterMatch;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LocalResult(contact="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/h/b/y0/a/a;->a:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matchedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/y0/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refetchStartedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/y0/a/a;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/y0/a/a;->d:Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
