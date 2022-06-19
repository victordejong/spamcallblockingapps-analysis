.class public Lcom/truecaller/network/search/BulkSearcherImpl$a;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/network/search/BulkSearcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Le/a/f4/g/i$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/network/search/BulkSearcherImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/network/search/BulkSearcherImpl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$a;->a:Lcom/truecaller/network/search/BulkSearcherImpl;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Le/a/f4/g/i$b;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl$a;->a:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 2
    iget v0, v0, Lcom/truecaller/network/search/BulkSearcherImpl;->b:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
