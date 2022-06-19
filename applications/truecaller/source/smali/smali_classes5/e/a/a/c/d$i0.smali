.class public final Le/a/a/c/d$i0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->j3(Le/a/c/b0/b;Le/a/a/c/c3;Le/a/c/a/c/h/j;Le/a/a/c/k/a/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/insights/models/smartcards/CardFeedBackType;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/b0/b;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Le/a/a/c/d;

.field public final synthetic e:Le/a/c/a/c/h/j;

.field public final synthetic f:Le/a/a/c/k/a/j$b;


# direct methods
.method public constructor <init>(Le/a/c/b0/b;Landroid/view/ViewGroup;Le/a/a/c/d;Le/a/c/b0/b;Lcom/truecaller/messaging/data/types/Message;Le/a/c/a/c/h/j;Le/a/a/c/k/a/j$b;Le/a/a/c/c3;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$i0;->b:Le/a/c/b0/b;

    iput-object p2, p0, Le/a/a/c/d$i0;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Le/a/a/c/d$i0;->d:Le/a/a/c/d;

    iput-object p6, p0, Le/a/a/c/d$i0;->e:Le/a/c/a/c/h/j;

    iput-object p7, p0, Le/a/a/c/d$i0;->f:Le/a/a/c/k/a/j$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    const-string v0, "feedbackType"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/d$i0;->b:Le/a/c/b0/b;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackSubclass()Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 4
    sget-object p1, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->DISMISS:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/a/c/d$i0;->d:Le/a/a/c/d;

    invoke-virtual {p1}, Le/a/a/c/d;->F1()V

    .line 6
    sget-object p1, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->NEGATIVE:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->POSITIVE:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 8
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, v0, Le/a/c/b0/b;->c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
