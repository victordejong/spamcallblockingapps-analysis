.class public final Lcom/truecaller/incallui/service/InCallUIService$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/incallui/service/InCallUIService;->z(Le/a/f3/c;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/incallui/service/InCallUIService;


# direct methods
.method public constructor <init>(Lcom/truecaller/incallui/service/InCallUIService;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/incallui/service/InCallUIService$b;->b:Lcom/truecaller/incallui/service/InCallUIService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/incallui/callui/InCallUIActivity;->g:Lcom/truecaller/incallui/callui/InCallUIActivity$a;

    iget-object v1, p0, Lcom/truecaller/incallui/service/InCallUIService$b;->b:Lcom/truecaller/incallui/service/InCallUIService;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/truecaller/incallui/callui/InCallUIActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
