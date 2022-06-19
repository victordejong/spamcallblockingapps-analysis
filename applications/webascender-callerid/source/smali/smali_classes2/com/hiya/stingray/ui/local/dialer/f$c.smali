.class final Lcom/hiya/stingray/ui/local/dialer/f$c;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/dialer/f;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/hiya/stingray/ui/local/dialer/DialerButton;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/dialer/DialerButton;

.field final synthetic g:Lcom/hiya/stingray/ui/local/dialer/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/dialer/DialerButton;Lcom/hiya/stingray/ui/local/dialer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$c;->f:Lcom/hiya/stingray/ui/local/dialer/DialerButton;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/dialer/f$c;->g:Lcom/hiya/stingray/ui/local/dialer/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/ui/local/dialer/DialerButton;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$c;->g:Lcom/hiya/stingray/ui/local/dialer/f;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f$c;->f:Lcom/hiya/stingray/ui/local/dialer/DialerButton;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->getCharacter()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/hiya/stingray/ui/local/dialer/f;->h(Lcom/hiya/stingray/ui/local/dialer/f;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/local/dialer/DialerButton;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/dialer/f$c;->a(Lcom/hiya/stingray/ui/local/dialer/DialerButton;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
