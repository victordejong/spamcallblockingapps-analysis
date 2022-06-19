.class public final Lcom/truecaller/flashsdk/ui/send/SendActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/send/SendActivity;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$l;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$l;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/flashsdk/R$id;->waiting_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Le/a/y/a/k/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/a/y/a/k/e;->OA(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
