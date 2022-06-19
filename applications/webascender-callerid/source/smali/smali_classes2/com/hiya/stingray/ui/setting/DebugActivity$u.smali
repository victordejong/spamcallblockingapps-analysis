.class final Lcom/hiya/stingray/ui/setting/DebugActivity$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$u;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$u;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->o0()Lcom/hiya/stingray/manager/x3;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/x3;->f(Ljava/lang/Long;)Li/c/b0/b/e;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/setting/DebugActivity$u$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$u$a;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity$u;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->n(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/setting/DebugActivity$u$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$u$b;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity$u;)V

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$u$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$u$c;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity$u;)V

    .line 6
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method
