.class public Ln3/m/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/m/a/e;


# direct methods
.method public constructor <init>(Ln3/m/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m/a/e$b;->a:Ln3/m/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/m/a/e$b;->a:Ln3/m/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/m/a/e;->u(I)V

    return-void
.end method
