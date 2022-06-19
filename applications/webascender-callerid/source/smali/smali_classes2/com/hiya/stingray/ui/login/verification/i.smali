.class public Lcom/hiya/stingray/ui/login/verification/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/manager/e1;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "continue"

    const-string v2, "phone_entry"

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/f;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "continue"

    const-string v2, "select_welcome"

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/f;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "manage_billing"

    const-string v2, "select_welcome"

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/f;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "skip"

    const-string v2, "code_entry"

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/f;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "skip"

    const-string v2, "phone_entry"

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/f;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "verify"

    const-string v2, "code_entry"

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/f;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "code_entry"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/hiya/stingray/util/f;->c(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "phone_entry"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/hiya/stingray/util/f;->c(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "select_welcome"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/hiya/stingray/util/f;->c(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
