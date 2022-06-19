.class final Lcom/hiya/client/callerid/ui/incallui/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/l;->K(Ljava/lang/String;)V
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
        "Landroid/telecom/CallAudioState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/l;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/l$c;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/telecom/CallAudioState;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/l$c;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/l;->n()Landroidx/lifecycle/t;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/l$c;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->p()Lcom/hiya/client/callerid/ui/a0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/telecom/CallAudioState;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/l$c;->a(Landroid/telecom/CallAudioState;)V

    return-void
.end method
