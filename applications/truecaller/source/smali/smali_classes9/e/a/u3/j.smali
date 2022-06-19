.class public final Le/a/u3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/p;
.implements Le/a/u3/b;


# instance fields
.field public final a:Le/a/u3/b;

.field public final b:Le/a/s4/a;

.field public final c:Ljava/lang/String;

.field public final d:Le/a/u3/d;

.field public final e:Lcom/truecaller/featuretoggles/FirebaseFlavor;


# direct methods
.method public constructor <init>(Le/a/u3/b;Le/a/s4/a;Ljava/lang/String;Le/a/u3/d;Lcom/truecaller/featuretoggles/FirebaseFlavor;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseKey"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseFlavor"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/u3/j;->a:Le/a/u3/b;

    iput-object p2, p0, Le/a/u3/j;->b:Le/a/s4/a;

    iput-object p3, p0, Le/a/u3/j;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/u3/j;->d:Le/a/u3/d;

    iput-object p5, p0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u3/j;->d:Le/a/u3/d;

    .line 2
    iget-object v1, p0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Le/a/u3/j;->b:Le/a/s4/a;

    invoke-interface {v0, v1, p1, p2, v2}, Le/a/u3/d;->p1(Ljava/lang/String;JLe/a/s4/a;)J

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/u3/j;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/u3/j;

    iget-object v0, p0, Le/a/u3/j;->a:Le/a/u3/b;

    iget-object v1, p1, Le/a/u3/j;->a:Le/a/u3/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u3/j;->b:Le/a/s4/a;

    iget-object v1, p1, Le/a/u3/j;->b:Le/a/s4/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Le/a/u3/j;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/u3/j;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u3/j;->d:Le/a/u3/d;

    iget-object v1, p1, Le/a/u3/j;->d:Le/a/u3/d;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    iget-object p1, p1, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    .line 4
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

.method public g()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    .line 2
    sget-object v1, Lcom/truecaller/featuretoggles/FirebaseFlavor;->BOOLEAN:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    const-string v2, ""

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u3/j;->d:Le/a/u3/d;

    .line 4
    iget-object v1, p0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Le/a/u3/j;->b:Le/a/s4/a;

    invoke-interface {v3, v1}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Le/a/u3/d;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/u3/j;->a:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u3/j;->d:Le/a/u3/d;

    .line 2
    iget-object v1, p0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Le/a/u3/j;->b:Le/a/s4/a;

    invoke-interface {v0, v1, p1, v2}, Le/a/u3/d;->W0(Ljava/lang/String;ILe/a/s4/a;)I

    move-result p1

    return p1
.end method

.method public getKey()Lcom/truecaller/featuretoggles/FeatureKey;
    .locals 1

    iget-object v0, p0, Le/a/u3/j;->a:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    .line 2
    sget-object v1, Lcom/truecaller/featuretoggles/FirebaseFlavor;->BOOLEAN:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u3/j;->d:Le/a/u3/d;

    .line 4
    iget-object v1, p0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1, p1}, Le/a/u3/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Firebase flavor can not be boolean when setting new value!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Le/a/u3/j;->a:Le/a/u3/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/u3/j;->b:Le/a/s4/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-object v2, p0, Le/a/u3/j;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/u3/j;->d:Le/a/u3/d;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public i(F)F
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u3/j;->d:Le/a/u3/d;

    .line 2
    iget-object v1, p0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Le/a/u3/j;->b:Le/a/s4/a;

    invoke-interface {v0, v1, p1, v2}, Le/a/u3/d;->K(Ljava/lang/String;FLe/a/s4/a;)F

    move-result p1

    return p1
.end method

.method public isEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    .line 2
    sget-object v1, Lcom/truecaller/featuretoggles/FirebaseFlavor;->BOOLEAN:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u3/j;->d:Le/a/u3/d;

    .line 4
    iget-object v1, p0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Le/a/u3/j;->b:Le/a/s4/a;

    invoke-interface {v3, v1, v2}, Le/a/s4/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Le/a/u3/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    return v2
.end method

.method public j()Lcom/truecaller/featuretoggles/FirebaseFlavor;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u3/j;->d:Le/a/u3/d;

    .line 2
    iget-object v1, p0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Le/a/u3/d;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    .line 2
    sget-object v1, Lcom/truecaller/featuretoggles/FirebaseFlavor;->BOOLEAN:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u3/j;->d:Le/a/u3/d;

    .line 4
    iget-object v1, p0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1, p1}, Le/a/u3/d;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "FirebaseFeatureImpl(feature="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/u3/j;->a:Le/a/u3/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/u3/j;->b:Le/a/s4/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firebaseKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object v1, p0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prefs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/u3/j;->d:Le/a/u3/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firebaseFlavor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
