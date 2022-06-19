.class public Le/a/j4/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j4/b/b/a;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Lcom/truecaller/blocking/ActionSource;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/truecaller/blocking/ActionSource;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    iput-object v0, p0, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    .line 3
    iput-object p4, p0, Le/a/j4/b/b/e;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    .line 5
    iput-wide p1, p0, Le/a/j4/b/b/e;->a:J

    .line 6
    iput-object p5, p0, Le/a/j4/b/b/e;->d:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Le/a/j4/b/b/e;->e:Z

    .line 8
    iput-boolean p7, p0, Le/a/j4/b/b/e;->f:Z

    .line 9
    iput-object p8, p0, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    .line 10
    iput-object p9, p0, Le/a/j4/b/b/e;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le/m/e/t;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    iput-object v0, p0, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    const-string v0, "n"

    .line 13
    invoke-static {v0, p1}, Le/a/e/a2;->G(Ljava/lang/String;Le/m/e/t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    const-string v0, "ts"

    .line 14
    invoke-static {v0, p1}, Le/a/e/a2;->z(Ljava/lang/String;Le/m/e/t;)J

    move-result-wide v0

    iput-wide v0, p0, Le/a/j4/b/b/e;->a:J

    const-string v0, "na"

    .line 15
    invoke-static {v0, p1}, Le/a/e/a2;->G(Ljava/lang/String;Le/m/e/t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/j4/b/b/e;->c:Ljava/lang/String;

    const-string v0, "t"

    .line 16
    invoke-static {v0, p1}, Le/a/e/a2;->G(Ljava/lang/String;Le/m/e/t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/j4/b/b/e;->d:Ljava/lang/String;

    const-string v0, "b"

    .line 17
    invoke-static {v0, p1}, Le/a/e/a2;->s(Ljava/lang/String;Le/m/e/t;)Z

    move-result v0

    iput-boolean v0, p0, Le/a/j4/b/b/e;->e:Z

    const-string v0, "h"

    .line 18
    invoke-static {v0, p1}, Le/a/e/a2;->s(Ljava/lang/String;Le/m/e/t;)Z

    move-result v0

    iput-boolean v0, p0, Le/a/j4/b/b/e;->f:Z

    const-string v0, "as"

    .line 19
    invoke-static {v0, p1}, Le/a/e/a2;->G(Ljava/lang/String;Le/m/e/t;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/a3/c;->a(Ljava/lang/String;)Lcom/truecaller/blocking/ActionSource;

    move-result-object v0

    iput-object v0, p0, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    const-string v0, "cc"

    .line 20
    invoke-static {v0, p1}, Le/a/e/a2;->G(Ljava/lang/String;Le/m/e/t;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Le/a/j4/b/b/e;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/m/e/t;
    .locals 5

    .line 1
    sget-object v0, Le/m/e/s;->a:Le/m/e/s;

    new-instance v1, Le/m/e/t;

    invoke-direct {v1}, Le/m/e/t;-><init>()V

    .line 2
    iget-object v2, p0, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    const-string v3, "n"

    invoke-virtual {v1, v3, v2}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-wide v2, p0, Le/a/j4/b/b/e;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {v1, v3, v2}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4
    iget-object v2, p0, Le/a/j4/b/b/e;->c:Ljava/lang/String;

    const-string v3, "na"

    invoke-virtual {v1, v3, v2}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Le/a/j4/b/b/e;->d:Ljava/lang/String;

    const-string v3, "t"

    invoke-virtual {v1, v3, v2}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean v2, p0, Le/a/j4/b/b/e;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v3, v0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v3, Le/m/e/w;

    invoke-direct {v3, v2}, Le/m/e/w;-><init>(Ljava/lang/Boolean;)V

    .line 8
    :goto_0
    iget-object v2, v1, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v4, "b"

    invoke-virtual {v2, v4, v3}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-boolean v2, p0, Le/a/j4/b/b/e;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Le/m/e/w;

    invoke-direct {v0, v2}, Le/m/e/w;-><init>(Ljava/lang/Boolean;)V

    .line 11
    :goto_1
    iget-object v2, v1, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v3, "h"

    invoke-virtual {v2, v3, v0}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "as"

    invoke-virtual {v1, v2, v0}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Le/a/j4/b/b/e;->h:Ljava/lang/String;

    const-string v2, "cc"

    invoke-virtual {v1, v2, v0}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/a/j4/b/b/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Le/a/j4/b/b/e;

    .line 3
    iget-wide v3, p0, Le/a/j4/b/b/e;->a:J

    .line 4
    iget-wide v5, p1, Le/a/j4/b/b/e;->a:J

    sub-long/2addr v3, v5

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3a98

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    iget-object v1, p0, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    .line 7
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Le/a/j4/b/b/e;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x193

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "PhoneNotification{mTimestamp="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/j4/b/b/e;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mName=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/j4/b/b/e;->c:Ljava/lang/String;

    const-string v3, ", mType=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/j4/b/b/e;->d:Ljava/lang/String;

    const-string v3, ", mBlocked="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Le/a/j4/b/b/e;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mHangUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/j4/b/b/e;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mActionSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCallingCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/j4/b/b/e;->h:Ljava/lang/String;

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
