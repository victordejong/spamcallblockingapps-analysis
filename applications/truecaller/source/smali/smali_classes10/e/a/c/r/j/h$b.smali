.class public final Le/a/c/r/j/h$b;
.super Le/a/c/r/j/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final d:Le/a/c/r/j/h$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/r/j/h$b;

    invoke-direct {v0}, Le/a/c/r/j/h$b;-><init>()V

    sput-object v0, Le/a/c/r/j/h$b;->d:Le/a/c/r/j/h$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->IMPORTANT_MESSAGE_POSITIVE_FEEDBACK:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 2
    sget-object v1, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->IMPORTANT_MESSAGE_NEGATIVE_FEEDBACK:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 3
    sget-object v2, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->IMPORTANT_MESSAGE_DISMISS_FEEDBACK:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    const/4 v3, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v2, v3}, Le/a/c/r/j/h;-><init>(Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Ls1/z/c/f;)V

    return-void
.end method
