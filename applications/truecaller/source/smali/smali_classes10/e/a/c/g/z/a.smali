.class public final Le/a/c/g/z/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/a0/m;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u001c\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "com/truecaller/insights/categorizer/extension/ModelExtensionsKt$toWordToProb$1",
        "Lcom/truecaller/insights/categorizer/model/WordToProb;",
        "probability",
        "",
        "",
        "getProbability",
        "()Ljava/util/List;",
        "word",
        "",
        "getWord",
        "()Ljava/lang/String;",
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/a/c/g/d0/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/g/d0/e$a<",
            "Le/a/c/g/a0/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/c/g/d0/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/c/g/d0/e$a<",
            "Le/a/c/g/a0/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/c/g/z/a;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/c/g/z/a;->b:Le/a/c/g/d0/e$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProbability()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/g/z/a;->b:Le/a/c/g/d0/e$a;

    .line 2
    iget-object v0, v0, Le/a/c/g/d0/e$a;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Le/a/c/g/a0/i;

    const-string v1, "<this>"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Double;

    .line 5
    iget-object v2, v0, Le/a/c/g/a0/i;->a:Ljava/lang/Double;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 6
    iget-object v3, v0, Le/a/c/g/a0/i;->b:Ljava/lang/Double;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 7
    iget-object v3, v0, Le/a/c/g/a0/i;->c:Ljava/lang/Double;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 8
    iget-object v3, v0, Le/a/c/g/a0/i;->d:Ljava/lang/Double;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 9
    iget-object v3, v0, Le/a/c/g/a0/i;->e:Ljava/lang/Double;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 10
    iget-object v0, v0, Le/a/c/g/a0/i;->f:Ljava/lang/Double;

    aput-object v0, v1, v2

    .line 11
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/g/z/a;->a:Ljava/lang/String;

    return-object v0
.end method
