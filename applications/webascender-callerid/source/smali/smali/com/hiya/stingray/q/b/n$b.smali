.class Lcom/hiya/stingray/q/b/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/n;->a(JLio/realm/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/n;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/hiya/stingray/q/b/n$b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/y;)V
    .locals 6

    .line 1
    const-class v0, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {p1, v0}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object p1

    sget-object v0, Lio/realm/l0;->ASCENDING:Lio/realm/l0;

    const-string v1, "lastUpdatedTimeStamp"

    .line 3
    invoke-virtual {p1, v1, v0}, Lio/realm/i0;->i(Ljava/lang/String;Lio/realm/l0;)Lio/realm/i0;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    .line 4
    iget-wide v3, p0, Lcom/hiya/stingray/q/b/n$b;->a:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lio/realm/i0;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v1}, Lio/realm/f0;->I0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
