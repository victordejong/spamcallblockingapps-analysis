.class public Lcom/truecaller/ui/TruecallerInit$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/TruecallerInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/TruecallerInit$f;->a:Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Le/a/q2/v0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$f;->a:Lcom/truecaller/ui/TruecallerInit;

    iget-object v1, v0, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    if-ne p1, v1, :cond_0

    .line 3
    check-cast v1, Le/a/q2/v0;

    .line 4
    iget-object p1, v0, Lcom/truecaller/ui/TruecallerInit;->R:Ljava/lang/String;

    .line 5
    invoke-interface {v1, p1}, Le/a/q2/v0;->Zn(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$f;->a:Lcom/truecaller/ui/TruecallerInit;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p1, Lcom/truecaller/ui/TruecallerInit;->R:Ljava/lang/String;

    :cond_0
    return-void
.end method
