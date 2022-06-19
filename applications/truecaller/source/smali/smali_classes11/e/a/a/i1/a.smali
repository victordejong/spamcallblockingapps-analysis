.class public final Le/a/a/i1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/truecaller/messaging/data/types/Conversation;ZIZ)Lcom/truecaller/messaging/data/types/InboxTab;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "conversation.participants"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v2, :cond_3

    aget-object v7, v0, v4

    .line 3
    iget v7, v7, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-ne v7, v5, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    if-eqz v7, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    .line 4
    :goto_2
    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v4, v2

    move v7, v3

    :goto_3
    if-ge v7, v4, :cond_6

    aget-object v8, v2, v7

    .line 6
    iget v8, v8, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-ne v8, v6, :cond_4

    move v8, v6

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    if-eqz v8, :cond_5

    move v2, v6

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move v2, v3

    .line 7
    :goto_5
    iget-object v4, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length v7, v4

    move v8, v3

    :goto_6
    if-ge v8, v7, :cond_8

    aget-object v9, v4, v8

    .line 9
    iget-boolean v9, v9, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    if-eqz v9, :cond_7

    move v4, v6

    goto :goto_7

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    move v4, v3

    .line 10
    :goto_7
    iget-object v7, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v1, v7

    move v8, v3

    :goto_8
    if-ge v8, v1, :cond_a

    aget-object v9, v7, v8

    const-string v10, "it"

    .line 12
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v9

    if-eqz v9, :cond_9

    move v1, v6

    goto :goto_9

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    move v1, v3

    .line 13
    :goto_9
    iget v7, p0, Lcom/truecaller/messaging/data/types/Conversation;->c:I

    const/4 v8, 0x3

    if-eq v7, v5, :cond_c

    if-ne v7, v8, :cond_b

    goto :goto_a

    :cond_b
    move v5, v3

    goto :goto_b

    :cond_c
    :goto_a
    move v5, v6

    .line 14
    :goto_b
    iget v7, p0, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    if-eqz v7, :cond_d

    move v7, v6

    goto :goto_c

    :cond_d
    move v7, v3

    :goto_c
    if-nez v4, :cond_e

    if-eqz v1, :cond_f

    :cond_e
    if-nez v0, :cond_f

    .line 15
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->p:I

    if-nez v0, :cond_f

    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->o:I

    if-nez v0, :cond_f

    move v0, v6

    goto :goto_d

    :cond_f
    move v0, v3

    .line 16
    :goto_d
    iget v1, p0, Lcom/truecaller/messaging/data/types/Conversation;->r:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_10

    if-ne p2, v4, :cond_11

    :cond_10
    move v3, v6

    :cond_11
    if-eqz v2, :cond_12

    .line 17
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    return-object p0

    :cond_12
    if-eqz p1, :cond_1a

    if-eqz v7, :cond_16

    if-ne p2, v8, :cond_13

    .line 18
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    :cond_13
    if-eqz v3, :cond_14

    if-eqz p3, :cond_14

    .line 19
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    :cond_14
    if-eqz v5, :cond_15

    .line 20
    iget p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->A:I

    if-nez p0, :cond_15

    if-nez p3, :cond_15

    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    :cond_15
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    :cond_16
    if-eqz v0, :cond_17

    .line 21
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    :cond_17
    if-eqz v3, :cond_18

    if-eqz p3, :cond_18

    .line 22
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    :cond_18
    if-eqz v5, :cond_19

    .line 23
    iget p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->A:I

    if-nez p0, :cond_19

    if-nez p3, :cond_19

    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    .line 24
    :cond_19
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    :cond_1a
    if-eqz v0, :cond_1b

    .line 25
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    :cond_1b
    if-eqz v3, :cond_1c

    if-eqz p3, :cond_1c

    .line 26
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    :cond_1c
    if-eqz v5, :cond_1d

    .line 27
    iget p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->A:I

    if-nez p0, :cond_1d

    if-nez p3, :cond_1d

    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_e

    .line 28
    :cond_1d
    sget-object p0, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    :goto_e
    return-object p0
.end method
