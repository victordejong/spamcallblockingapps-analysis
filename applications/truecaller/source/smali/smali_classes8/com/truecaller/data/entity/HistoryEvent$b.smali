.class public Lcom/truecaller/data/entity/HistoryEvent$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/entity/HistoryEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/data/entity/HistoryEvent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/data/entity/HistoryEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent$a;)V

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    return-void
.end method
