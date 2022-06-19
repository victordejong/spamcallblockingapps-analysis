.class final Lcom/hiya/stingray/ui/local/search/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/a;->A()Li/c/b0/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/search/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/a$c;->f:Lcom/hiya/stingray/ui/local/search/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/a$c;->f:Lcom/hiya/stingray/ui/local/search/a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/search/a;->t(Lcom/hiya/stingray/ui/local/search/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/a$c;->f:Lcom/hiya/stingray/ui/local/search/a;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/local/search/a;->B(Ljava/util/List;)V

    :cond_0
    return-void
.end method
