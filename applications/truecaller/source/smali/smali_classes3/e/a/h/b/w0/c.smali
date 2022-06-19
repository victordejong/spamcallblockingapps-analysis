.class public final Le/a/h/b/w0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/truecaller/data/entity/Contact;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Z)V
    .locals 1

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    iput-boolean p3, p0, Le/a/h/b/w0/c;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Le/a/k3/l/f;)Lcom/truecaller/data/entity/Number;
    .locals 4

    const-string v0, "numberProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/data/entity/Number;

    const-string v3, "it"

    .line 3
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    check-cast v1, Lcom/truecaller/data/entity/Number;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Le/a/k3/l/f;->d([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Le/a/h/b/w0/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    check-cast p1, Le/a/h/b/w0/c;

    iget-object p1, p1, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "SuggestedContact(normalizedNumber="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPinned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/h/b/w0/c;->c:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
