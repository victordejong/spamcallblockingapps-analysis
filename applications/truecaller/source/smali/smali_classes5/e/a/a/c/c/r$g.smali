.class public final Le/a/a/c/c/r$g;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/c/r;->Rj(JLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl"
    f = "DraftPresenterImpl.kt"
    l = {
        0x166,
        0x16b
    }
    m = "scheduleMessages"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/a/c/c/r;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:J


# direct methods
.method public constructor <init>(Le/a/a/c/c/r;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/c/r$g;->f:Le/a/a/c/c/r;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Le/a/a/c/c/r$g;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/a/c/c/r$g;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/a/c/c/r$g;->e:I

    iget-object p1, p0, Le/a/a/c/c/r$g;->f:Le/a/a/c/c/r;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Le/a/a/c/c/r;->Rj(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
