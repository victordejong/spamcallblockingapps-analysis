.class final Lcom/hiya/stingray/ui/local/dialer/DialerFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->setupRecyclerView()V
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
        "Lcom/hiya/stingray/t/n0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/dialer/DialerFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/dialer/DialerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$c;->f:Lcom/hiya/stingray/ui/local/dialer/DialerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/n0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$c;->f:Lcom/hiya/stingray/ui/local/dialer/DialerFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->g1()Lcom/hiya/stingray/ui/local/dialer/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/dialer/d;->E(Lcom/hiya/stingray/t/n0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/n0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$c;->a(Lcom/hiya/stingray/t/n0;)V

    return-void
.end method
