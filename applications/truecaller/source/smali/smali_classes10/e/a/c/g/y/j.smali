.class public final Le/a/c/g/y/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/a0/m;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final synthetic c:Lcom/truecaller/insights/models/categorizerseed/Probability;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/models/categorizerseed/Probability;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/a/c/g/y/j;->c:Lcom/truecaller/insights/models/categorizerseed/Probability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/categorizerseed/Probability;->getProbability()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/a/c/g/y/j;->a:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/insights/models/categorizerseed/Probability;->getWord()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/c/g/y/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProbability()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/g/y/j;->a:Ljava/util/List;

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/g/y/j;->b:Ljava/lang/String;

    return-object v0
.end method
