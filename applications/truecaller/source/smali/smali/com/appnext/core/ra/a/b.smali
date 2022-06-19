.class public abstract Lcom/appnext/core/ra/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static eN:Ljava/text/SimpleDateFormat;


# instance fields
.field private aM:Landroid/content/Context;

.field private eO:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appnext/core/ra/a/b;->eN:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appnext/core/ra/a/b;->aM:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/appnext/core/ra/a/b;->eO:Landroid/os/Bundle;

    return-void
.end method

.method public static aQ()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/appnext/core/ra/a/b;->eN:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public abstract aM()V
.end method

.method public abstract aN()Z
.end method

.method public final aO()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->aN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->aN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/a/b;->aM:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/appnext/core/ra/a;->r(Landroid/content/Context;)Lcom/appnext/core/ra/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/ra/a;->aG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->aM()V

    :cond_1
    return-void
.end method

.method public final aP()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/a/b;->eO:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/a/b;->aM:Landroid/content/Context;

    return-object v0
.end method
