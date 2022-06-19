.class public Lcom/hiya/stingray/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/hiya/stingray/h$a;

.field private b:Lcom/hiya/stingray/manager/x3;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/x3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/h;->b:Lcom/hiya/stingray/manager/x3;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/h;->b:Lcom/hiya/stingray/manager/x3;

    const-string v1, "force_update_min_valid_required_version"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/h;->b:Lcom/hiya/stingray/manager/x3;

    const-string v3, "force_update_min_valid_recommended_version"

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lcom/hiya/stingray/h;->b:Lcom/hiya/stingray/manager/x3;

    const-string v5, "force_update_store_url"

    invoke-virtual {v4, v5}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lcom/hiya/stingray/h;->a:Lcom/hiya/stingray/h$a;

    if-eqz v5, :cond_1

    const-wide/32 v5, 0x1adb1

    .line 5
    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/hiya/stingray/h;->b(JJ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/h;->a:Lcom/hiya/stingray/h$a;

    const/4 p2, 0x1

    invoke-interface {p1, v4, p2, v0, v1}, Lcom/hiya/stingray/h$a;->p(Ljava/lang/String;ZJ)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v2, v3, v5, v6}, Lcom/hiya/stingray/h;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/h;->a:Lcom/hiya/stingray/h$a;

    const/4 p2, 0x0

    invoke-interface {p1, v4, p2, v2, v3}, Lcom/hiya/stingray/h$a;->p(Ljava/lang/String;ZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method b(JJ)Z
    .locals 1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lcom/hiya/stingray/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/h;->a:Lcom/hiya/stingray/h$a;

    return-void
.end method
