.class final Lcom/hiya/stingray/ui/local/settings/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/d;->p()V
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
        "Lcom/hiya/stingray/ui/local/settings/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/d$b;->f:Lcom/hiya/stingray/ui/local/settings/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/ui/local/settings/d$a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/d$b;->f:Lcom/hiya/stingray/ui/local/settings/d;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/settings/e;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/local/settings/e;->l0()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/local/settings/d$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/d$b;->a(Lcom/hiya/stingray/ui/local/settings/d$a;)V

    return-void
.end method
