.class public final Lcom/truecaller/voip/ui/VoipActivity$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/ui/VoipActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/ui/VoipActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/ui/VoipActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/ui/VoipActivity$d;->b:Lcom/truecaller/voip/ui/VoipActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "<anonymous parameter 0>"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/voip/ui/VoipActivity$d;->b:Lcom/truecaller/voip/ui/VoipActivity;

    .line 4
    iget-object p1, p1, Lcom/truecaller/voip/ui/VoipActivity;->d:Le/a/d/c/k;

    if-eqz p1, :cond_0

    .line 5
    check-cast p1, Le/a/d/c/t;

    invoke-virtual {p1}, Le/a/d/c/t;->Lj()V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "presenter"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
