.class public Le/a/d0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/o0;


# instance fields
.field public final synthetic a:Lcom/truecaller/data/entity/HistoryEvent;

.field public final synthetic b:Le/a/d0/f0;


# direct methods
.method public constructor <init>(Le/a/d0/f0;Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d0/e0;->b:Le/a/d0/f0;

    iput-object p2, p0, Le/a/d0/e0;->a:Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/CallContextMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d0/e0;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 2
    iput-object p1, v0, Lcom/truecaller/data/entity/HistoryEvent;->v:Lcom/truecaller/data/entity/CallContextMessage;

    .line 3
    iget-object p1, p0, Le/a/d0/e0;->b:Le/a/d0/f0;

    iget-object v1, p1, Le/a/d0/f0;->C:Le/a/d0/v;

    iget-object v2, v1, Le/a/d0/v;->m:Lcom/truecaller/blocking/FilterMatch;

    .line 4
    invoke-virtual {p1, v1, v2, v0}, Le/a/d0/f0;->s(Le/a/d0/v;Lcom/truecaller/blocking/FilterMatch;Lcom/truecaller/data/entity/HistoryEvent;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
