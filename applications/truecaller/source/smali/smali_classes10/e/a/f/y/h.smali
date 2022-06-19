.class public final Le/a/f/y/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/incallui/service/InCallUIService;


# direct methods
.method public constructor <init>(Lcom/truecaller/incallui/service/InCallUIService;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/h;->b:Lcom/truecaller/incallui/service/InCallUIService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/h;->b:Lcom/truecaller/incallui/service/InCallUIService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/incallui/service/InCallUIService;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
