.class public final Le/a/c/g/e0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J#\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J3\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u00068@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/snippets/SnippetsProcessor;",
        "",
        "repo",
        "Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;",
        "(Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;)V",
        "tail",
        "",
        "T",
        "getTail$insights_categorizer",
        "(Ljava/util/List;)Ljava/util/List;",
        "processSnippet",
        "",
        "message",
        "result",
        "Lcom/truecaller/insights/categorizer/model/ClassificationResult;",
        "processSnippet$insights_categorizer",
        "(Ljava/lang/String;Lcom/truecaller/insights/categorizer/model/ClassificationResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bestPossibleSublist",
        "from",
        "",
        "to",
        "bestPossibleSublist$insights_categorizer",
        "insights-categorizer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Le/a/c/g/y/n;


# direct methods
.method public constructor <init>(Le/a/c/g/y/n;)V
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/g/e0/a;->a:Le/a/c/g/y/n;

    return-void
.end method
