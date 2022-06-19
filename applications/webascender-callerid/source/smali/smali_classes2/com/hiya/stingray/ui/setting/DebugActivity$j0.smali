.class final Lcom/hiya/stingray/ui/setting/DebugActivity$j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->H0()V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$j0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$j0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->l0()Lcom/hiya/stingray/q/b/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/q/b/y;->b()Li/c/b0/b/e;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/c;->a()Li/c/b0/b/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->j(Li/c/b0/b/j;)Li/c/b0/b/e;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/setting/DebugActivity$j0$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$j0$a;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity$j0;)V

    .line 4
    sget-object v1, Lcom/hiya/stingray/ui/setting/DebugActivity$j0$b;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$j0$b;

    .line 5
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$j0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
