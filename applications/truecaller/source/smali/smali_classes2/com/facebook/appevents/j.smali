.class public final synthetic Lcom/facebook/appevents/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/a0$a;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/j;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/j;

    invoke-direct {v0}, Lcom/facebook/appevents/j;-><init>()V

    sput-object v0, Lcom/facebook/appevents/j;->a:Lcom/facebook/appevents/j;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    sget-object p1, Lcom/facebook/appevents/n0/h;->a:Lcom/facebook/appevents/n0/h;

    .line 2
    const-class p1, Lcom/facebook/appevents/n0/h;

    invoke-static {p1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/n0/e;->a:Lcom/facebook/appevents/n0/e;

    invoke-static {v0}, Lcom/facebook/internal/q0;->N(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0, p1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
