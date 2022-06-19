.class public final synthetic Lcom/facebook/appevents/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/a0$a;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/n;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/n;

    invoke-direct {v0}, Lcom/facebook/appevents/n;-><init>()V

    sput-object v0, Lcom/facebook/appevents/n;->a:Lcom/facebook/appevents/n;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    sget-object p1, Lcom/facebook/appevents/p0/a;->a:Lcom/facebook/appevents/p0/a;

    .line 2
    const-class v0, Lcom/facebook/appevents/p0/a;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_0
    sput-boolean v1, Lcom/facebook/appevents/p0/a;->b:Z

    .line 4
    invoke-virtual {p1}, Lcom/facebook/appevents/p0/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
