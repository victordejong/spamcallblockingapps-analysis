.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$SplittingIterator;,
        Lcom/google/common/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field public final limit:I

.field public final omitEmptyStrings:Z

.field public final strategy:Lcom/google/common/base/Splitter$Strategy;

.field public final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$Strategy;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    .line 5
    iput-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    const p1, 0x7fffffff

    .line 6
    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method
