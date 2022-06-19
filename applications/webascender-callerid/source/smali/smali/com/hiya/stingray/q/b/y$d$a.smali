.class final Lcom/hiya/stingray/q/b/y$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/y$d;->a(Lcom/google/common/base/j;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/t/x0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/t/x0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/b/y$d$a;->a:Lcom/hiya/stingray/t/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/y$d$a;->a:Lcom/hiya/stingray/t/x0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/x0;->R0(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/q/b/y$d$a;->a:Lcom/hiya/stingray/t/x0;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/n;

    invoke-virtual {p1, v0, v1}, Lio/realm/y;->J0(Lio/realm/e0;[Lio/realm/n;)Lio/realm/e0;

    return-void
.end method
