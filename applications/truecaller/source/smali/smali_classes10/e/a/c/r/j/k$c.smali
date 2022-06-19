.class public final Le/a/c/r/j/k$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/r/j/k;->a(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.models.smartcards.GiveCardFeedbackUseCase"
    f = "FeedbackAction.kt"
    l = {
        0x98
    }
    m = "execute"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/c/r/j/k;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/c/r/j/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/r/j/k$c;->f:Le/a/c/r/j/k;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/r/j/k$c;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/r/j/k$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/r/j/k$c;->e:I

    iget-object p1, p0, Le/a/c/r/j/k$c;->f:Le/a/c/r/j/k;

    invoke-virtual {p1, p0}, Le/a/c/r/j/k;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
