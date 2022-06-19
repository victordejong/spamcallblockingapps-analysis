.class public final Le/a/a/i1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 3

    const-string v0, "$this$canShowDetails"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static final b(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$filterType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "IM_ID"

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "PHONE_NUMBER"

    goto :goto_0

    :cond_1
    const-string p0, "OTHER"

    :goto_0
    const-string v0, "ParticipantUtils.getFilterType(this.type)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getDisplayName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ParticipantUtils.getDisplayName(this)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$getGroupParticipantName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    const-string v0, "$this$getPresentableAddress"

    .line 4
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Le/a/c/p/a;->J0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ParticipantUtils.getPresentableAddress(this)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string v0, "name ?: getPresentableAddress()"

    .line 6
    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static final e([Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 1

    const-string v0, "$this$isGroup"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p0

    return p0
.end method

.method public static final f([Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 1

    const-string v0, "$this$isImGroup"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/c/p/a;->r1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p0

    return p0
.end method

.method public static final g(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;
    .locals 5

    const-string v0, "$this$toInputPeer"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;

    move-result-object v1

    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;->a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;

    invoke-virtual {v0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;->a(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a;->a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a;

    .line 8
    iget v2, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-nez v2, :cond_2

    .line 9
    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v2, "normalizedAddress"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "+"

    const-string v4, ""

    invoke-static {p0, v3, v4, v2, v1}, Ls1/f0/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/Int64Value;->of(J)Lcom/google/protobuf/Int64Value;

    move-result-object p0

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    invoke-static {v1, p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->access$500(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;Lcom/google/protobuf/Int64Value;)V

    .line 13
    :cond_2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->access$1800(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;)V

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    return-object p0
.end method
