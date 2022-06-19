.class final Lcom/hiya/stingray/ui/setting/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/f;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/f$b;->f:Lcom/hiya/stingray/ui/setting/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f$b;->f:Lcom/hiya/stingray/ui/setting/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/setting/f;->g()Landroidx/lifecycle/t;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f$b;->f:Lcom/hiya/stingray/ui/setting/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/setting/f;->i()Landroidx/lifecycle/t;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/ui/setting/f$a;->REMOVED:Lcom/hiya/stingray/ui/setting/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method
