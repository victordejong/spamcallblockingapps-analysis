.class final Lcom/hiya/stingray/manager/w2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/w2;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/w2;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/w2;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/w2$b;->f:Lcom/hiya/stingray/manager/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2$b;->f:Lcom/hiya/stingray/manager/w2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Removed expired local overrides"

    invoke-virtual {v0, v2, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
