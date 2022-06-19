.class public Le/b/a/d;
.super Le/b/a/c0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/c0/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Le/b/a/c0/e;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Le/b/a/c0/e;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/b/a/d;->c:Le/b/a/c0/e;

    invoke-direct {p0}, Le/b/a/c0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b/a/c0/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/c0/b<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/d;->c:Le/b/a/c0/e;

    invoke-interface {v0, p1}, Le/b/a/c0/e;->a(Le/b/a/c0/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
