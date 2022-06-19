.class public Le/m/e/e0/a0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/c0;


# instance fields
.field public final synthetic a:Le/m/e/f0/a;

.field public final synthetic b:Le/m/e/b0;


# direct methods
.method public constructor <init>(Le/m/e/f0/a;Le/m/e/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/e/e0/a0/p;->a:Le/m/e/f0/a;

    iput-object p2, p0, Le/m/e/e0/a0/p;->b:Le/m/e/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/m/e/e0/a0/p;->a:Le/m/e/f0/a;

    invoke-virtual {p2, p1}, Le/m/e/f0/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/m/e/e0/a0/p;->b:Le/m/e/b0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
