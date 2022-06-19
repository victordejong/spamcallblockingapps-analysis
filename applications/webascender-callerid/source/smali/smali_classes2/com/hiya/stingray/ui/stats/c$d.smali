.class final Lcom/hiya/stingray/ui/stats/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/stats/c;->h()V
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
        "Lcom/hiya/stingray/ui/stats/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/stats/c;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/stats/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/c$d;->f:Lcom/hiya/stingray/ui/stats/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/ui/stats/c$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/c$d;->f:Lcom/hiya/stingray/ui/stats/c;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/stats/c;->g()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/stats/c$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/stats/c$d;->a(Lcom/hiya/stingray/ui/stats/c$a;)V

    return-void
.end method
