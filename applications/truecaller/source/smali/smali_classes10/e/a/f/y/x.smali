.class public final Le/a/f/y/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/telecom/Call;

.field public final b:Lcom/truecaller/incallui/service/CallType;

.field public final c:J

.field public final d:Lcom/truecaller/incallui/utils/BlockAction;

.field public final e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/telecom/Call;Lcom/truecaller/incallui/service/CallType;JLcom/truecaller/incallui/utils/BlockAction;ZZZI)V
    .locals 1

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_0

    const/4 p5, 0x0

    :cond_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    const/4 p7, 0x0

    :cond_1
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_2

    const/4 p8, 0x1

    :cond_2
    const-string p9, "call"

    .line 1
    invoke-static {p1, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "callType"

    invoke-static {p2, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    iput-object p2, p0, Le/a/f/y/x;->b:Lcom/truecaller/incallui/service/CallType;

    iput-wide p3, p0, Le/a/f/y/x;->c:J

    iput-object p5, p0, Le/a/f/y/x;->d:Lcom/truecaller/incallui/utils/BlockAction;

    iput-boolean p6, p0, Le/a/f/y/x;->e:Z

    iput-boolean p7, p0, Le/a/f/y/x;->f:Z

    iput-boolean p8, p0, Le/a/f/y/x;->g:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/f/y/x;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/f/y/x;

    iget-object v0, p0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    iget-object v1, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f/y/x;->b:Lcom/truecaller/incallui/service/CallType;

    iget-object v1, p1, Le/a/f/y/x;->b:Lcom/truecaller/incallui/service/CallType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/f/y/x;->c:J

    iget-wide v2, p1, Le/a/f/y/x;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/f/y/x;->d:Lcom/truecaller/incallui/utils/BlockAction;

    iget-object v1, p1, Le/a/f/y/x;->d:Lcom/truecaller/incallui/utils/BlockAction;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/f/y/x;->e:Z

    iget-boolean v1, p1, Le/a/f/y/x;->e:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/f/y/x;->f:Z

    iget-boolean v1, p1, Le/a/f/y/x;->f:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/f/y/x;->g:Z

    iget-boolean p1, p1, Le/a/f/y/x;->g:Z

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

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/f/y/x;->b:Lcom/truecaller/incallui/service/CallType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/f/y/x;->c:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/f/y/x;->d:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/f/y/x;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/f/y/x;->f:Z

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/f/y/x;->g:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PhoneCall(call="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f/y/x;->b:Lcom/truecaller/incallui/service/CallType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/f/y/x;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", blockAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f/y/x;->d:Lcom/truecaller/incallui/utils/BlockAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFromTruecaller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/f/y/x;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rejectedFromNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/f/y/x;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showAcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/f/y/x;->g:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
