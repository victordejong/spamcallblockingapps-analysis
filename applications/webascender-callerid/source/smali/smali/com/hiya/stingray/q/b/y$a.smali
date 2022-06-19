.class final Lcom/hiya/stingray/q/b/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/y;->b()Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/q/b/y;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/y;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/b/y$a;->f:Lcom/hiya/stingray/q/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/y$a;->f:Lcom/hiya/stingray/q/b/y;

    invoke-static {v0}, Lcom/hiya/stingray/q/b/y;->a(Lcom/hiya/stingray/q/b/y;)Lcom/hiya/stingray/q/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/hiya/stingray/q/b/y$a$a;

    invoke-direct {v1, v0}, Lcom/hiya/stingray/q/b/y$a$a;-><init>(Lio/realm/y;)V

    invoke-virtual {v0, v1}, Lio/realm/y;->Z0(Lio/realm/y$b;)V

    .line 3
    invoke-virtual {v0}, Lio/realm/y;->close()V

    :cond_0
    return-void
.end method
