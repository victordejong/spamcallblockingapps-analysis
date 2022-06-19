.class public final Le/a/a/k/a/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/q;


# instance fields
.field public final a:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a/r;->a:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/ImGroupPermissions;II)Z
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/2addr p3, p2

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->b:I

    and-int/2addr p2, v0

    if-nez p2, :cond_0

    .line 2
    iget p1, p1, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->c:I

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lcom/truecaller/messaging/data/types/ImGroupPermissions;Lcom/truecaller/api/services/messenger/v1/models/GroupAction;)Z
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p1, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->a:I

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->getNumber()I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    sget p1, Lcom/truecaller/messaging/R$string;->ImGroupRoleSuperAdmin:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 2
    sget p1, Lcom/truecaller/messaging/R$string;->ImGroupRoleAdmin:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    .line 3
    sget p1, Lcom/truecaller/messaging/R$string;->ImGroupRoleUser:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 4
    sget p1, Lcom/truecaller/messaging/R$string;->ImGroupRoleInvitee:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Le/a/a/k/a/a/r;->a:Le/a/p5/c0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "imPeerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x1505

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/4 v5, 0x5

    shl-long v5, v1, v5

    add-long/2addr v5, v1

    int-to-long v1, v4

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0xf4240

    .line 4
    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x1505

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x5

    shl-long v5, v1, v5

    add-long/2addr v5, v1

    int-to-long v1, v4

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0xf4240

    .line 4
    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/truecaller/messaging/data/types/ImGroupPermissions;Lcom/truecaller/api/services/messenger/v1/models/GroupAction;Le/a/k3/l/k/a;)Z
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "participant"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/a/k/a/a/r;->b(Lcom/truecaller/messaging/data/types/ImGroupPermissions;Lcom/truecaller/api/services/messenger/v1/models/GroupAction;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget p2, p3, Le/a/k3/l/k/a;->b:I

    .line 3
    iget p1, p1, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->b:I

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
