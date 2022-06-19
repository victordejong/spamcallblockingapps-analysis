.class public final Le/a/a/j1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/views/MediaEditText;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/views/MediaEditText;)V
    .locals 0

    iput-object p1, p0, Le/a/a/j1/c;->a:Lcom/truecaller/messaging/views/MediaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/j1/c;->a:Lcom/truecaller/messaging/views/MediaEditText;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/views/MediaEditText;->f:Ln3/k/i/g0/e;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    invoke-interface {v0}, Ln3/k/i/g0/e$c;->e()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/a/j1/c;->a:Lcom/truecaller/messaging/views/MediaEditText;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/truecaller/messaging/views/MediaEditText;->f:Ln3/k/i/g0/e;

    return-void
.end method
