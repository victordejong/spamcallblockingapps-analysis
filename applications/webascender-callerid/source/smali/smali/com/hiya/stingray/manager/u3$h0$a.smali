.class final Lcom/hiya/stingray/manager/u3$h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3$h0;->a(Li/c/b0/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/android/billingclient/api/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/u3$h0;

.field final synthetic g:Li/c/b0/b/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$h0;Li/c/b0/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$h0$a;->f:Lcom/hiya/stingray/manager/u3$h0;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3$h0$a;->g:Li/c/b0/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/c;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/l$a;

    move-result-object v0

    const-string v1, "subs"

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/l$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/l$a;

    .line 3
    invoke-static {}, Lcom/hiya/stingray/manager/u3$p;->values()[Lcom/hiya/stingray/manager/u3$p;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 6
    iget-object v6, p0, Lcom/hiya/stingray/manager/u3$h0$a;->f:Lcom/hiya/stingray/manager/u3$h0;

    iget-object v6, v6, Lcom/hiya/stingray/manager/u3$h0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v6}, Lcom/hiya/stingray/manager/u3;->g(Lcom/hiya/stingray/manager/u3;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/l$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/l$a;

    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/l$a;->a()Lcom/android/billingclient/api/l;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/hiya/stingray/manager/u3$h0$a$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/u3$h0$a$a;-><init>(Lcom/hiya/stingray/manager/u3$h0$a;Lcom/android/billingclient/api/c;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/c;->j(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/billingclient/api/c;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u3$h0$a;->a(Lcom/android/billingclient/api/c;)V

    return-void
.end method
