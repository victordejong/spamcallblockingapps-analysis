.class public final Lcom/hiya/stingray/ui/premium/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/z;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/premium/z;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/z$b;->a:Lcom/hiya/stingray/ui/premium/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/z$b;->a:Lcom/hiya/stingray/ui/premium/z;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/z;->g1()Lcom/hiya/stingray/ui/premium/upsell/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/upsell/b;->d()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/z$b;->a:Lcom/hiya/stingray/ui/premium/z;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/z;->h1()Lcom/hiya/stingray/ui/premium/upsell/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->G()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z$b;->a:Lcom/hiya/stingray/ui/premium/z;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/z;->g1()Lcom/hiya/stingray/ui/premium/upsell/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/b;->e()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z$b;->a:Lcom/hiya/stingray/ui/premium/z;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/z;->h1()Lcom/hiya/stingray/ui/premium/upsell/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->H()V

    return-void
.end method
