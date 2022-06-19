.class public Ln3/v/q0$a;
.super Ln3/v/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/v/q0;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Ln3/v/q0;


# direct methods
.method public constructor <init>(Ln3/v/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/v/q0$a;->this$1:Ln3/v/q0;

    invoke-direct {p0}, Ln3/v/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/v/q0$a;->this$1:Ln3/v/q0;

    iget-object p1, p1, Ln3/v/q0;->this$0:Ln3/v/p0;

    invoke-virtual {p1}, Ln3/v/p0;->a()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/v/q0$a;->this$1:Ln3/v/q0;

    iget-object p1, p1, Ln3/v/q0;->this$0:Ln3/v/p0;

    invoke-virtual {p1}, Ln3/v/p0;->b()V

    return-void
.end method
