.class public final Lcom/hiya/stingray/util/g0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/util/g0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static b()Lcom/hiya/stingray/util/g0/c$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/util/g0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/hiya/stingray/util/g0/c;->a(Landroid/os/Bundle;)Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "content_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "identity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "label"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public i(Ljava/lang/Boolean;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "overlay_shown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "reputation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/g0/c$a;->a:Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
