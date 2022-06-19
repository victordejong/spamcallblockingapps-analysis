.class final Lcom/hiya/stingray/ui/setting/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/f;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/f$c;->f:Lcom/hiya/stingray/ui/setting/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/f$c;->f:Lcom/hiya/stingray/ui/setting/f;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/f;->g()Landroidx/lifecycle/t;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/f$c;->f:Lcom/hiya/stingray/ui/setting/f;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/f;->i()Landroidx/lifecycle/t;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/ui/setting/f$a;->ERROR_REMOVING:Lcom/hiya/stingray/ui/setting/f$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/f$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
