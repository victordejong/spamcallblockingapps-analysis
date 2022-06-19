.class public final Lcom/truecaller/incallui/callui/InCallUIActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/incallui/callui/InCallUIActivity;->P9(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/incallui/callui/InCallUIActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/incallui/callui/InCallUIActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/incallui/callui/InCallUIActivity$c;->a:Lcom/truecaller/incallui/callui/InCallUIActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/a/x/a;)V
    .locals 2

    const-string v0, "properties"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/incallui/callui/InCallUIActivity$c;->a:Lcom/truecaller/incallui/callui/InCallUIActivity;

    .line 2
    iget-object v1, v1, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Le/a/f/a/n;

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Le/a/f/a/n;->p:Le/a/f/z/m0/a;

    invoke-interface {v0, p1}, Le/a/f/z/m0/a;->g(Le/a/b0/a/x/a;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
