.class final Lcom/hiya/stingray/manager/m3$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/m3$e;->a(Li/c/b0/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lio/realm/i0;


# direct methods
.method constructor <init>(JLio/realm/i0;)V
    .locals 0

    iput-wide p1, p0, Lcom/hiya/stingray/manager/m3$e$a;->a:J

    iput-object p3, p0, Lcom/hiya/stingray/manager/m3$e$a;->b:Lio/realm/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/y;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/manager/m3$e$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v2, v0

    if-gtz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/manager/m3$e$a;->b:Lio/realm/i0;

    long-to-int v4, v2

    invoke-virtual {p1, v4}, Lio/realm/i0;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/q/c/i/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/realm/f0;->I0()V

    :cond_0
    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method
