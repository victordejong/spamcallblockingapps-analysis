.class public Le/i/b/r1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/r1/u;


# instance fields
.field public final a:Ljava/net/URI;

.field public final b:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/i/b/r1/l;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/lang/ref/Reference;Le/i/b/r1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;",
            "Le/i/b/r1/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/r1/d;->a:Ljava/net/URI;

    .line 3
    iput-object p2, p0, Le/i/b/r1/d;->b:Ljava/lang/ref/Reference;

    .line 4
    iput-object p3, p0, Le/i/b/r1/d;->c:Le/i/b/r1/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/r1/d;->c:Le/i/b/r1/l;

    iget-object v1, p0, Le/i/b/r1/d;->a:Ljava/net/URI;

    new-instance v2, Le/i/b/r1/d$a;

    invoke-direct {v2, p0}, Le/i/b/r1/d$a;-><init>(Le/i/b/r1/d;)V

    .line 2
    iget-object v3, v0, Le/i/b/r1/l;->b:Le/i/b/f3/c;

    invoke-virtual {v3}, Le/i/b/f3/c;->a()Landroid/content/ComponentName;

    move-result-object v3

    .line 3
    iget-object v0, v0, Le/i/b/r1/l;->a:Le/i/b/q1/b;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Le/i/b/q1/b;->a(Ljava/lang/String;Landroid/content/ComponentName;Le/i/b/q1/c;)V

    return-void
.end method
