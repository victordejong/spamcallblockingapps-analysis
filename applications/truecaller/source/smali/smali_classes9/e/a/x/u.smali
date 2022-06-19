.class public final Le/a/x/u;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/ghost_call/GhostCallService;


# direct methods
.method public constructor <init>(Lcom/truecaller/ghost_call/GhostCallService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/x/u;->a:Lcom/truecaller/ghost_call/GhostCallService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/x/u;->a:Lcom/truecaller/ghost_call/GhostCallService;

    .line 2
    iget-object v0, v0, Lcom/truecaller/ghost_call/GhostCallService;->f:Le/a/x/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/x/l;->x()V

    .line 4
    iget-object v0, p0, Le/a/x/u;->a:Lcom/truecaller/ghost_call/GhostCallService;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/ghost_call/GhostCallService;->d()V

    return-void

    :cond_0
    const-string v0, "ghostCallManager"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
