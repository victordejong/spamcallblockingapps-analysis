.class public final Le/a/c/a/e/c/e;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\"\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Le/a/c/a/e/c/e;",
        "Ln3/v/y0;",
        "Le/a/c/a/e/d/a;",
        "model",
        "Ls1/s;",
        "c",
        "(Le/a/c/a/e/d/a;)V",
        "Le/a/c/a/i/h;",
        "d",
        "Le/a/c/a/i/h;",
        "lifeCycleAwareAnalyticsLogger",
        "Ln3/v/k0;",
        "",
        "Le/a/c/a/e/c/f;",
        "a",
        "Ln3/v/k0;",
        "updateUiLiveData",
        "Ls1/w/f;",
        "Ls1/w/f;",
        "ioContext",
        "Le/a/c/w/o0/g;",
        "b",
        "Le/a/c/w/o0/g;",
        "smartSmsFeatureFilter",
        "<init>",
        "(Le/a/c/w/o0/g;Ls1/w/f;Le/a/c/a/i/h;)V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/util/List<",
            "Le/a/c/a/e/c/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/c/w/o0/g;

.field public final c:Ls1/w/f;

.field public final d:Le/a/c/a/i/h;


# direct methods
.method public constructor <init>(Le/a/c/w/o0/g;Ls1/w/f;Le/a/c/a/i/h;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Le/a/c/a/e/c/e;->b:Le/a/c/w/o0/g;

    iput-object p2, p0, Le/a/c/a/e/c/e;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/e/c/e;->d:Le/a/c/a/i/h;

    .line 2
    new-instance p1, Ln3/v/k0;

    invoke-direct {p1}, Ln3/v/k0;-><init>()V

    iput-object p1, p0, Le/a/c/a/e/c/e;->a:Ln3/v/k0;

    return-void
.end method


# virtual methods
.method public final c(Le/a/c/a/e/d/a;)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "model"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Le/a/c/a/e/c/e;->d:Le/a/c/a/i/h;

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, ""

    const-string v5, "feature"

    .line 3
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventCategory"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventInfo"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionType"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionInfo"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "propertyMap"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v6, v0, Le/a/c/a/e/d/a;->a:Ljava/lang/String;

    const-string v4, "<set-?>"

    .line 5
    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v7, v0, Le/a/c/a/e/d/a;->b:Ljava/lang/String;

    .line 7
    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v8, v0, Le/a/c/a/e/d/a;->f:Ljava/lang/String;

    .line 9
    invoke-static {v8, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v9, v0, Le/a/c/a/e/d/a;->c:Ljava/lang/String;

    .line 11
    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v10, v0, Le/a/c/a/e/d/a;->d:Ljava/lang/String;

    .line 13
    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v11, v0, Le/a/c/a/e/d/a;->e:Ljava/lang/String;

    .line 15
    invoke-static {v11, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Le/a/c/r/d/b;

    .line 18
    new-instance v4, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v17}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 19
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 20
    invoke-direct {v0, v4, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 21
    invoke-interface {v2, v0}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    return-void

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
