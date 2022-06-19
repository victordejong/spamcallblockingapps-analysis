.class final Lcom/hiya/stingray/ui/premium/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/d;->y()V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/d$d;->f:Lcom/hiya/stingray/ui/premium/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/d$d;->f:Lcom/hiya/stingray/ui/premium/d;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/hiya/stingray/manager/u3$d;

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/premium/d;->u(Lcom/hiya/stingray/ui/premium/d;Lcom/hiya/stingray/manager/u3$d;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.hiya.stingray.manager.PremiumManager.PremiumManagerError"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/d$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
