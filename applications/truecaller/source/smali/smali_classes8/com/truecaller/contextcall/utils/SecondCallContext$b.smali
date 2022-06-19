.class public final Lcom/truecaller/contextcall/utils/SecondCallContext$b;
.super Lcom/truecaller/contextcall/utils/SecondCallContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/contextcall/utils/SecondCallContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/contextcall/utils/SecondCallContext;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->b:Z

    iput-boolean p3, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->c:Z

    iput-object p4, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/contextcall/utils/SecondCallContext$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/contextcall/utils/SecondCallContext$b;

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->b:Z

    iget-boolean v1, p1, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->b:Z

    if-ne v0, v1, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->c:Z

    iget-boolean v1, p1, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->c:Z

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->d:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->d:Ljava/lang/Integer;

    .line 6
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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->a:Ljava/lang/String;

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
    iget-boolean v2, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v2, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->c:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PopupCallerId(normalizedNumber="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSpam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-boolean v1, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->b:Z

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->c:Z

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", simSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/truecaller/contextcall/utils/SecondCallContext$b;->d:Ljava/lang/Integer;

    const-string v2, ")"

    .line 8
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L2(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
