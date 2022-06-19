.class public final Le/a/c/g/b0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/b0/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\'\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/multiClass/MultiClassClassifierTrainerImpl;",
        "Lcom/truecaller/insights/categorizer/multiClass/MultiClassClassifierTrainer;",
        "multiClassMetadataRepository",
        "Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;",
        "(Lcom/truecaller/insights/categorizer/datasource/MultiClassMetadataRepository;)V",
        "train",
        "",
        "trainingData",
        "",
        "Lcom/truecaller/insights/categorizer/model/MultiClassTrainingData;",
        "includeExistingKeywords",
        "",
        "(Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

    const-string v0, "multiClassMetadataRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/g/b0/f;->a:Le/a/c/g/y/n;

    return-void
.end method
