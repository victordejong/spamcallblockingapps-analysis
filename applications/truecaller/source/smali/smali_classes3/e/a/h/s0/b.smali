.class public final Le/a/h/s0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/h/s0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

.field public final f:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Le/a/h/s0/b;-><init>(ZZZLjava/util/ArrayList;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Lcom/truecaller/data/entity/Contact;I)V

    return-void
.end method

.method public constructor <init>(ZZZLjava/util/ArrayList;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Lcom/truecaller/data/entity/Contact;I)V
    .locals 2

    and-int/lit8 p4, p7, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p4, p7, 0x2

    if-eqz p4, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p7, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p4, p7, 0x8

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 1
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    move-object p4, v0

    :goto_0
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_4

    .line 2
    sget-object p5, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    :cond_5
    const-string p7, "items"

    .line 3
    invoke-static {p4, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "callContextOption"

    invoke-static {p5, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/h/s0/b;->a:Z

    iput-boolean p2, p0, Le/a/h/s0/b;->b:Z

    iput-boolean p3, p0, Le/a/h/s0/b;->c:Z

    iput-object p4, p0, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Le/a/h/s0/b;->e:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    iput-object p6, p0, Le/a/h/s0/b;->f:Lcom/truecaller/data/entity/Contact;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/h/s0/b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/h/s0/b;

    iget-boolean v0, p0, Le/a/h/s0/b;->a:Z

    iget-boolean v1, p1, Le/a/h/s0/b;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/h/s0/b;->b:Z

    iget-boolean v1, p1, Le/a/h/s0/b;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/h/s0/b;->c:Z

    iget-boolean v1, p1, Le/a/h/s0/b;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/s0/b;->e:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    iget-object v1, p1, Le/a/h/s0/b;->e:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/s0/b;->f:Lcom/truecaller/data/entity/Contact;

    iget-object p1, p1, Le/a/h/s0/b;->f:Lcom/truecaller/data/entity/Contact;

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

    iget-boolean v0, p0, Le/a/h/s0/b;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/h/s0/b;->b:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/h/s0/b;->c:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/s0/b;->e:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/s0/b;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SelectNumberData(multiSim="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/h/s0/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/h/s0/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", voip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/h/s0/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callContextOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/s0/b;->e:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/s0/b;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
