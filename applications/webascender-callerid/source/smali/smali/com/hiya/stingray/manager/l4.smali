.class public Lcom/hiya/stingray/manager/l4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/a/i;

.field private final b:Lcom/hiya/stingray/manager/h4;

.field private final c:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/a/i;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/l4;->a:Lcom/hiya/stingray/q/a/i;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/l4;->b:Lcom/hiya/stingray/manager/h4;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/l4;->c:Lcom/hiya/stingray/manager/o2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/manager/l4;->a:Lcom/hiya/stingray/q/a/i;

    iget-object v3, p0, Lcom/hiya/stingray/manager/l4;->b:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/hiya/stingray/manager/l4;->c:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/o2;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, p1, v0}, Lcom/hiya/stingray/q/a/i;->d(Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/f4;

    iget-object v2, p0, Lcom/hiya/stingray/manager/l4;->b:Lcom/hiya/stingray/manager/h4;

    iget-object v3, p0, Lcom/hiya/stingray/manager/l4;->c:Lcom/hiya/stingray/manager/o2;

    invoke-direct {v0, v2, v1, v3}, Lcom/hiya/stingray/manager/f4;-><init>(Lcom/hiya/stingray/manager/h4;ZLcom/hiya/stingray/manager/o2;)V

    .line 3
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
