.class final Lcom/hiya/client/callerid/ui/a0/m$b;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/m;-><init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Landroid/app/KeyguardManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/m;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/m;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$b;->f:Lcom/hiya/client/callerid/ui/a0/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/KeyguardManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$b;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->a(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/KeyguardManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/m$b;->a()Landroid/app/KeyguardManager;

    move-result-object v0

    return-object v0
.end method
