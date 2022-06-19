.class final Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
        "Lcom/hiya/stingray/t/c0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$b;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$b;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m1()Lcom/hiya/stingray/ui/customblock/h;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$b;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->p1()Lcom/hiya/stingray/manager/h4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/ui/customblock/h;->h(Ljava/lang/String;Lcom/hiya/stingray/t/c0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/c0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$b;->a(Lcom/hiya/stingray/t/c0;)V

    return-void
.end method
