.class public final Le/a/h/g/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/g/r;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/g/r;


# direct methods
.method public constructor <init>(Le/a/h/g/r;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/r$a;->a:Le/a/h/g/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/h/g/r$a;->a:Le/a/h/g/r;

    iget-object v0, v0, Le/a/h/g/r;->a:Le/a/h/g/w;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v2, v0, Le/a/h/g/w;->q:Le/a/p5/j0;

    .line 4
    iget-object p1, v0, Le/a/h/g/w;->k:Le/a/p5/c0;

    .line 5
    iget-object v3, v0, Le/a/h/g/w;->g:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    iget-object v5, v0, Le/a/h/g/w;->g:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const v1, 0x7f10003d

    .line 7
    invoke-interface {p1, v1, v3, v4}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    .line 8
    invoke-static/range {v2 .. v7}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    .line 9
    iget-object p1, v0, Le/a/h/g/w;->t:Le/a/k0/i/a;

    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAction;->DELETE:Lcom/truecaller/callrecording/analytics/RecordingAction;

    invoke-interface {p1, v0, v1}, Le/a/k0/i/a;->e(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Lcom/truecaller/callrecording/analytics/RecordingAction;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v0, Le/a/h/g/w;->q:Le/a/p5/j0;

    iget-object p1, v0, Le/a/h/g/w;->k:Le/a/p5/c0;

    new-array v0, v1, [Ljava/lang/Object;

    const v1, 0x7f12094b

    invoke-interface {p1, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    .line 11
    :goto_0
    iget-object p1, p0, Le/a/h/g/r$a;->a:Le/a/h/g/r;

    iget-object p1, p1, Le/a/h/g/r;->a:Le/a/h/g/w;

    .line 12
    iget-object p1, p1, Le/a/h/g/w;->g:Ljava/util/Set;

    .line 13
    invoke-interface {p1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 14
    iget-object p1, p0, Le/a/h/g/r$a;->a:Le/a/h/g/r;

    iget-object p1, p1, Le/a/h/g/r;->a:Le/a/h/g/w;

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p1}, Le/a/h/g/p;->e()V

    :cond_1
    return-void
.end method
