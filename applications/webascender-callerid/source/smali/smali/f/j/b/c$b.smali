.class Lf/j/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/j/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lf/j/b/c;


# direct methods
.method constructor <init>(Lf/j/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/j/b/c$b;->f:Lf/j/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/j/b/c$b;->f:Lf/j/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/j/b/c;->E(I)V

    return-void
.end method
