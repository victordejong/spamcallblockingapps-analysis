.class public final Le/a/g/a/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/a/b/s;


# instance fields
.field public final synthetic a:Le/a/g/a/m;

.field public final synthetic b:Lcom/truecaller/data/entity/HistoryEvent;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/c0;->a:Le/a/g/a/m;

    iput-object p2, p0, Le/a/g/a/c0;->b:Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/c0;->a:Le/a/g/a/m;

    iget-object v1, p0, Le/a/g/a/c0;->b:Lcom/truecaller/data/entity/HistoryEvent;

    invoke-virtual {v0, v1}, Le/a/g/a/m;->Nk(Lcom/truecaller/data/entity/HistoryEvent;)V

    return-void
.end method
