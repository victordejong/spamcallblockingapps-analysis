.class public final Lcom/hiya/client/callerid/ui/c0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/client/callerid/ui/a0/m;

.field private final b:Lcom/hiya/client/callerid/ui/x/a;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/a0/m;Lcom/hiya/client/callerid/ui/x/a;)V
    .locals 1

    const-string v0, "overlayManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendPhoneEventHandler"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/a;->a:Lcom/hiya/client/callerid/ui/a0/m;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/a;->b:Lcom/hiya/client/callerid/ui/x/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/a;->a:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/m;->r()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/a;->b:Lcom/hiya/client/callerid/ui/x/a;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/x/a;->f()V

    return-void
.end method
