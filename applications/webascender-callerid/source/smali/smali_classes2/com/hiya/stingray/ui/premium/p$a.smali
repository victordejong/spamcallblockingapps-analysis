.class final Lcom/hiya/stingray/ui/premium/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/p;-><init>(Li/c/b0/c/a;Lcom/hiya/stingray/util/a0;)V
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
        "Lcom/hiya/stingray/manager/u3$h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/p;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/p;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/p$a;->f:Lcom/hiya/stingray/ui/premium/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/u3$h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/p$a;->f:Lcom/hiya/stingray/ui/premium/p;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/p;->t()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/u3$h;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/p$a;->a(Lcom/hiya/stingray/manager/u3$h;)V

    return-void
.end method
