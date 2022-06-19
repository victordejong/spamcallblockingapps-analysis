.class public final Lcom/truecaller/acs/qa/AcsQaActivity$i;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/acs/qa/AcsQaActivity;->va(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.acs.qa.AcsQaActivity"
    f = "AcsQaActivity.kt"
    l = {
        0x57
    }
    m = "showAcsPopup"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lcom/truecaller/acs/qa/AcsQaActivity;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/truecaller/acs/qa/AcsQaActivity;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/acs/qa/AcsQaActivity$i;->f:Lcom/truecaller/acs/qa/AcsQaActivity;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/truecaller/acs/qa/AcsQaActivity$i;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/truecaller/acs/qa/AcsQaActivity$i;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/acs/qa/AcsQaActivity$i;->e:I

    iget-object p1, p0, Lcom/truecaller/acs/qa/AcsQaActivity$i;->f:Lcom/truecaller/acs/qa/AcsQaActivity;

    invoke-virtual {p1, p0}, Lcom/truecaller/acs/qa/AcsQaActivity;->va(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
