.class public final Lcom/hiya/stingray/ui/local/e/a;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/e/a;->a:Lcom/hiya/stingray/manager/e1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/e/a;->b:Lcom/hiya/stingray/manager/u3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/d0;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/a;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "call_log_item"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    sget-object v2, Lcom/hiya/stingray/manager/d1;->a:Lcom/hiya/stingray/manager/d1$a;

    iget-object v3, p0, Lcom/hiya/stingray/ui/local/e/a;->b:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/hiya/stingray/manager/d1$a;->a(Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "make_call"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/a;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "call_log_item"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->e(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "callers_list"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "select_content"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
