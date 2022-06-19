.class public Le/i/b/r1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Le/i/b/s2/f;

.field public final c:Le/i/b/s2/c;


# direct methods
.method public constructor <init>(Le/i/b/s2/f;Le/i/b/s2/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Le/i/b/r1/e;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Le/i/b/r1/e;->b:Le/i/b/s2/f;

    .line 4
    iput-object p2, p0, Le/i/b/r1/e;->c:Le/i/b/s2/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/r1/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method
