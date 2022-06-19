.class public final Lcom/truecaller/incallui/service/InCallUIService$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/incallui/service/InCallUIService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p5/r0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/incallui/service/InCallUIService;


# direct methods
.method public constructor <init>(Lcom/truecaller/incallui/service/InCallUIService;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/incallui/service/InCallUIService$a;->b:Lcom/truecaller/incallui/service/InCallUIService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/a/p5/r0/b;

    .line 2
    iget-object v1, p0, Lcom/truecaller/incallui/service/InCallUIService$a;->b:Lcom/truecaller/incallui/service/InCallUIService;

    .line 3
    sget v2, Lcom/truecaller/incallui/R$string;->incallui_button_bluetooth:I

    .line 4
    iget-object v3, v1, Lcom/truecaller/incallui/service/InCallUIService;->h:Le/a/p5/a0;

    if-eqz v3, :cond_0

    .line 5
    invoke-direct {v0, v1, v2, v3}, Le/a/p5/r0/b;-><init>(Landroid/content/Context;ILe/a/p5/a0;)V

    return-object v0

    :cond_0
    const-string v0, "permissionUtil"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
