.class public final Le/a/a/k/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

.field public static final b:J

.field public static final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/truecaller/messaging/data/types/ImGroupPermissions;-><init>(IIII)V

    sput-object v0, Le/a/a/k/a/a/h;->a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Le/a/a/k/a/a/h;->b:J

    const-wide/16 v1, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/a/a/k/a/a/h;->c:J

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    invoke-static {v2, p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->access$1200(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;->a(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    const-string v0, "InputPeer.newBuilder()\n \u2026roupId))\n        .build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 2
    iput-object p0, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 3
    iput-object p0, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    const-string v0, "Participant.Builder(Part\u2026PeerId(imId)\n    .build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/messaging/data/types/ImGroupPermissions;
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getActions()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getRoleUpdateRestrictionMask()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getRoleUpdateMask()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;->getSelfRoleUpdateMask()I

    move-result p0

    .line 6
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/truecaller/messaging/data/types/ImGroupPermissions;-><init>(IIII)V

    return-object v0
.end method

.method public static final d(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a;

    move-result-object v1

    .line 4
    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a;->a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a;

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    .line 6
    invoke-virtual {v0, p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;->b(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    const-string v0, "InputPeer.newBuilder()\n \u2026       )\n        .build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    return-object p0
.end method

.method public static final e(I)J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final f(Lcom/truecaller/messaging/data/types/ImGroupPermissions;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget v1, p0, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->a:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget v1, p0, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->b:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "role_update_restriction_mask"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget v1, p0, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->c:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "role_update_mask"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget p0, p0, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->d:I

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "self_role_update_mask"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
