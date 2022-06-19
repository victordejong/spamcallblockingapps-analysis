.class public final Lcom/truecaller/voip/service/call/CallService$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/service/call/CallService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/service/call/CallService;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/service/call/CallService;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/service/call/CallService$d;->b:Lcom/truecaller/voip/service/call/CallService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iget-object v1, p0, Lcom/truecaller/voip/service/call/CallService$d;->b:Lcom/truecaller/voip/service/call/CallService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method
