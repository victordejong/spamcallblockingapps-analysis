.class public final Le/a/h/b/e/e/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/e/e/d;->b:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/e/e/d;->b:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
