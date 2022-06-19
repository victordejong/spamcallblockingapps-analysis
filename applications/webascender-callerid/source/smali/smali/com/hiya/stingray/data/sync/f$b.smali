.class final Lcom/hiya/stingray/data/sync/f$b;
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
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/g1/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/data/sync/f;

.field final synthetic g:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/data/sync/f;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/data/sync/f$b;->f:Lcom/hiya/stingray/data/sync/f;

    iput-object p2, p0, Lcom/hiya/stingray/data/sync/f$b;->g:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostCallOperation: Successfully sent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " PhoneEvents."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/data/sync/f$b;->f:Lcom/hiya/stingray/data/sync/f;

    iget-object v1, p0, Lcom/hiya/stingray/data/sync/f$b;->g:Landroid/app/job/JobParameters;

    invoke-static {p1, v1, v0}, Lcom/hiya/stingray/data/sync/f;->d(Lcom/hiya/stingray/data/sync/f;Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/data/sync/f$b;->a(Ljava/util/List;)V

    return-void
.end method
