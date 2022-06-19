.class public final synthetic Le/m/a/c/o1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/o1/c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/c/o1/c;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 1
    sget v1, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n0:I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o()V

    return-void
.end method
