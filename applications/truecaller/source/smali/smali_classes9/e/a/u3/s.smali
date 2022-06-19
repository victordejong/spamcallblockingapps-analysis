.class public final Le/a/u3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/q;
.implements Le/a/u3/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Le/a/u3/d;

.field public final e:Le/a/u3/b;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLe/a/u3/d;Le/a/u3/b;Z)V
    .locals 1

    const-string v0, "remoteKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/u3/s;->b:Ljava/lang/String;

    iput-boolean p2, p0, Le/a/u3/s;->c:Z

    iput-object p3, p0, Le/a/u3/s;->d:Le/a/u3/d;

    iput-object p4, p0, Le/a/u3/s;->e:Le/a/u3/b;

    iput-boolean p5, p0, Le/a/u3/s;->f:Z

    .line 2
    new-instance p1, Le/a/u3/s$a;

    invoke-direct {p1, p0}, Le/a/u3/s$a;-><init>(Le/a/u3/s;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/u3/s;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u3/s;->d:Le/a/u3/d;

    .line 2
    iget-object v1, p0, Le/a/u3/s;->b:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1, p1}, Le/a/u3/d;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/s;->e:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/u3/s;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/u3/s;

    .line 1
    iget-object v0, p0, Le/a/u3/s;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/u3/s;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Le/a/u3/s;->c:Z

    iget-boolean v1, p1, Le/a/u3/s;->c:Z

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Le/a/u3/s;->d:Le/a/u3/d;

    iget-object v1, p1, Le/a/u3/s;->d:Le/a/u3/d;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u3/s;->e:Le/a/u3/b;

    iget-object v1, p1, Le/a/u3/s;->e:Le/a/u3/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/u3/s;->f:Z

    iget-boolean p1, p1, Le/a/u3/s;->f:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u3/s;->d:Le/a/u3/d;

    .line 2
    iget-object v1, p0, Le/a/u3/s;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Le/a/u3/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/u3/s;->e:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lcom/truecaller/featuretoggles/FeatureKey;
    .locals 1

    iget-object v0, p0, Le/a/u3/s;->e:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u3/s;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v2, p0, Le/a/u3/s;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Le/a/u3/s;->d:Le/a/u3/d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/u3/s;->e:Le/a/u3/b;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/u3/s;->f:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/u3/s;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u3/s;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/u3/s;->m()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    sget-object v0, Le/a/u3/s$c;->b:Le/a/u3/s$c;

    invoke-virtual {p0, v0}, Le/a/u3/s;->n(Ls1/z/b/l;)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/u3/s;->c:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/s;->e:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Le/a/u3/s;->c:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/u3/s;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Le/a/u3/k;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/u3/s;->e:Le/a/u3/b;

    instance-of v1, v0, Le/a/u3/k;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to mutate compile time value in release mode. Feature: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Le/a/u3/s;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/u3/s;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    new-instance v0, Le/a/u3/s$b;

    invoke-direct {v0, p1}, Le/a/u3/s$b;-><init>(Z)V

    invoke-virtual {p0, v0}, Le/a/u3/s;->n(Ls1/z/b/l;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RemoteFeatureImpl(remoteKey="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Le/a/u3/s;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreRemote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-boolean v1, p0, Le/a/u3/s;->c:Z

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prefs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/u3/s;->d:Le/a/u3/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/u3/s;->e:Le/a/u3/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keepInitialValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/u3/s;->f:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
