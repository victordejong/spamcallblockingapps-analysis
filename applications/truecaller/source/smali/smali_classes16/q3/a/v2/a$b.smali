.class public final Lq3/a/v2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/v2/a;->k0(JLq3/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a8\u0006\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlinx/coroutines/RunnableKt$Runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Lq3/a/v2/a;


# direct methods
.method public constructor <init>(Lq3/a/n;Lq3/a/v2/a;)V
    .locals 0

    iput-object p1, p0, Lq3/a/v2/a$b;->a:Lq3/a/n;

    iput-object p2, p0, Lq3/a/v2/a$b;->b:Lq3/a/v2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq3/a/v2/a$b;->a:Lq3/a/n;

    iget-object v1, p0, Lq3/a/v2/a$b;->b:Lq3/a/v2/a;

    sget-object v2, Ls1/s;->a:Ls1/s;

    invoke-interface {v0, v1, v2}, Lq3/a/n;->x(Lq3/a/g0;Ljava/lang/Object;)V

    return-void
.end method
