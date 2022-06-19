.class public final Le/a/a/m/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/u1;


# instance fields
.field public final synthetic a:Le/a/a/m/y1;


# direct methods
.method public constructor <init>(Le/a/a/m/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/m/q2;->a:Le/a/a/m/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/a/m/q2;->a:Le/a/a/m/y1;

    invoke-interface {v0, p1}, Le/a/a/m/y1;->b1(Ljava/util/List;)V

    :cond_0
    return-void
.end method
