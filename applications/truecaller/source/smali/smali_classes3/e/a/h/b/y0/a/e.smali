.class public final Le/a/h/b/y0/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/data/entity/Contact;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/truecaller/blocking/FilterMatch;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/blocking/FilterMatch;)V
    .locals 0

    const-string p3, "contact"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "matchedValue"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/y0/a/e;->a:Lcom/truecaller/data/entity/Contact;

    iput-object p2, p0, Le/a/h/b/y0/a/e;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/h/b/y0/a/e;->c:Lcom/truecaller/blocking/FilterMatch;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/h/b/y0/a/e;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/h/b/y0/a/e;

    iget-object v0, p0, Le/a/h/b/y0/a/e;->a:Lcom/truecaller/data/entity/Contact;

    iget-object v1, p1, Le/a/h/b/y0/a/e;->a:Lcom/truecaller/data/entity/Contact;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/y0/a/e;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/h/b/y0/a/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/y0/a/e;->c:Lcom/truecaller/blocking/FilterMatch;

    iget-object p1, p1, Le/a/h/b/y0/a/e;->c:Lcom/truecaller/blocking/FilterMatch;

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

    iget-object v0, p0, Le/a/h/b/y0/a/e;->a:Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/y0/a/e;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/y0/a/e;->c:Lcom/truecaller/blocking/FilterMatch;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/truecaller/blocking/FilterMatch;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "T9SearchResult(contact="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/h/b/y0/a/e;->a:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matchedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/y0/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filterMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/y0/a/e;->c:Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
