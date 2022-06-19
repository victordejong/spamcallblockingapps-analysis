.class public final Le/a/o/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/o/n/a;->a:I

    iput p2, p0, Le/a/o/n/a;->b:I

    iput-object p3, p0, Le/a/o/n/a;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/o/n/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/o/n/a;

    iget v0, p0, Le/a/o/n/a;->a:I

    iget v1, p1, Le/a/o/n/a;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/o/n/a;->b:I

    iget v1, p1, Le/a/o/n/a;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/o/n/a;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/o/n/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    iget-object p1, p1, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

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

    iget v0, p0, Le/a/o/n/a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/o/n/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/o/n/a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PredefinedCallReason(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/o/n/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/o/n/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/o/n/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
