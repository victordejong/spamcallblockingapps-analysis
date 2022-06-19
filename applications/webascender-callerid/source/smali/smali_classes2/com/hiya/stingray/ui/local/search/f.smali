.class public final Lcom/hiya/stingray/ui/local/search/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/search/f$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/hiya/stingray/ui/local/search/f$a;


# instance fields
.field private final a:Lcom/hiya/stingray/manager/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/local/search/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/local/search/f$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/local/search/f;->b:Lcom/hiya/stingray/ui/local/search/f$a;

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/f;->a:Lcom/hiya/stingray/manager/e1;

    return-void
.end method

.method private final a(Lcom/hiya/stingray/t/n0;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-ne v0, v1, :cond_0

    const-string p1, "saved_contact"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    if-ne v0, v1, :cond_1

    const-string p1, "identified_business"

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-ne p1, v0, :cond_2

    const-string p1, "identified_person"

    goto :goto_0

    :cond_2
    const-string p1, "unknown"

    :goto_0
    return-object p1
.end method

.method private final h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/f;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "search_result"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "make_call"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method private final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/f;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->e(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "search"

    .line 4
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "select_content"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/f;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "change_location"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "search"

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

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/f;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "enable_local"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "search"

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

.method public final d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/f;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "required_permission_allow"

    goto :goto_0

    :cond_0
    const-string p1, "required_permission_deny"

    .line 3
    :goto_0
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "required_permission"

    .line 4
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "search"

    .line 5
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "user_prompt_action"

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final e(Lcom/hiya/stingray/t/n0;)V
    .locals 1

    const-string v0, "identityData"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/search/f;->a(Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/search/f;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const-string v0, "local_business"

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/search/f;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/f;->a:Lcom/hiya/stingray/manager/e1;

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "reverse_phone"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "search"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final i(Lcom/hiya/stingray/t/n0;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/search/f;->a(Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/search/f;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final j()V
    .locals 1

    const-string v0, "local_business"

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/search/f;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/f;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "required_permission"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "permission_prompt"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_prompt_view"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/f;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "search"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "view_screen"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
