.class public final Lcom/hiya/stingray/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    const v0, 0x1adb1

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/hiya/stingray/manager/o2;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "spam"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "_scam"

    goto :goto_0

    :cond_1
    const-string v1, "scam"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    const-string p0, "_priv"

    goto :goto_1

    :cond_3
    const-string p0, "priv"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/hiya/stingray/manager/o2;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id_incoming_calls"

    .line 2
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/manager/o2;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "in"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "id_outgoing_calls"

    .line 4
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/manager/o2;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "_out"

    goto :goto_0

    :cond_1
    const-string v1, "out"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "unknown_calls_only"

    .line 6
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/manager/o2;->q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "_noid"

    goto :goto_1

    :cond_3
    const-string v1, "noid"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "message_settings"

    .line 8
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/manager/o2;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "_sms"

    goto :goto_2

    :cond_5
    const-string v1, "sms"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/o2;->t()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_7

    const-string p0, "_cscreen"

    goto :goto_3

    :cond_7
    const-string p0, "cscreen"

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/hiya/stingray/manager/e1;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Lcom/hiya/stingray/ui/k;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "callers"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, v1, p2}, Lcom/hiya/stingray/util/g;->g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    const-class v0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "dialpad"

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0, v2, p2}, Lcom/hiya/stingray/util/g;->g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    const-class v0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "block_list"

    .line 6
    invoke-static {p0, p1, p2}, Lcom/hiya/stingray/util/g;->g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    const-class v0, Lcom/hiya/stingray/ui/local/settings/n;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "settings"

    .line 8
    invoke-static {p0, p1, p2}, Lcom/hiya/stingray/util/g;->g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    const-class v0, Lcom/hiya/stingray/ui/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {p0, v1, p2}, Lcom/hiya/stingray/util/g;->g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_4
    const-class v0, Lcom/hiya/stingray/ui/premium/n;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "premium"

    .line 12
    invoke-static {p0, p1, p2}, Lcom/hiya/stingray/util/g;->g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_5
    const-class v0, Lcom/hiya/stingray/ui/v/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "lookup"

    .line 14
    invoke-static {p0, p1, p2}, Lcom/hiya/stingray/util/g;->g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_6
    const-class v0, Lcom/hiya/stingray/ui/local/e/b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-static {p0, v1, p2}, Lcom/hiya/stingray/util/g;->g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_7
    const-class v0, Lcom/hiya/stingray/ui/u/b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 18
    invoke-static {p0, v2, p2}, Lcom/hiya/stingray/util/g;->g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 19
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown screen index. Currently sending invalid position for tabs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/z0;ZZZLcom/hiya/stingray/util/i$a;Lcom/hiya/stingray/service/a/a;ZLjava/lang/Boolean;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/hiya/stingray/util/i$a;->INCOMING:Lcom/hiya/stingray/util/i$a;

    if-ne p6, v0, :cond_0

    const-string v0, "incoming.call"

    goto :goto_0

    :cond_0
    const-string v0, "outgoing.call"

    :goto_0
    const-string v1, "non_addrbook"

    const-string v2, ""

    if-eqz p2, :cond_2

    .line 2
    sget-object p4, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    const-string p5, ".spam"

    if-ne p2, p4, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    sget-object p4, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-ne p2, p4, :cond_4

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "scam_or_fraud"

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_4

    if-nez p5, :cond_3

    const-string v2, "auto_blocked_screened"

    goto :goto_1

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-ne p1, p2, :cond_5

    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    const-string v2, "name_available"

    .line 7
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/hiya/stingray/util/i$a;->OUTGOING:Lcom/hiya/stingray/util/i$a;

    if-eq p6, p1, :cond_a

    .line 8
    sget-object p1, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_FRAUD:Lcom/hiya/stingray/service/a/a;

    if-ne p7, p1, :cond_6

    const-string v2, "auto-blocked-scam"

    goto :goto_2

    .line 9
    :cond_6
    sget-object p1, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_PRIVATE:Lcom/hiya/stingray/service/a/a;

    if-ne p7, p1, :cond_7

    const-string v2, "auto-blocked-private"

    goto :goto_2

    .line 10
    :cond_7
    sget-object p1, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_SPAM:Lcom/hiya/stingray/service/a/a;

    if-ne p7, p1, :cond_8

    const-string v2, "auto-blocked-spam"

    goto :goto_2

    .line 11
    :cond_8
    sget-object p1, Lcom/hiya/stingray/service/a/a;->BLOCKED_STARTS_WITH:Lcom/hiya/stingray/service/a/a;

    if-ne p7, p1, :cond_9

    const-string v2, "auto-blocked-starts_with_prefix"

    goto :goto_2

    .line 12
    :cond_9
    sget-object p1, Lcom/hiya/stingray/service/a/a;->BLOCKED_BLACK_LIST:Lcom/hiya/stingray/service/a/a;

    if-ne p7, p1, :cond_a

    const-string v2, "blocked"

    .line 13
    :cond_a
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz p8, :cond_b

    const-string v1, "addrbook"

    goto :goto_3

    :cond_b
    if-eqz p3, :cond_d

    const-string v1, "private"

    goto :goto_3

    :cond_c
    move-object v1, v2

    .line 14
    :cond_d
    :goto_3
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/g0/c$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/util/g0/c$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string p2, "count_call_text_activity"

    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public static f(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/util/i$a;Lcom/hiya/stingray/service/a/a;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    .line 1
    invoke-static/range {v0 .. v9}, Lcom/hiya/stingray/util/g;->e(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/z0;ZZZLcom/hiya/stingray/util/i$a;Lcom/hiya/stingray/service/a/a;ZLjava/lang/Boolean;)V

    return-void
.end method

.method private static g(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v1, "tab_bar_item"

    .line 2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string p2, "navigate"

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
