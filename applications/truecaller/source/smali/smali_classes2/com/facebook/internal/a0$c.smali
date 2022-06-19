.class public final Lcom/facebook/internal/a0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/b0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/a0;->a(Lcom/facebook/internal/a0$b;Lcom/facebook/internal/a0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/facebook/internal/FeatureManager$checkFeature$1",
        "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;",
        "onCompleted",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/internal/a0$a;

.field public final synthetic b:Lcom/facebook/internal/a0$b;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/a0$a;Lcom/facebook/internal/a0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/a0$c;->a:Lcom/facebook/internal/a0$a;

    iput-object p2, p0, Lcom/facebook/internal/a0$c;->b:Lcom/facebook/internal/a0$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/a0$c;->a:Lcom/facebook/internal/a0$a;

    sget-object v1, Lcom/facebook/internal/a0;->a:Lcom/facebook/internal/a0;

    iget-object v1, p0, Lcom/facebook/internal/a0$c;->b:Lcom/facebook/internal/a0$b;

    invoke-static {v1}, Lcom/facebook/internal/a0;->b(Lcom/facebook/internal/a0$b;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/a0$a;->a(Z)V

    return-void
.end method
