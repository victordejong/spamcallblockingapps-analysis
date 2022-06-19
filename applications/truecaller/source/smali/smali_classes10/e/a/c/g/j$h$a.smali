.class public final Le/a/c/g/j$h$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/j$h;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@\u00a8\u0006\u0007"
    }
    d2 = {
        "emit",
        "",
        "T",
        "value",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "",
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.categorizer.InsightsCategorizerImpl$reCalculateSpamUnNormalisedProbability$lambda-7$$inlined$collect$1"
    f = "InsightsCategorizer.kt"
    l = {
        0x8b
    }
    m = "emit"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/c/g/j$h;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/c/g/j$h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/g/j$h$a;->f:Le/a/c/g/j$h;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/g/j$h$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/g/j$h$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/g/j$h$a;->e:I

    iget-object p1, p0, Le/a/c/g/j$h$a;->f:Le/a/c/g/j$h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/c/g/j$h;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
