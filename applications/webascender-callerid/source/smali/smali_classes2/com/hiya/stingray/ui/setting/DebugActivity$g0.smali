.class final Lcom/hiya/stingray/ui/setting/DebugActivity$g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->G0()V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->k0()Lcom/hiya/stingray/manager/m3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/m3;->e()Li/c/b0/b/e0;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$a;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity$g0;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->m(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    .line 3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 4
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$b;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity$g0;)V

    .line 6
    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$g0$c;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity$g0;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method
