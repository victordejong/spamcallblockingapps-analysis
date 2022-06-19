.class public final Lcom/hiya/client/callerid/ui/incallui/b$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/b;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/b;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/b$b;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/b$b;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/incallui/b;->w(Lcom/hiya/client/callerid/ui/incallui/b;)V

    return-void
.end method
