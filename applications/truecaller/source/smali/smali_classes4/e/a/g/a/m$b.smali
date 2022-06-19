.class public final Le/a/g/a/m$b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/m;->Vj(Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.acs.ui.AfterCallBasePresenter"
    f = "AfterCallBasePresenter.kt"
    l = {
        0x25f
    }
    m = "isRejectedOrMissedOutgoingCall"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/g/a/m;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/m$b;->f:Le/a/g/a/m;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/g/a/m$b;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/g/a/m$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/g/a/m$b;->e:I

    iget-object p1, p0, Le/a/g/a/m$b;->f:Le/a/g/a/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/g/a/m;->Vj(Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
