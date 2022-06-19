.class public Lcom/hiya/stingray/ui/contactdetails/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/manager/e1;

.field private final b:Lcom/hiya/stingray/manager/u3;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/manager/u3;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/v;->b:Lcom/hiya/stingray/manager/u3;

    return-void
.end method

.method private final d(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "caller_profile"

    .line 4
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    sget-object p1, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/v;->b:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/hiya/stingray/manager/d1$a;->a(Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object p2

    const-string v2, "item.reputationDataItem"

    invoke-static {p2, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/d1$a;->e(Lcom/hiya/stingray/t/y0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->j(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 7
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string p2, "make_call"

    .line 8
    invoke-virtual {v0, p2, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method private final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "overflow_menu_item"

    .line 4
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "caller_profile"

    .line 5
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "user_action"

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method private final o(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "caller_profile"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    sget-object v2, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, p2, v3, v4, v3}, Lcom/hiya/stingray/manager/d1$a;->c(Lcom/hiya/stingray/manager/d1$a;Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object p2

    const-string v3, "item.reputationDataItem"

    invoke-static {p2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/hiya/stingray/manager/d1$a;->e(Lcom/hiya/stingray/t/y0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/hiya/stingray/util/g0/c$a;->j(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p2

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/d0;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "add_to_block_list"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->o(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const-string v0, "block"

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/contactdetails/v;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v0

    const-string v1, "caller_profile"

    .line 2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    if-eqz p1, :cond_0

    const-string p1, "contacts_permission_allow"

    goto :goto_0

    :cond_0
    const-string p1, "contacts_permission_deny"

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "user_prompt_action"

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final e(Lcom/hiya/stingray/t/d0;)V
    .locals 1

    const-string v0, "callLogItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fab"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->d(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public final f(Lcom/hiya/stingray/t/d0;)V
    .locals 1

    const-string v0, "callLogItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inline"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->d(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public final g()V
    .locals 1

    const-string v0, "not_spam"

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/contactdetails/v;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Lcom/hiya/stingray/t/d0;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remove_from_block_list"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->o(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public final j(Lcom/hiya/stingray/t/d0;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report_caller"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->o(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public final k()V
    .locals 1

    const-string v0, "report_spam"

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/contactdetails/v;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final l(Lcom/hiya/stingray/t/d0;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "save_contact"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->o(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public final m(Lcom/hiya/stingray/t/d0;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "inline"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "caller_profile"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    sget-object v2, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/v;->b:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/hiya/stingray/manager/d1$a;->a(Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object p1

    const-string v3, "item.reputationDataItem"

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/manager/d1$a;->e(Lcom/hiya/stingray/t/y0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->j(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 7
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "send_text"

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final n(Lcom/hiya/stingray/t/d0;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "share"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->o(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public final p()V
    .locals 1

    const-string v0, "unblock"

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/contactdetails/v;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "upgrade"

    const-string v2, "caller_profile"

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/f;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "view_communication_activity"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "caller_profile"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_action"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "caller_profile"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "view_map_directions"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_action"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "view_more_reports"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "caller_profile"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_action"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final u(Lcom/hiya/stingray/t/d0;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/v;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "caller_profile"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    sget-object v2, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v3

    const-string v4, "item.reputationDataItem"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/d1$a;->e(Lcom/hiya/stingray/t/y0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hiya/stingray/util/g0/c$a;->j(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/v;->b:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/hiya/stingray/manager/d1$a;->a(Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "view_screen"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final v()V
    .locals 1

    const-string v0, "warn_friends"

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/contactdetails/v;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final w()V
    .locals 1

    const-string v0, "wrong_info"

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/contactdetails/v;->h(Ljava/lang/String;)V

    return-void
.end method
