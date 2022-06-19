.class public final Le/a/k0/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/data/entity/HistoryEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/a/o;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k0/a/o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/a/n;->a:Le/a/k0/a/o;

    iput-object p2, p0, Le/a/k0/a/n;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz p1, :cond_2

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 4
    new-instance v1, Lcom/truecaller/data/entity/CallRecording;

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Le/a/k0/a/n;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 8
    invoke-direct {v1, v2, v3, p1, v0}, Lcom/truecaller/data/entity/CallRecording;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/k0/a/n;->a:Le/a/k0/a/o;

    .line 10
    iget-object p1, p1, Le/a/k0/a/o;->a:Le/a/l0/c;

    .line 11
    invoke-interface {p1, v1}, Le/a/l0/c;->o(Lcom/truecaller/data/entity/CallRecording;)V

    :cond_2
    return-void
.end method
