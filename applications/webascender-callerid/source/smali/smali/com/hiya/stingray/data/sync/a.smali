.class public abstract Lcom/hiya/stingray/data/sync/a;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field private f:Lcom/hiya/stingray/s/d/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Lcom/hiya/stingray/s/d/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/a;->f:Lcom/hiya/stingray/s/d/i;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/a;->f:Lcom/hiya/stingray/s/d/i;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/hiya/stingray/s/a;->d(Landroid/content/Context;)Lcom/hiya/stingray/s/d/i;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/data/sync/a;->f:Lcom/hiya/stingray/s/d/i;

    :cond_0
    return-void
.end method
