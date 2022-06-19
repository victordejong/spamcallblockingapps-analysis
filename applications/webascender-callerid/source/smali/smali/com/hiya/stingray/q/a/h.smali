.class public final synthetic Lcom/hiya/stingray/q/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/q/a/r;

.field public final synthetic g:Lcom/google/android/gms/common/api/j;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/q/a/r;Lcom/google/android/gms/common/api/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/a/h;->f:Lcom/hiya/stingray/q/a/r;

    iput-object p2, p0, Lcom/hiya/stingray/q/a/h;->g:Lcom/google/android/gms/common/api/j;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/q/a/h;->f:Lcom/hiya/stingray/q/a/r;

    iget-object v1, p0, Lcom/hiya/stingray/q/a/h;->g:Lcom/google/android/gms/common/api/j;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/a/r;->e(Lcom/google/android/gms/common/api/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
