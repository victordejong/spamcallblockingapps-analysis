.class public final Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->sa(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callerid.window.CallerIdPopupQaActivity"
    f = "CallerIdPopupQaActivity.kt"
    l = {
        0xa9
    }
    m = "showCallerIdPopup"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->f:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->e:I

    iget-object p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->f:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

    invoke-virtual {p1, p0}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->sa(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
