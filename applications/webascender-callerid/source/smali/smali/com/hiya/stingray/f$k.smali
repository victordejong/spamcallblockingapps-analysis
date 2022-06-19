.class final Lcom/hiya/stingray/f$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$k;->f:Lcom/hiya/stingray/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f$k;->f:Lcom/hiya/stingray/f;

    invoke-static {v0}, Lcom/hiya/stingray/f;->m(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/util/a0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/util/i0/d;

    .line 3
    sget-object v2, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    .line 4
    invoke-direct {v1, v2}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method
