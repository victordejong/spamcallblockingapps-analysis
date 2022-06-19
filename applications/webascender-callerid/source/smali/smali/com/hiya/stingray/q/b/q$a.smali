.class Lcom/hiya/stingray/q/b/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/q;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/q;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/hiya/stingray/q/b/q$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/q$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/n;

    invoke-virtual {p1, v0, v1}, Lio/realm/y;->K0(Ljava/lang/Iterable;[Lio/realm/n;)Ljava/util/List;

    return-void
.end method
