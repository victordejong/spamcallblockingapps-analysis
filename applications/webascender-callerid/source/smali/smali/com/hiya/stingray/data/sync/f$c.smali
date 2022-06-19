.class final Lcom/hiya/stingray/data/sync/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/data/sync/f;->g(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/data/sync/f;

.field final synthetic g:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/data/sync/f;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/data/sync/f$c;->f:Lcom/hiya/stingray/data/sync/f;

    iput-object p2, p0, Lcom/hiya/stingray/data/sync/f$c;->g:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PostCallOperation: Failed to send PhoneEvents."

    .line 1
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/f$c;->f:Lcom/hiya/stingray/data/sync/f;

    invoke-static {v0}, Lcom/hiya/stingray/data/sync/f;->b(Lcom/hiya/stingray/data/sync/f;)Lcom/hiya/stingray/manager/l2;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/l2;->d(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/data/sync/f$c;->f:Lcom/hiya/stingray/data/sync/f;

    iget-object v0, p0, Lcom/hiya/stingray/data/sync/f$c;->g:Landroid/app/job/JobParameters;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/data/sync/f;->d(Lcom/hiya/stingray/data/sync/f;Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/data/sync/f$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
