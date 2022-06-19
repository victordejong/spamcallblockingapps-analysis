.class final Lcom/hiya/client/callerid/ui/service/OnCallService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/service/OnCallService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/service/OnCallService;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/service/OnCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/service/OnCallService$c;->f:Lcom/hiya/client/callerid/ui/service/OnCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OnCallService$c;->f:Lcom/hiya/client/callerid/ui/service/OnCallService;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/service/OnCallService;->a(Lcom/hiya/client/callerid/ui/service/OnCallService;)V

    return-void
.end method
